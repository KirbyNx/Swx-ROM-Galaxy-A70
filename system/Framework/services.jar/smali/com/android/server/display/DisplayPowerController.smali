.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;,
        Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;,
        Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;,
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$ShutdownReceiver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final AB_LEARNING_SPLIT_LUX:F = 20.0f

.field private static final AB_LEARNING_SPLIT_NUM:I = 0x5

.field private static final AB_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.apps.turbo"

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x104

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xa0

.field private static final DEBUG:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final FORCE_UPDATE_AB_INTERVAL:I = 0x36ee80

.field private static final FORCE_UPDATE_AB_JOB_ID:I = 0x68

.field static final MAX_AUTO_BRIGHTNESS_TRANSITION_TIME:I = 0x7530

.field static final MAX_BRIGHTNESS_LOWER_THRESHOLD:I = 0xe6

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_FORCE_UPDATE_AB_JOB:I = 0x9

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SEAMLESS_AOD_READY:I = 0x8

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x32

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY_FOR_VIEW_COVER:I = 0x32

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z = false

.field private static final SCREEN_ANIMATION_RATE_MINIMUM:F = 0.0f

.field private static final SCREEN_DIM_MINIMUM_REDUCTION_FLOAT:F = 0.04f

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z


# instance fields
.field private mActualDisplayState:I

.field private final mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedForceDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessEnabled:Z

.field private mAutoBrightnessScaleFactorSetting:I

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mBatteryLevelCritical:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBeforeDualScreenPolicy:I

.field private mBeforeScreenBrightness:F

.field private mBeforeScreenState:I

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessChangedByUser:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessLevelBin:I

