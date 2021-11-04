.class public Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
.super Ljava/lang/Object;
.source "AdaptiveDisplayColorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;,
        Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdaptiveDisplayColorService"


# instance fields
.field private final ANIMATION_DEBOUNCE_MILLIS:J

.field private final ANIMATION_MAX_COUNT:F

.field private final APP_MANAGER_NAME:Ljava/lang/String;

.field private final BLUE_LIGHT_FILTER:Ljava/lang/String;

.field private final BROWSER_MODE_DEBOUNCE_MILLIS:J

.field private final BROWSER_NAMES:[Ljava/lang/String;

.field private final DEBUG:Z

.field private final EBOOK_NAMES:[Ljava/lang/String;

.field private final FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

.field private final FOREGROUND_THREAD_DELAY_MILLIS:J

.field private final LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

.field private final LIGHT_SENSOR_READ_DELAY:I

.field private final MAX_RGB_SENSOR_COUNT:I

.field private final MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

.field private final MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

.field private final MEDIA_PLAYER_NAMES:[Ljava/lang/String;

.field private final MSG_ANIMATE_SCR_RGB:I

.field private final MSG_FOREGROUND_APP:I

.field private final MSG_RESCAN_FOREGROUND_APP:I

.field private final MSG_RGB_DEBOUNCE:I

.field private final MSG_SEND_RGB_AVERAGE:I

.field private final MSG_SET_BROWSER_MODE:I

.field private final MSG_SET_EBOOK_MODE:I

.field private final MSG_SET_VIDEO_MODE:I

.field private final MSG_TERMINATE_SCR_RGB:I

.field private final MSG_TERMINATE_VIDEO_MODE:I

.field private final MULTI_SCREEN_DEBOUNCE_MILLIS:J

.field private final NUMBER_COEFFICIENT_VALUE:I

.field private final RGB_DEBOUNCE_MILLIS:J

.field private final RGB_FLOAT_MAX:F

.field private final RGB_INTEGER_MAX:I

.field private final SBROWSER_NAME:Ljava/lang/String;

.field private final SCENARIO_FILE_PATH:Ljava/lang/String;

.field private final SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

.field private final SCREEN_MODE_SETTING:Ljava/lang/String;

.field private final SCR_FILE_PATH:Ljava/lang/String;

.field private final SETUP_WIZARD_NAME:Ljava/lang/String;

.field private final TEST_RGB_EXPONENTIAL:I

.field private final VIDEO_MODE_DEBOUNCE_MILLIS:J

.field private exitHomeDelay:I

.field private exitHomeDelayTime:J

.field private exitMenuDelay:I

.field private exitMenuDelayTime:J

.field private foregroundDelayTime:J

.field private isLockScreenOn:Z

.field private mAceessibilityEnabled:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAutoModeEnabled:Z

.field private mAvgB:F

.field private mAvgG:F

.field private mAvgR:F

.field private mBlueFilterEnabled:Z

.field private mBrowserScenarioEnabled:Z

.field private mCoefficientValueArray:[F

.field private mColorBlindEnabled:Z

.field private final mContext:Landroid/content/Context;

.field private mCountAnimationValue:I

.field private mCountSensorValue:I

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverState:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDefaultAdjustB:I

.field private mDefaultAdjustG:I

.field private mDefaultAdjustR:I

.field private mDefaultB:I

.field private mDefaultEbookB:I

.field private mDefaultEbookG:I

.field private mDefaultEbookR:I

.field private mDefaultG:I

.field private mDefaultR:I

.field private mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mDuration:I

.field private mEBookScenarioIntented:Z

.field private mEbookAdjustB:I

.field private mEbookAdjustG:I

.field private mEbookAdjustR:I

.field private mEbookScenarioEnabled:Z

.field private mEnableCondition:Z

.field private mEnvironmentDisplayColorServiceEnable:Z

.field private mFinalIntAvgB:I

.field private mFinalIntAvgG:I

.field private mFinalIntAvgR:I

.field private mForegroundThreadWork:Z

.field private mGreyScaleModeEnabled:Z

.field private mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIsFirstStart:Z

.field private mLastAvgB:F

.field private mLastAvgG:F

.field private mLastAvgR:F

.field private mLastChangedRgbTime:J

.field private mLightSensorB:I

.field private mLightSensorDelay:I

.field private mLightSensorG:I

.field private mLightSensorR:I

.field private mMultiWindowOn:Z

.field private mNegativeColorEnabled:Z

.field private mPowerSavingEnabled:Z

.field private mPrevContorlZone:I

.field private mPrevIntAvgB:I

.field private mPrevIntAvgG:I

.field private mPrevIntAvgR:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field private mRgbSensor:Landroid/hardware/Sensor;

.field private mRgbSensorListener:Landroid/hardware/SensorEventListener;

.field private mRgbThreshold:F

.field private mSContextListener:Landroid/hardware/scontext/SContextListener;

.field private mSContextManager:Landroid/hardware/scontext/SContextManager;

.field private mScrFileExists:Z

.field private mScreenCurtainEnabled:Z

.field private mScreenMode:I

.field private mScreenStateOn:Z

.field private mScreenWatchingReceiver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

.field private mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mSensorEnabled:Z

.field private mSensorHubSupportInterrupt:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorValueValid:Z

.field private mSettingCondition:Z

.field private mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

.field private mSumLux:J

.field private mTempIntAvgB:I

.field private mTempIntAvgG:I

.field private mTempIntAvgR:I

.field private mTestScrB:I

.field private mTestScrG:I

.field private mTestScrR:I

.field private mUltraPowerSavingModeEnabled:Z

.field private mUseAdaptiveDisplayColorServiceConfig:Z

.field private mUseEnvironmentDisplayColorConfig:Z

.field private mValidZone:Z

.field private mVideoScenarioEnabled:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 25
    .param p1, "context"    # Landroid/content/Context;

    .line 272
    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v2, "eng"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    .line 94
    const/16 v0, 0xff

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_INTEGER_MAX:I

    .line 95
    const/high16 v2, 0x437f0000    # 255.0f

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_FLOAT_MAX:F

    .line 97
    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_FOREGROUND_APP:I

    .line 98
    const/4 v3, 0x1

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RESCAN_FOREGROUND_APP:I

    .line 99
    const/4 v4, 0x2

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SEND_RGB_AVERAGE:I

    .line 100
    const/4 v5, 0x3

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_ANIMATE_SCR_RGB:I

    .line 101
    const/4 v5, 0x4

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_EBOOK_MODE:I

    .line 102
    const/4 v5, 0x5

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_VIDEO_MODE:I

    .line 103
    const/4 v6, 0x6

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_SET_BROWSER_MODE:I

    .line 104
    const/4 v6, 0x7

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_VIDEO_MODE:I

    .line 105
    const/16 v6, 0x8

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_TERMINATE_SCR_RGB:I

    .line 106
    const/16 v6, 0x9

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MSG_RGB_DEBOUNCE:I

    .line 108
    const/high16 v6, 0x41a00000    # 20.0f

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_MAX_COUNT:F

    .line 109
    const v6, 0x989680

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->TEST_RGB_EXPONENTIAL:I

    .line 110
    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_READ_DELAY:I

    .line 111
    const/16 v6, 0x14

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MAX_RGB_SENSOR_COUNT:I

    .line 112
    const/16 v6, 0x24

    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->NUMBER_COEFFICIENT_VALUE:I

    .line 114
    const-wide/16 v7, 0x2710

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->RGB_DEBOUNCE_MILLIS:J

    .line 115
    const-wide/16 v7, 0xfa

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->ANIMATION_DEBOUNCE_MILLIS:J

    .line 116
    const-wide/16 v7, 0x12c

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_THREAD_DELAY_MILLIS:J

    .line 117
    const-wide/16 v9, 0x1f4

    iput-wide v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->VIDEO_MODE_DEBOUNCE_MILLIS:J

    .line 118
    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_MODE_DEBOUNCE_MILLIS:J

    .line 119
    const-wide/16 v9, 0x2bc

    iput-wide v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MULTI_SCREEN_DEBOUNCE_MILLIS:J

    .line 120
    const-wide/16 v11, 0x3e8

    iput-wide v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->FOREGROUND_RESCAN_DEBOUNCE_MILLIS:J

    .line 122
    const-string v11, "screen_mode_automatic_setting"

    iput-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_AUTOMATIC_SETTING:Ljava/lang/String;

    .line 123
    const-string v12, "screen_mode_setting"

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCREEN_MODE_SETTING:Ljava/lang/String;

    .line 124
    const-string v12, "blue_light_filter"

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BLUE_LIGHT_FILTER:Ljava/lang/String;

    .line 125
    const-string v13, "1"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_VIDEO_MODE_NUMBER:Ljava/lang/String;

    .line 126
    const-string v13, "8"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_BROWSER_MODE_NUMBER:Ljava/lang/String;

    .line 127
    const-string v13, "9"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MDNIE_READING_MODE_NUMBER:Ljava/lang/String;

    .line 129
    const-string v13, "/sys/class/mdnie/mdnie/sensorRGB"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCR_FILE_PATH:Ljava/lang/String;

    .line 130
    const-string v13, "/sys/class/mdnie/mdnie/scenario"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SCENARIO_FILE_PATH:Ljava/lang/String;

    .line 131
    const-string v13, "/sys/class/sensors/light_sensor/raw_data"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->LIGHT_SENSOR_RAW_DATA_PATH:Ljava/lang/String;

    .line 132
    const-string v13, "com.sec.android.app.SecSetupWizard"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SETUP_WIZARD_NAME:Ljava/lang/String;

    .line 133
    const-string v13, "com.android.systemui"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->APP_MANAGER_NAME:Ljava/lang/String;

    .line 134
    const-string v13, "com.sec.android.app.sbrowser"

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->SBROWSER_NAME:Ljava/lang/String;

    .line 135
    const-string v14, "com.google.android.apps.books"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    .line 139
    const-string v14, "com.android.chrome"

    filled-new-array {v13, v14}, [Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    .line 144
    const-string v14, "com.zgz.supervideo"

    const-string v15, "com.kmplayer"

    const-string v16, "com.pg.gom"

    const-string v17, "com.gretech.gomplayer"

    const-string v18, "com.mxtech.videoplayer"

    const-string v19, "com.nhn.android.naverplayer"

    const-string v20, "com.inisoft.mediaplayer"

    const-string v21, "com.google.android.youtube"

    const-string v22, "com.google.android.videos"

    filled-new-array/range {v14 .. v22}, [Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    .line 158
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 159
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 160
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 161
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    .line 162
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 163
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 169
    const/4 v13, 0x0

    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 170
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 171
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 174
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAceessibilityEnabled:Z

    .line 175
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 176
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 177
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 178
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    .line 179
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    .line 180
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mForegroundThreadWork:Z

    .line 182
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    .line 184
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 185
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 186
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 187
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 188
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 189
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    .line 190
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEBookScenarioIntented:Z

    .line 191
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 192
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 193
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 195
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 196
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 197
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mGreyScaleModeEnabled:Z

    .line 199
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenMode:I

    .line 201
    const/4 v14, -0x1

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 203
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 211
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    .line 212
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    .line 213
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    .line 220
    const/4 v14, 0x0

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 221
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 222
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 223
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 224
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 225
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 226
    const v14, 0x3d8f5c29    # 0.07f

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    .line 228
    const/16 v14, 0x23

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    .line 230
    const-wide/16 v14, 0x0

    iput-wide v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 232
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 233
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 234
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 236
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 237
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 238
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 240
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 241
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 242
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 244
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 245
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 246
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 248
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 249
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 250
    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 252
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustR:I

    .line 253
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustG:I

    .line 254
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultAdjustB:I

    .line 256
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 257
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 258
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 260
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 262
    iput-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 266
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 268
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 270
    iput-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 440
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;

    invoke-direct {v14, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 643
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;

    invoke-direct {v14, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$2;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    .line 672
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;

    invoke-direct {v14, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$3;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    .line 690
    new-instance v14, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;

    invoke-direct {v14, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$4;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 273
    move-object/from16 v14, p1

    iput-object v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    .line 275
    new-instance v15, Landroid/os/HandlerThread;

    const-string v0, "AdaptiveDisplayColorServiceThread"

    invoke-direct {v15, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 276
    invoke-virtual {v15}, Landroid/os/HandlerThread;->start()V

    .line 277
    new-instance v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v15}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v15

    invoke-direct {v0, v1, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    .line 279
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x1110088

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseAdaptiveDisplayColorServiceConfig:Z

    .line 283
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x1110089

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mUseEnvironmentDisplayColorConfig : "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", mUseEnvironmentDisplayColorConfig : "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v15, "AdaptiveDisplayColorService"

    invoke-static {v15, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    new-instance v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    iget-object v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Landroid/os/Handler;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 290
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 292
    .local v6, "resolver":Landroid/content/ContentResolver;
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 294
    nop

    .line 295
    const-string v0, "lcd_curtain"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 294
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    nop

    .line 297
    const-string v0, "high_contrast"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 296
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 298
    nop

    .line 299
    const-string v0, "color_blind"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 298
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 304
    nop

    .line 305
    const-string v0, "psm_switch"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 304
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 307
    nop

    .line 308
    const-string v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 307
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 309
    nop

    .line 310
    invoke-static {v11}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 309
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 311
    nop

    .line 312
    invoke-static {v12}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingsObserver:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$SettingsObserver;

    .line 311
    invoke-virtual {v6, v0, v2, v9}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 314
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    move-object v9, v0

    .line 315
    .local v9, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 317
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v9, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 319
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    new-instance v10, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;

    invoke-direct {v10, v1, v13}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$1;)V

    invoke-virtual {v0, v10, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 321
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v10, "activity"

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 325
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    .local v10, "pm":Landroid/content/pm/PackageManager;
    if-eqz v10, :cond_294

    .line 326
    const-string v0, "com.sec.feature.sensorhub"

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27e

    const-string v0, "com.sec.feature.scontext_lite"

    invoke-virtual {v10, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_294

    .line 327
    :cond_27e
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    const-string v11, "scontext"

    invoke-virtual {v0, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 329
    if-eqz v0, :cond_294

    .line 330
    const/16 v11, 0x2c

    invoke-virtual {v0, v11}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    .line 335
    :cond_294
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v0, :cond_2ad

    .line 336
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->getLooper()Landroid/os/Looper;

    move-result-object v12

    invoke-direct {v0, v11, v12}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 337
    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    .line 340
    :cond_2ad
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v0, :cond_362

    .line 341
    iget-object v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1070038

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 342
    .local v0, "adj_rgb":[I
    aget v5, v0, v2

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 343
    aget v5, v0, v3

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 344
    aget v5, v0, v4

    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    .line 346
    iget-object v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v11, 0x1070062

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    .line 347
    .local v5, "test_rgb":[I
    aget v11, v5, v2

    iput v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    .line 348
    aget v11, v5, v3

    iput v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    .line 349
    aget v4, v5, v4

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    .line 351
    iget-object v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v11, 0x10e000f

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 352
    .local v4, "foregroundDelay":I
    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 353
    if-eqz v4, :cond_2f7

    .line 354
    int-to-long v11, v4

    iput-wide v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    .line 356
    :cond_2f7
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e000c

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 357
    .local v11, "exitHomeDelay":I
    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 358
    if-eqz v11, :cond_30b

    .line 359
    int-to-long v7, v11

    iput-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    .line 361
    :cond_30b
    iget-object v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e000d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 362
    .local v7, "exitMenuDelay":I
    const-wide/16 v12, 0x2bc

    iput-wide v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 363
    if-eqz v7, :cond_321

    .line 364
    int-to-long v12, v7

    iput-wide v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    .line 366
    :cond_321
    iget-object v8, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x107003f

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 368
    .local v8, "coefficientStringArray":[Ljava/lang/String;
    const/16 v12, 0x24

    new-array v12, v12, [F

    iput-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    .line 370
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_335
    array-length v13, v8

    if-ge v12, v13, :cond_34d

    .line 371
    iget-object v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    aget-object v17, v8, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Float;->floatValue()F

    move-result v17

    aput v17, v13, v12

    .line 370
    add-int/lit8 v12, v12, 0x1

    goto :goto_335

    .line 374
    .end local v12    # "i":I
    :cond_34d
    iput-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 375
    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 377
    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    const/16 v3, 0xff

    add-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 378
    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 379
    iget v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    .line 382
    .end local v0    # "adj_rgb":[I
    .end local v4    # "foregroundDelay":I
    .end local v5    # "test_rgb":[I
    .end local v7    # "exitMenuDelay":I
    .end local v8    # "coefficientStringArray":[Ljava/lang/String;
    .end local v11    # "exitHomeDelay":I
    :cond_362
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    .line 385
    :try_start_365
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 386
    .local v0, "mIActivityManager":Landroid/app/IActivityManager;
    iget-object v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_36e
    .catch Landroid/os/RemoteException; {:try_start_365 .. :try_end_36e} :catch_36f

    .line 391
    .end local v0    # "mIActivityManager":Landroid/app/IActivityManager;
    goto :goto_379

    .line 387
    :catch_36f
    move-exception v0

    .line 388
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_379

    .line 389
    const-string v2, "failed to registerProcessObserver"

    invoke-static {v15, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_379
    :goto_379
    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/hardware/display/SemMdnieManager;)Lcom/samsung/android/hardware/display/SemMdnieManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 90
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return p1
.end method

.method static synthetic access$1110(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getRgbFromLightSensor()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    return v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    return v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;IIII)V
    .registers 5
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorEvent(IIII)V

    return-void
.end method

.method static synthetic access$1802(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # F

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    return p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # F

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;F)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # F

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    return p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # J

    .line 90
    iput-wide p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    return-wide p1
.end method

.method static synthetic access$2202(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # I

    .line 90
    iput p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    return p1
.end method

.method static synthetic access$2302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->monitorForegroundBrowser(Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic access$2500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setEbookMode()V

    return-void
.end method

.method static synthetic access$2800(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setVideoMode()V

    return-void
.end method

.method static synthetic access$2900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setBrowserMode()V

    return-void
.end method

.method static synthetic access$3000(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateVideoMode()V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;)Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 90
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->terminateScrRGB()V

    return-void
.end method

.method static synthetic access$3200(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/hardware/Sensor;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$402(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;
    .param p1, "x1"    # Z

    .line 90
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_on_intent()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->receive_screen_off_intent()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;

    .line 90
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method private animateScrRGB()V
    .registers 15

    .line 1239
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 1240
    .local v0, "state":I
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1242
    if-lez v0, :cond_c6

    .line 1244
    const/16 v2, 0x14

    const-string v3, "/sys/class/mdnie/mdnie/sensorRGB"

    const-string v4, " "

    const/16 v5, 0xff

    if-ne v1, v2, :cond_56

    .line 1246
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1247
    .local v1, "r":I
    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1248
    .local v2, "g":I
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1250
    .local v6, "b":I
    if-lez v1, :cond_c6

    if-gt v1, v5, :cond_c6

    if-lez v2, :cond_c6

    if-gt v2, v5, :cond_c6

    if-lez v6, :cond_c6

    if-gt v6, v5, :cond_c6

    .line 1251
    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v1, v5, :cond_34

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v2, v5, :cond_34

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v6, v5, :cond_c6

    .line 1252
    :cond_34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1253
    .local v4, "str":Ljava/lang/String;
    invoke-direct {p0, v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1254
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1255
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1256
    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1257
    .end local v4    # "str":Ljava/lang/String;
    goto :goto_c6

    .line 1262
    .end local v1    # "r":I
    .end local v2    # "g":I
    .end local v6    # "b":I
    :cond_56
    const/4 v2, 0x0

    .line 1263
    .local v2, "gap":I
    const/4 v6, 0x0

    .line 1264
    .local v6, "step":F
    iget v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    iget v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    sub-int/2addr v7, v8

    .line 1265
    .end local v2    # "gap":I
    .local v7, "gap":I
    int-to-float v2, v7

    const/high16 v9, 0x41a00000    # 20.0f

    div-float/2addr v2, v9

    int-to-float v10, v1

    mul-float/2addr v2, v10

    .line 1266
    .end local v6    # "step":F
    .local v2, "step":F
    float-to-int v6, v2

    add-int/2addr v8, v6

    .line 1268
    .local v8, "r":I
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    iget v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    sub-int/2addr v6, v10

    .line 1269
    .end local v7    # "gap":I
    .local v6, "gap":I
    int-to-float v7, v6

    div-float/2addr v7, v9

    int-to-float v11, v1

    mul-float/2addr v7, v11

    .line 1270
    .end local v2    # "step":F
    .local v7, "step":F
    float-to-int v2, v7

    add-int/2addr v10, v2

    .line 1272
    .local v10, "g":I
    iget v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    iget v11, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    sub-int/2addr v2, v11

    .line 1273
    .end local v6    # "gap":I
    .local v2, "gap":I
    int-to-float v6, v2

    div-float/2addr v6, v9

    int-to-float v1, v1

    mul-float/2addr v6, v1

    .line 1274
    .end local v7    # "step":F
    .local v6, "step":F
    float-to-int v1, v6

    add-int/2addr v11, v1

    .line 1276
    .local v11, "b":I
    if-lez v8, :cond_b4

    if-gt v8, v5, :cond_b4

    if-lez v10, :cond_b4

    if-gt v10, v5, :cond_b4

    if-lez v11, :cond_b4

    if-gt v11, v5, :cond_b4

    .line 1277
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v8, v1, :cond_93

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v10, v1, :cond_93

    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v11, v1, :cond_b4

    .line 1278
    :cond_93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1279
    .local v1, "str":Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iput v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1281
    iput v10, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1282
    iput v11, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 1286
    .end local v1    # "str":Ljava/lang/String;
    :cond_b4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 1287
    .local v3, "time":J
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 1288
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v12, 0xfa

    add-long/2addr v12, v3

    invoke-virtual {v1, v5, v12, v13}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 1291
    .end local v2    # "gap":I
    .end local v3    # "time":J
    .end local v6    # "step":F
    .end local v8    # "r":I
    .end local v10    # "g":I
    .end local v11    # "b":I
    :cond_c6
    :goto_c6
    return-void
.end method

.method private enableRgbSensor(Z)V
    .registers 10
    .param p1, "enable"    # Z

    .line 597
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 598
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 599
    .local v1, "white_scr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "AdaptiveDisplayColorService"

    if-nez v2, :cond_15

    .line 600
    const-string v2, "StatFs returns null."

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_15
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_2d

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableRgbSensor : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    :cond_2d
    const/16 v2, 0x2c

    const/4 v3, 0x3

    if-eqz p1, :cond_7f

    .line 606
    iget v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 607
    .local v4, "sum":F
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 608
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 609
    const/4 v5, 0x0

    iput v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 610
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 611
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 612
    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    int-to-float v6, v6

    div-float/2addr v6, v4

    iput v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 613
    iput v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorDelay:I

    .line 614
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v5, :cond_71

    .line 615
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_7e

    .line 616
    new-instance v3, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDuration:I

    invoke-direct {v3, v5, v6}, Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;-><init>(FI)V

    .line 618
    .local v3, "environmentAdaptiveDisplayAttribute":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v5, v6, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 619
    .end local v3    # "environmentAdaptiveDisplayAttribute":Landroid/hardware/scontext/SContextEnvironmentAdaptiveDisplayAttribute;
    goto :goto_7e

    .line 621
    :cond_71
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_7e

    .line 622
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensor:Landroid/hardware/Sensor;

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v5, v6, v3, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 624
    .end local v4    # "sum":F
    :cond_7e
    :goto_7e
    goto :goto_b6

    .line 625
    :cond_7f
    const/16 v4, 0xff

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 626
    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 627
    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    .line 628
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 629
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v4, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 630
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 631
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 632
    iget-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v3, :cond_ad

    .line 633
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v3, :cond_b6

    .line 634
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    invoke-virtual {v3, v4, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_b6

    .line 636
    :cond_ad
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_b6

    .line 637
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 640
    :cond_b6
    :goto_b6
    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    .line 641
    return-void
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "str"    # Ljava/lang/String;

    .line 1324
    const/4 v0, 0x0

    .line 1325
    .local v0, "out":Ljava/io/FileOutputStream;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    const-string v2, "AdaptiveDisplayColorService"

    if-eqz v1, :cond_23

    .line 1326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileWriteString : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  value : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :cond_23
    :try_start_23
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2d
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_2d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_2d} :catch_3c

    move-object v0, v1

    .line 1334
    nop

    .line 1336
    :try_start_2f
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1337
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 1345
    goto :goto_5f

    .line 1338
    :catch_3c
    move-exception v1

    goto :goto_54

    .line 1331
    :catch_3e
    move-exception v1

    .line 1332
    .local v1, "e":Ljava/io/FileNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fileWriteString : file not found : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_53} :catch_3c

    .line 1333
    return-void

    .line 1339
    .local v1, "e":Ljava/io/IOException;
    :goto_54
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1341
    :try_start_57
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 1344
    goto :goto_5f

    .line 1342
    :catch_5b
    move-exception v2

    .line 1343
    .local v2, "err":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1346
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "err":Ljava/lang/Exception;
    :goto_5f
    return-void
.end method

.method private getRgbFromLightSensor()V
    .registers 8

    .line 805
    const/4 v0, 0x0

    .line 807
    .local v0, "raw":Ljava/lang/String;
    :try_start_1
    const-string v1, "/sys/class/sensors/light_sensor/raw_data"

    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 808
    const/4 v1, 0x0

    if-eqz v0, :cond_58

    .line 809
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_5b

    .line 811
    .local v2, "rawDatas":[Ljava/lang/String;
    :try_start_15
    aget-object v3, v2, v1

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorR:I

    .line 812
    const/4 v3, 0x1

    aget-object v4, v2, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorG:I

    .line 813
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLightSensorB:I

    .line 814
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_3d} :catch_3e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_3d} :catch_5b

    .line 818
    goto :goto_57

    .line 815
    :catch_3e
    move-exception v3

    .line 816
    .local v3, "e":Ljava/lang/NumberFormatException;
    :try_start_3f
    const-string v4, "AdaptiveDisplayColorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z

    .line 819
    .end local v2    # "rawDatas":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_57
    goto :goto_5a

    .line 821
    :cond_58
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorValueValid:Z
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5a} :catch_5b

    .line 824
    :goto_5a
    goto :goto_5f

    .line 822
    :catch_5b
    move-exception v1

    .line 823
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 825
    .end local v1    # "e":Ljava/io/IOException;
    :goto_5f
    return-void
.end method

.method private getStringFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 828
    const-string v0, "File Close error"

    const-string v1, "AdaptiveDisplayColorService"

    const/4 v2, 0x0

    .line 829
    .local v2, "in":Ljava/io/InputStream;
    const/16 v3, 0x80

    .line 830
    .local v3, "MAX_BUFFER_SIZE":I
    const/16 v4, 0x80

    new-array v5, v4, [B

    .line 831
    .local v5, "buffer":[B
    const/4 v6, 0x0

    .line 832
    .local v6, "value":Ljava/lang/String;
    const/4 v7, 0x0

    .line 834
    .local v7, "length":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_e
    const/4 v9, 0x0

    if-ge v8, v4, :cond_16

    .line 835
    aput-byte v9, v5, v8

    .line 834
    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 838
    .end local v8    # "i":I
    :cond_16
    :try_start_16
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 839
    nop

    .line 840
    invoke-virtual {v2, v5}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move v7, v4

    .line 841
    if-eqz v7, :cond_33

    .line 842
    new-instance v4, Ljava/lang/String;

    add-int/lit8 v8, v7, -0x1

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v9, v8, v10}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v6, v4

    .line 844
    :cond_33
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_36} :catch_61
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_36} :catch_42
    .catchall {:try_start_16 .. :try_end_36} :catchall_40

    .line 853
    nop

    .line 855
    :try_start_37
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    .line 858
    :goto_3a
    goto :goto_7d

    .line 856
    :catch_3b
    move-exception v4

    .line 857
    .local v4, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "ee":Ljava/io/IOException;
    goto :goto_3a

    .line 853
    :catchall_40
    move-exception v4

    goto :goto_7e

    .line 849
    :catch_42
    move-exception v4

    .line 850
    .local v4, "e":Ljava/io/IOException;
    :try_start_43
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 851
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IOException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_40

    .line 853
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_7d

    .line 855
    :try_start_5d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_3b

    goto :goto_3a

    .line 846
    :catch_61
    move-exception v4

    .line 848
    .local v4, "ex":Ljava/io/FileNotFoundException;
    :try_start_62
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FileNotFoundException : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catchall {:try_start_62 .. :try_end_76} :catchall_40

    .line 853
    nop

    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    if-eqz v2, :cond_7d

    .line 855
    :try_start_79
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_3b

    goto :goto_3a

    .line 861
    :cond_7d
    :goto_7d
    return-object v6

    .line 853
    :goto_7e
    if-eqz v2, :cond_88

    .line 855
    :try_start_80
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    .line 858
    goto :goto_88

    .line 856
    :catch_84
    move-exception v8

    .line 857
    .local v8, "ee":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    .end local v8    # "ee":Ljava/io/IOException;
    :cond_88
    :goto_88
    throw v4
.end method

.method private handleRgbSensorEvent(IIII)V
    .registers 12
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .line 865
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isInBoundary()I

    move-result v0

    .line 866
    .local v0, "isInControlZone":I
    iget v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    if-eq v1, v0, :cond_13

    .line 867
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 868
    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevContorlZone:I

    .line 869
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 872
    :cond_13
    if-lez v0, :cond_4b

    .line 873
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-eqz v1, :cond_25

    .line 874
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_2e

    .line 875
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v3, 0x2c

    invoke-virtual {v1, v2, v3}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    goto :goto_2e

    .line 877
    :cond_25
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_2e

    .line 878
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 880
    :cond_2e
    :goto_2e
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->handleRgbSensorValue(IIII)V

    .line 881
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorHubSupportInterrupt:Z

    if-nez v1, :cond_4b

    .line 882
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 883
    .local v1, "time":J
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 884
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 885
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v1

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 888
    .end local v1    # "time":J
    :cond_4b
    return-void
.end method

.method private handleRgbSensorValue(IIII)V
    .registers 13
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .line 959
    add-int v0, p1, p2

    add-int/2addr v0, p3

    .line 960
    .local v0, "sumRGB":I
    const/4 v1, 0x0

    .local v1, "ratioR":F
    const/4 v2, 0x0

    .local v2, "ratioG":F
    const/4 v3, 0x0

    .line 962
    .local v3, "ratioB":F
    int-to-float v4, p1

    int-to-float v5, v0

    div-float/2addr v4, v5

    .line 963
    .end local v1    # "ratioR":F
    .local v4, "ratioR":F
    int-to-float v1, p2

    int-to-float v5, v0

    div-float/2addr v1, v5

    .line 964
    .end local v2    # "ratioG":F
    .local v1, "ratioG":F
    int-to-float v2, p3

    int-to-float v5, v0

    div-float/2addr v2, v5

    .line 966
    .end local v3    # "ratioB":F
    .local v2, "ratioB":F
    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v3, v4, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v5

    const/4 v5, 0x2

    if-gtz v3, :cond_4a

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_4a

    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v3, v3, v6

    if-lez v3, :cond_3b

    goto :goto_4a

    .line 984
    :cond_3b
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 985
    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 986
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 987
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 988
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    goto :goto_6d

    .line 968
    :cond_4a
    :goto_4a
    iget v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    if-lez v3, :cond_69

    .line 969
    iput v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 970
    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 971
    iput v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 972
    int-to-long v6, p4

    iput-wide v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 973
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 975
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 976
    .local v6, "time":J
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 977
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 978
    .end local v6    # "time":J
    goto :goto_6d

    .line 980
    :cond_69
    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 990
    :goto_6d
    return-void
.end method

.method private initRgbAverage()V
    .registers 3

    .line 903
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 904
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 905
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 906
    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 907
    return-void
.end method

.method private isInBoundary()I
    .registers 3

    .line 892
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->isLockScreenOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 893
    return v1

    .line 894
    :cond_6
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v0, :cond_c

    .line 895
    const/4 v0, 0x2

    return v0

    .line 896
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_12

    .line 897
    const/4 v0, 0x1

    return v0

    .line 899
    :cond_12
    return v1
.end method

.method private max_num(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 1376
    if-lt p1, p2, :cond_3

    .line 1377
    return p1

    .line 1379
    :cond_3
    return p2
.end method

.method private min_num(II)I
    .registers 3
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 1368
    if-ge p1, p2, :cond_3

    .line 1369
    return p1

    .line 1371
    :cond_3
    return p2
.end method

.method private monitorForegroundBrowser(Ljava/lang/String;II)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "uid"    # I

    .line 699
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_156

    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverState:Z

    if-nez v0, :cond_d

    goto/16 :goto_156

    .line 710
    :cond_d
    const/4 v0, 0x0

    .line 711
    .local v0, "isBrowser":Z
    const/4 v3, 0x0

    .line 712
    .local v3, "isReading":Z
    const/4 v4, 0x0

    .line 714
    .local v4, "isVideo":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_11
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->MEDIA_PLAYER_NAMES:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_23

    .line 715
    aget-object v6, v6, v5

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 716
    const/4 v4, 0x1

    .line 717
    goto :goto_23

    .line 714
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 721
    .end local v5    # "i":I
    :cond_23
    :goto_23
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_24
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->BROWSER_NAMES:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_35

    .line 722
    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_32

    .line 723
    const/4 v0, 0x1

    .line 721
    :cond_32
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 727
    .end local v5    # "i":I
    :cond_35
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_36
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->EBOOK_NAMES:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_47

    .line 728
    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44

    .line 729
    const/4 v3, 0x1

    .line 727
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 733
    .end local v5    # "i":I
    :cond_47
    const/4 v5, 0x1

    if-eqz v3, :cond_7e

    .line 734
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v2, :cond_171

    .line 735
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 736
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v2, :cond_5f

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v2, :cond_5f

    if-nez v5, :cond_5e

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v2, :cond_5f

    :cond_5e
    move v1, v5

    :cond_5f
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 737
    if-eqz v1, :cond_6a

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v1, :cond_6a

    .line 738
    invoke-direct {p0, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 740
    :cond_6a
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 741
    .local v1, "time":J
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 742
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v7, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 743
    .end local v1    # "time":J
    goto/16 :goto_171

    .line 745
    :cond_7e
    iget-boolean v6, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    const-string v7, "com.android.systemui"

    if-eqz v6, :cond_b8

    .line 746
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 747
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 748
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 749
    .local v5, "time":J
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 750
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v5

    invoke-virtual {v7, v2, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 751
    .end local v5    # "time":J
    goto :goto_af

    .line 752
    :cond_9e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 753
    .restart local v5    # "time":J
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 754
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v5

    invoke-virtual {v7, v2, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 756
    .end local v5    # "time":J
    :goto_af
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v2, :cond_171

    .line 757
    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto/16 :goto_171

    .line 759
    :cond_b8
    if-eqz v4, :cond_d4

    .line 760
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-nez v1, :cond_171

    .line 761
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 762
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 763
    .restart local v1    # "time":J
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 764
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v7, 0x1f4

    add-long/2addr v7, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 765
    .end local v1    # "time":J
    goto/16 :goto_171

    .line 766
    :cond_d4
    if-eqz v0, :cond_107

    .line 767
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-nez v2, :cond_171

    .line 768
    iput-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 769
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUseEnvironmentDisplayColorConfig:Z

    if-eqz v2, :cond_e9

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    if-eqz v2, :cond_e9

    if-nez v6, :cond_e8

    if-eqz v5, :cond_e9

    :cond_e8
    move v1, v5

    :cond_e9
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnvironmentDisplayColorServiceEnable:Z

    .line 771
    if-eqz v1, :cond_f4

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-nez v1, :cond_f4

    .line 772
    invoke-direct {p0, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 774
    :cond_f4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 775
    .restart local v1    # "time":J
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 776
    iget-object v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->foregroundDelayTime:J

    add-long/2addr v7, v1

    invoke-virtual {v5, v6, v7, v8}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 777
    .end local v1    # "time":J
    goto :goto_171

    .line 779
    :cond_107
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    if-eqz v5, :cond_11d

    .line 780
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mVideoScenarioEnabled:Z

    .line 781
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 782
    .restart local v5    # "time":J
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 783
    iget-object v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v2, v7, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .end local v5    # "time":J
    goto :goto_14d

    .line 784
    :cond_11d
    iget-boolean v5, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v5, :cond_14d

    .line 785
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 786
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13b

    .line 787
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 788
    .restart local v5    # "time":J
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 789
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitMenuDelayTime:J

    add-long/2addr v8, v5

    invoke-virtual {v7, v2, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 790
    .end local v5    # "time":J
    goto :goto_14e

    .line 791
    :cond_13b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 792
    .restart local v5    # "time":J
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 793
    iget-object v7, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    iget-wide v8, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->exitHomeDelayTime:J

    add-long/2addr v8, v5

    invoke-virtual {v7, v2, v8, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_14e

    .line 784
    .end local v5    # "time":J
    :cond_14d
    :goto_14d
    nop

    .line 796
    :goto_14e
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v2, :cond_171

    .line 797
    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    goto :goto_171

    .line 700
    .end local v0    # "isBrowser":Z
    .end local v3    # "isReading":Z
    .end local v4    # "isVideo":Z
    :cond_156
    :goto_156
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v0, :cond_171

    .line 701
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 702
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v0, :cond_163

    .line 703
    invoke-direct {p0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 704
    :cond_163
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 705
    .local v0, "time":J
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 706
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v3, v2, v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 802
    .end local v0    # "time":J
    :cond_171
    :goto_171
    return-void
.end method

.method private receive_multi_window_on_intent()V
    .registers 4

    .line 528
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mMultiWindowOn:Z

    if-nez v0, :cond_18

    .line 530
    :try_start_4
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 535
    goto :goto_18

    .line 531
    :catch_c
    move-exception v0

    .line 532
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_18

    .line 533
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method private receive_screen_off_intent()V
    .registers 3

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 554
    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    move v1, v0

    :goto_c
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 555
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_15

    .line 556
    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 558
    :cond_15
    return-void
.end method

.method private receive_screen_on_intent()V
    .registers 4

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    .line 541
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    .line 542
    if-eqz v1, :cond_d

    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    if-eqz v2, :cond_d

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 544
    :try_start_10
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v2, -0x1

    invoke-interface {v1, v2, v0, v0}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_16} :catch_17

    .line 549
    goto :goto_23

    .line 545
    :catch_17
    move-exception v0

    .line 546
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_23

    .line 547
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to onForegroundActivitiesChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method private sendForcedRGB(IIII)V
    .registers 8
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .line 911
    add-int v0, p1, p2

    add-int/2addr v0, p3

    .line 913
    .local v0, "sumRGB":I
    int-to-float v1, p1

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 914
    int-to-float v1, p2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 915
    int-to-float v1, p3

    int-to-float v2, v0

    div-float/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 916
    int-to-long v1, p4

    iput-wide v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 917
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 919
    invoke-direct {p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->sendRgbAverage()V

    .line 920
    return-void
.end method

.method private sendRgbAverage()V
    .registers 40

    .line 1045
    move-object/from16 v1, p0

    const/4 v2, 0x0

    .local v2, "scrR":I
    const/4 v3, 0x0

    .local v3, "scrG":I
    const/4 v4, 0x0

    .line 1046
    .local v4, "scrB":I
    const/4 v5, 0x0

    .local v5, "scr400LuxR":I
    const/4 v6, 0x0

    .local v6, "scr400LuxG":I
    const/4 v7, 0x0

    .line 1048
    .local v7, "scr400LuxB":I
    const/4 v8, 0x0

    .local v8, "adjustR":I
    const/4 v9, 0x0

    .local v9, "adjustG":I
    const/4 v10, 0x0

    .line 1049
    .local v10, "adjustB":I
    const-wide/16 v11, 0x1

    .local v11, "count_l":J
    const-wide/16 v13, 0x0

    .local v13, "avgLux":J
    const-wide/16 v15, 0x0

    .line 1051
    .local v15, "luxValue":J
    move/from16 v17, v2

    .end local v2    # "scrR":I
    .local v17, "scrR":I
    iget-boolean v2, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    .line 1052
    .local v2, "isEbookmode":Z
    const/16 v18, 0x0

    .line 1054
    .local v18, "white_scr":Ljava/lang/String;
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/16 v19, 0x1

    if-lez v0, :cond_1e

    goto :goto_20

    :cond_1e
    move/from16 v0, v19

    :goto_20
    move/from16 v20, v0

    .line 1055
    .local v20, "count":I
    move/from16 v21, v3

    move/from16 v3, v20

    .end local v20    # "count":I
    .local v3, "count":I
    .local v21, "scrG":I
    int-to-long v11, v3

    .line 1056
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    move/from16 v20, v4

    .end local v4    # "scrB":I
    .local v20, "scrB":I
    int-to-float v4, v3

    div-float v4, v0, v4

    .line 1057
    .local v4, "r":F
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    move/from16 v22, v5

    .end local v5    # "scr400LuxR":I
    .local v22, "scr400LuxR":I
    int-to-float v5, v3

    div-float v5, v0, v5

    .line 1058
    .local v5, "g":F
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    move/from16 v23, v6

    .end local v6    # "scr400LuxG":I
    .local v23, "scr400LuxG":I
    int-to-float v6, v3

    div-float v6, v0, v6

    .line 1059
    .local v6, "b":F
    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 1060
    iput v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 1061
    iput v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 1062
    move/from16 v24, v7

    move/from16 v25, v8

    .end local v7    # "scr400LuxB":I
    .end local v8    # "adjustR":I
    .local v24, "scr400LuxB":I
    .local v25, "adjustR":I
    iget-wide v7, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    div-long/2addr v7, v11

    .line 1064
    .end local v13    # "avgLux":J
    .local v7, "avgLux":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AvgR : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", AvgG : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", AvgB : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v13, ", avg lux : "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "AdaptiveDisplayColorService"

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 1069
    :try_start_80
    const-string v0, "/sys/class/mdnie/mdnie/sensorRGB"

    invoke-direct {v1, v0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->getStringFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v18, v0

    .line 1070
    if-eqz v18, :cond_ba

    .line 1071
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v14, " "

    invoke-virtual {v0, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1072
    .local v0, "scrDatas":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-object v28, v0, v14

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1073
    aget-object v14, v0, v19

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1074
    const/4 v14, 0x2

    aget-object v28, v0, v14

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I
    :try_end_ba
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_ba} :catch_d8
    .catchall {:try_start_80 .. :try_end_ba} :catchall_c7

    .line 1079
    .end local v0    # "scrDatas":[Ljava/lang/String;
    :cond_ba
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_e1

    .line 1080
    :goto_be
    const/16 v14, 0xff

    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1081
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1082
    iput v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    goto :goto_e1

    .line 1079
    :catchall_c7
    move-exception v0

    move/from16 v30, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v28, v9

    move/from16 v29, v10

    move-wide/from16 v31, v11

    goto/16 :goto_4ba

    .line 1076
    :catch_d8
    move-exception v0

    .line 1077
    .local v0, "e":Ljava/io/IOException;
    :try_start_d9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_4ab

    .line 1079
    .end local v0    # "e":Ljava/io/IOException;
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_e1

    .line 1080
    goto :goto_be

    .line 1086
    :cond_e1
    :goto_e1
    iget-boolean v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v0, :cond_103

    .line 1087
    if-eqz v2, :cond_f4

    .line 1088
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    .line 1089
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    .line 1090
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    goto :goto_100

    .line 1092
    :cond_f4
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1093
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1094
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1096
    :goto_100
    const/4 v14, 0x0

    iput-boolean v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    .line 1099
    :cond_103
    move-wide v14, v7

    .line 1100
    .end local v15    # "luxValue":J
    .local v14, "luxValue":J
    const/4 v0, -0x1

    .line 1102
    .local v0, "log2Lux":I
    const-wide/16 v28, 0x4

    cmp-long v16, v14, v28

    if-ltz v16, :cond_423

    const-wide/16 v28, 0x3e8

    cmp-long v16, v14, v28

    if-gtz v16, :cond_423

    move/from16 v16, v0

    .end local v0    # "log2Lux":I
    .local v16, "log2Lux":I
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    move/from16 v28, v9

    move/from16 v29, v10

    .end local v9    # "adjustG":I
    .end local v10    # "adjustB":I
    .local v28, "adjustG":I
    .local v29, "adjustB":I
    float-to-double v9, v0

    const-wide v30, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v9, v30

    if-ltz v0, :cond_418

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    float-to-double v9, v0

    cmpg-double v0, v9, v30

    if-ltz v0, :cond_418

    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    float-to-double v9, v0

    cmpg-double v0, v9, v30

    if-gez v0, :cond_13d

    move/from16 v30, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-wide/from16 v31, v11

    goto/16 :goto_433

    :cond_13d
    move/from16 v0, v16

    .line 1114
    .end local v16    # "log2Lux":I
    .restart local v0    # "log2Lux":I
    :goto_13f
    const-wide/16 v9, 0x0

    cmp-long v9, v14, v9

    if-eqz v9, :cond_14a

    .line 1115
    shr-long v14, v14, v19

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_13f

    .line 1119
    :cond_14a
    iget-boolean v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-nez v9, :cond_16d

    iget-boolean v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBrowserScenarioEnabled:Z

    if-eqz v9, :cond_153

    goto :goto_16d

    .line 1212
    :cond_153
    const/4 v9, 0x0

    .line 1213
    .end local v17    # "scrR":I
    .local v9, "scrR":I
    const/4 v10, 0x0

    .line 1214
    .end local v21    # "scrG":I
    .local v10, "scrG":I
    const/16 v16, 0x0

    move/from16 v30, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-wide/from16 v31, v11

    move/from16 v3, v16

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v21, v24

    move/from16 v16, v25

    .end local v20    # "scrB":I
    .local v16, "scrB":I
    goto/16 :goto_458

    .line 1120
    .end local v9    # "scrR":I
    .end local v10    # "scrG":I
    .end local v16    # "scrB":I
    .restart local v17    # "scrR":I
    .restart local v20    # "scrB":I
    .restart local v21    # "scrG":I
    :cond_16d
    :goto_16d
    if-eqz v2, :cond_17c

    .line 1121
    iget v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustR:I

    .line 1122
    .end local v25    # "adjustR":I
    .local v9, "adjustR":I
    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustG:I

    .line 1123
    .end local v28    # "adjustG":I
    .local v10, "adjustG":I
    move/from16 v30, v3

    .end local v3    # "count":I
    .local v30, "count":I
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookAdjustB:I

    move/from16 v16, v9

    move v9, v10

    move v10, v3

    .end local v29    # "adjustB":I
    .local v3, "adjustB":I
    goto :goto_18d

    .line 1125
    .end local v9    # "adjustR":I
    .end local v10    # "adjustG":I
    .end local v30    # "count":I
    .local v3, "count":I
    .restart local v25    # "adjustR":I
    .restart local v28    # "adjustG":I
    .restart local v29    # "adjustB":I
    :cond_17c
    move/from16 v30, v3

    .end local v3    # "count":I
    .restart local v30    # "count":I
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    const/16 v9, 0xff

    sub-int/2addr v3, v9

    .line 1126
    .end local v25    # "adjustR":I
    .local v3, "adjustR":I
    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    sub-int/2addr v10, v9

    .line 1127
    .end local v28    # "adjustG":I
    .restart local v10    # "adjustG":I
    move/from16 v16, v3

    .end local v3    # "adjustR":I
    .local v16, "adjustR":I
    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    sub-int/2addr v3, v9

    move v9, v10

    move v10, v3

    .line 1130
    .end local v29    # "adjustB":I
    .local v9, "adjustG":I
    .local v10, "adjustB":I
    :goto_18d
    const v3, 0x4b189680    # 1.0E7f

    move-wide/from16 v31, v11

    .end local v11    # "count_l":J
    .local v31, "count_l":J
    mul-float v11, v4, v3

    float-to-int v11, v11

    iget v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrR:I

    div-int/2addr v11, v12

    .line 1131
    .local v11, "testR":I
    mul-float v12, v5, v3

    float-to-int v12, v12

    iget v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrG:I

    div-int/2addr v12, v3

    .line 1132
    .local v12, "testG":I
    const v3, 0x4b189680    # 1.0E7f

    mul-float/2addr v3, v6

    float-to-int v3, v3

    move-wide/from16 v33, v14

    .end local v14    # "luxValue":J
    .local v33, "luxValue":J
    iget v14, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTestScrB:I

    div-int/2addr v3, v14

    .line 1134
    .local v3, "testB":I
    invoke-direct {v1, v11, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    .line 1135
    .local v14, "maxValue":I
    invoke-direct {v1, v14, v3}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v14

    .line 1137
    const/16 v25, 0x4

    const/16 v28, 0x8

    if-ne v14, v11, :cond_245

    .line 1138
    const/16 v17, 0xff

    .line 1140
    iget-object v15, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v27, 0x0

    aget v35, v15, v27

    mul-float v35, v35, v4

    mul-float v35, v35, v4

    aget v19, v15, v19

    mul-float v19, v19, v5

    mul-float v19, v19, v5

    add-float v35, v35, v19

    const/16 v19, 0x2

    aget v19, v15, v19

    mul-float v19, v19, v4

    add-float v35, v35, v19

    const/16 v19, 0x3

    aget v19, v15, v19

    mul-float v19, v19, v5

    add-float v35, v35, v19

    aget v19, v15, v25

    mul-float v19, v19, v4

    mul-float v19, v19, v5

    add-float v35, v35, v19

    const/16 v19, 0x5

    aget v15, v15, v19

    add-float v35, v35, v15

    .line 1142
    .local v35, "temp":F
    move/from16 v19, v11

    const/high16 v15, 0x437f0000    # 255.0f

    .end local v11    # "testR":I
    .local v19, "testR":I
    mul-float v11, v35, v15

    float-to-int v11, v11

    .line 1143
    .end local v21    # "scrG":I
    .local v11, "scrG":I
    move/from16 v26, v12

    const/4 v15, 0x0

    .end local v12    # "testG":I
    .local v26, "testG":I
    invoke-direct {v1, v11, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v15, 0xff

    invoke-direct {v1, v12, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v11

    .line 1145
    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/4 v15, 0x6

    aget v15, v12, v15

    mul-float/2addr v15, v4

    mul-float/2addr v15, v4

    const/16 v21, 0x7

    aget v21, v12, v21

    mul-float v21, v21, v6

    mul-float v21, v21, v6

    add-float v15, v15, v21

    aget v21, v12, v28

    mul-float v21, v21, v4

    add-float v15, v15, v21

    const/16 v21, 0x9

    aget v21, v12, v21

    mul-float v21, v21, v6

    add-float v15, v15, v21

    const/16 v21, 0xa

    aget v21, v12, v21

    mul-float v21, v21, v4

    mul-float v21, v21, v6

    add-float v15, v15, v21

    const/16 v21, 0xb

    aget v12, v12, v21

    add-float/2addr v15, v12

    .line 1147
    .end local v35    # "temp":F
    .local v15, "temp":F
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v12, v15

    float-to-int v12, v12

    .line 1148
    .end local v20    # "scrB":I
    .local v12, "scrB":I
    move/from16 v21, v11

    move/from16 v29, v15

    const/4 v11, 0x0

    .end local v11    # "scrG":I
    .end local v15    # "temp":F
    .restart local v21    # "scrG":I
    .local v29, "temp":F
    invoke-direct {v1, v12, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v15

    const/16 v11, 0xff

    invoke-direct {v1, v15, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v12

    move/from16 v35, v3

    move/from16 v11, v21

    move/from16 v15, v29

    goto/16 :goto_340

    .line 1150
    .end local v19    # "testR":I
    .end local v26    # "testG":I
    .end local v29    # "temp":F
    .local v11, "testR":I
    .local v12, "testG":I
    .restart local v20    # "scrB":I
    :cond_245
    move/from16 v19, v11

    move/from16 v26, v12

    .end local v11    # "testR":I
    .end local v12    # "testG":I
    .restart local v19    # "testR":I
    .restart local v26    # "testG":I
    if-ne v14, v3, :cond_2c0

    .line 1151
    iget-object v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v12, 0xc

    aget v12, v11, v12

    mul-float/2addr v12, v4

    mul-float/2addr v12, v4

    const/16 v15, 0xd

    aget v15, v11, v15

    mul-float/2addr v15, v6

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    const/16 v15, 0xe

    aget v15, v11, v15

    mul-float/2addr v15, v4

    add-float/2addr v12, v15

    const/16 v15, 0xf

    aget v15, v11, v15

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    const/16 v15, 0x10

    aget v15, v11, v15

    mul-float/2addr v15, v4

    mul-float/2addr v15, v6

    add-float/2addr v12, v15

    const/16 v15, 0x11

    aget v11, v11, v15

    add-float/2addr v12, v11

    .line 1153
    .local v12, "temp":F
    const/high16 v11, 0x437f0000    # 255.0f

    mul-float v15, v12, v11

    float-to-int v11, v15

    .line 1154
    .end local v17    # "scrR":I
    .local v11, "scrR":I
    move/from16 v35, v3

    const/4 v15, 0x0

    .end local v3    # "testB":I
    .local v35, "testB":I
    invoke-direct {v1, v11, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v15, 0xff

    invoke-direct {v1, v3, v15}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v17

    .line 1156
    .end local v11    # "scrR":I
    .restart local v17    # "scrR":I
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v11, 0x12

    aget v11, v3, v11

    mul-float/2addr v11, v5

    mul-float/2addr v11, v5

    const/16 v15, 0x13

    aget v15, v3, v15

    mul-float/2addr v15, v6

    mul-float/2addr v15, v6

    add-float/2addr v11, v15

    const/16 v15, 0x14

    aget v15, v3, v15

    mul-float/2addr v15, v5

    add-float/2addr v11, v15

    const/16 v15, 0x15

    aget v15, v3, v15

    mul-float/2addr v15, v6

    add-float/2addr v11, v15

    const/16 v15, 0x16

    aget v15, v3, v15

    mul-float/2addr v15, v5

    mul-float/2addr v15, v6

    add-float/2addr v11, v15

    const/16 v15, 0x17

    aget v3, v3, v15

    add-float v15, v11, v3

    .line 1158
    .end local v12    # "temp":F
    .restart local v15    # "temp":F
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v15

    float-to-int v3, v3

    .line 1159
    .end local v21    # "scrG":I
    .local v3, "scrG":I
    const/4 v11, 0x0

    invoke-direct {v1, v3, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v11, 0xff

    invoke-direct {v1, v12, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    .line 1161
    const/16 v12, 0xff

    move v11, v3

    .end local v20    # "scrB":I
    .local v12, "scrB":I
    goto/16 :goto_340

    .line 1164
    .end local v12    # "scrB":I
    .end local v15    # "temp":F
    .end local v35    # "testB":I
    .local v3, "testB":I
    .restart local v20    # "scrB":I
    .restart local v21    # "scrG":I
    :cond_2c0
    move/from16 v35, v3

    .end local v3    # "testB":I
    .restart local v35    # "testB":I
    iget-object v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v11, 0x18

    aget v11, v3, v11

    mul-float/2addr v11, v4

    mul-float/2addr v11, v4

    const/16 v12, 0x19

    aget v12, v3, v12

    mul-float/2addr v12, v5

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    const/16 v12, 0x1a

    aget v12, v3, v12

    mul-float/2addr v12, v4

    add-float/2addr v11, v12

    const/16 v12, 0x1b

    aget v12, v3, v12

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    const/16 v12, 0x1c

    aget v12, v3, v12

    mul-float/2addr v12, v4

    mul-float/2addr v12, v5

    add-float/2addr v11, v12

    const/16 v12, 0x1d

    aget v3, v3, v12

    add-float/2addr v11, v3

    .line 1166
    .local v11, "temp":F
    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v15, v11, v3

    float-to-int v3, v15

    .line 1167
    .end local v17    # "scrR":I
    .local v3, "scrR":I
    const/4 v12, 0x0

    invoke-direct {v1, v3, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v15

    const/16 v12, 0xff

    invoke-direct {v1, v15, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v17

    .line 1169
    .end local v3    # "scrR":I
    .restart local v17    # "scrR":I
    const/16 v3, 0xff

    .line 1171
    .end local v21    # "scrG":I
    .local v3, "scrG":I
    iget-object v12, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoefficientValueArray:[F

    const/16 v15, 0x1e

    aget v15, v12, v15

    mul-float/2addr v15, v5

    mul-float/2addr v15, v5

    const/16 v21, 0x1f

    aget v21, v12, v21

    mul-float v21, v21, v6

    mul-float v21, v21, v6

    add-float v15, v15, v21

    const/16 v21, 0x20

    aget v21, v12, v21

    mul-float v21, v21, v5

    add-float v15, v15, v21

    const/16 v21, 0x21

    aget v21, v12, v21

    mul-float v21, v21, v6

    add-float v15, v15, v21

    const/16 v21, 0x22

    aget v21, v12, v21

    mul-float v21, v21, v5

    mul-float v21, v21, v6

    add-float v15, v15, v21

    const/16 v21, 0x23

    aget v12, v12, v21

    add-float/2addr v15, v12

    .line 1173
    .end local v11    # "temp":F
    .restart local v15    # "temp":F
    const/high16 v11, 0x437f0000    # 255.0f

    mul-float/2addr v11, v15

    float-to-int v11, v11

    .line 1174
    .end local v20    # "scrB":I
    .local v11, "scrB":I
    move/from16 v21, v3

    const/4 v12, 0x0

    .end local v3    # "scrG":I
    .restart local v21    # "scrG":I
    invoke-direct {v1, v11, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v3

    const/16 v12, 0xff

    invoke-direct {v1, v3, v12}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v3

    move v12, v3

    move/from16 v11, v21

    .line 1177
    .end local v21    # "scrG":I
    .local v11, "scrG":I
    .restart local v12    # "scrB":I
    :goto_340
    add-int v3, v17, v16

    .line 1178
    .end local v22    # "scr400LuxR":I
    .local v3, "scr400LuxR":I
    add-int v20, v11, v9

    .line 1179
    .end local v23    # "scr400LuxG":I
    .local v20, "scr400LuxG":I
    add-int v21, v12, v10

    .line 1181
    .end local v24    # "scr400LuxB":I
    .local v21, "scr400LuxB":I
    const-wide/16 v22, 0x190

    cmp-long v22, v7, v22

    if-gez v22, :cond_400

    .line 1183
    move/from16 v36, v4

    .end local v4    # "r":F
    .local v36, "r":F
    iget-boolean v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEbookScenarioEnabled:Z

    if-eqz v4, :cond_3a9

    .line 1184
    rsub-int/lit8 v4, v0, 0x8

    move/from16 v37, v5

    .end local v5    # "g":F
    .local v37, "g":F
    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    mul-int/2addr v4, v5

    mul-int v5, v0, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x8

    .line 1185
    .end local v17    # "scrR":I
    .local v4, "scrR":I
    move/from16 v38, v6

    const/4 v5, 0x0

    .end local v6    # "b":F
    .local v38, "b":F
    invoke-direct {v1, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v6

    const/16 v5, 0xff

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v4

    .line 1187
    rsub-int/lit8 v5, v0, 0x8

    iget v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    mul-int/2addr v5, v6

    mul-int v6, v0, v20

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x8

    .line 1188
    .end local v11    # "scrG":I
    .local v5, "scrG":I
    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v11

    const/16 v6, 0xff

    invoke-direct {v1, v11, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    .line 1190
    rsub-int/lit8 v6, v0, 0x8

    iget v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    mul-int/2addr v6, v11

    mul-int v11, v0, v21

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x8

    .line 1191
    .end local v12    # "scrB":I
    .local v6, "scrB":I
    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v11, 0xff

    invoke-direct {v1, v12, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v6

    move/from16 v28, v9

    move/from16 v29, v10

    move-wide/from16 v14, v33

    move v9, v4

    move v10, v5

    move v5, v3

    move v3, v6

    move/from16 v6, v20

    goto/16 :goto_458

    .line 1193
    .end local v4    # "scrR":I
    .end local v37    # "g":F
    .end local v38    # "b":F
    .local v5, "g":F
    .local v6, "b":F
    .restart local v11    # "scrG":I
    .restart local v12    # "scrB":I
    .restart local v17    # "scrR":I
    :cond_3a9
    move/from16 v37, v5

    move/from16 v38, v6

    .end local v5    # "g":F
    .end local v6    # "b":F
    .restart local v37    # "g":F
    .restart local v38    # "b":F
    rsub-int/lit8 v4, v0, 0x8

    iget v5, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    mul-int/2addr v4, v5

    mul-int v5, v0, v3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x8

    .line 1194
    .end local v17    # "scrR":I
    .restart local v4    # "scrR":I
    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v6

    const/16 v5, 0xff

    invoke-direct {v1, v6, v5}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v4

    .line 1196
    rsub-int/lit8 v5, v0, 0x8

    iget v6, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    mul-int/2addr v5, v6

    mul-int v6, v0, v20

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x8

    .line 1197
    .end local v11    # "scrG":I
    .local v5, "scrG":I
    const/4 v6, 0x0

    invoke-direct {v1, v5, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v11

    const/16 v6, 0xff

    invoke-direct {v1, v11, v6}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v5

    .line 1199
    rsub-int/lit8 v6, v0, 0x8

    iget v11, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    mul-int/2addr v6, v11

    mul-int v11, v0, v21

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, 0x4

    div-int/lit8 v6, v6, 0x8

    .line 1200
    .end local v12    # "scrB":I
    .local v6, "scrB":I
    const/4 v11, 0x0

    invoke-direct {v1, v6, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->max_num(II)I

    move-result v12

    const/16 v11, 0xff

    invoke-direct {v1, v12, v11}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->min_num(II)I

    move-result v6

    move/from16 v28, v9

    move/from16 v29, v10

    move-wide/from16 v14, v33

    move v9, v4

    move v10, v5

    move v5, v3

    move v3, v6

    move/from16 v6, v20

    goto/16 :goto_458

    .line 1205
    .end local v36    # "r":F
    .end local v37    # "g":F
    .end local v38    # "b":F
    .local v4, "r":F
    .local v5, "g":F
    .local v6, "b":F
    .restart local v11    # "scrG":I
    .restart local v12    # "scrB":I
    .restart local v17    # "scrR":I
    :cond_400
    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    .end local v4    # "r":F
    .end local v5    # "g":F
    .end local v6    # "b":F
    .restart local v36    # "r":F
    .restart local v37    # "g":F
    .restart local v38    # "b":F
    move v4, v3

    .line 1206
    .end local v17    # "scrR":I
    .local v4, "scrR":I
    move/from16 v5, v20

    .line 1207
    .end local v11    # "scrG":I
    .local v5, "scrG":I
    move/from16 v6, v21

    move/from16 v28, v9

    move/from16 v29, v10

    move-wide/from16 v14, v33

    move v9, v4

    move v10, v5

    move v5, v3

    move v3, v6

    move/from16 v6, v20

    .end local v12    # "scrB":I
    .local v6, "scrB":I
    goto :goto_458

    .line 1102
    .end local v0    # "log2Lux":I
    .end local v9    # "adjustG":I
    .end local v10    # "adjustB":I
    .end local v15    # "temp":F
    .end local v19    # "testR":I
    .end local v26    # "testG":I
    .end local v30    # "count":I
    .end local v31    # "count_l":J
    .end local v33    # "luxValue":J
    .end local v35    # "testB":I
    .end local v36    # "r":F
    .end local v37    # "g":F
    .end local v38    # "b":F
    .local v3, "count":I
    .local v4, "r":F
    .local v5, "g":F
    .local v6, "b":F
    .local v11, "count_l":J
    .local v14, "luxValue":J
    .local v16, "log2Lux":I
    .restart local v17    # "scrR":I
    .local v20, "scrB":I
    .local v21, "scrG":I
    .restart local v22    # "scr400LuxR":I
    .restart local v23    # "scr400LuxG":I
    .restart local v24    # "scr400LuxB":I
    .restart local v25    # "adjustR":I
    .restart local v28    # "adjustG":I
    .local v29, "adjustB":I
    :cond_418
    move/from16 v30, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move-wide/from16 v31, v11

    .end local v3    # "count":I
    .end local v4    # "r":F
    .end local v5    # "g":F
    .end local v6    # "b":F
    .end local v11    # "count_l":J
    .restart local v30    # "count":I
    .restart local v31    # "count_l":J
    .restart local v36    # "r":F
    .restart local v37    # "g":F
    .restart local v38    # "b":F
    goto :goto_433

    .end local v16    # "log2Lux":I
    .end local v28    # "adjustG":I
    .end local v29    # "adjustB":I
    .end local v30    # "count":I
    .end local v31    # "count_l":J
    .end local v36    # "r":F
    .end local v37    # "g":F
    .end local v38    # "b":F
    .restart local v0    # "log2Lux":I
    .restart local v3    # "count":I
    .restart local v4    # "r":F
    .restart local v5    # "g":F
    .restart local v6    # "b":F
    .restart local v9    # "adjustG":I
    .restart local v10    # "adjustB":I
    .restart local v11    # "count_l":J
    :cond_423
    move/from16 v16, v0

    move/from16 v30, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v28, v9

    move/from16 v29, v10

    move-wide/from16 v31, v11

    .line 1103
    .end local v0    # "log2Lux":I
    .end local v3    # "count":I
    .end local v4    # "r":F
    .end local v5    # "g":F
    .end local v6    # "b":F
    .end local v9    # "adjustG":I
    .end local v10    # "adjustB":I
    .end local v11    # "count_l":J
    .restart local v16    # "log2Lux":I
    .restart local v28    # "adjustG":I
    .restart local v29    # "adjustB":I
    .restart local v30    # "count":I
    .restart local v31    # "count_l":J
    .restart local v36    # "r":F
    .restart local v37    # "g":F
    .restart local v38    # "b":F
    :goto_433
    if-eqz v2, :cond_447

    .line 1104
    iget v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookR:I

    .line 1105
    .end local v17    # "scrR":I
    .local v9, "scrR":I
    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookG:I

    .line 1106
    .end local v21    # "scrG":I
    .local v10, "scrG":I
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultEbookB:I

    move v3, v0

    move/from16 v0, v16

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v21, v24

    move/from16 v16, v25

    .end local v20    # "scrB":I
    .local v0, "scrB":I
    goto :goto_458

    .line 1108
    .end local v0    # "scrB":I
    .end local v9    # "scrR":I
    .end local v10    # "scrG":I
    .restart local v17    # "scrR":I
    .restart local v20    # "scrB":I
    .restart local v21    # "scrG":I
    :cond_447
    iget v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1109
    .end local v17    # "scrR":I
    .restart local v9    # "scrR":I
    iget v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1110
    .end local v21    # "scrG":I
    .restart local v10    # "scrG":I
    iget v0, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    move v3, v0

    move/from16 v0, v16

    move/from16 v5, v22

    move/from16 v6, v23

    move/from16 v21, v24

    move/from16 v16, v25

    .line 1218
    .end local v20    # "scrB":I
    .end local v22    # "scr400LuxR":I
    .end local v23    # "scr400LuxG":I
    .end local v24    # "scr400LuxB":I
    .end local v25    # "adjustR":I
    .local v0, "log2Lux":I
    .local v3, "scrB":I
    .local v5, "scr400LuxR":I
    .local v6, "scr400LuxG":I
    .local v16, "adjustR":I
    .local v21, "scr400LuxB":I
    :goto_458
    if-eqz v9, :cond_4aa

    if-eqz v10, :cond_4aa

    if-eqz v3, :cond_4aa

    .line 1220
    iput v9, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgR:I

    .line 1221
    iput v10, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgG:I

    .line 1222
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mFinalIntAvgB:I

    .line 1223
    const/4 v4, 0x0

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountAnimationValue:I

    .line 1225
    iget-boolean v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v4, :cond_48f

    .line 1226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "scrR : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", scrG : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", scrB : "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    :cond_48f
    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    if-ne v9, v4, :cond_49b

    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    if-ne v10, v4, :cond_49b

    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    if-eq v3, v4, :cond_4aa

    .line 1229
    :cond_49b
    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgR:I

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgR:I

    .line 1230
    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgG:I

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgG:I

    .line 1231
    iget v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPrevIntAvgB:I

    iput v4, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mTempIntAvgB:I

    .line 1232
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->animateScrRGB()V

    .line 1235
    :cond_4aa
    return-void

    .line 1079
    .end local v0    # "log2Lux":I
    .end local v14    # "luxValue":J
    .end local v16    # "adjustR":I
    .end local v28    # "adjustG":I
    .end local v29    # "adjustB":I
    .end local v30    # "count":I
    .end local v31    # "count_l":J
    .end local v36    # "r":F
    .end local v37    # "g":F
    .end local v38    # "b":F
    .local v3, "count":I
    .restart local v4    # "r":F
    .local v5, "g":F
    .local v6, "b":F
    .local v9, "adjustG":I
    .local v10, "adjustB":I
    .restart local v11    # "count_l":J
    .local v15, "luxValue":J
    .restart local v17    # "scrR":I
    .restart local v20    # "scrB":I
    .local v21, "scrG":I
    .restart local v22    # "scr400LuxR":I
    .restart local v23    # "scr400LuxG":I
    .restart local v24    # "scr400LuxB":I
    .restart local v25    # "adjustR":I
    :catchall_4ab
    move-exception v0

    move/from16 v30, v3

    move/from16 v36, v4

    move/from16 v37, v5

    move/from16 v38, v6

    move/from16 v28, v9

    move/from16 v29, v10

    move-wide/from16 v31, v11

    .end local v3    # "count":I
    .end local v4    # "r":F
    .end local v5    # "g":F
    .end local v6    # "b":F
    .end local v9    # "adjustG":I
    .end local v10    # "adjustB":I
    .end local v11    # "count_l":J
    .restart local v28    # "adjustG":I
    .restart local v29    # "adjustB":I
    .restart local v30    # "count":I
    .restart local v31    # "count_l":J
    .restart local v36    # "r":F
    .restart local v37    # "g":F
    .restart local v38    # "b":F
    :goto_4ba
    iget-boolean v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mIsFirstStart:Z

    if-eqz v3, :cond_4c6

    .line 1080
    const/16 v3, 0xff

    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultR:I

    .line 1081
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultG:I

    .line 1082
    iput v3, v1, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDefaultB:I

    .line 1084
    :cond_4c6
    throw v0
.end method

.method private setAverageValue(IIII)V
    .registers 22
    .param p1, "r"    # I
    .param p2, "g"    # I
    .param p3, "b"    # I
    .param p4, "lux"    # I

    .line 923
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    add-int v4, v1, v2

    add-int/2addr v4, v3

    .line 924
    .local v4, "sumRGB":I
    const/4 v5, 0x0

    .local v5, "ratioR":F
    const/4 v6, 0x0

    .local v6, "ratioG":F
    const/4 v7, 0x0

    .line 926
    .local v7, "ratioB":F
    int-to-float v8, v1

    int-to-float v9, v4

    div-float/2addr v8, v9

    .line 927
    .end local v5    # "ratioR":F
    .local v8, "ratioR":F
    int-to-float v5, v2

    int-to-float v9, v4

    div-float/2addr v5, v9

    .line 928
    .end local v6    # "ratioG":F
    .local v5, "ratioG":F
    int-to-float v6, v3

    int-to-float v9, v4

    div-float/2addr v6, v9

    .line 930
    .end local v7    # "ratioB":F
    .local v6, "ratioB":F
    iget v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    sub-float v7, v8, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v9, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v7, v7, v9

    const/4 v9, 0x2

    if-gtz v7, :cond_4e

    iget v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    sub-float v7, v5, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v7, v7, v10

    if-gtz v7, :cond_4e

    iget v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mRgbThreshold:F

    cmpl-float v7, v7, v10

    if-lez v7, :cond_43

    goto :goto_4e

    .line 953
    :cond_43
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 954
    iget-object v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    invoke-virtual {v7, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    move/from16 v14, p4

    goto :goto_9a

    .line 931
    :cond_4e
    :goto_4e
    iget v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    add-float/2addr v7, v8

    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgR:F

    .line 932
    iget v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    add-float/2addr v10, v5

    iput v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgG:F

    .line 933
    iget v11, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    add-float/2addr v11, v6

    iput v11, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAvgB:F

    .line 934
    iget-wide v12, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    move/from16 v14, p4

    move/from16 v16, v10

    int-to-long v9, v14

    add-long/2addr v12, v9

    iput-wide v12, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSumLux:J

    .line 935
    iget v9, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    const/4 v10, 0x1

    add-int/2addr v9, v10

    iput v9, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCountSensorValue:I

    .line 937
    const/16 v12, 0x14

    if-lt v9, v12, :cond_81

    .line 938
    int-to-float v12, v9

    div-float/2addr v7, v12

    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgR:F

    .line 939
    int-to-float v7, v9

    div-float v7, v16, v7

    iput v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgG:F

    .line 940
    int-to-float v7, v9

    div-float/2addr v11, v7

    iput v11, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mLastAvgB:F

    .line 942
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->initRgbAverage()V

    .line 945
    :cond_81
    iget-boolean v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    if-nez v7, :cond_9a

    .line 946
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 947
    .local v11, "time":J
    iput-boolean v10, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mValidZone:Z

    .line 948
    iget-object v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->removeMessages(I)V

    .line 949
    iget-object v7, v0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mHandler:Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;

    const-wide/16 v15, 0x2710

    add-long v0, v11, v15

    invoke-virtual {v7, v9, v0, v1}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService$ScrControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 956
    .end local v11    # "time":J
    :cond_9a
    :goto_9a
    return-void
.end method

.method private setBrowserMode()V
    .registers 3

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_15

    .line 1307
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1309
    :cond_15
    return-void
.end method

.method private setEbookMode()V
    .registers 3

    .line 1294
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_15

    .line 1295
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 1296
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1297
    :cond_15
    return-void
.end method

.method private setVideoMode()V
    .registers 3

    .line 1300
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_14

    .line 1301
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1303
    :cond_14
    return-void
.end method

.method private setting_is_changed()V
    .registers 6

    .line 561
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "lcd_curtain"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_12

    move v1, v3

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    .line 564
    const-string v1, "high_contrast"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1f

    move v1, v3

    goto :goto_20

    :cond_1f
    move v1, v2

    :goto_20
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    .line 565
    const-string v1, "color_blind"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_2c

    move v1, v3

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    .line 569
    const-string v1, "psm_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_39

    move v1, v3

    goto :goto_3a

    :cond_39
    move v1, v2

    :goto_3a
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    .line 571
    const-string v1, "ultra_powersaving_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_46

    move v1, v3

    goto :goto_47

    :cond_46
    move v1, v2

    :goto_47
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    .line 572
    const-string v1, "screen_mode_automatic_setting"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_53

    move v1, v3

    goto :goto_54

    :cond_53
    move v1, v2

    :goto_54
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    .line 573
    const-string v1, "blue_light_filter"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_60

    move v1, v3

    goto :goto_61

    :cond_60
    move v1, v2

    :goto_61
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mBlueFilterEnabled:Z

    .line 574
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenCurtainEnabled:Z

    if-nez v4, :cond_7f

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mNegativeColorEnabled:Z

    if-nez v4, :cond_7f

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mColorBlindEnabled:Z

    if-nez v4, :cond_7f

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mUltraPowerSavingModeEnabled:Z

    if-nez v4, :cond_7f

    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mPowerSavingEnabled:Z

    if-nez v4, :cond_7f

    if-nez v1, :cond_7f

    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mAutoModeEnabled:Z

    if-eqz v1, :cond_7f

    move v1, v3

    goto :goto_80

    :cond_7f
    move v1, v2

    :goto_80
    iput-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSettingCondition:Z

    .line 575
    iget-boolean v4, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mScreenStateOn:Z

    if-eqz v4, :cond_89

    if-eqz v1, :cond_89

    goto :goto_8a

    :cond_89
    move v3, v2

    :goto_8a
    iput-boolean v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mEnableCondition:Z

    .line 577
    if-eqz v3, :cond_ab

    .line 578
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_97

    .line 579
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 581
    :cond_97
    :try_start_97
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mProcessObserver:Landroid/app/IProcessObserver;

    const/4 v3, -0x1

    invoke-interface {v1, v3, v2, v2}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_97 .. :try_end_9d} :catch_9e

    .line 586
    :cond_9d
    :goto_9d
    goto :goto_bb

    .line 582
    :catch_9e
    move-exception v1

    .line 583
    .local v1, "e":Landroid/os/RemoteException;
    iget-boolean v2, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v2, :cond_9d

    .line 584
    const-string v2, "AdaptiveDisplayColorService"

    const-string v3, "failed to onForegroundActivitiesChanged"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9d

    .line 588
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_ab
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_b4

    .line 589
    iget-object v3, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 591
    :cond_b4
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSensorEnabled:Z

    if-eqz v1, :cond_bb

    .line 592
    invoke-direct {p0, v2}, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->enableRgbSensor(Z)V

    .line 594
    :cond_bb
    :goto_bb
    return-void
.end method

.method private terminateScrRGB()V
    .registers 3

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_14

    .line 1319
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1320
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1321
    :cond_14
    return-void
.end method

.method private terminateVideoMode()V
    .registers 3

    .line 1312
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v1, :cond_14

    .line 1313
    invoke-virtual {v0}, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;->isMdnieScenarioControlServiceEnabled()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1314
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->mSemMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setContentMode(I)Z

    .line 1315
    :cond_14
    return-void
.end method

.method private updateScreen()V
    .registers 6

    .line 1351
    :try_start_0
    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1352
    .local v0, "flinger":Landroid/os/IBinder;
    if-eqz v0, :cond_1e

    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1354
    .local v1, "data":Landroid/os/Parcel;
    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1355
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1356
    const/16 v3, 0x3ee

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1357
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 1363
    .end local v0    # "flinger":Landroid/os/IBinder;
    .end local v1    # "data":Landroid/os/Parcel;
    :cond_1e
    goto :goto_2b

    .line 1359
    :catch_1f
    move-exception v0

    .line 1360
    .local v0, "e":Landroid/os/RemoteException;
    iget-boolean v1, p0, Lcom/samsung/android/hardware/display/AdaptiveDisplayColorService;->DEBUG:Z

    if-eqz v1, :cond_2b

    .line 1361
    const-string v1, "AdaptiveDisplayColorService"

    const-string v2, "failed to updateScreen"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    :goto_2b
    return-void
.end method
