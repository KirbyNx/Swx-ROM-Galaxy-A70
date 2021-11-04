.class public Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
.super Ljava/lang/Object;
.source "EyeComfortSolutionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;,
        Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;,
        Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_HQM_UPDATE_REQ:Ljava/lang/String; = "com.sec.android.intent.action.HQM_UPDATE_REQ"

.field private static final ECSS_KEYS:[Ljava/lang/String;

.field private static final ECS_ON:Ljava/lang/String; = "sys.eyecomfortsolution.ecson"

.field private static final TAG:Ljava/lang/String; = "EyeComfortSolutionService"


# instance fields
.field private ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

.field private ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

.field private final BED_TRANSITION_TIME:I

.field private BOPR_MAX_VALUE:I

.field private BOPR_VALUE_STEP:I

.field private final DEBUG:Z

.field private final DEFAULT_BED_TIME:I

.field private final DEFAULT_WAKEUP_TIME:I

.field private GET_SYSTEM_SERVICES_MILLIS:I

.field private final HIGH_DAY_BLF:I

.field private final MAX_BOPR_STEP:I

.field private final MAX_TOTAL_STEP:I

.field private final MORNING_BLF_INTERVAL_A:I

.field private final MORNING_BLF_INTERVAL_B:I

.field private final MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_OFF:I

.field private final MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_ON:I

.field private final MSG_GET_BOPR_SENSOR_VALUE_OFF:I

.field private final MSG_GET_BOPR_SENSOR_VALUE_ON:I

.field private final MSG_GET_SYSTEM_SERVICES:I

.field private final MSG_SET_BLUE_LIGHT_FILTER_DAY:I

.field private final NIGHT_BLF_INTERVAL:I

.field private final RANGE_BOPR_BLF:I

.field private final RANGE_DAY_BLF:I

.field private final RANGE_DAY_ONLY_BLF:I

.field private final WAKEUP_TRANSITION_TIME_A:I

.field private final WAKEUP_TRANSITION_TIME_B:I

.field private app_weighting_factor:F

.field private bopr_average_value_for_bigdata_blf_off:I

.field private bopr_average_value_for_bigdata_blf_on:I

.field private bopr_cumulative_count:I

.field private bopr_cumulative_count_for_bigdata_blf_off:I

.field private bopr_cumulative_count_for_bigdata_blf_on:I

.field private bopr_cumulative_value_for_bigdata_blf_off:I

.field private bopr_cumulative_value_for_bigdata_blf_on:I

.field private bopr_current_value:I

.field private cal_value_sum:F

.field private defaultBedTime:I

.field private defaultWakeupTime:I

.field private mAdaptiveBlueLightFilterSupported:Z

.field private mAutoTimeModeEnabled:Z

.field private mBedtime_friday:I

.field private mBedtime_monday:I

.field private mBedtime_saturday:I

.field private mBedtime_sunday:I

.field private mBedtime_thursday:I

.field private mBedtime_tuesday:I

.field private mBedtime_wednesday:I

.field private mBlueLightFilterAdaptiveModeEnabled:Z

.field private mBlueLightFilterEnableTime:Z

.field private mBlueLightFilterModeEnabled:Z

.field private mBlueLightFilterScheduledModeEnabled:Z

.field private mBoprSensor:Landroid/hardware/Sensor;

.field private mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

.field private mBoprSensorListener:Landroid/hardware/SensorEventListener;

.field private mColorOnPixelRatioSupported:Z

.field private final mContext:Landroid/content/Context;

.field private mCurrentStateSleep:Z

.field private mCurrentStateWakeup:Z

.field private mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastBoprBlueLightFilterIndex:I

.field private mLastDayBlueLightFilterIndex:I

.field private mLastTotalBlueLightFilterIndex:I

.field private mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

.field private mPlatformBrightnessValue:F

.field private mScreenOn:Z

.field private mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

.field private mSemHqmManager:Landroid/os/SemHqmManager;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

.field private mUseEyeComfortSolutionServiceConfig:Z

.field private mWakeupTime_friday:I

.field private mWakeupTime_monday:I

.field private mWakeupTime_saturday:I

.field private mWakeupTime_sunday:I

.field private mWakeupTime_thursday:I

.field private mWakeupTime_tuesday:I

.field private mWakeupTime_wednesday:I

.field private mWorkingCondition:Z

.field private prevTotalStep:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 168
    const-string v0, "BOPR_AVG_VALUE_BLF_ON"

    const-string v1, "BOPR_AVG_VALUE_BLF_OFF"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEBUG:Z

    .line 92
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MORNING_BLF_INTERVAL_A:I

    .line 93
    const/4 v1, 0x5

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MORNING_BLF_INTERVAL_B:I

    .line 94
    const/16 v2, 0xa

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->NIGHT_BLF_INTERVAL:I

    .line 96
    const/16 v2, 0x1770

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->HIGH_DAY_BLF:I

    .line 97
    const/16 v2, 0x7d0

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_DAY_ONLY_BLF:I

    .line 98
    const/16 v2, 0x320

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_DAY_BLF:I

    .line 99
    const/16 v2, 0x4b0

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->RANGE_BOPR_BLF:I

    .line 100
    const/16 v2, 0x5a

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MAX_TOTAL_STEP:I

    .line 101
    const/16 v2, 0x36

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MAX_BOPR_STEP:I

    .line 103
    const/16 v2, 0x168

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BED_TRANSITION_TIME:I

    .line 104
    const/16 v3, 0xb4

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->WAKEUP_TRANSITION_TIME_A:I

    .line 105
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->WAKEUP_TRANSITION_TIME_B:I

    .line 107
    const/4 v3, 0x0

    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEFAULT_BED_TIME:I

    .line 108
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->DEFAULT_WAKEUP_TIME:I

    .line 110
    const/4 v4, 0x1

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_SYSTEM_SERVICES:I

    .line 111
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_ON:I

    .line 112
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_OFF:I

    .line 113
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_ON:I

    .line 114
    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_OFF:I

    .line 115
    const/4 v0, 0x6

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->MSG_SET_BLUE_LIGHT_FILTER_DAY:I

    .line 117
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    .line 118
    const/16 v0, 0x2710

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    .line 119
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

    .line 120
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 122
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    .line 123
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 125
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    .line 126
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    .line 127
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 128
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    .line 129
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    .line 130
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    .line 132
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 136
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 137
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 138
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 139
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 140
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 142
    iput v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 143
    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 145
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 146
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 147
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 148
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 149
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 150
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 151
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 153
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 154
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 155
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 156
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 157
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 158
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 159
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 170
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 176
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWorkingCondition:Z

    .line 177
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    .line 178
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 180
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 181
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledModeEnabled:Z

    .line 182
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 183
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAutoTimeModeEnabled:Z

    .line 184
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 185
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 186
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 187
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 188
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 648
    new-instance v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    .line 668
    new-instance v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$2;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    .line 191
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    .line 193
    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "EyeComfortSolutionServiceThread"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 194
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 195
    new-instance v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    .line 197
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x111008b

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    .line 199
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x10e000e

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    .line 201
    new-instance v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    iget-object v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    .line 203
    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 204
    .local v2, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 206
    .local v5, "time":J
    const-string v7, "blue_light_filter"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v2, v7, v3, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 207
    const-string v7, "blue_light_filter_scheduled"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v2, v7, v3, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 208
    const-string v7, "blue_light_filter_adaptive_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v2, v7, v3, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    const-string v7, "auto_time"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSettingsObserver:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$SettingsObserver;

    invoke-virtual {v2, v7, v3, v8, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 214
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    const-string v7, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v7, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    const-string v7, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 218
    const-string v7, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v7, "com.sec.android.intent.action.HQM_UPDATE_REQ"

    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    iget-object v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;

    invoke-direct {v8, p0, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ScreenWatchingReceiver;-><init>(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Lcom/samsung/android/displaysolution/EyeComfortSolutionService$1;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v10, v0

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 223
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 224
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v7, v7

    add-long/2addr v7, v5

    invoke-virtual {v1, v4, v7, v8}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 226
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v7, "SEC_FLOATING_FEATURE_LCD_SUPPORT_BLUE_FILTER_ADAPTIVE_MODE"

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_195

    .line 227
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    .line 229
    :cond_195
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    invoke-virtual {v1, v7, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1a1

    .line 230
    iput-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    .line 232
    :cond_1a1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "A_BLF : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , COPR_IP : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "EyeComfortSolutionService"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "sys.eyecomfortsolution.ecson"

    const-string v4, "false"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-boolean v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mUseEyeComfortSolutionServiceConfig:Z

    if-eqz v4, :cond_1d3

    .line 236
    const-string v4, "true"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :cond_1d3
    const-string v1, "EyeComfortSolutionService Enabled"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method

.method private JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "keys"    # [Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/String;
    .param p3, "length"    # I

    .line 763
    const/4 v0, 0x0

    .line 765
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 766
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, p3, :cond_14

    .line 767
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_11} :catch_15

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 772
    .end local v1    # "i":I
    :cond_14
    goto :goto_19

    .line 770
    :catch_15
    move-exception v1

    .line 771
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 773
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_19
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\{"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\}"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setting_is_changed()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/os/SemHqmManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # Landroid/os/SemHqmManager;

    .line 86
    iput-object p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->sendBigDatatoHQM()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getSystemServices()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValue(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getBoprSensorValueForBigData(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # Z

    .line 86
    invoke-direct {p0, p1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    return v0
.end method

.method static synthetic access$1702(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_current_value:I

    return p1
.end method

.method static synthetic access$1800(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    return v0
.end method

.method static synthetic access$1808(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_bopr(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V

    return-void
.end method

.method static synthetic access$2000(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    return v0
.end method

.method static synthetic access$2300(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    return v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    return v0
.end method

.method static synthetic access$2408(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    return v0
.end method

.method static synthetic access$2502(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    return p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    return v0
.end method

.method static synthetic access$2602(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    return p1
.end method

.method static synthetic access$2700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    return v0
.end method

.method static synthetic access$2708(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 3
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    return v0
.end method

.method static synthetic access$2802(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # I

    .line 86
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Landroid/hardware/SensorEventListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$302(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;
    .param p1, "x1"    # Z

    .line 86
    iput-boolean p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/displaysolution/EyeComfortSolutionService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/displaysolution/EyeComfortSolutionService;

    .line 86
    iget v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_FOR_BIGDATA_DEBOUNCE_MILLIS:I

    return v0
.end method

.method private blue_light_filter_data_reset()V
    .registers 3

    .line 554
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 555
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count:I

    .line 556
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 557
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 558
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 559
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 560
    return-void
.end method

.method private blue_light_filter_setting_bopr(II)V
    .registers 14
    .param p1, "bopr_current_value"    # I
    .param p2, "bopr_cumulative_count"    # I

    .line 309
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 310
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->getting_platform_brightness_value()F

    move-result v1

    .line 311
    .local v1, "platform_brightness_value":F
    int-to-float v2, p1

    .line 312
    .local v2, "bopr_current_value_f":F
    const/high16 v3, 0x43800000    # 256.0f

    div-float v3, v2, v3

    float-to-double v3, v3

    const-wide v5, 0x40019999a0000000L    # 2.200000047683716

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    mul-float/2addr v5, v1

    float-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    .line 313
    .local v3, "cal_value":F
    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    add-float/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , bopr_value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", platform_value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , app_weighting : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , cal_value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , sum_value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " , BOPR_MAX_VALUE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EyeComfortSolutionService"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    const/16 v6, 0x36

    if-ge v4, v6, :cond_c6

    .line 317
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_77
    if-ge v4, v6, :cond_c6

    .line 318
    iget v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->cal_value_sum:F

    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_MAX_VALUE:I

    div-int/2addr v8, v6

    iget v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/lit8 v10, v9, 0x1

    mul-int/2addr v8, v10

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_c3

    if-ne v9, v4, :cond_c3

    .line 319
    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 320
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change BLF step by B-opr, BLF dayIndex : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] , boprIndex : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v8, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 322
    const/4 v8, 0x1

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    .line 323
    iget v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->BOPR_VALUE_STEP:I

    .line 317
    :cond_c3
    add-int/lit8 v4, v4, 0x1

    goto :goto_77

    .line 327
    .end local v4    # "i":I
    :cond_c6
    return-void
.end method

.method private blue_light_filter_setting_day(Z)V
    .registers 27
    .param p1, "enable"    # Z

    .line 330
    move-object/from16 v0, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 331
    .local v1, "time":J
    new-instance v3, Ljava/text/SimpleDateFormat;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v5, "EE"

    invoke-direct {v3, v5, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 332
    .local v3, "dateFormat_w":Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "HH"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 333
    .local v4, "dateFormat_h":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "mm"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 334
    .local v5, "dateFormat_m":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 335
    .local v6, "Week":Ljava/lang/String;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 336
    .local v7, "Hour":Ljava/lang/String;
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    .line 337
    .local v8, "Minute":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3c

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    .line 338
    .local v9, "mCurrentTimeValue":I
    const/4 v10, 0x0

    .line 339
    .local v10, "currentWakeupStep":I
    const/4 v11, 0x0

    .line 341
    .local v11, "currentSleepStep":I
    const/4 v13, 0x0

    if-eqz p1, :cond_416

    .line 342
    iget v14, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    iget v15, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    const/4 v12, 0x1

    if-lt v14, v15, :cond_65

    .line 343
    if-le v9, v15, :cond_60

    if-gt v9, v14, :cond_60

    .line 344
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 345
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_72

    .line 347
    :cond_60
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 348
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_72

    .line 351
    :cond_65
    if-le v9, v14, :cond_6e

    if-gt v9, v15, :cond_6e

    .line 352
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 353
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    goto :goto_72

    .line 355
    :cond_6e
    iput-boolean v12, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    .line 356
    iput-boolean v13, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    .line 360
    :goto_72
    iget-boolean v14, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v15, " , TimeValue : "

    const-string v13, " , Minute : "

    const-string v12, " , Hour : "

    move-object/from16 v16, v3

    .end local v3    # "dateFormat_w":Ljava/text/SimpleDateFormat;
    .local v16, "dateFormat_w":Ljava/text/SimpleDateFormat;
    const-string v3, "Week : "

    move-object/from16 v17, v4

    .end local v4    # "dateFormat_h":Ljava/text/SimpleDateFormat;
    .local v17, "dateFormat_h":Ljava/text/SimpleDateFormat;
    const-string v4, "EyeComfortSolutionService"

    move-object/from16 v18, v5

    .end local v5    # "dateFormat_m":Ljava/text/SimpleDateFormat;
    .local v18, "dateFormat_m":Ljava/text/SimpleDateFormat;
    if-eqz v14, :cond_18e

    .line 361
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , wakeup state, defaultBedTime : "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , start sleep : "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v5, v5, -0x168

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v14, v5, -0x168

    if-gez v14, :cond_13b

    .line 363
    add-int/lit16 v14, v5, 0x5a0

    add-int/lit16 v14, v14, -0x168

    if-lt v9, v14, :cond_109

    const/16 v14, 0x5a0

    if-ge v9, v14, :cond_109

    .line 364
    const/4 v14, 0x1

    iput-boolean v14, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 365
    const/16 v14, 0x5a0

    add-int/2addr v5, v14

    add-int/lit16 v5, v5, -0x168

    if-ne v9, v5, :cond_f3

    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v5, :cond_f3

    .line 366
    iget-object v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 367
    iget-object v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v14, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "currentWakeupStep":I
    .end local v11    # "currentSleepStep":I
    .local v19, "currentWakeupStep":I
    .local v20, "currentSleepStep":I
    int-to-long v10, v14

    add-long/2addr v10, v1

    const/4 v14, 0x2

    invoke-virtual {v5, v14, v10, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_f7

    .line 365
    .end local v19    # "currentWakeupStep":I
    .end local v20    # "currentSleepStep":I
    .restart local v10    # "currentWakeupStep":I
    .restart local v11    # "currentSleepStep":I
    :cond_f3
    move/from16 v19, v10

    move/from16 v20, v11

    .line 369
    .end local v10    # "currentWakeupStep":I
    .end local v11    # "currentSleepStep":I
    .restart local v19    # "currentWakeupStep":I
    .restart local v20    # "currentSleepStep":I
    :goto_f7
    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    const/16 v10, 0x5a0

    add-int/2addr v5, v10

    add-int/lit16 v5, v5, -0x168

    sub-int v5, v9, v5

    div-int/lit8 v5, v5, 0xa

    const/4 v10, 0x1

    add-int/2addr v5, v10

    move v10, v5

    move-object/from16 v21, v15

    .end local v19    # "currentWakeupStep":I
    .local v5, "currentWakeupStep":I
    goto/16 :goto_196

    .line 363
    .end local v5    # "currentWakeupStep":I
    .end local v20    # "currentSleepStep":I
    .restart local v10    # "currentWakeupStep":I
    .restart local v11    # "currentSleepStep":I
    :cond_109
    move/from16 v19, v10

    move/from16 v20, v11

    .line 370
    .end local v10    # "currentWakeupStep":I
    .end local v11    # "currentSleepStep":I
    .restart local v19    # "currentWakeupStep":I
    .restart local v20    # "currentSleepStep":I
    if-ltz v9, :cond_121

    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    if-ge v9, v5, :cond_121

    .line 371
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 372
    sub-int/2addr v5, v9

    rsub-int v5, v5, 0x168

    div-int/lit8 v5, v5, 0xa

    add-int/2addr v5, v10

    move v10, v5

    move-object/from16 v21, v15

    .end local v19    # "currentWakeupStep":I
    .restart local v5    # "currentWakeupStep":I
    goto/16 :goto_196

    .line 373
    .end local v5    # "currentWakeupStep":I
    .restart local v19    # "currentWakeupStep":I
    :cond_121
    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    if-ne v9, v5, :cond_133

    .line 374
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 375
    const/16 v10, 0x24

    .line 376
    .end local v19    # "currentWakeupStep":I
    .restart local v10    # "currentWakeupStep":I
    const-string v11, "WakeupTime"

    invoke-direct {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    move-object/from16 v21, v15

    goto/16 :goto_196

    .line 378
    .end local v10    # "currentWakeupStep":I
    .restart local v19    # "currentWakeupStep":I
    :cond_133
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 379
    const/4 v5, 0x0

    move v10, v5

    move-object/from16 v21, v15

    .end local v19    # "currentWakeupStep":I
    .restart local v5    # "currentWakeupStep":I
    goto :goto_196

    .line 381
    .end local v5    # "currentWakeupStep":I
    .end local v20    # "currentSleepStep":I
    .restart local v10    # "currentWakeupStep":I
    .restart local v11    # "currentSleepStep":I
    :cond_13b
    move/from16 v19, v10

    move/from16 v20, v11

    .end local v10    # "currentWakeupStep":I
    .end local v11    # "currentSleepStep":I
    .restart local v19    # "currentWakeupStep":I
    .restart local v20    # "currentSleepStep":I
    add-int/lit16 v10, v5, -0x168

    if-ltz v10, :cond_18b

    .line 382
    add-int/lit16 v10, v5, -0x168

    if-lt v9, v10, :cond_174

    if-ge v9, v5, :cond_174

    .line 383
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 384
    add-int/lit16 v5, v5, -0x168

    if-ne v9, v5, :cond_166

    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v5, :cond_166

    .line 385
    iget-object v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v10, 0x2

    invoke-virtual {v5, v10}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 386
    iget-object v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    move-object/from16 v21, v15

    int-to-long v14, v11

    add-long/2addr v14, v1

    invoke-virtual {v5, v10, v14, v15}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_168

    .line 384
    :cond_166
    move-object/from16 v21, v15

    .line 388
    :goto_168
    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    add-int/lit16 v5, v5, -0x168

    sub-int v5, v9, v5

    div-int/lit8 v5, v5, 0xa

    const/4 v10, 0x1

    add-int/2addr v5, v10

    move v10, v5

    .end local v19    # "currentWakeupStep":I
    .restart local v5    # "currentWakeupStep":I
    goto :goto_196

    .line 382
    .end local v5    # "currentWakeupStep":I
    .restart local v19    # "currentWakeupStep":I
    :cond_174
    move-object/from16 v21, v15

    .line 389
    iget v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    if-ne v9, v5, :cond_185

    .line 390
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 391
    const/16 v10, 0x24

    .line 392
    .end local v19    # "currentWakeupStep":I
    .restart local v10    # "currentWakeupStep":I
    const-string v11, "NextWakeupTime"

    invoke-direct {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    goto :goto_196

    .line 394
    .end local v10    # "currentWakeupStep":I
    .restart local v19    # "currentWakeupStep":I
    :cond_185
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 395
    const/4 v5, 0x0

    move v10, v5

    .end local v19    # "currentWakeupStep":I
    .restart local v5    # "currentWakeupStep":I
    goto :goto_196

    .line 381
    .end local v5    # "currentWakeupStep":I
    .restart local v19    # "currentWakeupStep":I
    :cond_18b
    move-object/from16 v21, v15

    goto :goto_194

    .line 360
    .end local v19    # "currentWakeupStep":I
    .end local v20    # "currentSleepStep":I
    .restart local v10    # "currentWakeupStep":I
    .restart local v11    # "currentSleepStep":I
    :cond_18e
    move/from16 v19, v10

    move/from16 v20, v11

    move-object/from16 v21, v15

    .line 400
    .end local v10    # "currentWakeupStep":I
    .end local v11    # "currentSleepStep":I
    .restart local v19    # "currentWakeupStep":I
    .restart local v20    # "currentSleepStep":I
    :goto_194
    move/from16 v10, v19

    .end local v19    # "currentWakeupStep":I
    .restart local v10    # "currentWakeupStep":I
    :goto_196
    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v5, :cond_33b

    .line 401
    iget-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v14, " , start wakeup : "

    const-string v15, " , sleep state, defaultWakeupTime : "

    const-string v11, "BedTime"

    if-eqz v5, :cond_28e

    .line 402
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v3, v3, -0xb4

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v5, v3, -0xb4

    if-gez v5, :cond_241

    .line 404
    add-int/lit16 v5, v3, 0x5a0

    add-int/lit16 v5, v5, -0xb4

    if-lt v9, v5, :cond_1fd

    const/16 v5, 0x5a0

    if-ge v9, v5, :cond_1fd

    .line 405
    const/4 v11, 0x0

    iput-boolean v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 406
    add-int/2addr v3, v5

    add-int/lit16 v3, v3, -0xb4

    sub-int v3, v9, v3

    const/4 v5, 0x2

    div-int/2addr v3, v5

    rsub-int/lit8 v3, v3, 0x59

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .local v3, "currentSleepStep":I
    goto/16 :goto_33f

    .line 407
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_1fd
    if-ltz v9, :cond_212

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    if-ge v9, v3, :cond_212

    .line 408
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 409
    sub-int/2addr v3, v9

    rsub-int v3, v3, 0xb4

    const/4 v5, 0x2

    div-int/2addr v3, v5

    rsub-int/lit8 v3, v3, 0x59

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    goto/16 :goto_33f

    .line 410
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_212
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    if-ne v9, v3, :cond_22a

    .line 411
    const-string v3, "reset blue_light_filter_data_reset"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    .line 413
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 414
    const/4 v3, 0x0

    .line 415
    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    invoke-direct {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    move-wide/from16 v21, v1

    move v11, v3

    goto/16 :goto_33f

    .line 417
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_22a
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 418
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v5, 0x24

    if-ge v3, v5, :cond_23a

    .line 419
    const/16 v3, 0x24

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    goto/16 :goto_33f

    .line 421
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_23a
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    goto/16 :goto_33f

    .line 424
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_241
    add-int/lit16 v5, v3, -0xb4

    if-ltz v5, :cond_28a

    .line 425
    add-int/lit16 v5, v3, -0xb4

    if-lt v9, v5, :cond_25b

    if-ge v9, v3, :cond_25b

    .line 426
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 427
    add-int/lit16 v3, v3, -0xb4

    sub-int v3, v9, v3

    const/4 v5, 0x2

    div-int/2addr v3, v5

    rsub-int/lit8 v3, v3, 0x59

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    goto/16 :goto_33f

    .line 428
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_25b
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    if-ne v9, v3, :cond_273

    .line 429
    const-string v3, "reset blue_light_filter_data_reset"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    .line 431
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 432
    const/4 v3, 0x0

    .line 433
    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    invoke-direct {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    move-wide/from16 v21, v1

    move v11, v3

    goto/16 :goto_33f

    .line 435
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_273
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 436
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/16 v5, 0x24

    if-ge v3, v5, :cond_283

    .line 437
    const/16 v3, 0x24

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    goto/16 :goto_33f

    .line 439
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_283
    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    move-wide/from16 v21, v1

    move v11, v3

    .end local v20    # "currentSleepStep":I
    .restart local v3    # "currentSleepStep":I
    goto/16 :goto_33f

    .line 424
    .end local v3    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_28a
    move-wide/from16 v21, v1

    goto/16 :goto_33d

    .line 443
    :cond_28e
    move-wide/from16 v23, v1

    move-object/from16 v1, v21

    move-wide/from16 v21, v23

    .end local v1    # "time":J
    .local v21, "time":J
    if-nez v5, :cond_33d

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v1, v1, -0xb4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    add-int/lit16 v2, v1, -0xb4

    if-gez v2, :cond_310

    .line 446
    add-int/lit16 v2, v1, 0x5a0

    add-int/lit16 v2, v2, -0xb4

    if-lt v9, v2, :cond_2ea

    const/16 v2, 0x5a0

    if-ge v9, v2, :cond_2ea

    .line 447
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 448
    add-int/2addr v1, v2

    add-int/lit16 v1, v1, -0xb4

    sub-int v1, v9, v1

    div-int/lit8 v1, v1, 0x5

    rsub-int/lit8 v1, v1, 0x23

    move v11, v1

    .end local v20    # "currentSleepStep":I
    .local v1, "currentSleepStep":I
    goto :goto_33f

    .line 449
    .end local v1    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_2ea
    if-ltz v9, :cond_2fc

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    if-ge v9, v1, :cond_2fc

    .line 450
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 451
    sub-int/2addr v1, v9

    rsub-int v1, v1, 0xb4

    div-int/lit8 v1, v1, 0x5

    rsub-int/lit8 v1, v1, 0x23

    move v11, v1

    .end local v20    # "currentSleepStep":I
    .restart local v1    # "currentSleepStep":I
    goto :goto_33f

    .line 452
    .end local v1    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_2fc
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    if-ne v9, v1, :cond_309

    .line 453
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 454
    const/4 v1, 0x0

    .line 455
    .end local v20    # "currentSleepStep":I
    .restart local v1    # "currentSleepStep":I
    invoke-direct {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    move v11, v1

    goto :goto_33f

    .line 457
    .end local v1    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_309
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 458
    const/16 v1, 0x24

    move v11, v1

    .end local v20    # "currentSleepStep":I
    .restart local v1    # "currentSleepStep":I
    goto :goto_33f

    .line 460
    .end local v1    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_310
    add-int/lit16 v2, v1, -0xb4

    if-ltz v2, :cond_33d

    .line 461
    add-int/lit16 v2, v1, -0xb4

    if-lt v9, v2, :cond_327

    if-ge v9, v1, :cond_327

    .line 462
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 463
    add-int/lit16 v1, v1, -0xb4

    sub-int v1, v9, v1

    div-int/lit8 v1, v1, 0x5

    rsub-int/lit8 v1, v1, 0x23

    move v11, v1

    .end local v20    # "currentSleepStep":I
    .restart local v1    # "currentSleepStep":I
    goto :goto_33f

    .line 464
    .end local v1    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_327
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    if-ne v9, v1, :cond_334

    .line 465
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 466
    const/4 v1, 0x0

    .line 467
    .end local v20    # "currentSleepStep":I
    .restart local v1    # "currentSleepStep":I
    invoke-direct {v0, v11}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    move v11, v1

    goto :goto_33f

    .line 469
    .end local v1    # "currentSleepStep":I
    .restart local v20    # "currentSleepStep":I
    :cond_334
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    .line 470
    const/16 v1, 0x24

    move v11, v1

    .end local v20    # "currentSleepStep":I
    .restart local v1    # "currentSleepStep":I
    goto :goto_33f

    .line 400
    .end local v21    # "time":J
    .local v1, "time":J
    .restart local v20    # "currentSleepStep":I
    :cond_33b
    move-wide/from16 v21, v1

    .line 476
    .end local v1    # "time":J
    .restart local v21    # "time":J
    :cond_33d
    :goto_33d
    move/from16 v11, v20

    .end local v20    # "currentSleepStep":I
    .restart local v11    # "currentSleepStep":I
    :goto_33f
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateWakeup:Z

    const-string v2, "Change BLF step by mCurrentStateWakeup, BLF dayIndex : ["

    const-string v3, "]"

    if-eqz v1, :cond_37d

    .line 477
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v10, :cond_43d

    .line 478
    iput v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 479
    iput v10, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 482
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto/16 :goto_43d

    .line 485
    :cond_37d
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mCurrentStateSleep:Z

    if-eqz v1, :cond_43d

    .line 486
    iget-boolean v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_3df

    .line 487
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3b3

    .line 488
    const/16 v1, 0x24

    if-le v11, v1, :cond_390

    .line 489
    const/16 v11, 0x24

    .line 491
    :cond_390
    iput v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 492
    iput v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by mCurrentStateSleep_1, BLF totalIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    .line 496
    :cond_3b3
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v11, :cond_43d

    .line 497
    iput v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 498
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    if-ge v11, v1, :cond_43d

    .line 499
    iput v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Change BLF step by mCurrentStateSleep_2, BLF totalIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto :goto_43d

    .line 504
    :cond_3df
    if-nez v1, :cond_43d

    .line 505
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    if-eq v1, v11, :cond_43d

    .line 506
    iput v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 507
    iput v11, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 508
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] , boprIndex : ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 510
    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    goto :goto_43d

    .line 515
    .end local v16    # "dateFormat_w":Ljava/text/SimpleDateFormat;
    .end local v17    # "dateFormat_h":Ljava/text/SimpleDateFormat;
    .end local v18    # "dateFormat_m":Ljava/text/SimpleDateFormat;
    .end local v21    # "time":J
    .restart local v1    # "time":J
    .local v3, "dateFormat_w":Ljava/text/SimpleDateFormat;
    .restart local v4    # "dateFormat_h":Ljava/text/SimpleDateFormat;
    .local v5, "dateFormat_m":Ljava/text/SimpleDateFormat;
    :cond_416
    move-wide/from16 v21, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move/from16 v19, v10

    move/from16 v20, v11

    .end local v1    # "time":J
    .end local v3    # "dateFormat_w":Ljava/text/SimpleDateFormat;
    .end local v4    # "dateFormat_h":Ljava/text/SimpleDateFormat;
    .end local v5    # "dateFormat_m":Ljava/text/SimpleDateFormat;
    .end local v10    # "currentWakeupStep":I
    .end local v11    # "currentSleepStep":I
    .restart local v16    # "dateFormat_w":Ljava/text/SimpleDateFormat;
    .restart local v17    # "dateFormat_h":Ljava/text/SimpleDateFormat;
    .restart local v18    # "dateFormat_m":Ljava/text/SimpleDateFormat;
    .restart local v19    # "currentWakeupStep":I
    .restart local v20    # "currentSleepStep":I
    .restart local v21    # "time":J
    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->prevTotalStep:I

    .line 516
    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastDayBlueLightFilterIndex:I

    .line 517
    iput v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastBoprBlueLightFilterIndex:I

    .line 518
    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    if-nez v2, :cond_439

    iget-boolean v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v2, :cond_439

    .line 519
    add-int v13, v1, v1

    iput v13, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mLastTotalBlueLightFilterIndex:I

    .line 520
    invoke-direct {v0, v1, v13}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->setBlueLightFilterMode(ZI)V

    .line 523
    :cond_439
    move/from16 v10, v19

    move/from16 v11, v20

    .end local v19    # "currentWakeupStep":I
    .end local v20    # "currentSleepStep":I
    .restart local v10    # "currentWakeupStep":I
    .restart local v11    # "currentSleepStep":I
    :cond_43d
    :goto_43d
    return-void
.end method

.method private bopr_for_bigdata_data_reset()V
    .registers 2

    .line 563
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_on:I

    .line 564
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    .line 565
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 566
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_value_for_bigdata_blf_off:I

    .line 567
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    .line 568
    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    .line 569
    return-void
.end method

.method private getBoprSensorValue(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 693
    if-eqz p1, :cond_15

    .line 694
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_22

    .line 695
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_22

    .line 698
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_22

    .line 699
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 701
    :cond_22
    :goto_22
    return-void
.end method

.method private getBoprSensorValueForBigData(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 704
    if-eqz p1, :cond_15

    .line 705
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_22

    .line 706
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_22

    .line 709
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_22

    iget-boolean v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    if-eqz v1, :cond_22

    .line 710
    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensorForBigDataListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 712
    :cond_22
    :goto_22
    return-void
.end method

.method private getSystemServices()V
    .registers 8

    .line 715
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 716
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSensorManager : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EyeComfortSolutionService"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string v2, "mDNIe"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/hardware/display/SemMdnieManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMdnieManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    const-string v2, "DisplaySolution"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSemDisplaySolutionManager : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_75

    .line 723
    const v2, 0x10033

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBoprSensor:Landroid/hardware/Sensor;

    .line 725
    :cond_75
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_8b

    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemDisplaySolutionManager:Lcom/samsung/android/displaysolution/SemDisplaySolutionManager;

    if-nez v0, :cond_83

    goto :goto_8b

    .line 731
    :cond_83
    iput-boolean v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWorkingCondition:Z

    .line 732
    const-string v0, "Success to register all of the services system."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a3

    .line 726
    :cond_8b
    :goto_8b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 727
    .local v3, "time":J
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 728
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->GET_SYSTEM_SERVICES_MILLIS:I

    int-to-long v5, v5

    add-long/2addr v5, v3

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 729
    const-string v0, "Failure to register all of the services system."

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    .end local v3    # "time":J
    nop

    .line 734
    :goto_a3
    return-void
.end method

.method private getting_platform_brightness_value()F
    .registers 4

    .line 543
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 545
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mPlatformBrightnessValue:F

    .line 546
    return v1
.end method

.method private sendBigDatatoHQM()V
    .registers 21

    .line 737
    move-object/from16 v0, p0

    const/4 v11, 0x0

    .line 738
    .local v11, "type":I
    const-string v12, "Display"

    .line 739
    .local v12, "compID":Ljava/lang/String;
    const-string v13, "ECSS"

    .line 740
    .local v13, "feature":Ljava/lang/String;
    const-string v14, "sm"

    .line 741
    .local v14, "hitType":Ljava/lang/String;
    const-string v15, "0.0"

    .line 742
    .local v15, "ver":Ljava/lang/String;
    const-string v16, "sec"

    .line 743
    .local v16, "manufacture":Ljava/lang/String;
    const-string v17, ""

    .line 744
    .local v17, "dev_custom_dataset":Ljava/lang/String;
    const-string v18, ""

    .line 746
    .local v18, "pri_custom_dataset":Ljava/lang/String;
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_on:I

    const/16 v2, 0x3c

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1a

    .line 747
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    .line 748
    :cond_1a
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_cumulative_count_for_bigdata_blf_off:I

    if-gt v1, v2, :cond_20

    .line 749
    iput v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    .line 751
    :cond_20
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget v2, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    move-object v10, v1

    .line 753
    .local v10, "values":[Ljava/lang/String;
    iget-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    if-eqz v1, :cond_81

    .line 754
    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_on:I

    if-nez v1, :cond_46

    iget v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_average_value_for_bigdata_blf_off:I

    if-eqz v1, :cond_42

    goto :goto_46

    :cond_42
    move/from16 v19, v11

    move-object v11, v10

    goto :goto_7d

    .line 755
    :cond_46
    :goto_46
    iget-object v1, v0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mSemHqmManager:Landroid/os/SemHqmManager;

    sget-object v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    array-length v3, v2

    invoke-direct {v0, v2, v10, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    move v2, v11

    move-object v3, v12

    move-object v4, v13

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v19, v11

    move-object v11, v10

    .end local v10    # "values":[Ljava/lang/String;
    .local v11, "values":[Ljava/lang/String;
    .local v19, "type":I
    move-object/from16 v10, v18

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 756
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BigDatatoHQM sendData : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ECSS_KEYS:[Ljava/lang/String;

    array-length v3, v2

    invoke-direct {v0, v2, v11, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->JsonParseData([Ljava/lang/String;[Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EyeComfortSolutionService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :goto_7d
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->bopr_for_bigdata_data_reset()V

    goto :goto_84

    .line 753
    .end local v19    # "type":I
    .restart local v10    # "values":[Ljava/lang/String;
    .local v11, "type":I
    :cond_81
    move/from16 v19, v11

    move-object v11, v10

    .line 760
    .end local v10    # "values":[Ljava/lang/String;
    .local v11, "values":[Ljava/lang/String;
    .restart local v19    # "type":I
    :goto_84
    return-void
.end method

.method private setBlueLightFilterMode(ZI)V
    .registers 14
    .param p1, "enable"    # Z
    .param p2, "totalIndex"    # I

    .line 526
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAdaptiveBlueLightFilterSupported:Z

    if-eqz v0, :cond_74

    .line 527
    iget-boolean v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mColorOnPixelRatioSupported:Z

    const-string v1, " + 11] = "

    const-string v2, " , targetIndex : ["

    const-string v3, "BLF Adaptive Mode Enable : "

    const-string v4, "EyeComfortSolutionService"

    const-wide v5, 0x40b7700000000000L    # 6000.0

    if-eqz v0, :cond_3c

    .line 528
    const-wide v7, 0x403638e38e38e38eL    # 22.22222222222222

    int-to-double v9, p2

    mul-double/2addr v9, v7

    sub-double/2addr v5, v9

    .line 529
    .local v5, "tagetValue":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .end local v5    # "tagetValue":D
    goto :goto_64

    .line 531
    :cond_3c
    if-nez v0, :cond_64

    .line 532
    const-wide v7, 0x404bc71c71c71c72L    # 55.55555555555556

    int-to-double v9, p2

    mul-double/2addr v9, v7

    sub-double/2addr v5, v9

    .line 533
    .restart local v5    # "tagetValue":D
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    .end local v5    # "tagetValue":D
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    if-eqz v0, :cond_74

    .line 536
    add-int/lit8 v1, p2, 0xb

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightModeStep(I)Z

    .line 537
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mMdnieManager:Lcom/samsung/android/hardware/display/SemMdnieManager;

    add-int/lit8 v1, p2, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/hardware/display/SemMdnieManager;->setNightMode(ZI)Z

    .line 540
    :cond_74
    return-void
.end method

.method private setting_is_changed()V
    .registers 9

    .line 582
    iget-object v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 583
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 585
    .local v1, "time":J
    const-string v3, "blue_light_filter"

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    const/4 v6, 0x1

    if-ne v3, v6, :cond_17

    move v3, v6

    goto :goto_18

    :cond_17
    move v3, v4

    :goto_18
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    .line 586
    const-string v3, "blue_light_filter_scheduled"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_24

    move v3, v6

    goto :goto_25

    :cond_24
    move v3, v4

    :goto_25
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledModeEnabled:Z

    .line 587
    const-string v3, "blue_light_filter_adaptive_mode"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_31

    move v3, v6

    goto :goto_32

    :cond_31
    move v3, v4

    :goto_32
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    .line 588
    const-string v3, "auto_time"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v6, :cond_3e

    move v3, v6

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    iput-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mAutoTimeModeEnabled:Z

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mBlueLightFilterModeEnabled : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mBlueLightFilterScheduledModeEnabled : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterScheduledModeEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , mBlueLightFilterAdaptiveModeEnabled : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "EyeComfortSolutionService"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterModeEnabled:Z

    const/4 v7, 0x2

    if-eqz v3, :cond_95

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterAdaptiveModeEnabled:Z

    if-eqz v3, :cond_95

    .line 593
    const-string v3, "All"

    invoke-direct {p0, v3}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->updateSleepWakeupTime(Ljava/lang/String;)V

    .line 594
    invoke-direct {p0, v6}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 595
    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mScreenOn:Z

    if-eqz v3, :cond_b0

    iget-boolean v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBlueLightFilterEnableTime:Z

    if-eqz v3, :cond_b0

    .line 596
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v3, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 597
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    iget v4, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->ACTION_GET_BOPR_SENSOR_VALUE_DEBOUNCE_MILLIS:I

    int-to-long v4, v4

    add-long/2addr v4, v1

    invoke-virtual {v3, v7, v4, v5}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_b0

    .line 600
    :cond_95
    invoke-direct {p0, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_setting_day(Z)V

    .line 601
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v3, v7}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 602
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->removeMessages(I)V

    .line 603
    iget-object v3, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mHandler:Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;

    invoke-virtual {v3, v4}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService$ECSControlHandler;->sendEmptyMessage(I)Z

    .line 604
    const-string v3, "reset blue_light_filter_data_reset"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-direct {p0}, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->blue_light_filter_data_reset()V

    .line 607
    :cond_b0
    :goto_b0
    return-void
.end method

.method private updateSleepWakeupTime(Ljava/lang/String;)V
    .registers 18
    .param p1, "type"    # Ljava/lang/String;

    .line 844
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "currentRubinState"

    const-string v3, "EyeComfortSolutionService"

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v6, "HH"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 845
    .local v4, "dateFormat_h":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "mm"

    invoke-direct {v5, v7, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 846
    .local v5, "dateFormat_m":Ljava/text/SimpleDateFormat;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "currentHour":Ljava/lang/String;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    .line 848
    .local v7, "currentMinute":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x3c

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    .line 849
    .local v8, "mCurrentTime":I
    const/4 v9, 0x0

    .line 852
    .local v9, "mRubinDataValid":Z
    :try_start_3c
    iget-object v10, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "content://com.samsung.android.rubin.state"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    const-string v12, "getRubinState"

    const-string v13, "com.samsung.android.bluelightfilter"

    const/4 v14, 0x0

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v10

    .line 853
    .local v10, "rubinState":Landroid/os/Bundle;
    if-eqz v10, :cond_98

    .line 854
    const-string v11, "OK"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_5d} :catch_9a

    const-string v12, "isEnabledInSupportedApps"

    if-eqz v11, :cond_6a

    :try_start_61
    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    const/4 v13, 0x1

    if-ne v11, v13, :cond_6a

    .line 855
    const/4 v9, 0x1

    goto :goto_6b

    .line 857
    :cond_6a
    const/4 v9, 0x0

    .line 859
    :goto_6b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentRubinState : "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " , isEnabledInSupportedApps : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , mRubinDataValid : "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_97} :catch_9a

    goto :goto_99

    .line 861
    :cond_98
    const/4 v9, 0x0

    .line 864
    .end local v10    # "rubinState":Landroid/os/Bundle;
    :goto_99
    goto :goto_9b

    .line 863
    :catch_9a
    move-exception v0

    .line 866
    :goto_9b
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v10, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v11, "EE"

    invoke-direct {v0, v11, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "Sun"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v10, "NextWakeupTime"

    const-string v12, "WakeupTime"

    const-string v13, "BedTime"

    const/4 v15, 0x0

    const/4 v14, -0x1

    if-eqz v0, :cond_fd

    .line 867
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    if-eq v0, v14, :cond_f5

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    if-eq v0, v14, :cond_f5

    if-eqz v9, :cond_f5

    .line 868
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d3

    .line 869
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_30a

    .line 870
    :cond_d3
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_df

    .line 871
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 872
    :cond_df
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_eb

    .line 873
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 875
    :cond_eb
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 876
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 879
    :cond_f5
    iput v15, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 880
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 882
    :cond_fd
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "Mon"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    .line 883
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    if-eq v0, v14, :cond_14d

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    if-eq v0, v14, :cond_14d

    if-eqz v9, :cond_14d

    .line 884
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12b

    .line 885
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_30a

    .line 886
    :cond_12b
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_137

    .line 887
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 888
    :cond_137
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 889
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 891
    :cond_143
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 892
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 895
    :cond_14d
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 896
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 898
    :cond_156
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "Tue"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1af

    .line 899
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    if-eq v0, v14, :cond_1a6

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    if-eq v0, v14, :cond_1a6

    if-eqz v9, :cond_1a6

    .line 900
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_184

    .line 901
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_30a

    .line 902
    :cond_184
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_190

    .line 903
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 904
    :cond_190
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19c

    .line 905
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 907
    :cond_19c
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 908
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 911
    :cond_1a6
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 912
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 914
    :cond_1af
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "Wed"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 915
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    if-eq v0, v14, :cond_1ff

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    if-eq v0, v14, :cond_1ff

    if-eqz v9, :cond_1ff

    .line 916
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1dd

    .line 917
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_30a

    .line 918
    :cond_1dd
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e9

    .line 919
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 920
    :cond_1e9
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f5

    .line 921
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 923
    :cond_1f5
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 924
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 927
    :cond_1ff
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 928
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 930
    :cond_208
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "Thu"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_261

    .line 931
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    if-eq v0, v14, :cond_258

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    if-eq v0, v14, :cond_258

    if-eqz v9, :cond_258

    .line 932
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_236

    .line 933
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_30a

    .line 934
    :cond_236
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_242

    .line 935
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 936
    :cond_242
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24e

    .line 937
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 939
    :cond_24e
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 940
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 943
    :cond_258
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 944
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 946
    :cond_261
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "Fri"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b7

    .line 947
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    if-eq v0, v14, :cond_2af

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    if-eq v0, v14, :cond_2af

    if-eqz v9, :cond_2af

    .line 948
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28f

    .line 949
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto/16 :goto_30a

    .line 950
    :cond_28f
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29b

    .line 951
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto/16 :goto_30a

    .line 952
    :cond_29b
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a6

    .line 953
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_30a

    .line 955
    :cond_2a6
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 956
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_30a

    .line 959
    :cond_2af
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 960
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_30a

    .line 962
    :cond_2b7
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v11, v15}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v11, "Sat"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30a

    .line 963
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    if-eq v0, v14, :cond_303

    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    if-eq v0, v14, :cond_303

    if-eqz v9, :cond_303

    .line 964
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e4

    .line 965
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    goto :goto_30a

    .line 966
    :cond_2e4
    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ef

    .line 967
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_30a

    .line 968
    :cond_2ef
    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2fa

    .line 969
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_30a

    .line 971
    :cond_2fa
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 972
    iget v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    goto :goto_30a

    .line 975
    :cond_303
    const/4 v0, 0x0

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    .line 976
    const/16 v0, 0x168

    iput v0, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    .line 979
    :cond_30a
    :goto_30a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateSleepWakeupTime. type : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " , defaultBedTime : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultBedTime:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , defaultWakeupTime : "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->defaultWakeupTime:I

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    return-void
.end method


# virtual methods
.method public setEyeComfortWeightingFactorValue(F)V
    .registers 2
    .param p1, "scaleValue"    # F

    .line 550
    iput p1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->app_weighting_factor:F

    .line 551
    return-void
.end method

.method public updateRubinSleepPattern(Ljava/lang/String;JJF)V
    .registers 14
    .param p1, "mWeekType"    # Ljava/lang/String;
    .param p2, "mBedtime"    # J
    .param p4, "mWakeupTime"    # J
    .param p6, "mConfidence"    # F

    .line 777
    const-string v0, "SUNDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " , WakeupTime : "

    const-string v2, ") , BedTime : "

    const-string v3, "EyeComfortSolutionService"

    const/high16 v4, 0x3f000000    # 0.5f

    const v5, 0xea60

    const/4 v6, -0x1

    if-eqz v0, :cond_4b

    .line 778
    cmpl-float v0, p6, v4

    if-lez v0, :cond_21

    .line 779
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 780
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    goto :goto_25

    .line 782
    :cond_21
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    .line 783
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    .line 785
    :goto_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SUNDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_saturday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_sunday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 786
    :cond_4b
    const-string v0, "MONDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 787
    cmpl-float v0, p6, v4

    if-lez v0, :cond_60

    .line 788
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 789
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    goto :goto_64

    .line 791
    :cond_60
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    .line 792
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    .line 794
    :goto_64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MONDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_sunday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_monday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 795
    :cond_8a
    const-string v0, "TUESDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 796
    cmpl-float v0, p6, v4

    if-lez v0, :cond_9f

    .line 797
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 798
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    goto :goto_a3

    .line 800
    :cond_9f
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    .line 801
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    .line 803
    :goto_a3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TUESDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_monday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_tuesday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 804
    :cond_c9
    const-string v0, "WEDNESDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_108

    .line 805
    cmpl-float v0, p6, v4

    if-lez v0, :cond_de

    .line 806
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 807
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    goto :goto_e2

    .line 809
    :cond_de
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    .line 810
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    .line 812
    :goto_e2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WEDNESDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_tuesday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_wednesday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 813
    :cond_108
    const-string v0, "THURSDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_147

    .line 814
    cmpl-float v0, p6, v4

    if-lez v0, :cond_11d

    .line 815
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 816
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    goto :goto_121

    .line 818
    :cond_11d
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    .line 819
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    .line 821
    :goto_121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "THURSDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_wednesday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_thursday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c2

    .line 822
    :cond_147
    const-string v0, "FRIDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 823
    cmpl-float v0, p6, v4

    if-lez v0, :cond_15c

    .line 824
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 825
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    goto :goto_160

    .line 827
    :cond_15c
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    .line 828
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    .line 830
    :goto_160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FRIDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_thursday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_friday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c2

    .line 831
    :cond_185
    const-string v0, "SATURDAY"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c2

    .line 832
    cmpl-float v0, p6, v4

    if-lez v0, :cond_19a

    .line 833
    long-to-int v0, p2

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 834
    long-to-int v0, p4

    div-int/2addr v0, v5

    iput v0, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    goto :goto_19e

    .line 836
    :cond_19a
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    .line 837
    iput v6, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    .line 839
    :goto_19e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SATURDAY("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mBedtime_friday:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/displaysolution/EyeComfortSolutionService;->mWakeupTime_saturday:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    :cond_1c2
    :goto_1c2
    return-void
.end method