.field private mBrightnessLevelDuration:[J

.field private mBrightnessLevelTriggeredTime:[J

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:F

.field private final mBrightnessRampRateSlow:F

.field private mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessSynchronizer:Lcom/android/internal/BrightnessSynchronizer;

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:F

.field private mDisplayBlanksAfterDozeConfig:Z

.field private final mDisplayDevice:Lcom/android/server/display/DisplayDevice;

.field private mDisplayReadyLocked:Z

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDozing:Z

.field private mDualScreenPolicy:I

.field private mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

.field private mFinalScreenBrightnessDiff:F

.field private mForceSlowChange:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mHandlerEarly:Landroid/os/Handler;

.field private mHandlerThreadEarly:Landroid/os/HandlerThread;

.field private mInitialAutoBrightness:F

.field private mInitialAutoBrightnessUpdated:Z

.field private mIntelligenceBrightnessControl:Lcom/android/server/display/IntelligenceBrightnessControl;

.field private mIsEarsenseProximity:Z

.field private mIsOutdoorModeEnabled:Z

.field private mIsProximitySensorOnFoldingSide:Z

.field private mLastAmbientLux:F

.field private mLastAutomaticScreenBrightness:F

.field private mLastBatteryLevelCriticalTime:J

.field private mLastBrightnessConfigurationTime:J

.field private mLastCoverClosedState:Z

.field private mLastNotifiedBrightness:I

.field private mLastOriginalTarget:F

.field private mLastScreenBrightnessSettingBeforeForceDim:F

.field private mLastScreenBrightnessSettingChangedTime:J

.field private mLastUserSetScreenBrightness:F

.field private mLcdFlashModeEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field private mPassRampAnimation:Z

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingAutoBrightnessScaleFactorSetting:I

.field private mPendingEarlyWakeUpRequestLocked:Z

.field private mPendingForceSlowChangeLocked:Z

.field private mPendingForceUpdateAb:Z

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:F

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnByAodReady:Z

.field private mPendingScreenOnEvenThoughProximityPositiveLocked:Z

.field private mPendingScreenOnFromDozeSuspend:Z

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUnfolding:Z

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mProximity:I

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mRawBrightnessForLearning:I

.field private mReportedInternalScreenStateToPolicy:I

.field private mReportedScreenStateToPolicy:I

.field private mResetBrightnessConfiguration:Z

.field private final mScreenBrightnessDefault:F

.field private final mScreenBrightnessDimConfig:F

.field private final mScreenBrightnessDozeConfig:F

.field private mScreenBrightnessForCoverDisplay:F

.field private final mScreenBrightnessForDozeMaximum:F

.field private mScreenBrightnessForVr:F

.field private final mScreenBrightnessForVrDefault:F

.field private final mScreenBrightnessForVrRangeMaximum:F

.field private final mScreenBrightnessForVrRangeMinimum:F

.field private mScreenBrightnessModeSetting:I

.field private mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:F

.field private final mScreenBrightnessRangeMinimum:F

.field private final mScreenExtendedBrightnessRangeMaximum:F

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private mScreenOnEvenThoughProximityPositive:Z

.field private mScreenTurnedOnWhileProximityPositive:Z

.field private mSeamlessAodReady:Z

.field private mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorNegativeDebounceDelay:I

.field private mSensorPositiveDebounceDelay:I

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:F

.field private mUnfinishedBusiness:Z

.field private mUseHbmAtManualMax:Z

.field private mUseLuxErrorCorrection:Z

.field private final mUseSeperateBrightnessForDualDisplay:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 119
    nop

    .line 139
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/DisplayDevice;)V
    .registers 59
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "blanker"    # Lcom/android/server/display/DisplayBlanker;
    .param p6, "displayDevice"    # Lcom/android/server/display/DisplayDevice;

    .line 573
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    .line 245
    const/4 v12, 0x0

    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    .line 324
    const/4 v0, -0x1

    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 327
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 328
    const-wide/16 v1, -0x1

    iput-wide v1, v14, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 355
    const/4 v3, 0x2

    iput v3, v14, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    .line 360
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    .line 383
    new-instance v4, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v13, 0x0

    invoke-direct {v4, v14, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v4, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 384
    new-instance v4, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v4, v14, v13}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v4, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 387
    const v4, 0x3e70f0f0

    iput v4, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateSlow:F

    .line 402
    iput v12, v14, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 473
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    .line 474
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    .line 478
    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 479
    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 483
    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 487
    iput-object v13, v14, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    .line 488
    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 489
    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 490
    iput-object v13, v14, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 492
    const v4, 0x3ec28f5c    # 0.38f

    iput v4, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForDozeMaximum:F

    .line 496
    const/high16 v11, 0x7fc00000    # Float.NaN

    iput v11, v14, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 502
    const/4 v4, 0x3

    new-array v5, v4, [J

    iput-object v5, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    .line 503
    new-array v5, v4, [J

    iput-object v5, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    .line 505
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    .line 506
    iput v11, v14, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:F

    .line 507
    iput v3, v14, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenState:I

    .line 508
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mBeforeDualScreenPolicy:I

    .line 519
    iput-wide v1, v14, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    .line 534
    iput v11, v14, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 535
    iput v11, v14, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 543
    iput v3, v14, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 547
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    .line 548
    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mRawBrightnessForLearning:I

    .line 1195
    new-instance v1, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 1215
    new-instance v1, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    .line 2734
    new-instance v1, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 3119
    new-instance v1, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    .line 3132
    new-instance v1, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    .line 3145
    new-instance v1, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    .line 3723
    new-instance v1, Lcom/android/server/display/DisplayPowerController$11;

    invoke-direct {v1, v14}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    .line 574
    new-instance v1, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v14, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 580
    new-instance v1, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v1, v14, v2}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 581
    move-object/from16 v10, p2

    iput-object v10, v14, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    .line 582
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 583
    move-object/from16 v9, p4

    iput-object v9, v14, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 584
    const-class v1, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    .line 585
    const-class v1, Lcom/samsung/android/aod/AODManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/aod/AODManagerInternal;

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    .line 586
    move-object/from16 v6, p5

    iput-object v6, v14, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 587
    iput-object v15, v14, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 593
    move-object/from16 v1, p6

    iput-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    .line 595
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {v15, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/os/PowerManager;

    .line 596
    .local v8, "pm":Landroid/os/PowerManager;
    iget-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v26

    .line 598
    .local v26, "displayDeviceConfig":Lcom/android/server/display/DisplayDeviceConfig;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 599
    .local v7, "resources":Landroid/content/res/Resources;
    nop

    .line 600
    invoke-virtual {v8, v12}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 599
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v5

    .line 603
    .local v5, "screenBrightnessSettingMinimumFloat":F
    nop

    .line 604
    const/4 v2, 0x4

    invoke-virtual {v8, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 603
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 605
    nop

    .line 606
    invoke-virtual {v8, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 605
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    .line 609
    nop

    .line 610
    invoke-static {v5, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    .line 611
    nop

    .line 612
    const/4 v4, 0x1

    invoke-virtual {v8, v4}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 611
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    .line 613
    nop

    .line 614
    invoke-virtual {v8, v3}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 613
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 617
    nop

    .line 618
    const/4 v2, 0x7

    invoke-virtual {v8, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 617
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    .line 619
    nop

    .line 620
    const/4 v2, 0x6

    invoke-virtual {v8, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 619
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    .line 621
    nop

    .line 622
    const/4 v2, 0x5

    invoke-virtual {v8, v2}, Landroid/os/PowerManager;->getBrightnessConstraint(I)F

    move-result v2

    .line 621
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    .line 625
    iget v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    const v3, 0x10e00d8

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v16, 0x437f0000    # 255.0f

    div-float v3, v3, v16

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    .line 629
    const v2, 0x111002c

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    .line 632
    const v2, 0x1110012

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    .line 636
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_FAST_RAMP_RATE:Z

    if-nez v2, :cond_181

    const v2, 0x3f34b4b4

    goto :goto_184

    :cond_181
    const v2, 0x40fafaf8

    :goto_184
    iput v2, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    .line 639
    iput-boolean v12, v14, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    .line 643
    const v2, 0x10e0029

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 645
    .local v2, "hbmLux":I
    if-gez v2, :cond_196

    .line 646
    const v2, 0x9c40

    move v3, v2

    goto :goto_197

    .line 645
    :cond_196
    move v3, v2

    .line 651
    .end local v2    # "hbmLux":I
    .local v3, "hbmLux":I
    :goto_197
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->SFC_FEATURE_FAST_WAKE_UP:Z

    if-eqz v2, :cond_1b5

    .line 652
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v11, "pms fast wakeup"

    invoke-direct {v2, v11}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mHandlerThreadEarly:Landroid/os/HandlerThread;

    .line 653
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 654
    new-instance v2, Landroid/os/Handler;

    iget-object v11, v14, Lcom/android/server/display/DisplayPowerController;->mHandlerThreadEarly:Landroid/os/HandlerThread;

    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    invoke-direct {v2, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, v14, Lcom/android/server/display/DisplayPowerController;->mHandlerEarly:Landroid/os/Handler;

    .line 658
    :cond_1b5
    iget-boolean v2, v14, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v2, :cond_324

    .line 659
    const v2, 0x1130006

    invoke-virtual {v7, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v27

    .line 684
    .local v27, "dozeScaleFactor":F
    const/16 v28, 0x0

    .line 686
    .local v28, "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v2, 0x1070053

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v11

    .line 688
    .local v11, "brightInputLuxes":[I
    const v2, 0x1070054

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 690
    .local v2, "brightOuputLuxes":[I
    const v13, 0x1070055

    invoke-virtual {v7, v13}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v13

    .line 692
    .local v13, "darkInputLuxes":[I
    const v12, 0x1070056

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    .line 694
    .local v12, "darkOutputLuxes":[I
    new-instance v4, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v4, v11, v2, v13, v12}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I[I)V

    move-object/from16 v17, v4

    .line 698
    .local v17, "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    const v4, 0x10e0027

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-long v0, v4

    .line 700
    .local v0, "brighteningLightDebounce":J
    const v4, 0x10e0028

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    move-object/from16 v24, v12

    move-object/from16 v23, v13

    .end local v12    # "darkOutputLuxes":[I
    .end local v13    # "darkInputLuxes":[I
    .local v23, "darkInputLuxes":[I
    .local v24, "darkOutputLuxes":[I
    int-to-long v12, v4

    .line 702
    .local v12, "darkeningLightDebounce":J
    const v4, 0x1110027

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v29

    .line 705
    .local v29, "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    const v4, 0x10e0090

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v30

    .line 707
    .local v30, "lightSensorWarmUpTimeConfig":I
    const v4, 0x10e002b

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 709
    .local v4, "lightSensorRate":I
    move-wide/from16 v31, v0

    .end local v0    # "brighteningLightDebounce":J
    .local v31, "brighteningLightDebounce":J
    const/16 v0, 0x32

    .line 711
    .local v0, "initialLightSensorRate":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_21b

    .line 712
    move v0, v4

    move/from16 v33, v0

    move-object/from16 v22, v2

    goto :goto_247

    .line 713
    :cond_21b
    if-le v0, v4, :cond_243

    .line 714
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v2

    .end local v2    # "brightOuputLuxes":[I
    .local v22, "brightOuputLuxes":[I
    const-string v2, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerController"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_245

    .line 713
    .end local v22    # "brightOuputLuxes":[I
    .restart local v2    # "brightOuputLuxes":[I
    :cond_243
    move-object/from16 v22, v2

    .line 719
    .end local v2    # "brightOuputLuxes":[I
    .restart local v22    # "brightOuputLuxes":[I
    :goto_245
    move/from16 v33, v0

    .end local v0    # "initialLightSensorRate":I
    .local v33, "initialLightSensorRate":I
    :goto_247
    const v0, 0x10402da

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 721
    .local v1, "lightSensorType":Ljava/lang/String;
    invoke-direct {v14, v1}, Lcom/android/server/display/DisplayPowerController;->findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v34

    .line 724
    .local v34, "lightSensor":Landroid/hardware/Sensor;
    const v0, 0x10e009d

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v35

    .line 726
    .local v35, "luxErrorCorrectionStartBrightness":I
    const v0, 0x10e009b

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v36

    .line 728
    .local v36, "luxErrorCorrectionEndBrightness":I
    const v0, 0x10e009c

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v37

    .line 731
    .local v37, "luxErrorCorrectionMaxError":I
    if-ltz v35, :cond_272

    if-ltz v36, :cond_272

    if-gez v37, :cond_26e

    goto :goto_272

    .line 736
    :cond_26e
    const/4 v0, 0x1

    iput-boolean v0, v14, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    goto :goto_275

    .line 734
    :cond_272
    :goto_272
    const/4 v0, 0x0

    iput-boolean v0, v14, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    .line 741
    :goto_275
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessScaleFactorSetting()I

    move-result v0

    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    .line 742
    const/4 v0, -0x1

    iput v0, v14, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    .line 745
    invoke-static {v7}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 746
    if-eqz v0, :cond_307

    .line 749
    instance-of v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    if-eqz v0, :cond_291

    .line 750
    const/16 v20, 0x1

    sput-boolean v20, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    const/16 v19, 0x0

    goto :goto_297

    .line 752
    :cond_291
    const/16 v20, 0x1

    const/16 v19, 0x0

    sput-boolean v19, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    .line 756
    :goto_297
    iget-object v0, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v2, v14, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->setAutoBrightnessScaleFactor(I)Z

    .line 757
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    move-object v0, v2

    .line 758
    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v21

    move-object/from16 v39, v2

    move-object/from16 v38, v22

    .end local v22    # "brightOuputLuxes":[I
    .local v38, "brightOuputLuxes":[I
    move-object/from16 v2, v21

    move-object/from16 v21, v1

    .end local v1    # "lightSensorType":Ljava/lang/String;
    .local v21, "lightSensorType":Ljava/lang/String;
    iget-object v1, v14, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move/from16 v40, v5

    .end local v5    # "screenBrightnessSettingMinimumFloat":F
    .local v40, "screenBrightnessSettingMinimumFloat":F
    move-object v5, v1

    iget v1, v14, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    move-object/from16 v41, v7

    .end local v7    # "resources":Landroid/content/res/Resources;
    .local v41, "resources":Landroid/content/res/Resources;
    move v7, v1

    iget v1, v14, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    move-object/from16 v42, v8

    .end local v8    # "pm":Landroid/os/PowerManager;
    .local v42, "pm":Landroid/os/PowerManager;
    move v8, v1

    iget-boolean v1, v14, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z

    move/from16 v22, v1

    move-object/from16 v43, v21

    .end local v21    # "lightSensorType":Ljava/lang/String;
    .local v43, "lightSensorType":Ljava/lang/String;
    move-object/from16 v1, p0

    move/from16 v44, v3

    .end local v3    # "hbmLux":I
    .local v44, "hbmLux":I
    move-object/from16 v3, p4

    move/from16 v45, v4

    move/from16 v46, v20

    .end local v4    # "lightSensorRate":I
    .local v45, "lightSensorRate":I
    move-object/from16 v4, v34

    move/from16 v6, v30

    move/from16 v9, v27

    move/from16 v10, v45

    move-object/from16 v47, v11

    .end local v11    # "brightInputLuxes":[I
    .local v47, "brightInputLuxes":[I
    move/from16 v11, v33

    move-wide/from16 v50, v12

    move-object/from16 v48, v23

    move-object/from16 v49, v24

    .end local v12    # "darkeningLightDebounce":J
    .end local v23    # "darkInputLuxes":[I
    .end local v24    # "darkOutputLuxes":[I
    .local v48, "darkInputLuxes":[I
    .local v49, "darkOutputLuxes":[I
    .local v50, "darkeningLightDebounce":J
    move-wide/from16 v12, v31

    move-wide/from16 v14, v50

    move/from16 v16, v29

    move-object/from16 v18, v28

    move-object/from16 v19, p1

    move-object/from16 v20, v26

    move/from16 v21, v44

    move/from16 v23, v35

    move/from16 v24, v36

    move/from16 v25, v37

    invoke-direct/range {v0 .. v25}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IFFFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;Landroid/content/Context;Lcom/android/server/display/DisplayDeviceConfig;IZIII)V

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 775
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v2, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    goto :goto_330

    .line 786
    .end local v38    # "brightOuputLuxes":[I
    .end local v40    # "screenBrightnessSettingMinimumFloat":F
    .end local v41    # "resources":Landroid/content/res/Resources;
    .end local v42    # "pm":Landroid/os/PowerManager;
    .end local v43    # "lightSensorType":Ljava/lang/String;
    .end local v44    # "hbmLux":I
    .end local v45    # "lightSensorRate":I
    .end local v47    # "brightInputLuxes":[I
    .end local v48    # "darkInputLuxes":[I
    .end local v49    # "darkOutputLuxes":[I
    .end local v50    # "darkeningLightDebounce":J
    .restart local v1    # "lightSensorType":Ljava/lang/String;
    .restart local v3    # "hbmLux":I
    .restart local v4    # "lightSensorRate":I
    .restart local v5    # "screenBrightnessSettingMinimumFloat":F
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "pm":Landroid/os/PowerManager;
    .restart local v11    # "brightInputLuxes":[I
    .restart local v12    # "darkeningLightDebounce":J
    .restart local v22    # "brightOuputLuxes":[I
    .restart local v23    # "darkInputLuxes":[I
    .restart local v24    # "darkOutputLuxes":[I
    :cond_307
    move-object/from16 v43, v1

    move/from16 v44, v3

    move/from16 v45, v4

    move/from16 v40, v5

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move-object/from16 v47, v11

    move-wide/from16 v50, v12

    move-object v0, v14

    move-object/from16 v38, v22

    move-object/from16 v48, v23

    move-object/from16 v49, v24

    const/16 v46, 0x1

    .end local v1    # "lightSensorType":Ljava/lang/String;
    .end local v3    # "hbmLux":I
    .end local v4    # "lightSensorRate":I
    .end local v5    # "screenBrightnessSettingMinimumFloat":F
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .end local v11    # "brightInputLuxes":[I
    .end local v12    # "darkeningLightDebounce":J
    .end local v22    # "brightOuputLuxes":[I
    .end local v23    # "darkInputLuxes":[I
    .end local v24    # "darkOutputLuxes":[I
    .restart local v38    # "brightOuputLuxes":[I
    .restart local v40    # "screenBrightnessSettingMinimumFloat":F
    .restart local v41    # "resources":Landroid/content/res/Resources;
    .restart local v42    # "pm":Landroid/os/PowerManager;
    .restart local v43    # "lightSensorType":Ljava/lang/String;
    .restart local v44    # "hbmLux":I
    .restart local v45    # "lightSensorRate":I
    .restart local v47    # "brightInputLuxes":[I
    .restart local v48    # "darkInputLuxes":[I
    .restart local v49    # "darkOutputLuxes":[I
    .restart local v50    # "darkeningLightDebounce":J
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_330

    .line 658
    .end local v17    # "ambientBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v27    # "dozeScaleFactor":F
    .end local v28    # "screenBrightnessThresholds":Lcom/android/server/display/HysteresisLevels;
    .end local v29    # "autoBrightnessResetAmbientLuxAfterWarmUp":Z
    .end local v30    # "lightSensorWarmUpTimeConfig":I
    .end local v31    # "brighteningLightDebounce":J
    .end local v33    # "initialLightSensorRate":I
    .end local v34    # "lightSensor":Landroid/hardware/Sensor;
    .end local v35    # "luxErrorCorrectionStartBrightness":I
    .end local v36    # "luxErrorCorrectionEndBrightness":I
    .end local v37    # "luxErrorCorrectionMaxError":I
    .end local v38    # "brightOuputLuxes":[I
    .end local v40    # "screenBrightnessSettingMinimumFloat":F
    .end local v41    # "resources":Landroid/content/res/Resources;
    .end local v42    # "pm":Landroid/os/PowerManager;
    .end local v43    # "lightSensorType":Ljava/lang/String;
    .end local v44    # "hbmLux":I
    .end local v45    # "lightSensorRate":I
    .end local v47    # "brightInputLuxes":[I
    .end local v48    # "darkInputLuxes":[I
    .end local v49    # "darkOutputLuxes":[I
    .end local v50    # "darkeningLightDebounce":J
    .restart local v3    # "hbmLux":I
    .restart local v5    # "screenBrightnessSettingMinimumFloat":F
    .restart local v7    # "resources":Landroid/content/res/Resources;
    .restart local v8    # "pm":Landroid/os/PowerManager;
    :cond_324
    move/from16 v44, v3

    move/from16 v46, v4

    move/from16 v40, v5

    move-object/from16 v41, v7

    move-object/from16 v42, v8

    move v1, v12

    move-object v0, v14

    .line 791
    .end local v3    # "hbmLux":I
    .end local v5    # "screenBrightnessSettingMinimumFloat":F
    .end local v7    # "resources":Landroid/content/res/Resources;
    .end local v8    # "pm":Landroid/os/PowerManager;
    .restart local v40    # "screenBrightnessSettingMinimumFloat":F
    .restart local v41    # "resources":Landroid/content/res/Resources;
    .restart local v42    # "pm":Landroid/os/PowerManager;
    .restart local v44    # "hbmLux":I
    :goto_330
    sget-boolean v2, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v2, :cond_349

    iget-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v2, :cond_349

    .line 792
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 793
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v4, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v5, p1

    move/from16 v6, v44

    .end local v44    # "hbmLux":I
    .local v6, "hbmLux":I
    invoke-direct {v3, v5, v6, v2, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;-><init>(Landroid/content/Context;ILcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    goto :goto_357

    .line 791
    .end local v6    # "hbmLux":I
    .restart local v44    # "hbmLux":I
    :cond_349
    move-object/from16 v5, p1

    move/from16 v6, v44

    const/4 v2, 0x0

    .line 796
    .end local v44    # "hbmLux":I
    .restart local v6    # "hbmLux":I
    new-instance v3, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v3, v5, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    .line 797
    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 802
    :goto_357
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_362

    .line 803
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->isLightSensorOnFoldingSide()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mUseSeperateBrightnessForDualDisplay:Z

    goto :goto_364

    .line 805
    :cond_362
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mUseSeperateBrightnessForDualDisplay:Z

    .line 810
    :goto_364
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DISABLE_COLORFADE:Z

    if-eqz v3, :cond_36b

    .line 811
    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    goto :goto_373

    .line 814
    :cond_36b
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    .line 816
    :goto_373
    const v3, 0x1110024

    move-object/from16 v4, v41

    .end local v41    # "resources":Landroid/content/res/Resources;
    .local v4, "resources":Landroid/content/res/Resources;
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    .line 819
    const v3, 0x111005b

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    .line 822
    const v3, 0x111005c

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    .line 828
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 830
    if-eqz v3, :cond_3d3

    .line 831
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v3

    const/high16 v7, 0x40a00000    # 5.0f

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    .line 834
    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Palm"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3c7

    iget-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    .line 835
    invoke-virtual {v3}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v7, "Ear Hover"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c5

    goto :goto_3c7

    :cond_3c5
    move v12, v1

    goto :goto_3c9

    :cond_3c7
    :goto_3c7
    move/from16 v12, v46

    :goto_3c9
    iput-boolean v12, v0, Lcom/android/server/display/DisplayPowerController;->mIsEarsenseProximity:Z

    .line 836
    iget-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->semIsOnFoldingSide()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/display/DisplayPowerController;->mIsProximitySensorOnFoldingSide:Z

    .line 845
    :cond_3d3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 846
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 847
    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 848
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 849
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 850
    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    .line 853
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForCoverDisplaySetting()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForCoverDisplay:F

    .line 855
    const/4 v1, 0x0

    .line 856
    .local v1, "displayWhiteBalanceSettings":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;
    const/4 v3, 0x0

    .line 857
    .local v3, "displayWhiteBalanceController":Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;
    new-instance v7, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-direct {v7, v0, v2}, Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v7, v0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    .line 858
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->resetScreenBrightnessLevelDuration()V

    .line 859
    new-instance v2, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    .line 863
    new-instance v2, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    invoke-direct {v2, v0}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v2, v0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    .line 878
    iput-object v1, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    .line 879
    iput-object v3, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    .line 880
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/internal/app/IBatteryStats;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->sendScreenBrightnessLevelDuration(II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessLevelDuration(F)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Ljava/io/PrintWriter;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 119
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/display/DisplayPowerController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 119
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    return p1
.end method

.method static synthetic access$2702(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    return p1
.end method

.method static synthetic access$2802(Lcom/android/server/display/DisplayPowerController;F)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # F

    .line 119
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$2902(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/display/DisplayPowerController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayPowerController;JZ)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .line 119
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayPowerController;->handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayPowerController;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayBlanker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayPowerController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/display/DisplayPowerController;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;
    .param p1, "x1"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayPowerController;)F
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/DisplayPowerController;

    .line 119
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    return v0
.end method

.method private addScreenBrightnessLevelDuration()V
    .registers 11

    .line 3606
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    if-ltz v0, :cond_1d

    .line 3607
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    aget-wide v2, v1, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    iget v7, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    aget-wide v8, v6, v7

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x3e8

    div-long/2addr v4, v8

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 3609
    const-wide/16 v0, 0x0

    aput-wide v0, v6, v7

    .line 3611
    :cond_1d
    return-void
.end method

.method private animateScreenBrightness(FF)V
    .registers 15
    .param p1, "target"    # F
    .param p2, "rate"    # F

    .line 2381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Animating brightness: target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " (PSM:, AB limit:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 2384
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ~ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 2385
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") MB Limit:("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 2386
    invoke-static {v2}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 2387
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2390
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_7c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", sf="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7e

    :cond_7c
    const-string v1, ""

    :goto_7e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2381
    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    invoke-static {p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v0

    .line 2395
    .local v0, "brightnessInt":I
    invoke-static {p2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v1

    .line 2396
    .local v1, "rateInt":I
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    invoke-static {v3}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v3

    .line 2398
    .local v3, "autoBrightnessLowerLimitInt":I
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    invoke-static {v4}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v4

    .line 2400
    .local v4, "autoBrightnessUpperLimitInt":I
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    invoke-static {v5}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v5

    .line 2402
    .local v5, "minBrightnessInt":I
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v6, v6, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    invoke-static {v6}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v6

    .line 2405
    .local v6, "maxBrightnessInt":I
    iget-object v7, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v7, v7, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    cmpl-float v2, v7, v2

    if-eqz v2, :cond_bf

    .line 2406
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    goto :goto_c0

    :cond_bf
    const/4 v2, 0x0

    .line 2408
    .local v2, "screenBrightnessScaleFactor":F
    :goto_c0
    const/16 v7, 0x8

    const/4 v8, 0x7

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    .line 2409
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    .line 2410
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 2411
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$History;->getChangeReasonString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 2408
    invoke-static {v7, v8}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 2414
    .end local v0    # "brightnessInt":I
    .end local v1    # "rateInt":I
    .end local v2    # "screenBrightnessScaleFactor":F
    .end local v3    # "autoBrightnessLowerLimitInt":I
    .end local v4    # "autoBrightnessUpperLimitInt":I
    .end local v5    # "minBrightnessInt":I
    .end local v6    # "maxBrightnessInt":I
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v0

    if-eqz v0, :cond_145

    .line 2415
    const-wide/32 v0, 0x20000

    float-to-int v2, p1

    const-string v3, "TargetScreenBrightness"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2417
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug.tracing.screen_brightness"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2419
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SFC_FEATURE_FAST_WAKE_UP:Z

    if-eqz v0, :cond_131

    .line 2420
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandlerEarly:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_145

    .line 2435
    :cond_131
    :try_start_131
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2436
    invoke-static {v1, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v1

    .line 2435
    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V

    .line 2439
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->updateScreenBrightnessLevelDuration(F)V

    .line 2442
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mUseLuxErrorCorrection:Z
    :try_end_141
    .catch Landroid/os/RemoteException; {:try_start_131 .. :try_end_141} :catch_144

    if-eqz v0, :cond_143

    .line 2450
    :cond_143
    goto :goto_145

    .line 2448
    :catch_144
    move-exception v0

    .line 2465
    :cond_145
    :goto_145
    return-void
.end method

.method private animateScreenStateChange(IIIZZ)V
    .registers 14
    .param p1, "target"    # I
    .param p2, "targetInternal"    # I
    .param p3, "dualScreenPolicy"    # I
    .param p4, "dualScreenPolicyChanged"    # Z
    .param p5, "performScreenOffTransition"    # Z

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateScreenStateChange: target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", targetInternal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dualScreenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2485
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2486
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 2488
    :cond_3c
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_41

    .line 2489
    return-void

    .line 2492
    :cond_41
    if-eq p1, v2, :cond_44

    .line 2493
    return-void

    .line 2496
    :cond_44
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2500
    :cond_46
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_7a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2501
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 2502
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_7a

    .line 2505
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2506
    iget-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-eqz v6, :cond_67

    move v6, v2

    goto :goto_68

    :cond_67
    move v6, v3

    .line 2505
    :goto_68
    invoke-virtual {v0, v5, v6}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2507
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_72

    .line 2508
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    .line 2515
    :cond_72
    if-eq p1, v4, :cond_76

    move v0, v4

    goto :goto_77

    :cond_76
    move v0, v3

    :goto_77
    invoke-direct {p0, v4, v0}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IZ)Z

    .line 2521
    :cond_7a
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    const/4 v5, 0x0

    if-eqz v0, :cond_9b

    if-eq p1, v4, :cond_9b

    .line 2522
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2523
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2524
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    .line 2525
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_9b

    .line 2526
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2527
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2532
    :cond_9b
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v0, :cond_a7

    .line 2533
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnFromDozeSuspend:Z

    if-eqz v0, :cond_a7

    if-eq p1, v2, :cond_a7

    .line 2534
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnFromDozeSuspend:Z

    .line 2540
    :cond_a7
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    if-nez v0, :cond_c3

    if-eqz p4, :cond_c3

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-nez v0, :cond_c3

    .line 2543
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_cf

    .line 2544
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2545
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    goto :goto_cf

    .line 2547
    :cond_c3
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    if-eqz v0, :cond_cf

    if-eqz p4, :cond_cf

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-ne v0, v4, :cond_cf

    .line 2550
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    .line 2554
    :cond_cf
    :goto_cf
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne p1, v2, :cond_137

    .line 2559
    sget-boolean v5, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v5, :cond_ec

    .line 2561
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    if-ne v5, v6, :cond_ec

    .line 2562
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v5

    invoke-direct {p0, v7, v7, v5, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    .line 2563
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnFromDozeSuspend:Z

    .line 2569
    :cond_ec
    invoke-direct {p0, v2, p2, p3, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v4

    if-nez v4, :cond_f3

    .line 2571
    return-void

    .line 2575
    :cond_f3
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_129

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v4, :cond_129

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2577
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v4

    if-nez v4, :cond_129

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2578
    invoke-virtual {v4}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v4

    if-ne v4, v2, :cond_129

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    if-nez v2, :cond_129

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 2580
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 2581
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->isLightSensorCovered()Z

    move-result v2

    if-nez v2, :cond_129

    .line 2582
    const-string v0, "animateScreenStateChange is returned because lux is not yet valid!"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    return-void

    .line 2601
    :cond_129
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2602
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    .line 2605
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    goto/16 :goto_24f

    .line 2606
    :cond_137
    const/4 v1, 0x5

    if-ne p1, v1, :cond_15e

    .line 2610
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v3}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_14b

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2611
    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-ne v3, v2, :cond_14b

    .line 2612
    return-void

    .line 2616
    :cond_14b
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_152

    .line 2617
    return-void

    .line 2621
    :cond_152
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2622
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_24f

    .line 2625
    :cond_15e
    if-ne p1, v7, :cond_191

    .line 2630
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_170

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2631
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v2, :cond_174

    :cond_170
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    if-eqz v1, :cond_175

    .line 2633
    :cond_174
    return-void

    .line 2639
    :cond_175
    invoke-direct {p0, v7, p2, p3, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v1

    if-eqz v1, :cond_190

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2640
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v1

    if-eq v1, p3, :cond_184

    goto :goto_190

    .line 2646
    :cond_184
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2647
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_24f

    .line 2642
    :cond_190
    :goto_190
    return-void

    .line 2648
    :cond_191
    if-ne p1, v6, :cond_1c6

    .line 2652
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_1a3

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2653
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v6, :cond_1a7

    :cond_1a3
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    if-eqz v1, :cond_1a8

    .line 2655
    :cond_1a7
    return-void

    .line 2660
    :cond_1a8
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v6, :cond_1ba

    .line 2663
    invoke-direct {p0, v7, p2, p3, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v1

    if-nez v1, :cond_1b7

    .line 2665
    return-void

    .line 2668
    :cond_1b7
    invoke-direct {p0, v6, p2, p3, v3}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    .line 2672
    :cond_1ba
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2673
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_24f

    .line 2674
    :cond_1c6
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1f7

    .line 2678
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v3}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_1da

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2679
    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-eq v3, v1, :cond_1da

    .line 2680
    return-void

    .line 2685
    :cond_1da
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    if-eq v3, v1, :cond_1ec

    .line 2686
    invoke-direct {p0, v2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    move-result v2

    if-nez v2, :cond_1e9

    .line 2687
    return-void

    .line 2689
    :cond_1e9
    invoke-direct {p0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2693
    :cond_1ec
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2694
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_24f

    .line 2697
    :cond_1f7
    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2698
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-nez v0, :cond_202

    .line 2699
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    .line 2702
    :cond_202
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v5

    if-nez v0, :cond_217

    .line 2705
    invoke-direct {p0, v4}, Lcom/android/server/display/DisplayPowerController;->setScreenState(I)Z

    .line 2706
    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    .line 2707
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_24f

    .line 2710
    :cond_217
    const/4 v0, 0x2

    .line 2711
    .local v0, "colorFadeMode":I
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    if-nez v1, :cond_229

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lastGoToSleepReason:I

    if-eq v1, v7, :cond_229

    .line 2713
    sget-boolean v1, Lcom/android/server/display/DisplayPowerController;->SAMSUNG_UX_COLOR_FADE_OFF_EFFECT_ENABLED:Z

    if-eqz v1, :cond_227

    goto :goto_228

    :cond_227
    move v7, v4

    :goto_228
    move v0, v7

    .line 2715
    :cond_229
    if-eqz p5, :cond_243

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    .line 2716
    invoke-virtual {v1, v3, v0}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_243

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2717
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_243

    .line 2719
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_24f

    .line 2722
    :cond_243
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    .line 2727
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->end()V

    .line 2732
    .end local v0    # "colorFadeMode":I
    :goto_24f
    return-void
.end method

.method private animateScreenStateChange(IZ)V
    .registers 9
    .param p1, "target"    # I
    .param p2, "performScreenOffTransition"    # Z

    .line 2469
    const/4 v3, -0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIIZZ)V

    .line 2470
    return-void
.end method

.method private blockScreenOff()V
    .registers 5

    .line 2140
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_22

    .line 2141
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2142
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    .line 2144
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    :cond_22
    return-void
.end method

.method private blockScreenOn()V
    .registers 5

    .line 2122
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_22

    .line 2123
    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 2124
    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2125
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    .line 2126
    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_22
    return-void
.end method

.method private static clampAbsoluteBrightness(F)F
    .registers 3
    .param p0, "value"    # F

    .line 3560
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private static clampAbsoluteBrightness(I)I
    .registers 3
    .param p0, "value"    # I

    .line 3556
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .registers 3
    .param p0, "value"    # F

    .line 3565
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(F)F
    .registers 4
    .param p1, "value"    # F

    .line 2357
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2358
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    return v0

    .line 2360
    :cond_9
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessExtended(F)F
    .registers 4
    .param p1, "value"    # F

    .line 2366
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(F)F
    .registers 4
    .param p1, "value"    # F

    .line 2351
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .registers 5

    .line 2830
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_11

    .line 2831
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2832
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    .line 2834
    :cond_11
    return-void
.end method

.method private convertToNits(I)F
    .registers 3
    .param p1, "backlight"    # I

    .line 3102
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_9

    .line 3103
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    .line 3105
    :cond_9
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .registers 7

    .line 2811
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_34

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_34

    .line 2814
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2815
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_26

    .line 2817
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2818
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updatePowerState()V

    .line 2819
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    goto :goto_34

    .line 2823
    :cond_26
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2824
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2827
    .end local v0    # "now":J
    .end local v2    # "msg":Landroid/os/Message;
    :cond_34
    :goto_34
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3415
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3416
    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3423
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 3426
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3425
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnEvenThoughProximityPositive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenTurnedOnWhileProximityPositive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightnessFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSettingFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightnessFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrFloat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3441
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3448
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3450
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 3453
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3452
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy(internal)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    .line 3456
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3455
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3459
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v0, :cond_32a

    .line 3460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 3461
    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3460
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3464
    :cond_32a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_348

    .line 3465
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 3466
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3465
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3468
    :cond_348
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_366

    .line 3469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 3470
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3469
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3474
    :cond_366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastBrightnessConfigurationTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingForceUpdateAb="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3480
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_399

    .line 3481
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    .line 3484
    :cond_399
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_3a0

    .line 3485
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    .line 3488
    :cond_3a0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_3ac

    .line 3489
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3490
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    .line 3494
    :cond_3ac
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_3bc

    .line 3495
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_3bc

    .line 3496
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3497
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dump(Ljava/io/PrintWriter;)V

    .line 3502
    :cond_3bc
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3503
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_3cb

    .line 3504
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    .line 3505
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    .line 3509
    :cond_3cb
    const-string v0, "  SEC_FEATURE_EARLY_WAKEUP=true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3510
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    if-eqz v0, :cond_3d7

    .line 3511
    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->dump(Ljava/io/PrintWriter;)V

    .line 3514
    :cond_3d7
    return-void
.end method

.method private findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .registers 6
    .param p1, "sensorType"    # Ljava/lang/String;

    .line 883
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 884
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    .line 885
    .local v0, "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 886
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    .line 887
    .local v2, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 888
    return-object v2

    .line 885
    .end local v2    # "sensor":Landroid/hardware/Sensor;
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 892
    .end local v0    # "sensors":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Sensor;>;"
    .end local v1    # "i":I
    :cond_28
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method private forceUpdateAbJob()V
    .registers 1

    .line 3351
    return-void
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .registers 5

    .line 2902
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2904
    .local v0, "adj":F
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_1a

    :cond_16
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAutoBrightnessAdjustment(F)F

    move-result v2

    :goto_1a
    return v2
.end method

.method private getAutoBrightnessScaleFactorSetting()I
    .registers 4

    .line 2949
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2950
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_SUPPORT_PERFORMANCE_MODE:Z

    if-eqz v1, :cond_d

    .line 2951
    const/16 v1, 0x5a

    goto :goto_f

    :cond_d
    const/16 v1, 0x64

    .line 2949
    :goto_f
    const-string v2, "auto_brightness_limit"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2952
    .local v0, "autoBrightnessScaleFactorSetting":I
    return v0
.end method

.method private getFinalBrightness(FI)F
    .registers 15
    .param p1, "origTarget"    # F
    .param p2, "state"    # I

    .line 3155
    move v0, p1

    .line 3156
    .local v0, "modiTarget":F
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 3157
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:F

    .line 3161
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessScaleFactor:F

    .line 3163
    .local v3, "screenBrightnessScaleFactor":F
    cmpl-float v4, v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const-string v7, " -> "

    const-string v8, "DisplayPowerController"

    if-ltz v4, :cond_48

    cmpl-float v4, v3, v5

    if-eqz v4, :cond_48

    .line 3165
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getFinalBrightness: screenBrightnessScaleFactor: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-float v9, v0, v3

    .line 3166
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3165
    invoke-static {v8, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    mul-float/2addr v0, v3

    .line 3169
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessExtended(F)F

    move-result v0

    .line 3170
    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_4b

    .line 3171
    :cond_48
    invoke-static {v6}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3175
    :goto_4b
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->hbmBlock:Z

    const/16 v9, 0x100

    if-eqz v4, :cond_84

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_84

    .line 3176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getFinalBrightness : hbmBlock = "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    .line 3177
    invoke-static {v10}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3176
    invoke-static {v8, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3178
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    .line 3179
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_87

    .line 3180
    :cond_84
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3184
    :goto_87
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    cmpl-float v4, v4, v2

    const/4 v9, 0x2

    const-string v10, "] "

    if-ltz v4, :cond_cc

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_cc

    .line 3185
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getFinalBrightness : [minBrightness = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 3186
    invoke-static {v11}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3185
    invoke-static {v8, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->minBrightness:F

    .line 3188
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_cf

    .line 3189
    :cond_cc
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3191
    :goto_cf
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v4, v4, v2

    if-ltz v4, :cond_111

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_111

    .line 3192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getFinalBrightness : [maxBrightness = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 3193
    invoke-static {v11}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3192
    invoke-static {v8, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3194
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 3195
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_114

    .line 3196
    :cond_111
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3200
    :goto_114
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    const/4 v9, -0x1

    const/16 v11, 0x80

    if-eq v4, v9, :cond_15a

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    int-to-float v4, v4

    cmpl-float v4, v0, v4

    if-lez v4, :cond_15a

    .line 3201
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getFinalBrightness : [brightnessLimitByCover = "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    int-to-float v9, v9

    .line 3202
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3201
    invoke-static {v8, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3203
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessLimitByCover:I

    int-to-float v0, v4

    .line 3204
    invoke-static {v11}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_15d

    .line 3205
    :cond_15a
    invoke-static {v11}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3208
    :goto_15d
    sub-float v4, v0, p1

    iput v4, p0, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:F

    .line 3211
    iget-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v4, :cond_1f8

    .line 3212
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    cmpl-float v4, v4, v2

    const/4 v9, 0x4

    if-ltz v4, :cond_1a8

    .line 3213
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1ab

    .line 3214
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getFinalBrightness : [autoBrightnessUpperLimit = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 3215
    invoke-static {v11}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3214
    invoke-static {v8, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3216
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessUpperLimit:F

    .line 3217
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_1ab

    .line 3219
    :cond_1a8
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3220
    :cond_1ab
    :goto_1ab
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    cmpl-float v2, v4, v2

    if-ltz v2, :cond_1f5

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v2, :cond_1f5

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v2, :cond_1f5

    .line 3222
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_1f8

    .line 3223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getFinalBrightness : [autoBrightnessLowerLimit = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 3224
    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3223
    invoke-static {v8, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3225
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->autoBrightnessLowerLimit:F

    .line 3226
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_1f8

    .line 3228
    :cond_1f5
    invoke-static {v9}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3233
    :cond_1f8
    :goto_1f8
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v2

    if-eqz v2, :cond_20e

    invoke-static {p2}, Landroid/view/Display;->isDozeState(I)Z

    move-result v2

    if-eqz v2, :cond_20e

    .line 3234
    const v2, 0x3ec28f5c    # 0.38f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_20e

    .line 3235
    const v0, 0x3ec28f5c    # 0.38f

    .line 3241
    :cond_20e
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    const/16 v4, 0x8

    if-eqz v2, :cond_221

    .line 3242
    const-string/jumbo v2, "forceLcdBacklightOff!"

    invoke-static {v8, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3243
    const/4 v0, 0x0

    .line 3244
    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_224

    .line 3245
    :cond_221
    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 3249
    :goto_224
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isOutdoorMode:Z

    if-nez v2, :cond_230

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    if-eqz v2, :cond_24f

    :cond_230
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_24f

    .line 3251
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    cmpl-float v1, v1, v5

    if-lez v1, :cond_240

    .line 3252
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    goto :goto_242

    .line 3254
    :cond_240
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3256
    :goto_242
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 3258
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lcdFlashMode:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 3259
    if-eqz v1, :cond_263

    .line 3260
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    goto :goto_263

    .line 3263
    :cond_24f
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    if-eqz v2, :cond_263

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v2, :cond_263

    .line 3265
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsOutdoorModeEnabled:Z

    .line 3267
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    if-eqz v2, :cond_263

    .line 3268
    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLcdFlashModeEnabled:Z

    .line 3269
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 3276
    :cond_263
    :goto_263
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-eq v1, v2, :cond_279

    .line 3277
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastCoverClosedState:Z

    .line 3278
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    if-nez v1, :cond_279

    .line 3279
    iput-boolean v6, p0, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    .line 3299
    :cond_279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFinalBrightness : Summary is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3300
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3299
    invoke-static {v8, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3301
    invoke-static {}, Lcom/android/server/power/PowerManagerUtil$History;->reasonChanged()Z

    move-result v1

    if-eqz v1, :cond_2c5

    .line 3302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getFinalBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3303
    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3302
    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil$History;->addChangeReason(Ljava/lang/String;)V

    .line 3305
    :cond_2c5
    return v0
.end method

.method private getScreenBrightnessForCoverDisplaySetting()F
    .registers 5

    .line 2966
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "sub_screen_brightness"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2969
    .local v0, "brightnessInt":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v1

    .line 2970
    .local v1, "brightnessFloat":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2971
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 2974
    :cond_1d
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v2

    return v2
.end method

.method private getScreenBrightnessForVrSetting()F
    .registers 5

    .line 2957
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    const-string/jumbo v2, "screen_brightness_for_vr_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2960
    .local v0, "brightnessFloat":F
    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessForVr(F)F

    move-result v1

    return v1
.end method

.method private getScreenBrightnessModeSetting()I
    .registers 5

    .line 2940
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2943
    .local v0, "brightnessModeSetting":I
    return v0
.end method

.method private getScreenBrightnessSetting()F
    .registers 5

    .line 2908
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    const-string/jumbo v2, "screen_brightness_float"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2911
    .local v0, "brightness":F
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->clampAbsoluteBrightness(F)F

    move-result v1

    return v1
.end method

.method private getScreenBrightnessSettingOnBootPhase()F
    .registers 7

    .line 2917
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 2920
    .local v0, "screenBrightnessInt":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/internal/BrightnessSynchronizer;->brightnessIntToFloat(Landroid/content/Context;I)F

    move-result v1

    .line 2922
    .local v1, "defaultBrightness":F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2923
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    .line 2926
    :cond_1d
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "screen_brightness_float"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    .line 2930
    .local v2, "brightness":F
    iget-object v5, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v2, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2934
    return v2
.end method

.method private handleProximitySensorEvent(JZ)V
    .registers 10
    .param p1, "time"    # J
    .param p3, "positive"    # Z

    .line 2769
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_63

    .line 2770
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    if-nez v0, :cond_b

    if-nez p3, :cond_b

    .line 2771
    return-void

    .line 2773
    :cond_b
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    if-eqz p3, :cond_13

    .line 2774
    return-void

    .line 2780
    :cond_13
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2781
    const/16 v0, 0x32

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_52

    .line 2782
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2786
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3b

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    const/16 v5, 0xf

    if-eq v4, v5, :cond_3b

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverType:I

    const/16 v5, 0x10

    if-ne v4, v5, :cond_3a

    goto :goto_3b

    :cond_3a
    move v1, v3

    .line 2789
    .local v1, "isViewTypeCover":Z
    :cond_3b
    :goto_3b
    nop

    .line 2790
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    if-eq v4, v2, :cond_41

    .line 2791
    goto :goto_42

    :cond_41
    move v4, v3

    :goto_42
    int-to-long v4, v4

    add-long/2addr v4, p1

    .line 2792
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mIsEarsenseProximity:Z

    if-eqz v2, :cond_4b

    if-eqz v1, :cond_4b

    .line 2793
    goto :goto_4c

    :cond_4b
    move v0, v3

    :goto_4c
    int-to-long v2, v0

    add-long/2addr v4, v2

    .line 2789
    invoke-direct {p0, v4, v5}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2795
    .end local v1    # "isViewTypeCover":Z
    goto :goto_60

    .line 2796
    :cond_52
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2800
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    if-eq v1, v2, :cond_5a

    .line 2801
    move v0, v1

    goto :goto_5b

    :cond_5a
    nop

    :goto_5b
    int-to-long v0, v0

    add-long/2addr v0, p1

    .line 2800
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setPendingProximityDebounceTime(J)V

    .line 2806
    :goto_60
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->debounceProximitySensor()V

    .line 2808
    :cond_63
    return-void
.end method

.method private handleSettingsChange(Z)V
    .registers 7
    .param p1, "userSwitch"    # Z

    .line 2856
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 2857
    const/16 v1, 0xa

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_26

    .line 2859
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2860
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_26

    .line 2861
    const-string v0, "ShortTermModel: reset data, user switch"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil$History;->addAutoBrightness(Ljava/lang/String;)V

    .line 2862
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "switch"

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 2863
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2866
    :cond_26
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:F

    .line 2869
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v4

    if-eq v0, v4, :cond_55

    .line 2870
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessModeSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    .line 2871
    if-nez v0, :cond_52

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_52

    .line 2873
    const-string v0, "ShortTermModel: reset data, manual"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil$History;->addAutoBrightness(Ljava/lang/String;)V

    .line 2874
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v4, "manual"

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 2875
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 2877
    :cond_52
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    .line 2880
    :cond_55
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessScaleFactorSetting()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    .line 2882
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2885
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForVrSetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 2887
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessForCoverDisplaySetting()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForCoverDisplay:F

    .line 2889
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2890
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    .line 2891
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForCoverDisplay:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 2892
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2890
    const-string v2, " sm: %1d sb: %.3f csb: %.3f abAdj: %.3f sbVr: %.3f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] handleSettingsChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_b8

    const-string v2, " userSwitch"

    goto :goto_ba

    :cond_b8
    const-string v2, ""

    :goto_ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2894
    const-string v2, "DisplayPowerController"

    invoke-static {v2, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2899
    return-void
.end method

.method private initialize()V
    .registers 7

    .line 1108
    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBlanker:Lcom/android/server/display/DisplayBlanker;

    .line 1109
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_f

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1112
    new-instance v0, Lcom/android/internal/BrightnessSynchronizer;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/BrightnessSynchronizer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessSynchronizer:Lcom/android/internal/BrightnessSynchronizer;

    .line 1116
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->getScreenBrightnessSettingOnBootPhase()F

    move-result v0

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 1119
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_5f

    .line 1120
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_134

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 1122
    const-wide/16 v4, 0xa0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1123
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1125
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_13c

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    .line 1127
    const-wide/16 v1, 0x104

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1128
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1131
    :cond_5f
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeStateRunnable:Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerState;->setColorFadeStateRunnable(Lcom/android/server/display/DisplayPowerController$ColorFadeStateRunnable;)V

    .line 1133
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS_FLOAT:Landroid/util/FloatProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 1135
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    .line 1146
    :try_start_76
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 1148
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_90

    .line 1149
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(I)V

    .line 1152
    :cond_90
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1153
    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v2

    .line 1152
    invoke-static {v1, v2}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_76 .. :try_end_a1} :catch_a2

    .line 1156
    goto :goto_a3

    .line 1154
    :catch_a2
    move-exception v0

    .line 1158
    :goto_a3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1159
    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()F

    move-result v1

    .line 1158
    invoke-static {v0, v1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 1160
    .local v0, "brightness":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_c7

    .line 1162
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v1, :cond_c2

    .line 1163
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v1, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->start(F)V

    goto :goto_c7

    .line 1166
    :cond_c2
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    .line 1169
    :cond_c7
    :goto_c7
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1170
    const-string/jumbo v2, "screen_brightness_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1169
    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1172
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1173
    const-string/jumbo v2, "screen_brightness_for_vr_float"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1172
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1175
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1176
    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1175
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1179
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1180
    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1179
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1184
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1185
    const-string v2, "auto_brightness_limit"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1184
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1189
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1190
    const-string/jumbo v2, "sub_screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    .line 1189
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1193
    return-void

    :array_134
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_13c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isFakeAodAvailable()Z
    .registers 3

    .line 3652
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI:Z

    const/4 v1, 0x1

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_AOD_LOOK_CHARGING_UI_ON_SUB_DISPLAY:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-ne v0, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method private isLightSensorCovered()Z
    .registers 3

    .line 933
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 934
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v0

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 935
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isLightSensorOnFoldingSide()Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    const/4 v1, 0x0

    goto :goto_1b

    :cond_1a
    :goto_1a
    nop

    .line 933
    :goto_1b
    return v1
.end method

.method private isProximitySensorCovered()Z
    .registers 3

    .line 925
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->coverClosed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 926
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v0

    if-ne v0, v1, :cond_14

    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mIsProximitySensorOnFoldingSide:Z

    if-eqz v0, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    nop

    .line 925
    :goto_17
    return v1
.end method

.method private isValidBrightnessValue(F)Z
    .registers 3
    .param p1, "brightnessState"    # F

    .line 2374
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_e

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private logDisplayPolicyChanged(I)V
    .registers 4
    .param p1, "newPolicy"    # I

    .line 2849
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 2850
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 2851
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 2852
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 2853
    return-void
.end method

.method private notifyBrightnessChanged(IZZ)V
    .registers 16
    .param p1, "brightness"    # I
    .param p2, "userInitiated"    # Z
    .param p3, "hadUserDataPoint"    # Z

    .line 3057
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    if-ne v0, p1, :cond_5

    .line 3058
    return-void

    .line 3061
    :cond_5
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    .line 3064
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->convertToNits(I)F

    move-result v0

    .line 3067
    .local v0, "brightnessInNits":F
    if-nez p2, :cond_18

    .line 3068
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_1b

    .line 3069
    nop

    .line 3070
    invoke-virtual {v1}, Lcom/android/server/display/BrightnessMappingStrategy;->getAutoBrightnessScaleFactorValue()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_1b

    .line 3073
    :cond_18
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessChangedByUser:Z

    .line 3077
    :cond_1b
    :goto_1b
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v1, :cond_62

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_62

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_62

    .line 3082
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v1, :cond_36

    .line 3083
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v5, v1

    goto :goto_39

    .line 3084
    :cond_36
    const/high16 v1, 0x3f800000    # 1.0f

    move v5, v1

    :goto_39
    nop

    .line 3086
    .local v5, "powerFactor":F
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v1, :cond_53

    .line 3087
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3089
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v7

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3090
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v8

    .line 3087
    move v3, v0

    move v4, p2

    move v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyBrightnessChanged(FZFZZLandroid/util/Spline;)V

    goto :goto_62

    .line 3094
    :cond_53
    iget-object v6, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 3096
    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v11

    .line 3094
    move v7, v0

    move v8, p2

    move v9, v5

    move v10, p3

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    .line 3099
    .end local v5    # "powerFactor":F
    :cond_62
    :goto_62
    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 3517
    const/4 v0, -0x1

    if-eq p0, v0, :cond_13

    if-eqz p0, :cond_10

    const/4 v0, 0x1

    if-eq p0, v0, :cond_d

    .line 3525
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3523
    :cond_d
    const-string v0, "Positive"

    return-object v0

    .line 3521
    :cond_10
    const-string v0, "Negative"

    return-object v0

    .line 3519
    :cond_13
    const-string v0, "Unknown"

    return-object v0
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .registers 5
    .param p1, "adjustment"    # F

    .line 3002
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 3004
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putAutoBrightnessAdjustmentSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3005
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 3007
    return-void
.end method

.method private putScreenBrightnessSetting(FI)V
    .registers 7
    .param p1, "brightnessValue"    # F
    .param p2, "transitionTime"    # I

    .line 2979
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result p1

    .line 2982
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_f

    goto :goto_5a

    .line 2988
    :cond_f
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 2991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "putScreenBrightnessSetting: transitionTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2992
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "auto_brightness_transition_time"

    const/4 v3, -0x2

    invoke-static {v0, v2, p2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 2996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "putScreenBrightnessSetting: brightness="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness_float"

    invoke-static {v0, v1, p1, v3}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2999
    return-void

    .line 2984
    :cond_5a
    :goto_5a
    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 3530
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 3538
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3536
    :cond_d
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    .line 3534
    :cond_10
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    .line 3532
    :cond_13
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0
.end method

.method private resetScreenBrightnessLevelDuration()V
    .registers 5

    .line 3614
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    .line 3615
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    const/4 v1, 0x3

    if-ge v0, v1, :cond_14

    .line 3616
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 3617
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    aput-wide v2, v1, v0

    .line 3615
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3619
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .registers 3

    .line 3141
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 3142
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3143
    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .registers 3

    .line 3128
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 3129
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 3130
    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .registers 3

    .line 2844
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2845
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    .line 2846
    return-void
.end method

.method private sendScreenBrightnessLevelDuration(II)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "dualScreenPolicy"    # I

    .line 3622
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_25

    const/4 v0, 0x1

    if-eq p1, v0, :cond_e

    .line 3623
    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_e
    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->BLOOM_PROJECT:Z

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeDualScreenPolicy:I

    if-nez v1, :cond_18

    if-eq p2, v0, :cond_25

    .line 3626
    :cond_18
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->addScreenBrightnessLevelDuration()V

    .line 3627
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelDuration:[J

    invoke-interface {v0, v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->updateDuration([J)V

    .line 3628
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->resetScreenBrightnessLevelDuration()V

    .line 3630
    :cond_25
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenState:I

    .line 3631
    iput p2, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeDualScreenPolicy:I

    .line 3632
    return-void
.end method

.method private sendUpdatePowerState()V
    .registers 3

    .line 1092
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1093
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1094
    monitor-exit v0

    .line 1095
    return-void

    .line 1094
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .registers 3

    .line 1098
    iget-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_12

    .line 1099
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1100
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1101
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1103
    .end local v0    # "msg":Landroid/os/Message;
    :cond_12
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .registers 7
    .param p1, "debounceTime"    # J

    .line 2837
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    .line 2838
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2840
    :cond_d
    iput-wide p1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximityDebounceTime:J

    .line 2841
    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 2742
    const-string v0, "DisplayPowerController"

    if-eqz p1, :cond_1e

    .line 2743
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-nez v1, :cond_40

    .line 2746
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2748
    const-string/jumbo v1, "setProximitySensorEnabled::registerListener"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2749
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_40

    .line 2753
    :cond_1e
    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    if-eqz v1, :cond_40

    .line 2756
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorEnabled:Z

    .line 2757
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    .line 2758
    iput v1, p0, Lcom/android/server/display/DisplayPowerController;->mPendingProximity:I

    .line 2759
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2761
    const-string/jumbo v1, "setProximitySensorEnabled::unregisterListener"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 2763
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->clearPendingProximityDebounceTime()V

    .line 2766
    :cond_40
    :goto_40
    return-void
.end method

.method private setReportedScreenState(I)V
    .registers 5
    .param p1, "state"    # I

    .line 2346
    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2347
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    .line 2348
    return-void
.end method

.method private setScreenState(I)Z
    .registers 4
    .param p1, "state"    # I

    .line 2159
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(II)Z
    .registers 5
    .param p1, "state"    # I
    .param p2, "stateInternal"    # I

    .line 2163
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IIIZ)Z
    .registers 20
    .param p1, "state"    # I
    .param p2, "stateInternal"    # I
    .param p3, "dualScreenPolicy"    # I
    .param p4, "reportOnly"    # Z

    .line 2172
    move-object v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v5, :cond_d

    move v0, v5

    goto :goto_e

    :cond_d
    move v0, v6

    :goto_e
    move v7, v0

    .line 2175
    .local v7, "isOff":Z
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    const/4 v8, 0x4

    const/4 v9, 0x3

    const-string v10, "DisplayPowerController"

    if-ne v0, v2, :cond_2b

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenStateInternal()I

    move-result v0

    if-ne v0, v3, :cond_2b

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2176
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getDualScreenPolicyInternal()I

    move-result v0

    if-eq v0, v4, :cond_103

    .line 2180
    :cond_2b
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v9, :cond_3e

    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 2181
    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v8, :cond_3c

    goto :goto_3e

    :cond_3c
    move v0, v6

    goto :goto_3f

    :cond_3e
    :goto_3e
    move v0, v5

    :goto_3f
    move v11, v0

    .line 2182
    .local v11, "wasDozeOrSuspend":Z
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    const/4 v12, 0x2

    if-eqz v0, :cond_65

    .line 2184
    if-eqz v11, :cond_61

    if-ne v2, v12, :cond_61

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    if-nez v0, :cond_61

    .line 2187
    const-string/jumbo v0, "setScreenState(): mSeamlessAodReady : false AOD"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v0, :cond_60

    .line 2189
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mAodManagerInternal:Lcom/samsung/android/aod/AODManagerInternal;

    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReadyListener:Lcom/android/server/display/DisplayPowerController$SeamlessAodReadyListener;

    invoke-virtual {v0, v8}, Lcom/samsung/android/aod/AODManagerInternal;->screenTurningOn(Lcom/samsung/android/aod/AODManager$AODChangeListener;)V

    .line 2190
    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 2192
    :cond_60
    return v6

    .line 2194
    :cond_61
    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mSeamlessAodReady:Z

    .line 2195
    iput-boolean v6, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    .line 2200
    :cond_65
    if-ne v2, v12, :cond_69

    move v0, v5

    goto :goto_6a

    :cond_69
    move v0, v6

    :goto_6a
    move v13, v0

    .line 2201
    .local v13, "isGlobalOn":Z
    if-ne v3, v12, :cond_6f

    move v0, v5

    goto :goto_70

    :cond_6f
    move v0, v6

    :goto_70
    move v14, v0

    .line 2202
    .local v14, "isInternalOn":Z
    if-eqz v13, :cond_a1

    .line 2203
    if-eqz v14, :cond_87

    .line 2204
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    if-nez v0, :cond_a3

    .line 2205
    const-string/jumbo v0, "mWindowManagerPolicy.internalScreenTurningOn"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2206
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->internalScreenTurningOn()V

    .line 2207
    iput v12, v1, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    goto :goto_a3

    .line 2210
    :cond_87
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    if-ne v0, v12, :cond_a3

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v0, :cond_a3

    .line 2212
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v12, :cond_9e

    .line 2213
    const-string/jumbo v0, "mWindowManagerPolicy.internalScreenTurningOff"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2214
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->internalScreenTurningOff()V

    .line 2218
    :cond_9e
    iput v6, v1, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    goto :goto_a3

    .line 2222
    :cond_a1
    iput v12, v1, Lcom/android/server/display/DisplayPowerController;->mReportedInternalScreenStateToPolicy:I

    .line 2228
    :cond_a3
    :goto_a3
    if-eqz v7, :cond_c9

    iget-boolean v0, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v0, :cond_c9

    .line 2229
    iget v0, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v0, v12, :cond_c4

    .line 2230
    invoke-direct {p0, v9}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2231
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOff()V

    .line 2233
    const-string/jumbo v0, "mWindowManagerPolicy.screenTurningOff()"

    invoke-static {v10, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2234
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v12, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v0, v12}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    .line 2235
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    goto :goto_c9

    .line 2236
    :cond_c4
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_c9

    .line 2238
    return v6

    .line 2242
    :cond_c9
    :goto_c9
    if-nez p4, :cond_103

    .line 2243
    const-wide/32 v5, 0x20000

    const-string v0, "ScreenState"

    invoke-static {v5, v6, v0, v2}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 2246
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "debug.tracing.screen_state"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2249
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/display/DisplayPowerState;->setScreenState(III)V

    .line 2253
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SFC_FEATURE_FAST_WAKE_UP:Z

    if-eqz v0, :cond_f0

    .line 2254
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mHandlerEarly:Landroid/os/Handler;

    new-instance v5, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v5, p0, v2, v4}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;II)V

    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_103

    .line 2272
    :cond_f0
    :try_start_f0
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 2274
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_fe

    .line 2275
    iget-object v0, v1, Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v4}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(I)V

    .line 2279
    :cond_fe
    invoke-direct {p0, v2, v4}, Lcom/android/server/display/DisplayPowerController;->sendScreenBrightnessLevelDuration(II)V
    :try_end_101
    .catch Landroid/os/RemoteException; {:try_start_f0 .. :try_end_101} :catch_102

    .line 2282
    goto :goto_103

    .line 2280
    :catch_102
    move-exception v0

    .line 2303
    .end local v11    # "wasDozeOrSuspend":Z
    .end local v13    # "isGlobalOn":Z
    .end local v14    # "isInternalOn":Z
    :cond_103
    :goto_103
    if-eq v2, v9, :cond_10a

    if-ne v2, v8, :cond_108

    goto :goto_10a

    :cond_108
    const/4 v0, 0x0

    goto :goto_10b

    :cond_10a
    :goto_10a
    const/4 v0, 0x1

    .line 2304
    .local v0, "isDoze":Z
    :goto_10b
    if-eqz v7, :cond_128

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v5, :cond_128

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_128

    .line 2306
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2307
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2309
    const-string/jumbo v5, "mWindowManagerPolicy.screenTurnedOff()"

    invoke-static {v10, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_140

    .line 2311
    :cond_128
    if-nez v7, :cond_140

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v5, v9, :cond_140

    .line 2316
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOff()V

    .line 2318
    const-string/jumbo v5, "mWindowManagerPolicy.screenTurnedOff()(transitional)"

    invoke-static {v10, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2319
    iget-object v5, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v5}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    .line 2320
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2322
    :cond_140
    :goto_140
    if-nez v7, :cond_17d

    iget v5, v1, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-eqz v5, :cond_14e

    iget-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    if-eqz v5, :cond_14b

    goto :goto_14e

    :cond_14b
    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_17f

    :cond_14e
    :goto_14e
    if-nez v0, :cond_17d

    .line 2326
    const/4 v5, 0x0

    iput-boolean v5, v1, Lcom/android/server/display/DisplayPowerController;->mPendingUnfolding:Z

    .line 2328
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2329
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v8}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_166

    .line 2330
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->blockScreenOn()V

    goto :goto_169

    .line 2332
    :cond_166
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->unblockScreenOn()V

    .line 2335
    :goto_169
    const-string/jumbo v8, "mWindowManagerPolicy.screenTurningOn() +"

    invoke-static {v10, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v9, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v8, v9}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    .line 2338
    const-string/jumbo v8, "mWindowManagerPolicy.screenTurningOn() -"

    invoke-static {v10, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17f

    .line 2322
    :cond_17d
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 2342
    :goto_17f
    iget-object v8, v1, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v8, :cond_184

    move v5, v6

    :cond_184
    return v5
.end method

.method private setScreenState(IZ)Z
    .registers 4
    .param p1, "state"    # I
    .param p2, "reportOnly"    # Z

    .line 2167
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-direct {p0, p1, p1, v0, p2}, Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z

    move-result v0

    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 3543
    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 3551
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3549
    :cond_d
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    .line 3547
    :cond_10
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    .line 3545
    :cond_13
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0
.end method

.method private unblockScreenOff()V
    .registers 7

    .line 2149
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_32

    .line 2150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    .line 2151
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2152
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2153
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2155
    .end local v0    # "delay":J
    :cond_32
    return-void
.end method

.method private unblockScreenOn()V
    .registers 7

    .line 2131
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_32

    .line 2132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    .line 2133
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/display/DisplayPowerController;->mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    .line 2134
    .local v0, "delay":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 2137
    .end local v0    # "delay":J
    :cond_32
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .registers 5

    .line 3010
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 3011
    return v1

    .line 3013
    :cond_a
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_17

    .line 3014
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 3015
    return v1

    .line 3017
    :cond_17
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 3018
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessAdjustment:F

    .line 3019
    const/4 v0, 0x1

    return v0
.end method

.method private updateAutoBrightnessScaleFactor()Z
    .registers 5

    .line 3024
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_7

    .line 3025
    return v1

    .line 3027
    :cond_7
    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    if-ne v3, v0, :cond_e

    .line 3028
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    .line 3029
    return v1

    .line 3031
    :cond_e
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    .line 3032
    iput v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingAutoBrightnessScaleFactorSetting:I

    .line 3033
    const/4 v0, 0x1

    return v0
.end method

.method private updateForceUpdateAbJob()V
    .registers 9

    .line 3311
    const/4 v0, 0x0

    .line 3312
    .local v0, "interactive":Z
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_b

    .line 3313
    const/4 v0, 0x1

    .line 3316
    :cond_b
    const/4 v1, 0x0

    .line 3317
    .local v1, "updateIntervalExceeded":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 3319
    .local v2, "now":J
    iget-wide v4, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1b

    .line 3320
    const/4 v1, 0x1

    .line 3323
    :cond_1b
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v4, :cond_37

    .line 3324
    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    if-nez v5, :cond_37

    if-nez v0, :cond_37

    if-eqz v1, :cond_37

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessChangedByUser:Z

    if-eqz v5, :cond_37

    .line 3328
    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->appliedShortTermModel()Z

    move-result v4

    if-nez v4, :cond_37

    .line 3329
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->forceUpdateAbJob()V

    .line 3331
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    .line 3342
    :cond_37
    return-void
.end method

.method private updateLastBrightnessSettingChangedTime()V
    .registers 3

    .line 3570
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 3571
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    .line 3572
    return-void
.end method

.method private updatePowerState()V
    .registers 51

    .line 1226
    move-object/from16 v7, p0

    const/4 v1, 0x0

    .line 1227
    .local v1, "mustInitialize":Z
    const/4 v8, 0x0

    .line 1228
    .local v8, "brightnessAdjustmentFlags":I
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1232
    const/4 v2, 0x0

    .line 1235
    .local v2, "earlyWakeUpRequest":Z
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1236
    const/4 v0, 0x0

    :try_start_f
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    .line 1237
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_17

    .line 1238
    monitor-exit v3

    return-void

    .line 1241
    :cond_17
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v4, :cond_4d

    .line 1242
    new-instance v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v4, v5}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1243
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1244
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1247
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    iput-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1248
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 1252
    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v4, v7, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    .line 1253
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v4, v7, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    .line 1257
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    iput-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 1258
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 1262
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    move v2, v4

    .line 1263
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1266
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1267
    const/4 v1, 0x1

    .line 1270
    const/4 v4, 0x3

    move v9, v1

    move v10, v2

    move v11, v4

    .local v4, "previousPolicy":I
    goto :goto_97

    .line 1271
    .end local v4    # "previousPolicy":I
    :cond_4d
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-eqz v4, :cond_90

    .line 1272
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 1273
    .restart local v4    # "previousPolicy":I
    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1274
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    iget-boolean v6, v7, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v5, v6

    iput-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1275
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1278
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    iget-boolean v6, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    or-int/2addr v5, v6

    iput-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1279
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 1283
    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityPositiveDebounce:I

    iput v5, v7, Lcom/android/server/display/DisplayPowerController;->mSensorPositiveDebounceDelay:I

    .line 1284
    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->proximityNegativeDebounce:I

    iput v5, v7, Lcom/android/server/display/DisplayPowerController;->mSensorNegativeDebounceDelay:I

    .line 1288
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    iget-boolean v6, v7, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    or-int/2addr v5, v6

    iput-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    .line 1289
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 1293
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    or-int/2addr v2, v5

    .line 1294
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1297
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1298
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    move v9, v1

    move v10, v2

    move v11, v4

    goto :goto_97

    .line 1300
    .end local v4    # "previousPolicy":I
    :cond_90
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_94
    .catchall {:try_start_f .. :try_end_94} :catchall_a19

    move v9, v1

    move v10, v2

    move v11, v4

    .line 1303
    .end local v1    # "mustInitialize":Z
    .end local v2    # "earlyWakeUpRequest":Z
    .local v9, "mustInitialize":Z
    .local v10, "earlyWakeUpRequest":Z
    .local v11, "previousPolicy":I
    :goto_97
    :try_start_97
    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    const/4 v12, 0x1

    if-nez v1, :cond_9e

    move v1, v12

    goto :goto_9f

    :cond_9e
    move v1, v0

    :goto_9f
    move v13, v1

    .line 1304
    .local v13, "mustNotify":Z
    iget v1, v7, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    move v14, v1

    .line 1305
    .local v14, "actualDisplayState":I
    monitor-exit v3
    :try_end_a4
    .catchall {:try_start_97 .. :try_end_a4} :catchall_a0f

    .line 1308
    if-eqz v9, :cond_a9

    .line 1309
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->initialize()V

    .line 1316
    :cond_a9
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 1317
    .local v1, "brightnessState":F
    const/4 v2, 0x0

    .line 1318
    .local v2, "performScreenOffTransition":Z
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v15, 0x4

    const/4 v6, 0x2

    if-eqz v3, :cond_ed

    if-eq v3, v12, :cond_c4

    if-eq v3, v15, :cond_be

    .line 1341
    const/4 v3, 0x2

    move/from16 v16, v1

    move/from16 v17, v2

    .local v3, "state":I
    goto :goto_f3

    .line 1336
    .end local v3    # "state":I
    :cond_be
    const/4 v3, 0x5

    .line 1337
    .restart local v3    # "state":I
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_f3

    .line 1324
    .end local v3    # "state":I
    :cond_c4
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v3, :cond_cf

    .line 1325
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    .restart local v3    # "state":I
    goto :goto_d0

    .line 1327
    .end local v3    # "state":I
    :cond_cf
    const/4 v3, 0x3

    .line 1329
    .restart local v3    # "state":I
    :goto_d0
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v4, :cond_e8

    .line 1330
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v4

    if-nez v4, :cond_e8

    .line 1331
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v1, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:F

    .line 1332
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v4, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_f3

    .line 1344
    :cond_e8
    move/from16 v16, v1

    move/from16 v17, v2

    goto :goto_f3

    .line 1320
    .end local v3    # "state":I
    :cond_ed
    const/4 v3, 0x1

    .line 1321
    .restart local v3    # "state":I
    const/4 v2, 0x1

    .line 1322
    move/from16 v16, v1

    move/from16 v17, v2

    .line 1344
    .end local v1    # "brightnessState":F
    .end local v2    # "performScreenOffTransition":Z
    .local v16, "brightnessState":F
    .local v17, "performScreenOffTransition":Z
    :goto_f3
    nop

    .line 1347
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_166

    .line 1348
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v1, :cond_112

    .line 1349
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorCovered()Z

    move-result v1

    if-nez v1, :cond_112

    .line 1350
    invoke-direct {v7, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1351
    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v1, :cond_13d

    iget v1, v7, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v1, v12, :cond_13d

    .line 1353
    iput-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    goto :goto_13d

    .line 1356
    :cond_112
    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    if-eqz v1, :cond_12e

    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v1, :cond_12e

    iget v1, v7, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v1, v12, :cond_12e

    if-eq v3, v12, :cond_12e

    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    if-nez v1, :cond_12e

    .line 1362
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorCovered()Z

    move-result v1

    if-nez v1, :cond_12e

    .line 1364
    invoke-direct {v7, v12}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    goto :goto_13d

    .line 1366
    :cond_12e
    invoke-direct {v7, v0}, Lcom/android/server/display/DisplayPowerController;->setProximitySensorEnabled(Z)V

    .line 1367
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1370
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-nez v1, :cond_13d

    .line 1371
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1372
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    .line 1376
    :cond_13d
    :goto_13d
    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-nez v1, :cond_145

    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    if-eqz v1, :cond_154

    :cond_145
    iget v1, v7, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-eq v1, v12, :cond_154

    .line 1381
    if-nez v1, :cond_14f

    .line 1382
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    .line 1383
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    .line 1386
    :cond_14f
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    .line 1387
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    .line 1392
    :cond_154
    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v1, :cond_168

    iget v1, v7, Lcom/android/server/display/DisplayPowerController;->mProximity:I

    if-ne v1, v12, :cond_168

    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-eqz v1, :cond_168

    .line 1396
    iput-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    .line 1397
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityNegativeWithWakelock()V

    goto :goto_168

    .line 1401
    :cond_166
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mWaitingForNegativeProximity:Z

    .line 1403
    :cond_168
    :goto_168
    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOffBecauseOfProximity:Z

    if-eqz v1, :cond_181

    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenOnEvenThoughProximityPositive:Z

    if-nez v1, :cond_181

    iget-boolean v1, v7, Lcom/android/server/display/DisplayPowerController;->mScreenTurnedOnWhileProximityPositive:Z

    if-nez v1, :cond_181

    .line 1407
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnProximityPositiveWithWakelock()V

    .line 1409
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dexDualViewMode:Z

    if-nez v1, :cond_181

    const/4 v3, 0x1

    move/from16 v18, v3

    goto :goto_183

    .line 1415
    :cond_181
    move/from16 v18, v3

    .end local v3    # "state":I
    .local v18, "state":I
    :goto_183
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v5

    .line 1418
    .local v5, "oldState":I
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v1, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    if-eqz v1, :cond_191

    move v3, v12

    goto :goto_193

    :cond_191
    move/from16 v3, v18

    .line 1419
    .local v3, "stateInternal":I
    :goto_193
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    .line 1420
    .local v4, "dualScreenPolicy":I
    const/4 v1, 0x0

    .line 1421
    .local v1, "dualScreenPolicyChanged":Z
    iget v2, v7, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    if-eq v4, v2, :cond_1a9

    .line 1423
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1a0

    .line 1424
    const/4 v1, 0x1

    .line 1428
    :cond_1a0
    iget-object v2, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dualScreenPolicy:I

    iput v2, v7, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    move/from16 v19, v1

    goto :goto_1ab

    .line 1421
    :cond_1a9
    move/from16 v19, v1

    .line 1433
    .end local v1    # "dualScreenPolicyChanged":Z
    .local v19, "dualScreenPolicyChanged":Z
    :goto_1ab
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mEarlyWakeUpManager:Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;

    if-eqz v1, :cond_1b2

    .line 1434
    invoke-virtual {v1, v10, v14}, Lcom/android/server/display/DisplayPowerController$EarlyWakeUpManager;->update(ZI)V

    .line 1439
    :cond_1b2
    move-object/from16 v1, p0

    move/from16 v2, v18

    move/from16 v20, v4

    .end local v4    # "dualScreenPolicy":I
    .local v20, "dualScreenPolicy":I
    move v6, v5

    .end local v5    # "oldState":I
    .local v6, "oldState":I
    move/from16 v5, v19

    move/from16 v21, v6

    const/4 v15, 0x2

    .end local v6    # "oldState":I
    .local v21, "oldState":I
    move/from16 v6, v17

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/DisplayPowerController;->animateScreenStateChange(IIIZZ)V

    .line 1441
    iget-object v1, v7, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    .line 1443
    .end local v18    # "state":I
    .local v1, "state":I
    const/4 v2, 0x5

    if-eq v1, v12, :cond_1d2

    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->internalDisplayOff:Z

    if-eqz v4, :cond_1d9

    .line 1445
    :cond_1d2
    const/16 v16, 0x0

    .line 1446
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v4, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1450
    :cond_1d9
    if-ne v1, v2, :cond_1e5

    .line 1451
    iget v4, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVr:F

    .line 1452
    .end local v16    # "brightnessState":F
    .local v4, "brightnessState":F
    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move/from16 v16, v4

    .line 1455
    .end local v4    # "brightnessState":F
    .restart local v16    # "brightnessState":F
    :cond_1e5
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    const/16 v5, 0x20

    if-eqz v4, :cond_20b

    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    .line 1457
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_20b

    .line 1460
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:F

    invoke-direct {v7, v4}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v16

    .line 1462
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1463
    iput-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1464
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    goto :goto_210

    .line 1466
    :cond_20b
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedScreenBrightnessOverride:Z

    .line 1467
    invoke-static {v5}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 1470
    :goto_210
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v4, :cond_21a

    .line 1471
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v4

    if-eqz v4, :cond_222

    .line 1472
    :cond_21a
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v4

    if-eqz v4, :cond_222

    move v4, v12

    goto :goto_223

    :cond_222
    move v4, v0

    .line 1473
    .local v4, "autoBrightnessEnabledInDoze":Z
    :goto_223
    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v5, :cond_23f

    if-eq v1, v15, :cond_22d

    if-eqz v4, :cond_23f

    .line 1475
    :cond_22d
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_23f

    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v5, :cond_23f

    .line 1477
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isLightSensorCovered()Z

    move-result v5

    if-nez v5, :cond_23f

    move v5, v12

    goto :goto_240

    :cond_23f
    move v5, v0

    .line 1480
    .local v5, "autoBrightnessEnabled":Z
    :goto_240
    iget-boolean v6, v7, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    if-eq v6, v5, :cond_24a

    .line 1481
    iput-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessEnabled:Z

    .line 1482
    if-eqz v5, :cond_24a

    .line 1483
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 1488
    :cond_24a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateUserSetScreenBrightness()Z

    move-result v6

    .line 1489
    .local v6, "userSetBrightnessChanged":Z
    const/high16 v2, 0x7fc00000    # Float.NaN

    if-nez v6, :cond_25a

    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, v15, v0

    if-nez v0, :cond_25c

    .line 1491
    :cond_25a
    iput v2, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1496
    :cond_25c
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    invoke-direct {v7, v0}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v0

    const/16 v15, 0x40

    if-eqz v0, :cond_277

    .line 1497
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 1498
    .end local v16    # "brightnessState":F
    .local v0, "brightnessState":F
    iput-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1499
    iget-object v12, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1500
    invoke-static {v15}, Lcom/android/server/power/PowerManagerUtil$History;->markBit(I)V

    move/from16 v16, v0

    goto :goto_27d

    .line 1502
    .end local v0    # "brightnessState":F
    .restart local v16    # "brightnessState":F
    :cond_277
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    .line 1503
    invoke-static {v15}, Lcom/android/server/power/PowerManagerUtil$History;->unMarkBit(I)V

    .line 1506
    :goto_27d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessAdjustment()Z

    move-result v2

    .line 1507
    .local v2, "autoBrightnessAdjustmentChanged":Z
    if-eqz v2, :cond_287

    .line 1508
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1511
    :cond_287
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateAutoBrightnessScaleFactor()Z

    move-result v12

    .line 1515
    .local v12, "autoBrightnessSclaeFatorChanged":Z
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_29f

    .line 1516
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mTemporaryAutoBrightnessAdjustment:F

    .line 1517
    .local v0, "autoBrightnessAdjustment":F
    const/4 v8, 0x1

    .line 1518
    const/4 v15, 0x1

    iput-boolean v15, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v49, v8

    move v8, v0

    move/from16 v0, v49

    goto :goto_2aa

    .line 1520
    .end local v0    # "autoBrightnessAdjustment":F
    :cond_29f
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessAdjustment:F

    .line 1521
    .restart local v0    # "autoBrightnessAdjustment":F
    const/4 v8, 0x2

    .line 1522
    const/4 v15, 0x0

    iput-boolean v15, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    move/from16 v49, v8

    move v8, v0

    move/from16 v0, v49

    .line 1528
    .local v0, "brightnessAdjustmentFlags":I
    .local v8, "autoBrightnessAdjustment":F
    :goto_2aa
    iget-object v15, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    move/from16 v35, v0

    .end local v0    # "brightnessAdjustmentFlags":I
    .local v35, "brightnessAdjustmentFlags":I
    const/4 v0, 0x0

    if-eqz v15, :cond_2c4

    cmpl-float v15, v16, v0

    if-eqz v15, :cond_2c4

    .line 1530
    const/high16 v16, 0x3f800000    # 1.0f

    .line 1531
    iget-object v15, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v0, 0x9

    invoke-virtual {v15, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1532
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    goto :goto_2c7

    .line 1534
    :cond_2c4
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedBrightnessBoost:Z

    .line 1538
    :goto_2c7
    const/4 v0, 0x0

    .line 1539
    .local v0, "useHbmAtManualMax":Z
    sget-boolean v15, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_USE_HBM_AT_MANUAL_MAX:Z

    if-eqz v15, :cond_356

    .line 1540
    iget-object v15, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-nez v15, :cond_319

    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpl-float v22, v16, v15

    if-eqz v22, :cond_2e1

    move/from16 v22, v0

    .end local v0    # "useHbmAtManualMax":Z
    .local v22, "useHbmAtManualMax":Z
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v0, v0, v15

    if-nez v0, :cond_31b

    goto :goto_2e3

    .end local v22    # "useHbmAtManualMax":Z
    .restart local v0    # "useHbmAtManualMax":Z
    :cond_2e1
    move/from16 v22, v0

    .end local v0    # "useHbmAtManualMax":Z
    .restart local v22    # "useHbmAtManualMax":Z
    :goto_2e3
    iget v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpl-float v0, v0, v15

    if-lez v0, :cond_31b

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    .line 1544
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_2ff

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->maxBrightness:F

    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpl-float v0, v0, v15

    if-ltz v0, :cond_31b

    :cond_2ff
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->mFTAMode:Z

    if-nez v0, :cond_31b

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1547
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isBrightOrDim()Z

    move-result v0

    if-eqz v0, :cond_31b

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_31b

    .line 1549
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isLightSensorCovered()Z

    move-result v0

    if-nez v0, :cond_31b

    .line 1550
    const/4 v0, 0x1

    .end local v22    # "useHbmAtManualMax":Z
    .restart local v0    # "useHbmAtManualMax":Z
    goto :goto_31d

    .line 1540
    :cond_319
    move/from16 v22, v0

    .line 1552
    .end local v0    # "useHbmAtManualMax":Z
    .restart local v22    # "useHbmAtManualMax":Z
    :cond_31b
    move/from16 v0, v22

    .end local v22    # "useHbmAtManualMax":Z
    .restart local v0    # "useHbmAtManualMax":Z
    :goto_31d
    iget-boolean v15, v7, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    if-eq v15, v0, :cond_351

    .line 1553
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    .line 1554
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    .end local v0    # "useHbmAtManualMax":Z
    .restart local v22    # "useHbmAtManualMax":Z
    const-string/jumbo v0, "updatePowerState : mUseHbmAtManualMax : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v15, 0x1

    new-array v0, v15, [Ljava/lang/Object;

    iget-boolean v15, v7, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v24, 0x0

    aput-object v15, v0, v24

    const/16 v15, 0x11

    invoke-static {v15, v0}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    goto :goto_353

    .line 1552
    .end local v22    # "useHbmAtManualMax":Z
    .restart local v0    # "useHbmAtManualMax":Z
    :cond_351
    move/from16 v22, v0

    .line 1561
    .end local v0    # "useHbmAtManualMax":Z
    .restart local v22    # "useHbmAtManualMax":Z
    :goto_353
    move/from16 v15, v22

    goto :goto_35a

    .line 1539
    .end local v22    # "useHbmAtManualMax":Z
    .restart local v0    # "useHbmAtManualMax":Z
    :cond_356
    move/from16 v22, v0

    .end local v0    # "useHbmAtManualMax":Z
    .restart local v22    # "useHbmAtManualMax":Z
    move/from16 v15, v22

    .line 1561
    .end local v22    # "useHbmAtManualMax":Z
    .local v15, "useHbmAtManualMax":Z
    :goto_35a
    const/4 v0, 0x0

    .line 1562
    .local v0, "resetBrightnessConfigurationRequested":Z
    move/from16 v22, v0

    .end local v0    # "resetBrightnessConfigurationRequested":Z
    .local v22, "resetBrightnessConfigurationRequested":Z
    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    if-eqz v0, :cond_37d

    .line 1564
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_36d

    .line 1565
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->clearAdaptiveBrightnessLongtermModelBuilder()V

    .line 1566
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/display/DisplayPowerController;->restartAdaptiveBrightnessLongtermModelBuilder(Z)V

    goto :goto_373

    .line 1569
    :cond_36d
    const/4 v0, 0x0

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->clearBrightnessEvents()V

    .line 1571
    :goto_373
    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    .line 1572
    .end local v22    # "resetBrightnessConfigurationRequested":Z
    .restart local v0    # "resetBrightnessConfigurationRequested":Z
    move/from16 v22, v0

    const/4 v0, 0x0

    .end local v0    # "resetBrightnessConfigurationRequested":Z
    .restart local v22    # "resetBrightnessConfigurationRequested":Z
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mResetBrightnessConfiguration:Z

    move/from16 v37, v22

    goto :goto_37f

    .line 1562
    :cond_37d
    move/from16 v37, v22

    .line 1578
    .end local v22    # "resetBrightnessConfigurationRequested":Z
    .local v37, "resetBrightnessConfigurationRequested":Z
    :goto_37f
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_38b

    if-nez v2, :cond_389

    if-eqz v6, :cond_38b

    :cond_389
    const/4 v0, 0x1

    goto :goto_38c

    :cond_38b
    const/4 v0, 0x0

    .line 1580
    .local v0, "userInitiatedChange":Z
    :goto_38c
    const/16 v22, 0x0

    .line 1582
    .local v22, "hadUserBrightnessPoint":Z
    move/from16 v38, v3

    .end local v3    # "stateInternal":I
    .local v38, "stateInternal":I
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_3d8

    .line 1583
    invoke-virtual {v3}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v3

    .line 1584
    .end local v22    # "hadUserBrightnessPoint":Z
    .local v3, "hadUserBrightnessPoint":Z
    move/from16 v39, v3

    .end local v3    # "hadUserBrightnessPoint":Z
    .local v39, "hadUserBrightnessPoint":Z
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v40, v4

    .end local v4    # "autoBrightnessEnabledInDoze":Z
    .local v40, "autoBrightnessEnabledInDoze":Z
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    move/from16 v41, v9

    .end local v9    # "mustInitialize":Z
    .local v41, "mustInitialize":Z
    iget-object v9, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move/from16 v42, v10

    .end local v10    # "earlyWakeUpRequest":Z
    .local v42, "earlyWakeUpRequest":Z
    iget v10, v7, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    move/from16 v43, v14

    .end local v14    # "actualDisplayState":I
    .local v43, "actualDisplayState":I
    iget-object v14, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v44, v15

    .end local v15    # "useHbmAtManualMax":Z
    .local v44, "useHbmAtManualMax":Z
    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mAutoBrightnessScaleFactorSetting:I

    move/from16 v45, v11

    .end local v11    # "previousPolicy":I
    .local v45, "previousPolicy":I
    iget-object v11, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dexDualViewMode:Z

    move-object/from16 v22, v3

    move/from16 v23, v5

    move/from16 v24, v4

    move-object/from16 v25, v9

    move/from16 v26, v10

    move/from16 v27, v6

    move/from16 v28, v8

    move/from16 v29, v2

    move/from16 v30, v14

    move/from16 v31, v37

    move/from16 v32, v15

    move/from16 v33, v12

    move/from16 v34, v11

    invoke-virtual/range {v22 .. v34}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZZLandroid/hardware/display/BrightnessConfiguration;FZFZIZIZZ)V

    move/from16 v3, v39

    goto :goto_3e6

    .line 1582
    .end local v39    # "hadUserBrightnessPoint":Z
    .end local v40    # "autoBrightnessEnabledInDoze":Z
    .end local v41    # "mustInitialize":Z
    .end local v42    # "earlyWakeUpRequest":Z
    .end local v43    # "actualDisplayState":I
    .end local v44    # "useHbmAtManualMax":Z
    .end local v45    # "previousPolicy":I
    .restart local v4    # "autoBrightnessEnabledInDoze":Z
    .restart local v9    # "mustInitialize":Z
    .restart local v10    # "earlyWakeUpRequest":Z
    .restart local v11    # "previousPolicy":I
    .restart local v14    # "actualDisplayState":I
    .restart local v15    # "useHbmAtManualMax":Z
    .restart local v22    # "hadUserBrightnessPoint":Z
    :cond_3d8
    move/from16 v40, v4

    move/from16 v41, v9

    move/from16 v42, v10

    move/from16 v45, v11

    move/from16 v43, v14

    move/from16 v44, v15

    .end local v4    # "autoBrightnessEnabledInDoze":Z
    .end local v9    # "mustInitialize":Z
    .end local v10    # "earlyWakeUpRequest":Z
    .end local v11    # "previousPolicy":I
    .end local v14    # "actualDisplayState":I
    .end local v15    # "useHbmAtManualMax":Z
    .restart local v40    # "autoBrightnessEnabledInDoze":Z
    .restart local v41    # "mustInitialize":Z
    .restart local v42    # "earlyWakeUpRequest":Z
    .restart local v43    # "actualDisplayState":I
    .restart local v44    # "useHbmAtManualMax":Z
    .restart local v45    # "previousPolicy":I
    move/from16 v3, v22

    .line 1595
    .end local v22    # "hadUserBrightnessPoint":Z
    .restart local v3    # "hadUserBrightnessPoint":Z
    :goto_3e6
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v4, :cond_3ef

    .line 1596
    iget-object v9, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v4, v9}, Lcom/android/server/display/BrightnessTracker;->setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V

    .line 1600
    :cond_3ef
    const/4 v4, 0x0

    .line 1603
    .local v4, "slowChange":Z
    const/4 v9, 0x0

    .line 1604
    .local v9, "automaticScreenBrightnessChanged":Z
    const/16 v10, 0xf

    const-string/jumbo v11, "sys.display.transition.weight"

    invoke-static {v11, v10}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1605
    .local v10, "weightedValueForTransition":I
    const/4 v11, 0x0

    .line 1608
    .local v11, "brightnessRampRateDynamic":F
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    const-wide v22, 0x408f400000000000L    # 1000.0

    if-eqz v14, :cond_517

    .line 1609
    move v14, v8

    .line 1610
    .local v14, "newAutoBrightnessAdjustment":F
    if-eqz v5, :cond_418

    .line 1611
    iget-object v15, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v15}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()F

    move-result v16

    .line 1612
    iget-object v15, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1613
    invoke-virtual {v15}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v14

    move/from16 v15, v16

    goto :goto_41a

    .line 1610
    :cond_418
    move/from16 v15, v16

    .line 1615
    .end local v16    # "brightnessState":F
    .local v15, "brightnessState":F
    :goto_41a
    invoke-direct {v7, v15}, Lcom/android/server/display/DisplayPowerController;->isValidBrightnessValue(F)Z

    move-result v16

    if-nez v16, :cond_440

    const/16 v16, 0x0

    cmpl-float v25, v15, v16

    if-nez v25, :cond_429

    move/from16 v25, v4

    goto :goto_442

    .line 1670
    :cond_429
    if-eqz v5, :cond_42d

    .line 1671
    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 1674
    :cond_42d
    move/from16 v25, v4

    const/4 v4, 0x0

    .end local v4    # "slowChange":Z
    .local v25, "slowChange":Z
    iput-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    move/from16 v26, v2

    move/from16 v28, v6

    move/from16 v31, v10

    move/from16 v29, v12

    move/from16 v16, v15

    move/from16 v4, v25

    goto/16 :goto_50b

    .line 1615
    .end local v25    # "slowChange":Z
    .restart local v4    # "slowChange":Z
    :cond_440
    move/from16 v25, v4

    .line 1619
    .end local v4    # "slowChange":Z
    .restart local v25    # "slowChange":Z
    :goto_442
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1620
    iget v4, v7, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    cmpl-float v4, v15, v4

    if-eqz v4, :cond_44e

    .line 1621
    const/4 v9, 0x1

    .line 1622
    iput v15, v7, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    .line 1627
    :cond_44e
    invoke-direct {v7, v15}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessExtended(F)F

    move-result v4

    .line 1630
    .end local v15    # "brightnessState":F
    .local v4, "brightnessState":F
    iget-boolean v15, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-eqz v15, :cond_4f5

    if-nez v2, :cond_4f5

    if-eqz v9, :cond_4f5

    .line 1632
    const/4 v15, 0x1

    .line 1635
    .end local v25    # "slowChange":Z
    .local v15, "slowChange":Z
    sget-boolean v16, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-nez v16, :cond_471

    sget-boolean v16, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V4:Z

    if-eqz v16, :cond_464

    goto :goto_471

    :cond_464
    move/from16 v26, v2

    move/from16 v16, v4

    move/from16 v28, v6

    move/from16 v31, v10

    move/from16 v29, v12

    move v4, v15

    goto/16 :goto_50b

    .line 1636
    :cond_471
    :goto_471
    move/from16 v16, v4

    .line 1637
    .local v16, "currentBrightness":F
    const/16 v25, 0x0

    cmpg-float v26, v16, v25

    if-gtz v26, :cond_47c

    const v16, 0x3b83126f    # 0.004f

    .line 1638
    :cond_47c
    move/from16 v26, v2

    .end local v2    # "autoBrightnessAdjustmentChanged":Z
    .local v26, "autoBrightnessAdjustmentChanged":Z
    iget-object v2, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v2}, Lcom/android/server/display/RampAnimator;->getTarget()F

    move-result v2

    .line 1639
    .local v2, "lastBrightness":F
    cmpg-float v27, v2, v25

    if-gtz v27, :cond_48b

    const v2, 0x3b83126f    # 0.004f

    .line 1641
    :cond_48b
    move/from16 v27, v4

    .end local v4    # "brightnessState":F
    .local v27, "brightnessState":F
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v4

    .line 1642
    .local v4, "currentLux":F
    move/from16 v28, v6

    .end local v6    # "userSetBrightnessChanged":Z
    .local v28, "userSetBrightnessChanged":Z
    iget v6, v7, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 1643
    .local v6, "lastLux":F
    const/16 v25, 0x0

    cmpg-float v29, v4, v25

    if-gtz v29, :cond_4a0

    const v4, 0x3f666666    # 0.9f

    .line 1644
    :cond_4a0
    cmpg-float v29, v6, v25

    if-gtz v29, :cond_4a7

    const v6, 0x3f666666    # 0.9f

    .line 1646
    :cond_4a7
    cmpg-float v25, v16, v2

    if-gez v25, :cond_4e1

    const/high16 v24, 0x3f800000    # 1.0f

    cmpg-float v25, v2, v24

    if-gtz v25, :cond_4e1

    .line 1648
    move/from16 v30, v11

    move/from16 v29, v12

    .end local v11    # "brightnessRampRateDynamic":F
    .end local v12    # "autoBrightnessSclaeFatorChanged":Z
    .local v29, "autoBrightnessSclaeFatorChanged":Z
    .local v30, "brightnessRampRateDynamic":F
    int-to-double v11, v10

    div-float v25, v2, v16

    div-float v31, v6, v4

    move/from16 v32, v2

    .end local v2    # "lastBrightness":F
    .local v32, "lastBrightness":F
    mul-float v2, v25, v31

    move/from16 v33, v9

    move/from16 v31, v10

    .end local v9    # "automaticScreenBrightnessChanged":Z
    .end local v10    # "weightedValueForTransition":I
    .local v31, "weightedValueForTransition":I
    .local v33, "automaticScreenBrightnessChanged":Z
    float-to-double v9, v2

    .line 1649
    invoke-static {v9, v10}, Ljava/lang/Math;->log10(D)D

    move-result-wide v9

    div-double/2addr v11, v9

    mul-double v11, v11, v22

    .line 1650
    .local v11, "maxMillis":D
    const-wide v9, 0x40dd4c0000000000L    # 30000.0

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v9

    .line 1651
    .end local v11    # "maxMillis":D
    .local v9, "maxMillis":D
    const-wide/16 v11, 0x0

    cmpl-double v2, v9, v11

    if-lez v2, :cond_4eb

    .line 1652
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    div-double/2addr v11, v9

    double-to-float v2, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    mul-float/2addr v11, v2

    .end local v30    # "brightnessRampRateDynamic":F
    .local v11, "brightnessRampRateDynamic":F
    goto :goto_4ed

    .line 1646
    .end local v29    # "autoBrightnessSclaeFatorChanged":Z
    .end local v31    # "weightedValueForTransition":I
    .end local v32    # "lastBrightness":F
    .end local v33    # "automaticScreenBrightnessChanged":Z
    .restart local v2    # "lastBrightness":F
    .local v9, "automaticScreenBrightnessChanged":Z
    .restart local v10    # "weightedValueForTransition":I
    .restart local v12    # "autoBrightnessSclaeFatorChanged":Z
    :cond_4e1
    move/from16 v32, v2

    move/from16 v33, v9

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v29, v12

    .line 1655
    .end local v2    # "lastBrightness":F
    .end local v9    # "automaticScreenBrightnessChanged":Z
    .end local v10    # "weightedValueForTransition":I
    .end local v11    # "brightnessRampRateDynamic":F
    .end local v12    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v29    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v30    # "brightnessRampRateDynamic":F
    .restart local v31    # "weightedValueForTransition":I
    .restart local v32    # "lastBrightness":F
    .restart local v33    # "automaticScreenBrightnessChanged":Z
    :cond_4eb
    move/from16 v11, v30

    .end local v30    # "brightnessRampRateDynamic":F
    .restart local v11    # "brightnessRampRateDynamic":F
    :goto_4ed
    iput v4, v7, Lcom/android/server/display/DisplayPowerController;->mLastAmbientLux:F

    .line 1656
    .end local v4    # "currentLux":F
    .end local v6    # "lastLux":F
    .end local v16    # "currentBrightness":F
    .end local v32    # "lastBrightness":F
    move v4, v15

    move/from16 v16, v27

    move/from16 v9, v33

    goto :goto_50b

    .line 1630
    .end local v15    # "slowChange":Z
    .end local v26    # "autoBrightnessAdjustmentChanged":Z
    .end local v27    # "brightnessState":F
    .end local v28    # "userSetBrightnessChanged":Z
    .end local v29    # "autoBrightnessSclaeFatorChanged":Z
    .end local v31    # "weightedValueForTransition":I
    .end local v33    # "automaticScreenBrightnessChanged":Z
    .local v2, "autoBrightnessAdjustmentChanged":Z
    .local v4, "brightnessState":F
    .local v6, "userSetBrightnessChanged":Z
    .restart local v9    # "automaticScreenBrightnessChanged":Z
    .restart local v10    # "weightedValueForTransition":I
    .restart local v12    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v25    # "slowChange":Z
    :cond_4f5
    move/from16 v26, v2

    move/from16 v27, v4

    move/from16 v28, v6

    move/from16 v33, v9

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v29, v12

    .line 1676
    .end local v2    # "autoBrightnessAdjustmentChanged":Z
    .end local v4    # "brightnessState":F
    .end local v6    # "userSetBrightnessChanged":Z
    .end local v9    # "automaticScreenBrightnessChanged":Z
    .end local v10    # "weightedValueForTransition":I
    .end local v11    # "brightnessRampRateDynamic":F
    .end local v12    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v26    # "autoBrightnessAdjustmentChanged":Z
    .restart local v27    # "brightnessState":F
    .restart local v28    # "userSetBrightnessChanged":Z
    .restart local v29    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v30    # "brightnessRampRateDynamic":F
    .restart local v31    # "weightedValueForTransition":I
    .restart local v33    # "automaticScreenBrightnessChanged":Z
    move/from16 v4, v25

    move/from16 v16, v27

    move/from16 v11, v30

    move/from16 v9, v33

    .end local v25    # "slowChange":Z
    .end local v27    # "brightnessState":F
    .end local v30    # "brightnessRampRateDynamic":F
    .end local v33    # "automaticScreenBrightnessChanged":Z
    .local v4, "slowChange":Z
    .restart local v9    # "automaticScreenBrightnessChanged":Z
    .restart local v11    # "brightnessRampRateDynamic":F
    .local v16, "brightnessState":F
    :goto_50b
    cmpl-float v2, v8, v14

    if-eqz v2, :cond_515

    .line 1679
    invoke-direct {v7, v14}, Lcom/android/server/display/DisplayPowerController;->putAutoBrightnessAdjustmentSetting(F)V

    move/from16 v2, v35

    goto :goto_516

    .line 1682
    :cond_515
    const/4 v2, 0x0

    .line 1684
    .end local v14    # "newAutoBrightnessAdjustment":F
    .end local v35    # "brightnessAdjustmentFlags":I
    .local v2, "brightnessAdjustmentFlags":I
    :goto_516
    goto :goto_527

    .line 1685
    .end local v26    # "autoBrightnessAdjustmentChanged":Z
    .end local v28    # "userSetBrightnessChanged":Z
    .end local v29    # "autoBrightnessSclaeFatorChanged":Z
    .end local v31    # "weightedValueForTransition":I
    .local v2, "autoBrightnessAdjustmentChanged":Z
    .restart local v6    # "userSetBrightnessChanged":Z
    .restart local v10    # "weightedValueForTransition":I
    .restart local v12    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v35    # "brightnessAdjustmentFlags":I
    :cond_517
    move/from16 v26, v2

    move/from16 v25, v4

    move/from16 v28, v6

    move/from16 v31, v10

    move/from16 v30, v11

    move/from16 v29, v12

    .end local v2    # "autoBrightnessAdjustmentChanged":Z
    .end local v4    # "slowChange":Z
    .end local v6    # "userSetBrightnessChanged":Z
    .end local v10    # "weightedValueForTransition":I
    .end local v11    # "brightnessRampRateDynamic":F
    .end local v12    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v25    # "slowChange":Z
    .restart local v26    # "autoBrightnessAdjustmentChanged":Z
    .restart local v28    # "userSetBrightnessChanged":Z
    .restart local v29    # "autoBrightnessSclaeFatorChanged":Z
    .restart local v30    # "brightnessRampRateDynamic":F
    .restart local v31    # "weightedValueForTransition":I
    const/4 v2, 0x0

    iput-boolean v2, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    .line 1686
    const/4 v2, 0x0

    .line 1690
    .end local v25    # "slowChange":Z
    .end local v30    # "brightnessRampRateDynamic":F
    .end local v35    # "brightnessAdjustmentFlags":I
    .local v2, "brightnessAdjustmentFlags":I
    .restart local v4    # "slowChange":Z
    .restart local v11    # "brightnessRampRateDynamic":F
    :goto_527
    const/4 v6, 0x3

    if-eq v1, v6, :cond_530

    const/4 v10, 0x4

    if-ne v1, v10, :cond_52e

    goto :goto_530

    :cond_52e
    const/4 v10, 0x0

    goto :goto_531

    :cond_530
    :goto_530
    const/4 v10, 0x1

    .line 1693
    .local v10, "isDozeOrSuspend":Z
    :goto_531
    sget-boolean v12, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_WA_WAITING_AOD_WHEN_WAKINGUP_FROM_DOZE:Z

    if-eqz v12, :cond_54b

    .line 1694
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_54b

    if-nez v10, :cond_541

    iget-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-eqz v12, :cond_54b

    .line 1696
    :cond_541
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v12

    if-nez v12, :cond_54b

    .line 1697
    iget v12, v7, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    move/from16 v16, v12

    .line 1702
    :cond_54b
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_566

    .line 1703
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v12

    if-eqz v12, :cond_566

    .line 1704
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->isFakeAodAvailable()Z

    move-result v12

    if-nez v12, :cond_566

    .line 1705
    iget v12, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    .line 1706
    .end local v16    # "brightnessState":F
    .local v12, "brightnessState":F
    iget-object v14, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v14, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move/from16 v16, v12

    .line 1709
    .end local v12    # "brightnessState":F
    .restart local v16    # "brightnessState":F
    :cond_566
    const/4 v6, 0x0

    .line 1712
    .local v6, "coverDisplayRampSkip":Z
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v12

    if-eqz v12, :cond_5b6

    .line 1713
    iget v12, v7, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    invoke-direct {v7, v12}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v12

    .line 1717
    .end local v16    # "brightnessState":F
    .restart local v12    # "brightnessState":F
    sget-boolean v14, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v14, :cond_58b

    iget-object v14, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 1718
    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->isLightSensorOnFoldingSide()Z

    move-result v14

    if-eqz v14, :cond_58b

    iget v14, v7, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_58b

    .line 1720
    iget v14, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForCoverDisplay:F

    invoke-direct {v7, v14}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightness(F)F

    move-result v12

    .line 1721
    const/4 v6, 0x1

    .line 1725
    :cond_58b
    iget-object v14, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1729
    iget-boolean v14, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v14, :cond_59a

    .line 1730
    iget v12, v7, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    move/from16 v16, v12

    goto :goto_59c

    .line 1729
    :cond_59a
    move/from16 v16, v12

    .line 1736
    .end local v12    # "brightnessState":F
    .restart local v16    # "brightnessState":F
    :goto_59c
    iget-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mUseHbmAtManualMax:Z

    if-eqz v12, :cond_5b6

    iget v12, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpl-float v12, v16, v12

    if-nez v12, :cond_5b6

    .line 1738
    iget-object v12, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v12}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()F

    move-result v12

    .line 1740
    .local v12, "autoBrightness":F
    iget v14, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    cmpl-float v14, v12, v14

    if-lez v14, :cond_5b6

    .line 1741
    invoke-direct {v7, v12}, Lcom/android/server/display/DisplayPowerController;->clampScreenBrightnessExtended(F)F

    move-result v16

    .line 1749
    .end local v12    # "autoBrightness":F
    :cond_5b6
    const/4 v12, 0x0

    .line 1750
    .local v12, "forceDimBrightness":Z
    const/4 v14, 0x0

    .line 1751
    .local v14, "forceDimRampSkip":Z
    iget-boolean v15, v7, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    move/from16 v25, v4

    .end local v4    # "slowChange":Z
    .restart local v25    # "slowChange":Z
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eq v15, v4, :cond_5da

    .line 1752
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    if-eqz v4, :cond_5d1

    .line 1753
    move v4, v8

    move v15, v9

    .end local v8    # "autoBrightnessAdjustment":F
    .end local v9    # "automaticScreenBrightnessChanged":Z
    .local v4, "autoBrightnessAdjustment":F
    .local v15, "automaticScreenBrightnessChanged":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, v7, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    goto :goto_5d3

    .line 1752
    .end local v4    # "autoBrightnessAdjustment":F
    .end local v15    # "automaticScreenBrightnessChanged":Z
    .restart local v8    # "autoBrightnessAdjustment":F
    .restart local v9    # "automaticScreenBrightnessChanged":Z
    :cond_5d1
    move v4, v8

    move v15, v9

    .line 1755
    .end local v8    # "autoBrightnessAdjustment":F
    .end local v9    # "automaticScreenBrightnessChanged":Z
    .restart local v4    # "autoBrightnessAdjustment":F
    .restart local v15    # "automaticScreenBrightnessChanged":Z
    :goto_5d3
    iget-object v8, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->batteryLevelCritical:Z

    iput-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    goto :goto_5dc

    .line 1751
    .end local v4    # "autoBrightnessAdjustment":F
    .end local v15    # "automaticScreenBrightnessChanged":Z
    .restart local v8    # "autoBrightnessAdjustment":F
    .restart local v9    # "automaticScreenBrightnessChanged":Z
    :cond_5da
    move v4, v8

    move v15, v9

    .line 1758
    .end local v8    # "autoBrightnessAdjustment":F
    .end local v9    # "automaticScreenBrightnessChanged":Z
    .restart local v4    # "autoBrightnessAdjustment":F
    .restart local v15    # "automaticScreenBrightnessChanged":Z
    :goto_5dc
    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mBatteryLevelCritical:Z

    if-eqz v8, :cond_5f6

    .line 1759
    iget-wide v8, v7, Lcom/android/server/display/DisplayPowerController;->mLastBatteryLevelCriticalTime:J

    move/from16 v27, v14

    move/from16 v30, v15

    .end local v14    # "forceDimRampSkip":Z
    .end local v15    # "automaticScreenBrightnessChanged":Z
    .local v27, "forceDimRampSkip":Z
    .local v30, "automaticScreenBrightnessChanged":Z
    iget-wide v14, v7, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    cmp-long v8, v8, v14

    if-lez v8, :cond_5fa

    iget-object v8, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->isPowered:Z

    if-nez v8, :cond_5fa

    if-nez v10, :cond_5fa

    .line 1761
    const/4 v12, 0x1

    goto :goto_5fa

    .line 1758
    .end local v27    # "forceDimRampSkip":Z
    .end local v30    # "automaticScreenBrightnessChanged":Z
    .restart local v14    # "forceDimRampSkip":Z
    .restart local v15    # "automaticScreenBrightnessChanged":Z
    :cond_5f6
    move/from16 v27, v14

    move/from16 v30, v15

    .line 1765
    .end local v14    # "forceDimRampSkip":Z
    .end local v15    # "automaticScreenBrightnessChanged":Z
    .restart local v27    # "forceDimRampSkip":Z
    .restart local v30    # "automaticScreenBrightnessChanged":Z
    :cond_5fa
    :goto_5fa
    if-eqz v12, :cond_60d

    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v8, :cond_60d

    .line 1766
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1767
    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v8, :cond_60b

    .line 1769
    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    iput v8, v7, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    .line 1771
    :cond_60b
    const/4 v14, 0x1

    .end local v27    # "forceDimRampSkip":Z
    .restart local v14    # "forceDimRampSkip":Z
    goto :goto_622

    .line 1772
    .end local v14    # "forceDimRampSkip":Z
    .restart local v27    # "forceDimRampSkip":Z
    :cond_60d
    if-nez v12, :cond_620

    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-eqz v8, :cond_620

    .line 1773
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    .line 1774
    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessModeSetting:I

    if-nez v8, :cond_61e

    .line 1776
    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingBeforeForceDim:F

    move/from16 v16, v8

    .line 1778
    :cond_61e
    const/4 v14, 0x1

    .end local v27    # "forceDimRampSkip":Z
    .restart local v14    # "forceDimRampSkip":Z
    goto :goto_622

    .line 1781
    .end local v14    # "forceDimRampSkip":Z
    .restart local v27    # "forceDimRampSkip":Z
    :cond_620
    move/from16 v14, v27

    .end local v27    # "forceDimRampSkip":Z
    .restart local v14    # "forceDimRampSkip":Z
    :goto_622
    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    const v9, 0x3d23d70a    # 0.04f

    if-eqz v8, :cond_63d

    .line 1782
    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v8, v16, v8

    if-lez v8, :cond_63d

    .line 1783
    sub-float v8, v16, v9

    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v8, v15}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v8, v15}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 1791
    :cond_63d
    iget-object v8, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v8, v8, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v15, 0x2

    if-ne v8, v15, :cond_670

    .line 1792
    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v8, v16, v8

    if-lez v8, :cond_664

    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedForceDimming:Z

    if-nez v8, :cond_664

    .line 1794
    sub-float v8, v16, v9

    iget v9, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    iget v9, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 1797
    .end local v16    # "brightnessState":F
    .local v8, "brightnessState":F
    iget-object v9, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    move/from16 v16, v8

    .line 1799
    .end local v8    # "brightnessState":F
    .restart local v16    # "brightnessState":F
    :cond_664
    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-nez v8, :cond_66a

    .line 1800
    const/4 v8, 0x0

    .end local v25    # "slowChange":Z
    .local v8, "slowChange":Z
    goto :goto_66c

    .line 1799
    .end local v8    # "slowChange":Z
    .restart local v25    # "slowChange":Z
    :cond_66a
    move/from16 v8, v25

    .line 1802
    .end local v25    # "slowChange":Z
    .restart local v8    # "slowChange":Z
    :goto_66c
    const/4 v9, 0x1

    iput-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_67b

    .line 1803
    .end local v8    # "slowChange":Z
    .restart local v25    # "slowChange":Z
    :cond_670
    iget-boolean v8, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    if-eqz v8, :cond_679

    .line 1804
    const/4 v8, 0x0

    .line 1805
    .end local v25    # "slowChange":Z
    .restart local v8    # "slowChange":Z
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedDimming:Z

    goto :goto_67b

    .line 1803
    .end local v8    # "slowChange":Z
    .restart local v25    # "slowChange":Z
    :cond_679
    move/from16 v8, v25

    .line 1810
    .end local v25    # "slowChange":Z
    .restart local v8    # "slowChange":Z
    :goto_67b
    iget-object v9, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v9, :cond_6b8

    .line 1811
    iget v9, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    cmpl-float v9, v16, v9

    if-lez v9, :cond_6a6

    .line 1812
    iget-object v9, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    .line 1813
    const/high16 v15, 0x3f800000    # 1.0f

    invoke-static {v9, v15}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 1814
    .local v9, "brightnessFactor":F
    mul-float v15, v16, v9

    .line 1815
    .local v15, "lowPowerBrightnessFloat":F
    move/from16 v25, v4

    .end local v4    # "autoBrightnessAdjustment":F
    .local v25, "autoBrightnessAdjustment":F
    iget v4, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v15, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1817
    .end local v16    # "brightnessState":F
    .local v4, "brightnessState":F
    move/from16 v16, v4

    .end local v4    # "brightnessState":F
    .restart local v16    # "brightnessState":F
    iget-object v4, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v27, v8

    const/4 v8, 0x2

    .end local v8    # "slowChange":Z
    .local v27, "slowChange":Z
    invoke-virtual {v4, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    goto :goto_6aa

    .line 1811
    .end local v9    # "brightnessFactor":F
    .end local v15    # "lowPowerBrightnessFloat":F
    .end local v25    # "autoBrightnessAdjustment":F
    .end local v27    # "slowChange":Z
    .local v4, "autoBrightnessAdjustment":F
    .restart local v8    # "slowChange":Z
    :cond_6a6
    move/from16 v25, v4

    move/from16 v27, v8

    .line 1819
    .end local v4    # "autoBrightnessAdjustment":F
    .end local v8    # "slowChange":Z
    .restart local v25    # "autoBrightnessAdjustment":F
    .restart local v27    # "slowChange":Z
    :goto_6aa
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-nez v4, :cond_6b0

    .line 1820
    const/4 v8, 0x0

    .end local v27    # "slowChange":Z
    .restart local v8    # "slowChange":Z
    goto :goto_6b2

    .line 1819
    .end local v8    # "slowChange":Z
    .restart local v27    # "slowChange":Z
    :cond_6b0
    move/from16 v8, v27

    .line 1822
    .end local v27    # "slowChange":Z
    .restart local v8    # "slowChange":Z
    :goto_6b2
    const/4 v4, 0x1

    iput-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v4, v16

    goto :goto_6cb

    .line 1823
    .end local v25    # "autoBrightnessAdjustment":F
    .restart local v4    # "autoBrightnessAdjustment":F
    :cond_6b8
    move/from16 v25, v4

    move/from16 v27, v8

    .end local v4    # "autoBrightnessAdjustment":F
    .end local v8    # "slowChange":Z
    .restart local v25    # "autoBrightnessAdjustment":F
    .restart local v27    # "slowChange":Z
    iget-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    if-eqz v4, :cond_6c7

    .line 1824
    const/4 v8, 0x0

    .line 1825
    .end local v27    # "slowChange":Z
    .restart local v8    # "slowChange":Z
    const/4 v4, 0x0

    iput-boolean v4, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedLowPower:Z

    move/from16 v4, v16

    goto :goto_6cb

    .line 1823
    .end local v8    # "slowChange":Z
    .restart local v27    # "slowChange":Z
    :cond_6c7
    move/from16 v4, v16

    move/from16 v8, v27

    .line 1829
    .end local v16    # "brightnessState":F
    .end local v27    # "slowChange":Z
    .local v4, "brightnessState":F
    .restart local v8    # "slowChange":Z
    :goto_6cb
    iget v9, v7, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    cmpl-float v9, v9, v4

    if-eqz v9, :cond_6d3

    .line 1830
    iput v4, v7, Lcom/android/server/display/DisplayPowerController;->mLastOriginalTarget:F

    .line 1835
    :cond_6d3
    iget-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v9, :cond_6df

    .line 1836
    const/4 v8, 0x1

    .line 1837
    const-string v9, "DisplayPowerController"

    const-string v15, "ForceSlowChange is requested, set slowChange as true"

    invoke-static {v9, v15}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1843
    :cond_6df
    iget-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOff:Z

    if-nez v9, :cond_8d0

    .line 1844
    iget-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    if-eqz v9, :cond_71d

    .line 1845
    const/4 v9, 0x2

    if-ne v1, v9, :cond_71a

    .line 1846
    iget v9, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-nez v9, :cond_6f8

    iget-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    if-eqz v9, :cond_6f8

    .line 1847
    iput v4, v7, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1848
    const/4 v9, 0x1

    iput v9, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_71d

    .line 1846
    :cond_6f8
    const/4 v9, 0x1

    .line 1849
    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v15, v9, :cond_70f

    iget-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v9, :cond_70f

    iget v9, v7, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightness:F

    .line 1851
    invoke-static {v4, v9}, Lcom/android/internal/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v9

    if-nez v9, :cond_70d

    .line 1853
    const/4 v9, 0x2

    iput v9, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_71d

    .line 1851
    :cond_70d
    const/4 v9, 0x2

    goto :goto_710

    .line 1849
    :cond_70f
    const/4 v9, 0x2

    .line 1854
    :goto_710
    iget v15, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-ne v15, v9, :cond_718

    .line 1855
    const/4 v9, 0x0

    iput v9, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    goto :goto_71d

    .line 1854
    :cond_718
    const/4 v9, 0x0

    goto :goto_71d

    .line 1858
    :cond_71a
    const/4 v9, 0x0

    iput v9, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    .line 1862
    :cond_71d
    :goto_71d
    const/4 v9, 0x5

    if-eq v1, v9, :cond_727

    move/from16 v15, v21

    .end local v21    # "oldState":I
    .local v15, "oldState":I
    if-ne v15, v9, :cond_725

    goto :goto_729

    :cond_725
    const/4 v9, 0x0

    goto :goto_72a

    .end local v15    # "oldState":I
    .restart local v21    # "oldState":I
    :cond_727
    move/from16 v15, v21

    .end local v21    # "oldState":I
    .restart local v15    # "oldState":I
    :goto_729
    const/4 v9, 0x1

    .line 1864
    .local v9, "wasOrWillBeInVr":Z
    :goto_72a
    move/from16 v16, v10

    const/4 v10, 0x2

    .end local v10    # "isDozeOrSuspend":Z
    .local v16, "isDozeOrSuspend":Z
    if-ne v1, v10, :cond_735

    iget v10, v7, Lcom/android/server/display/DisplayPowerController;->mSkipRampState:I

    if-eqz v10, :cond_735

    const/4 v10, 0x1

    goto :goto_736

    :cond_735
    const/4 v10, 0x0

    .line 1867
    .local v10, "initialRampSkip":Z
    :goto_736
    if-eqz v5, :cond_742

    move/from16 v21, v12

    .end local v12    # "forceDimBrightness":Z
    .local v21, "forceDimBrightness":Z
    iget-boolean v12, v7, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    if-eqz v12, :cond_740

    if-eqz v37, :cond_744

    :cond_740
    const/4 v12, 0x1

    goto :goto_745

    .end local v21    # "forceDimBrightness":Z
    .restart local v12    # "forceDimBrightness":Z
    :cond_742
    move/from16 v21, v12

    .end local v12    # "forceDimBrightness":Z
    .restart local v21    # "forceDimBrightness":Z
    :cond_744
    const/4 v12, 0x0

    .line 1873
    .local v12, "initialAutoBrightessRampSkip":Z
    :goto_745
    nop

    .line 1874
    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v27

    if-eqz v27, :cond_754

    move/from16 v27, v13

    .end local v13    # "mustNotify":Z
    .local v27, "mustNotify":Z
    iget-boolean v13, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    if-eqz v13, :cond_756

    const/4 v13, 0x1

    goto :goto_757

    .end local v27    # "mustNotify":Z
    .restart local v13    # "mustNotify":Z
    :cond_754
    move/from16 v27, v13

    .end local v13    # "mustNotify":Z
    .restart local v27    # "mustNotify":Z
    :cond_756
    const/4 v13, 0x0

    .line 1877
    .local v13, "hasBrightnessBuckets":Z
    :goto_757
    move/from16 v32, v5

    .end local v5    # "autoBrightnessEnabled":Z
    .local v32, "autoBrightnessEnabled":Z
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v5, :cond_76b

    iget-object v5, v7, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    .line 1878
    invoke-virtual {v5}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v5

    const/high16 v24, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v24

    if-nez v5, :cond_76b

    const/4 v5, 0x1

    goto :goto_76c

    :cond_76b
    const/4 v5, 0x0

    .line 1879
    .local v5, "isDisplayContentVisible":Z
    :goto_76c
    move/from16 v24, v2

    .end local v2    # "brightnessAdjustmentFlags":I
    .local v24, "brightnessAdjustmentFlags":I
    iget-boolean v2, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryBrightness:Z

    if-nez v2, :cond_779

    iget-boolean v2, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v2, :cond_777

    goto :goto_779

    :cond_777
    const/4 v2, 0x0

    goto :goto_77a

    :cond_779
    :goto_779
    const/4 v2, 0x1

    .line 1889
    .local v2, "brightnessIsTemporary":Z
    :goto_77a
    move/from16 v33, v3

    .end local v3    # "hadUserBrightnessPoint":Z
    .local v33, "hadUserBrightnessPoint":Z
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v3

    iput v3, v7, Lcom/android/server/display/DisplayPowerController;->mRawBrightnessForLearning:I

    .line 1890
    invoke-direct {v7, v4, v1}, Lcom/android/server/display/DisplayPowerController;->getFinalBrightness(FI)F

    move-result v4

    .line 1893
    const/4 v3, 0x0

    .line 1894
    .local v3, "rate":F
    move/from16 v34, v3

    .end local v3    # "rate":F
    .local v34, "rate":F
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v3}, Lcom/android/server/display/RampAnimator;->getTarget()F

    move-result v3

    .line 1897
    .local v3, "lastAnimationTarget":F
    if-nez v10, :cond_7f8

    if-nez v13, :cond_7f8

    if-nez v9, :cond_7f8

    if-eqz v5, :cond_7f8

    if-eqz v2, :cond_7a5

    move/from16 v35, v5

    .end local v5    # "isDisplayContentVisible":Z
    .local v35, "isDisplayContentVisible":Z
    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    if-eqz v5, :cond_7a2

    goto :goto_7a7

    :cond_7a2
    move/from16 v39, v6

    goto :goto_7fc

    .end local v35    # "isDisplayContentVisible":Z
    .restart local v5    # "isDisplayContentVisible":Z
    :cond_7a5
    move/from16 v35, v5

    .end local v5    # "isDisplayContentVisible":Z
    .restart local v35    # "isDisplayContentVisible":Z
    :goto_7a7
    const/4 v5, 0x1

    if-eq v15, v5, :cond_7f5

    .line 1899
    invoke-static {v15}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-nez v5, :cond_7f2

    invoke-static {v1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v5

    if-nez v5, :cond_7f2

    iget-boolean v5, v7, Lcom/android/server/display/DisplayPowerController;->mPassRampAnimation:Z

    if-nez v5, :cond_7f2

    if-nez v12, :cond_7f2

    if-nez v14, :cond_7f2

    if-nez v6, :cond_7f2

    if-eqz v19, :cond_7c5

    move/from16 v39, v6

    goto :goto_7fc

    .line 1915
    :cond_7c5
    iget v5, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    .line 1916
    .end local v34    # "rate":F
    .local v5, "rate":F
    if-eqz v8, :cond_7d7

    .line 1917
    const/16 v34, 0x0

    cmpl-float v39, v11, v34

    if-lez v39, :cond_7d2

    .line 1918
    move/from16 v34, v11

    goto :goto_7d5

    :cond_7d2
    const v34, 0x3e70f0f0

    :goto_7d5
    move/from16 v5, v34

    .line 1921
    :cond_7d7
    move/from16 v39, v6

    .end local v6    # "coverDisplayRampSkip":Z
    .local v39, "coverDisplayRampSkip":Z
    iget-object v6, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator;->getTarget()F

    move-result v6

    cmpl-float v6, v6, v4

    if-eqz v6, :cond_7e6

    .line 1922
    invoke-direct {v7, v4, v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FF)V

    .line 1925
    :cond_7e6
    iget-object v6, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v6}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v6

    if-nez v6, :cond_802

    .line 1926
    const/4 v6, 0x0

    iput-boolean v6, v7, Lcom/android/server/display/DisplayPowerController;->mForceSlowChange:Z

    goto :goto_802

    .line 1899
    .end local v5    # "rate":F
    .end local v39    # "coverDisplayRampSkip":Z
    .restart local v6    # "coverDisplayRampSkip":Z
    .restart local v34    # "rate":F
    :cond_7f2
    move/from16 v39, v6

    .end local v6    # "coverDisplayRampSkip":Z
    .restart local v39    # "coverDisplayRampSkip":Z
    goto :goto_7fc

    .line 1897
    .end local v39    # "coverDisplayRampSkip":Z
    .restart local v6    # "coverDisplayRampSkip":Z
    :cond_7f5
    move/from16 v39, v6

    .end local v6    # "coverDisplayRampSkip":Z
    .restart local v39    # "coverDisplayRampSkip":Z
    goto :goto_7fc

    .end local v35    # "isDisplayContentVisible":Z
    .end local v39    # "coverDisplayRampSkip":Z
    .local v5, "isDisplayContentVisible":Z
    .restart local v6    # "coverDisplayRampSkip":Z
    :cond_7f8
    move/from16 v35, v5

    move/from16 v39, v6

    .line 1908
    .end local v5    # "isDisplayContentVisible":Z
    .end local v6    # "coverDisplayRampSkip":Z
    .restart local v35    # "isDisplayContentVisible":Z
    .restart local v39    # "coverDisplayRampSkip":Z
    :goto_7fc
    const/4 v5, 0x0

    invoke-direct {v7, v4, v5}, Lcom/android/server/display/DisplayPowerController;->animateScreenBrightness(FF)V

    move/from16 v5, v34

    .line 1932
    .end local v34    # "rate":F
    .local v5, "rate":F
    :cond_802
    :goto_802
    if-nez v2, :cond_883

    .line 1933
    if-eqz v0, :cond_811

    iget-object v6, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v6, :cond_810

    .line 1934
    invoke-virtual {v6}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v6

    if-nez v6, :cond_811

    .line 1937
    :cond_810
    const/4 v0, 0x0

    .line 1941
    :cond_811
    const/4 v6, 0x0

    .line 1942
    .local v6, "applySplitLearning":Z
    const/16 v34, 0x0

    .line 1943
    .local v34, "learningAmount":I
    sget-boolean v46, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-nez v46, :cond_848

    move/from16 v46, v2

    .end local v2    # "brightnessIsTemporary":Z
    .local v46, "brightnessIsTemporary":Z
    iget v2, v7, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    if-ltz v2, :cond_845

    move/from16 v47, v6

    .end local v6    # "applySplitLearning":Z
    .local v47, "applySplitLearning":Z
    iget v6, v7, Lcom/android/server/display/DisplayPowerController;->mRawBrightnessForLearning:I

    if-ge v2, v6, :cond_84c

    iget-object v2, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_84c

    .line 1947
    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientLux()F

    move-result v2

    const/high16 v6, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v6

    if-gez v2, :cond_84c

    .line 1948
    iget v2, v7, Lcom/android/server/display/DisplayPowerController;->mRawBrightnessForLearning:I

    iget v6, v7, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    sub-int/2addr v2, v6

    const/4 v6, 0x5

    div-int/2addr v2, v6

    .line 1949
    .end local v34    # "learningAmount":I
    .local v2, "learningAmount":I
    const/4 v6, 0x1

    if-lt v2, v6, :cond_840

    .line 1950
    const/4 v6, 0x1

    move/from16 v34, v2

    .end local v47    # "applySplitLearning":Z
    .restart local v6    # "applySplitLearning":Z
    goto :goto_84e

    .line 1949
    .end local v6    # "applySplitLearning":Z
    .restart local v47    # "applySplitLearning":Z
    :cond_840
    move/from16 v34, v2

    move/from16 v6, v47

    goto :goto_84e

    .line 1943
    .end local v2    # "learningAmount":I
    .end local v47    # "applySplitLearning":Z
    .restart local v6    # "applySplitLearning":Z
    .restart local v34    # "learningAmount":I
    :cond_845
    move/from16 v47, v6

    .end local v6    # "applySplitLearning":Z
    .restart local v47    # "applySplitLearning":Z
    goto :goto_84c

    .end local v46    # "brightnessIsTemporary":Z
    .end local v47    # "applySplitLearning":Z
    .local v2, "brightnessIsTemporary":Z
    .restart local v6    # "applySplitLearning":Z
    :cond_848
    move/from16 v46, v2

    move/from16 v47, v6

    .line 1954
    .end local v2    # "brightnessIsTemporary":Z
    .end local v6    # "applySplitLearning":Z
    .restart local v46    # "brightnessIsTemporary":Z
    .restart local v47    # "applySplitLearning":Z
    :cond_84c
    :goto_84c
    move/from16 v6, v47

    .end local v47    # "applySplitLearning":Z
    .restart local v6    # "applySplitLearning":Z
    :goto_84e
    if-eqz v6, :cond_877

    .line 1955
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_851
    move/from16 v47, v6

    const/4 v6, 0x5

    .end local v6    # "applySplitLearning":Z
    .restart local v47    # "applySplitLearning":Z
    if-ge v2, v6, :cond_872

    .line 1956
    iget v6, v7, Lcom/android/server/display/DisplayPowerController;->mLastNotifiedBrightness:I

    add-int v6, v6, v34

    .line 1957
    .local v6, "brightnessForLearning":I
    move/from16 v48, v6

    const/4 v6, 0x4

    .end local v6    # "brightnessForLearning":I
    .local v48, "brightnessForLearning":I
    if-ne v2, v6, :cond_862

    .line 1958
    iget v6, v7, Lcom/android/server/display/DisplayPowerController;->mRawBrightnessForLearning:I

    .end local v48    # "brightnessForLearning":I
    .restart local v6    # "brightnessForLearning":I
    goto :goto_864

    .line 1957
    .end local v6    # "brightnessForLearning":I
    .restart local v48    # "brightnessForLearning":I
    :cond_862
    move/from16 v6, v48

    .line 1960
    .end local v48    # "brightnessForLearning":I
    .restart local v6    # "brightnessForLearning":I
    :goto_864
    move/from16 v48, v8

    move/from16 v8, v33

    .end local v33    # "hadUserBrightnessPoint":Z
    .local v8, "hadUserBrightnessPoint":Z
    .local v48, "slowChange":Z
    invoke-direct {v7, v6, v0, v8}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    .line 1955
    .end local v6    # "brightnessForLearning":I
    add-int/lit8 v2, v2, 0x1

    move/from16 v6, v47

    move/from16 v8, v48

    goto :goto_851

    .end local v48    # "slowChange":Z
    .local v8, "slowChange":Z
    .restart local v33    # "hadUserBrightnessPoint":Z
    :cond_872
    move/from16 v48, v8

    move/from16 v8, v33

    .end local v2    # "i":I
    .end local v33    # "hadUserBrightnessPoint":Z
    .local v8, "hadUserBrightnessPoint":Z
    .restart local v48    # "slowChange":Z
    goto :goto_889

    .line 1963
    .end local v47    # "applySplitLearning":Z
    .end local v48    # "slowChange":Z
    .local v6, "applySplitLearning":Z
    .local v8, "slowChange":Z
    .restart local v33    # "hadUserBrightnessPoint":Z
    :cond_877
    move/from16 v47, v6

    move/from16 v48, v8

    move/from16 v8, v33

    .end local v6    # "applySplitLearning":Z
    .end local v33    # "hadUserBrightnessPoint":Z
    .local v8, "hadUserBrightnessPoint":Z
    .restart local v47    # "applySplitLearning":Z
    .restart local v48    # "slowChange":Z
    iget v2, v7, Lcom/android/server/display/DisplayPowerController;->mRawBrightnessForLearning:I

    invoke-direct {v7, v2, v0, v8}, Lcom/android/server/display/DisplayPowerController;->notifyBrightnessChanged(IZZ)V

    goto :goto_889

    .line 1932
    .end local v34    # "learningAmount":I
    .end local v46    # "brightnessIsTemporary":Z
    .end local v47    # "applySplitLearning":Z
    .end local v48    # "slowChange":Z
    .local v2, "brightnessIsTemporary":Z
    .local v8, "slowChange":Z
    .restart local v33    # "hadUserBrightnessPoint":Z
    :cond_883
    move/from16 v46, v2

    move/from16 v48, v8

    move/from16 v8, v33

    .line 1969
    .end local v2    # "brightnessIsTemporary":Z
    .end local v33    # "hadUserBrightnessPoint":Z
    .local v8, "hadUserBrightnessPoint":Z
    .restart local v46    # "brightnessIsTemporary":Z
    .restart local v48    # "slowChange":Z
    :goto_889
    iget-boolean v2, v7, Lcom/android/server/display/DisplayPowerController;->mAppliedAutoBrightness:Z

    if-nez v2, :cond_893

    if-eqz v14, :cond_890

    goto :goto_893

    :cond_890
    move/from16 v36, v8

    goto :goto_8ce

    .line 1970
    :cond_893
    :goto_893
    const/4 v2, 0x0

    .line 1971
    .local v2, "transitionTime":I
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_8b6

    .line 1972
    iget v6, v7, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:F

    sub-float v6, v4, v6

    sub-float v6, v3, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 1973
    .local v6, "brightnessDiff":F
    move/from16 v33, v2

    move/from16 v18, v3

    .end local v2    # "transitionTime":I
    .end local v3    # "lastAnimationTarget":F
    .local v18, "lastAnimationTarget":F
    .local v33, "transitionTime":I
    float-to-double v2, v6

    move/from16 v36, v8

    move/from16 v34, v9

    .end local v8    # "hadUserBrightnessPoint":Z
    .end local v9    # "wasOrWillBeInVr":Z
    .local v34, "wasOrWillBeInVr":Z
    .local v36, "hadUserBrightnessPoint":Z
    float-to-double v8, v5

    div-double/2addr v2, v8

    mul-double v2, v2, v22

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    .end local v33    # "transitionTime":I
    .restart local v2    # "transitionTime":I
    goto :goto_8be

    .line 1971
    .end local v6    # "brightnessDiff":F
    .end local v18    # "lastAnimationTarget":F
    .end local v34    # "wasOrWillBeInVr":Z
    .end local v36    # "hadUserBrightnessPoint":Z
    .restart local v3    # "lastAnimationTarget":F
    .restart local v8    # "hadUserBrightnessPoint":Z
    .restart local v9    # "wasOrWillBeInVr":Z
    :cond_8b6
    move/from16 v33, v2

    move/from16 v18, v3

    move/from16 v36, v8

    move/from16 v34, v9

    .line 1975
    .end local v3    # "lastAnimationTarget":F
    .end local v8    # "hadUserBrightnessPoint":Z
    .end local v9    # "wasOrWillBeInVr":Z
    .restart local v18    # "lastAnimationTarget":F
    .restart local v34    # "wasOrWillBeInVr":Z
    .restart local v36    # "hadUserBrightnessPoint":Z
    :goto_8be
    const/4 v3, 0x1

    iput-boolean v3, v7, Lcom/android/server/display/DisplayPowerController;->mInitialAutoBrightnessUpdated:Z

    .line 1976
    iget v3, v7, Lcom/android/server/display/DisplayPowerController;->mFinalScreenBrightnessDiff:F

    sub-float v3, v4, v3

    invoke-direct {v7, v3, v2}, Lcom/android/server/display/DisplayPowerController;->putScreenBrightnessSetting(FI)V

    .line 1977
    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    .line 1983
    .end local v2    # "transitionTime":I
    .end local v5    # "rate":F
    .end local v10    # "initialRampSkip":Z
    .end local v12    # "initialAutoBrightessRampSkip":Z
    .end local v13    # "hasBrightnessBuckets":Z
    .end local v18    # "lastAnimationTarget":F
    .end local v34    # "wasOrWillBeInVr":Z
    .end local v35    # "isDisplayContentVisible":Z
    .end local v36    # "hadUserBrightnessPoint":Z
    .end local v46    # "brightnessIsTemporary":Z
    .restart local v8    # "hadUserBrightnessPoint":Z
    :goto_8ce
    move v2, v0

    .end local v8    # "hadUserBrightnessPoint":Z
    .restart local v36    # "hadUserBrightnessPoint":Z
    goto :goto_8e3

    .line 1843
    .end local v15    # "oldState":I
    .end local v16    # "isDozeOrSuspend":Z
    .end local v24    # "brightnessAdjustmentFlags":I
    .end local v27    # "mustNotify":Z
    .end local v32    # "autoBrightnessEnabled":Z
    .end local v36    # "hadUserBrightnessPoint":Z
    .end local v39    # "coverDisplayRampSkip":Z
    .end local v48    # "slowChange":Z
    .local v2, "brightnessAdjustmentFlags":I
    .local v3, "hadUserBrightnessPoint":Z
    .local v5, "autoBrightnessEnabled":Z
    .local v6, "coverDisplayRampSkip":Z
    .local v8, "slowChange":Z
    .local v10, "isDozeOrSuspend":Z
    .local v12, "forceDimBrightness":Z
    .local v13, "mustNotify":Z
    .local v21, "oldState":I
    :cond_8d0
    move/from16 v24, v2

    move/from16 v36, v3

    move/from16 v32, v5

    move/from16 v39, v6

    move/from16 v48, v8

    move/from16 v16, v10

    move/from16 v27, v13

    move/from16 v15, v21

    move/from16 v21, v12

    .end local v2    # "brightnessAdjustmentFlags":I
    .end local v3    # "hadUserBrightnessPoint":Z
    .end local v5    # "autoBrightnessEnabled":Z
    .end local v6    # "coverDisplayRampSkip":Z
    .end local v8    # "slowChange":Z
    .end local v10    # "isDozeOrSuspend":Z
    .end local v12    # "forceDimBrightness":Z
    .end local v13    # "mustNotify":Z
    .restart local v15    # "oldState":I
    .restart local v16    # "isDozeOrSuspend":Z
    .local v21, "forceDimBrightness":Z
    .restart local v24    # "brightnessAdjustmentFlags":I
    .restart local v27    # "mustNotify":Z
    .restart local v32    # "autoBrightnessEnabled":Z
    .restart local v36    # "hadUserBrightnessPoint":Z
    .restart local v39    # "coverDisplayRampSkip":Z
    .restart local v48    # "slowChange":Z
    move v2, v0

    .line 1983
    .end local v0    # "userInitiatedChange":Z
    .local v2, "userInitiatedChange":Z
    :goto_8e3
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f3

    if-eqz v24, :cond_8f0

    goto :goto_8f3

    :cond_8f0
    move/from16 v5, v24

    goto :goto_933

    .line 1984
    :cond_8f3
    :goto_8f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brightness ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] reason changing to: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    .line 1985
    move/from16 v5, v24

    .end local v24    # "brightnessAdjustmentFlags":I
    .local v5, "brightnessAdjustmentFlags":I
    invoke-virtual {v3, v5}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', previous reason: \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\'."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1984
    const-string v3, "DisplayPowerController"

    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    .line 1991
    :goto_933
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_954

    .line 1992
    const/4 v0, 0x2

    if-ne v1, v0, :cond_94e

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_94e

    .line 1993
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 1994
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_954

    .line 1996
    :cond_94e
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    .line 2001
    :cond_954
    :goto_954
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_95f

    instance-of v0, v0, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;

    if-eqz v0, :cond_95f

    .line 2003
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->updateForceUpdateAbJob()V

    .line 2011
    :cond_95f
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_987

    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    if-eqz v0, :cond_977

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    .line 2013
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_987

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_987

    :cond_977
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v3, v7, Lcom/android/server/display/DisplayPowerController;->mCleanListener:Ljava/lang/Runnable;

    .line 2014
    invoke-virtual {v0, v3}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_987

    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnByAodReady:Z

    if-nez v0, :cond_987

    const/4 v0, 0x1

    goto :goto_988

    :cond_987
    const/4 v0, 0x0

    :goto_988
    move v3, v0

    .line 2016
    .local v3, "ready":Z
    if-eqz v3, :cond_995

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    .line 2017
    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_995

    const/4 v0, 0x1

    goto :goto_996

    :cond_995
    const/4 v0, 0x0

    :goto_996
    move v6, v0

    .line 2020
    .local v6, "finished":Z
    if-eqz v3, :cond_9b0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_9b0

    iget v8, v7, Lcom/android/server/display/DisplayPowerController;->mReportedScreenStateToPolicy:I

    if-ne v8, v0, :cond_9b0

    .line 2022
    const/4 v0, 0x2

    invoke-direct {v7, v0}, Lcom/android/server/display/DisplayPowerController;->setReportedScreenState(I)V

    .line 2024
    const-string v0, "DisplayPowerController"

    const-string v8, "!@mWindowManagerPolicy.screenTurnedOn()"

    invoke-static {v0, v8}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2025
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    .line 2029
    :cond_9b0
    if-nez v6, :cond_9be

    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-nez v0, :cond_9be

    .line 2033
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    .line 2034
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 2038
    :cond_9be
    if-eqz v32, :cond_9cb

    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 2039
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->isAmbientLuxValid()Z

    move-result v0

    if-eqz v0, :cond_9c9

    goto :goto_9cb

    :cond_9c9
    const/4 v0, 0x0

    goto :goto_9cc

    :cond_9cb
    :goto_9cb
    const/4 v0, 0x1

    :goto_9cc
    move v8, v0

    .line 2043
    .local v8, "readyForAutoBrightness":Z
    if-eqz v3, :cond_9e7

    if-eqz v27, :cond_9e7

    if-eqz v8, :cond_9e7

    .line 2046
    iget-object v9, v7, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 2047
    :try_start_9d6
    iget-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v0, :cond_9de

    .line 2048
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    goto :goto_9df

    .line 2047
    :cond_9de
    const/4 v0, 0x1

    .line 2054
    :goto_9df
    monitor-exit v9
    :try_end_9e0
    .catchall {:try_start_9d6 .. :try_end_9e0} :catchall_9e4

    .line 2055
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/DisplayPowerController;->sendOnStateChangedWithWakelock()V

    goto :goto_9e8

    .line 2054
    :catchall_9e4
    move-exception v0

    :try_start_9e5
    monitor-exit v9
    :try_end_9e6
    .catchall {:try_start_9e5 .. :try_end_9e6} :catchall_9e4

    throw v0

    .line 2043
    :cond_9e7
    const/4 v0, 0x1

    .line 2059
    :goto_9e8
    if-eqz v6, :cond_9f7

    iget-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    if-eqz v9, :cond_9f7

    .line 2063
    const/4 v9, 0x0

    iput-boolean v9, v7, Lcom/android/server/display/DisplayPowerController;->mUnfinishedBusiness:Z

    .line 2064
    iget-object v10, v7, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v10}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_9f8

    .line 2059
    :cond_9f7
    const/4 v9, 0x0

    .line 2068
    :goto_9f8
    const/4 v10, 0x2

    if-eq v1, v10, :cond_9fc

    goto :goto_9fd

    :cond_9fc
    move v0, v9

    :goto_9fd
    iput-boolean v0, v7, Lcom/android/server/display/DisplayPowerController;->mDozing:Z

    .line 2070
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move/from16 v9, v45

    .end local v45    # "previousPolicy":I
    .local v9, "previousPolicy":I
    if-eq v9, v0, :cond_a0e

    .line 2071
    iget-object v0, v7, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v7, v0}, Lcom/android/server/display/DisplayPowerController;->logDisplayPolicyChanged(I)V

    .line 2073
    :cond_a0e
    return-void

    .line 1305
    .end local v1    # "state":I
    .end local v2    # "userInitiatedChange":Z
    .end local v3    # "ready":Z
    .end local v4    # "brightnessState":F
    .end local v5    # "brightnessAdjustmentFlags":I
    .end local v6    # "finished":Z
    .end local v11    # "brightnessRampRateDynamic":F
    .end local v14    # "forceDimRampSkip":Z
    .end local v15    # "oldState":I
    .end local v16    # "isDozeOrSuspend":Z
    .end local v17    # "performScreenOffTransition":Z
    .end local v19    # "dualScreenPolicyChanged":Z
    .end local v20    # "dualScreenPolicy":I
    .end local v21    # "forceDimBrightness":Z
    .end local v25    # "autoBrightnessAdjustment":F
    .end local v26    # "autoBrightnessAdjustmentChanged":Z
    .end local v27    # "mustNotify":Z
    .end local v28    # "userSetBrightnessChanged":Z
    .end local v29    # "autoBrightnessSclaeFatorChanged":Z
    .end local v30    # "automaticScreenBrightnessChanged":Z
    .end local v31    # "weightedValueForTransition":I
    .end local v32    # "autoBrightnessEnabled":Z
    .end local v36    # "hadUserBrightnessPoint":Z
    .end local v37    # "resetBrightnessConfigurationRequested":Z
    .end local v38    # "stateInternal":I
    .end local v39    # "coverDisplayRampSkip":Z
    .end local v40    # "autoBrightnessEnabledInDoze":Z
    .end local v41    # "mustInitialize":Z
    .end local v42    # "earlyWakeUpRequest":Z
    .end local v43    # "actualDisplayState":I
    .end local v44    # "useHbmAtManualMax":Z
    .end local v48    # "slowChange":Z
    .local v8, "brightnessAdjustmentFlags":I
    .local v9, "mustInitialize":Z
    .local v10, "earlyWakeUpRequest":Z
    :catchall_a0f
    move-exception v0

    move/from16 v41, v9

    move/from16 v42, v10

    move/from16 v1, v41

    move/from16 v2, v42

    .end local v9    # "mustInitialize":Z
    .end local v10    # "earlyWakeUpRequest":Z
    .restart local v41    # "mustInitialize":Z
    .restart local v42    # "earlyWakeUpRequest":Z
    goto :goto_a1a

    .end local v41    # "mustInitialize":Z
    .end local v42    # "earlyWakeUpRequest":Z
    .local v1, "mustInitialize":Z
    .local v2, "earlyWakeUpRequest":Z
    :catchall_a19
    move-exception v0

    :goto_a1a
    :try_start_a1a
    monitor-exit v3
    :try_end_a1b
    .catchall {:try_start_a1a .. :try_end_a1b} :catchall_a19

    throw v0
.end method

.method private updateScreenBrightnessLevelDuration(F)V
    .registers 9
    .param p1, "value"    # F

    .line 3581
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    .line 3582
    .local v0, "policy":I
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    .line 3583
    .local v1, "screenState":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v2

    .line 3585
    .local v2, "brightness":I
    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_16

    if-ne v0, v3, :cond_41

    :cond_16
    if-ne v1, v3, :cond_41

    .line 3587
    const/4 v3, -0x1

    .line 3588
    .local v3, "bin":I
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    cmpg-float v4, p1, v4

    if-gtz v4, :cond_21

    .line 3589
    const/4 v3, 0x0

    goto :goto_2e

    .line 3590
    :cond_21
    const/16 v4, 0xe6

    const/16 v5, 0xff

    if-lt v2, v4, :cond_2b

    if-gt v2, v5, :cond_2b

    .line 3591
    const/4 v3, 0x1

    goto :goto_2e

    .line 3592
    :cond_2b
    if-le v2, v5, :cond_2e

    .line 3593
    const/4 v3, 0x2

    .line 3595
    :cond_2e
    :goto_2e
    iget v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    if-eq v4, v3, :cond_41

    .line 3596
    if-ltz v3, :cond_3c

    .line 3597
    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelTriggeredTime:[J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 3599
    :cond_3c
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->addScreenBrightnessLevelDuration()V

    .line 3600
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessLevelBin:I

    .line 3603
    .end local v3    # "bin":I
    :cond_41
    return-void
.end method

.method private updateUserSetScreenBrightness()Z
    .registers 5

    .line 3038
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_28

    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    const/4 v2, 0x0

    cmpg-float v2, v0, v2

    if-gez v2, :cond_11

    goto :goto_28

    .line 3042
    :cond_11
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    cmpl-float v2, v2, v0

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1e

    .line 3043
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 3044
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 3045
    return v1

    .line 3047
    :cond_1e
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    .line 3048
    iput v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastUserSetScreenBrightness:F

    .line 3049
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenBrightnessSetting:F

    .line 3050
    iput v3, p0, Lcom/android/server/display/DisplayPowerController;->mTemporaryScreenBrightness:F

    .line 3051
    const/4 v0, 0x1

    return v0

    .line 3040
    :cond_28
    :goto_28
    return v1
.end method


# virtual methods
.method addBrightnessWeights(FFFF)V
    .registers 6
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "durationSec"    # F
    .param p4, "continuity"    # F

    .line 3828
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_7

    .line 3829
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->addBrightnessWeightDirectly(FFFF)V

    .line 3831
    :cond_7
    return-void
.end method

.method clearAdaptiveBrightnessLongtermModelBuilder()V
    .registers 2

    .line 3841
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_7

    .line 3842
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->clearBrightnessEvents()V

    .line 3844
    :cond_7
    return-void
.end method

.method public convertToBacklight(F)I
    .registers 3
    .param p1, "nits"    # F

    .line 3111
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_9

    .line 3112
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToBacklight(F)I

    move-result v0

    return v0

    .line 3114
    :cond_9
    const/4 v0, -0x1

    return v0
.end method

.method doShortTermReset()V
    .registers 5

    .line 3812
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1c

    .line 3813
    const-string v0, "ShortTermModel: shell cmd"

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil$History;->addAutoBrightness(Ljava/lang/String;)V

    .line 3814
    const/16 v0, 0xa

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "shell cmd"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerLog;->sendLogEvent(I[Ljava/lang/Object;)V

    .line 3815
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    .line 3817
    :cond_1c
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 3355
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3356
    :try_start_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3357
    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3364
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_2d6

    .line 3366
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 3367
    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDozeConfig:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDimConfig:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMinimum:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRangeMaximum:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessDefault:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMinimum:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrRangeMaximum:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForVrDefault:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForDozeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x3ec28f5c    # 0.38f

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenExtendedBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenExtendedBrightnessRangeMaximum:F

    invoke-static {v1}, Lcom/android/server/power/PowerManagerUtil;->brightnessToString(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessRampRateFast:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3383
    const-string v0, "  mBrightnessRampRateSlow=0.2352941"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3390
    const-string v0, "  --SEC_PMS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AUTO_BRIGHTNESS_TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/power/PowerManagerUtil;->AUTO_BRIGHTNESS_TYPE:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USE_SEC_LONG_TERM_MODEL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3395
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_29d

    .line 3396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDualScreenPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mDualScreenPolicy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForCoverDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessForCoverDisplay:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3402
    :cond_29d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEarsenseProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsEarsenseProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsProximitySensorOnFoldingSide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/DisplayPowerController;->mIsProximitySensorOnFoldingSide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3406
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 3412
    return-void

    .line 3364
    :catchall_2d6
    move-exception v1

    :try_start_2d7
    monitor-exit v0
    :try_end_2d8
    .catchall {:try_start_2d7 .. :try_end_2d8} :catchall_2d6

    throw v1
.end method

.method getAmbientBrightnessInfo(F)Ljava/lang/String;
    .registers 3
    .param p1, "lux"    # F

    .line 3805
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_9

    .line 3806
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAmbientBrightnessInfo(F)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3808
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .registers 4
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    .line 973
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_12

    .line 974
    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "getAmbientBrightnessStats: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_12

    .line 976
    const/4 v0, 0x0

    return-object v0

    .line 981
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getAppliedBackupConfiguration(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 3
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 1083
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_9

    .line 1084
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getAppliedBackupConfig(Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0

    .line 1086
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "includePackage"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    .line 947
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_12

    .line 948
    const-string v0, "DisplayPowerController"

    const-string/jumbo v1, "getBrightnessEvents: not supported"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-nez v0, :cond_12

    .line 950
    const/4 v0, 0x0

    return-object v0

    .line 955
    :cond_12
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentScreenBrightness()F
    .registers 2

    .line 4257
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mCurrentScreenBrightnessSetting:F

    return v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .registers 2

    .line 1075
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_6

    .line 1076
    const/4 v0, 0x0

    return-object v0

    .line 1078
    :cond_6
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getLastAnimationTarget()F
    .registers 2

    .line 4263
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->getTarget()F

    move-result v0

    return v0
.end method

.method public getLastAutomaticScreenBrightness()F
    .registers 2

    .line 4253
    iget v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastAutomaticScreenBrightness:F

    return v0
.end method

.method public getLastUserSetScreenBrightnessTime()J
    .registers 3

    .line 3575
    iget-wide v0, p0, Lcom/android/server/display/DisplayPowerController;->mLastScreenBrightnessSettingChangedTime:J

    return-wide v0
.end method

.method public isProximitySensorAvailable()Z
    .registers 2

    .line 920
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public onAmbientLuxChanged(F)V
    .registers 3
    .param p1, "ambientLux"    # F

    .line 4307
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_b

    .line 4309
    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyAmbientLuxChanged(F)V

    .line 4311
    :cond_b
    return-void
.end method

.method public onShortTermReset()V
    .registers 2

    .line 4296
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_8

    .line 4297
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->notifyShortTermResetValid()V

    goto :goto_b

    .line 4299
    :cond_8
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 4301
    :goto_b
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "newUserId"    # I

    .line 959
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/display/DisplayPowerController;->handleSettingsChange(Z)V

    .line 962
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_e

    .line 963
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->onSwitchUser(I)V

    goto :goto_13

    .line 966
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    .line 968
    :goto_13
    return-void
.end method

.method public onUserPointAdded(FI)V
    .registers 6
    .param p1, "brightness"    # F
    .param p2, "lux"    # I

    .line 4287
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float v1, p1, v0

    float-to-int v1, v1

    .line 4288
    .local v1, "screenBrightness":I
    iget v2, p0, Lcom/android/server/display/DisplayPowerController;->mBeforeScreenBrightness:F

    mul-float/2addr v2, v0

    float-to-int v0, v2

    .line 4289
    .local v0, "beforeScreenBrightness":I
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController;->mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v2, v1, p2, v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->onAutoBrightnessAdjutmentApplied(III)V

    .line 4290
    return-void
.end method

.method public persistBrightnessTrackerState()V
    .registers 2

    .line 989
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_SEC_LONG_TERM_MODEL:Z

    if-eqz v0, :cond_a

    .line 990
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->persistAdaptiveBrightnessLongtermModelBuilderState()V

    goto :goto_f

    .line 993
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    .line 995
    :goto_f
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .registers 9
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .line 1018
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1019
    const/4 v1, 0x0

    .line 1021
    .local v1, "changed":Z
    const/4 v2, 0x1

    if-eqz p2, :cond_e

    :try_start_7
    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_e

    .line 1023
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingWaitForNegativeProximityLocked:Z

    .line 1024
    const/4 v1, 0x1

    .line 1028
    :cond_e
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->wakeUpEvenThoughProximityPositive:Z

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    if-nez v3, :cond_32

    .line 1030
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    .line 1031
    const/4 v1, 0x1

    .line 1032
    const-string v3, "DisplayPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPendingScreenOnEvenThoughProximityPositiveLocked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/display/DisplayPowerController;->mPendingScreenOnEvenThoughProximityPositiveLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    :cond_32
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->forceSlowChange:Z

    if-eqz v3, :cond_3d

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    if-nez v3, :cond_3d

    .line 1040
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceSlowChangeLocked:Z

    .line 1041
    const/4 v1, 0x1

    .line 1046
    :cond_3d
    iget-boolean v3, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->earlyWakeUp:Z

    if-eqz v3, :cond_48

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    if-nez v3, :cond_48

    .line 1048
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingEarlyWakeUpRequestLocked:Z

    .line 1049
    const/4 v1, 0x1

    .line 1053
    :cond_48
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v3, :cond_55

    .line 1054
    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    .line 1055
    const/4 v1, 0x1

    goto :goto_63

    .line 1056
    :cond_55
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_63

    .line 1057
    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    .line 1058
    const/4 v1, 0x1

    .line 1061
    :cond_63
    :goto_63
    if-eqz v1, :cond_68

    .line 1062
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    .line 1065
    :cond_68
    if-eqz v1, :cond_73

    iget-boolean v3, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    if-nez v3, :cond_73

    .line 1066
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingRequestChangedLocked:Z

    .line 1067
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 1070
    :cond_73
    iget-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    .line 1071
    .end local v1    # "changed":Z
    :catchall_77
    move-exception v1

    monitor-exit v0
    :try_end_79
    .catchall {:try_start_7 .. :try_end_79} :catchall_77

    throw v1
.end method

.method restartAdaptiveBrightnessLongtermModelBuilder(Z)V
    .registers 3
    .param p1, "fromBnr"    # Z

    .line 3834
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_f

    .line 3835
    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3836
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->restartAdaptiveBrightnessStatsTracker(Z)V

    .line 3838
    :cond_f
    return-void
.end method

.method public setActualDisplayState(I)V
    .registers 6
    .param p1, "actualDisplayState"    # I

    .line 3637
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3638
    :try_start_3
    iget v1, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    if-eq p1, v1, :cond_35

    .line 3639
    const-string v1, "DisplayPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setActualDisplayState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    invoke-static {v3}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3640
    invoke-static {p1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3639
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    iput p1, p0, Lcom/android/server/display/DisplayPowerController;->mActualDisplayState:I

    .line 3644
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerStateLocked()V

    .line 3646
    :cond_35
    monitor-exit v0

    .line 3647
    return-void

    .line 3646
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_37

    throw v1
.end method

.method setAmbientColorTemperatureOverride(F)V
    .registers 3
    .param p1, "cct"    # F

    .line 3794
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_a

    .line 3795
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    .line 3799
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3801
    :cond_a
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3776
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    .line 3777
    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    .line 3779
    :cond_7
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 7
    .param p1, "c"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 2081
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2082
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_8

    move v3, v1

    goto :goto_9

    :cond_8
    move v3, v2

    .line 2081
    :goto_9
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3, v2, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2083
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2086
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mPendingForceUpdateAb:Z

    .line 2087
    if-eqz p1, :cond_24

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Landroid/hardware/display/BrightnessConfiguration;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sec-backup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eq v3, v1, :cond_26

    .line 2088
    :cond_24
    iput-boolean v2, p0, Lcom/android/server/display/DisplayPowerController;->mBrightnessChangedByUser:Z

    .line 2090
    :cond_26
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/display/DisplayPowerController;->mLastBrightnessConfigurationTime:J

    .line 2091
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    .line 2092
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2093
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2095
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3787
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_c

    .line 3788
    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    .line 3789
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    .line 3791
    :cond_c
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .registers 6
    .param p1, "adjustment"    # F

    .line 2115
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2116
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2115
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2117
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2118
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    .line 2119
    return-void
.end method

.method public setTemporaryBrightness(F)V
    .registers 6
    .param p1, "brightness"    # F

    .line 2098
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2099
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 2098
    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2100
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2102
    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_17

    .line 2103
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->updateLastBrightnessSettingChangedTime()V

    .line 2106
    :cond_17
    return-void
.end method

.method public setTemporaryBrightnessForSlowChange(FZ)V
    .registers 7
    .param p1, "brightness"    # F
    .param p2, "slowChange"    # Z

    .line 2109
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    .line 2110
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 2109
    const/4 v3, 0x6

    invoke-virtual {v0, v3, v1, p2, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2111
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2112
    return-void
.end method

.method setTestModeEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 3822
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController;->mAdaptiveBrightnessLongtermModelBuilder:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    if-eqz v0, :cond_7

    .line 3823
    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->setTestModeEnabled(Z)V

    .line 3825
    :cond_7
    return-void
.end method

.method public updateBrightness()V
    .registers 1

    .line 2077
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 2078
    return-void
.end method

.method public updateWhiteBalance()V
    .registers 1

    .line 3783
    invoke-direct {p0}, Lcom/android/server/display/DisplayPowerController;->sendUpdatePowerState()V

    .line 3784
    return-void
.end method
