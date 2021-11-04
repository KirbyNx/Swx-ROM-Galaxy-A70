.class public Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
.super Ljava/lang/Object;
.source "AdaptiveBrightnessLongtermModelBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;,
        Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;
    }
.end annotation


# static fields
.field private static final ADAPTIVE_BRIGHTNESS_STATS_FILE:Ljava/lang/String; = "adaptive_brightness_stats_sec.xml"

.field private static final ATTR_BATTERY_LEVEL:Ljava/lang/String; = "batteryLevel"

.field private static final ATTR_COLOR_SAMPLE_DURATION:Ljava/lang/String; = "colorSampleDuration"

.field private static final ATTR_COLOR_TEMPERATURE:Ljava/lang/String; = "colorTemperature"

.field private static final ATTR_COLOR_VALUE_BUCKETS:Ljava/lang/String; = "colorValueBuckets"

.field private static final ATTR_DEFAULT_CONFIG:Ljava/lang/String; = "defaultConfig"

.field private static final ATTR_LAST_NITS:Ljava/lang/String; = "lastNits"

.field private static final ATTR_LUX:Ljava/lang/String; = "lux"

.field private static final ATTR_LUX_TIMESTAMPS:Ljava/lang/String; = "luxTimestamps"

.field private static final ATTR_NIGHT_MODE:Ljava/lang/String; = "nightMode"

.field private static final ATTR_NITS:Ljava/lang/String; = "nits"

.field private static final ATTR_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final ATTR_POWER_SAVE:Ljava/lang/String; = "powerSaveFactor"

.field private static final ATTR_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final ATTR_USER:Ljava/lang/String; = "user"

.field private static final ATTR_USER_POINT:Ljava/lang/String; = "userPoint"

.field private static final COLOR_SAMPLE_COMPONENT_MASK:I = 0x4

.field private static final COLOR_SAMPLE_DURATION:J

.field static final DEBUG:Z = true

.field private static final DEBUG_SPEW:Z = true

.field private static final EVENTS_FILE:Ljava/lang/String; = "brightness_events_sec.xml"

.field private static final FORMAT:Ljava/text/SimpleDateFormat;

.field private static final MAX_EVENTS_FOR_BOUNDARY:I = 0x14

.field private static final MAX_EVENT_AGE:J

.field private static final MODEL_ID:Ljava/lang/String; = "sbs:0"

.field private static final MSG_ACTIVE_MODE_CHANGED:I = 0x6

.field private static final MSG_AMBIENT_LUX_CHANGED:I = 0x5

.field private static final MSG_BACKGROUND_START:I = 0x0

.field private static final MSG_BRIGHTNESS_BNR_PACKAGE_CLEARED:I = 0x8

.field private static final MSG_BRIGHTNESS_CHANGED:I = 0x1

.field private static final MSG_BRIGHTNESS_CONFIG_CHANGED:I = 0x4

.field private static final MSG_SHORT_TERM_MODEL_VALID:I = 0x7

.field private static final MSG_START_ADAPTIVE_BRIGHTNESS_STATS_TRACKER:I = 0x3

.field private static final MSG_STOP_ADAPTIVE_BRIGHTNESS_STATS_TRACKER:I = 0x2

.field static final TAG:Ljava/lang/String; = "AdaptiveBrightnessLongtermModelBuilder"

.field private static final TAG_EVENT:Ljava/lang/String; = "event"

.field private static final TAG_EVENTS:Ljava/lang/String; = "events"


# instance fields
.field private mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

.field private mAdaptiveBrightnessStatsTrackerStarted:Z

.field private final mBgHandler:Landroid/os/Handler;

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private final mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mColorSamplingEnabled:Z

.field private final mComparatorAscendingForLux:Ljava/util/Comparator;

.field private final mComparatorDecsendingForWeight:Ljava/util/Comparator;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentUserId:I

.field private final mDataCollectionLock:Ljava/lang/Object;

.field private mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

.field private mEvents:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mEventsDirty:Z

.field private final mEventsLock:Ljava/lang/Object;

.field private mFrameRate:F

.field private final mHbmLux:I

.field private final mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

.field private mLastAmbientLux:F

.field private mLastBatteryLevel:F

.field private mLastBrightness:F

.field private mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

.field private mLastBrightnessSpline:Landroid/util/Spline;

.field private mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

.field private final mMaxBrightnessForNonHbmLux:F

.field private final mMimumBrightnessSpline:Landroid/util/Spline;

.field private mNoFramesToSample:I

.field private mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

.field private mStarted:Z

.field private mTestModeEnabled:Z

.field private mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

.field private final mUserManager:Landroid/os/UserManager;

.field private volatile mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 118
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    .line 150
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->FORMAT:Ljava/text/SimpleDateFormat;

    .line 152
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->COLOR_SAMPLE_DURATION:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hbmLux"    # I
    .param p3, "injector"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;
    .param p4, "brightnessMapper"    # Lcom/android/server/display/BrightnessMappingStrategy;

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    .line 157
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v2, 0xf0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mCurrentUserId:I

    .line 188
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    .line 189
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 191
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 193
    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 197
    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 214
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;

    invoke-direct {v1, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Ljava/util/Comparator;

    .line 226
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;

    invoke-direct {v1, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$2;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Ljava/util/Comparator;

    .line 239
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 240
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 241
    if-eqz p3, :cond_49

    .line 242
    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    goto :goto_50

    .line 244
    :cond_49
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-direct {v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 246
    :goto_50
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$ModelBuilderHandler;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    .line 247
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    .line 249
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    invoke-direct {v1, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    .line 251
    iput p2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mHbmLux:I

    .line 252
    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    .line 254
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;

    invoke-direct {v0, p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$3;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

    .line 269
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 270
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getMinimumBrightnessCurve()Landroid/util/Pair;

    move-result-object v1

    .line 271
    .local v1, "curve":Landroid/util/Pair;, "Landroid/util/Pair<[F[F>;"
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [F

    .line 272
    .local v2, "lux":[F
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, [F

    .line 273
    .local v3, "nits":[F
    invoke-static {v2, v3}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMimumBrightnessSpline:Landroid/util/Spline;

    .line 276
    const/16 v4, 0xff

    invoke-virtual {p4, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v4

    iput v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    .line 277
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->batteryLevelChanged(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p1, "x1"    # F

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->backgroundStart(F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;FZFZZJLandroid/util/Spline;)V
    .registers 9
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z
    .param p3, "x3"    # F
    .param p4, "x4"    # Z
    .param p5, "x5"    # Z
    .param p6, "x6"    # J
    .param p8, "x7"    # Landroid/util/Spline;

    .line 108
    invoke-direct/range {p0 .. p8}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleBrightnessChanged(FZFZZJLandroid/util/Spline;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p1, "x1"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 108
    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessStatsTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;F)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .param p1, "x1"    # F

    .line 108
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleAmbientLuxChanged(F)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleShortTermModelValid()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->handleBrightnessBnrPackageCleared()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateColorSampling()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/content/ContentResolver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;

    .line 108
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private backgroundStart(F)V
    .registers 8
    .param p1, "initialBrightness"    # F

    .line 301
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readEvents()V

    .line 302
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readAdaptiveBrightnessStats()V

    .line 304
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    .line 305
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerBrightnessModeObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V

    .line 306
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    .line 307
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 308
    .local v0, "powerManagerInternal":Landroid/os/PowerManagerInternal;
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->registerUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    .line 310
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 311
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 312
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 313
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 314
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 316
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 317
    .local v2, "packageIntentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    const-string/jumbo v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 320
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Receiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;)V

    iput-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 321
    new-instance v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    invoke-direct {v3, p0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;)V

    iput-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    .line 323
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v5, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 324
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    invoke-virtual {v3, v4, v5, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 326
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->scheduleIdleJob(Landroid/content/Context;)V

    .line 329
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 330
    :try_start_7a
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 331
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 332
    monitor-exit v3
    :try_end_80
    .catchall {:try_start_7a .. :try_end_80} :catchall_84

    .line 333
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    .line 334
    return-void

    .line 332
    :catchall_84
    move-exception v4

    :try_start_85
    monitor-exit v3
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    throw v4
.end method

.method private batteryLevelChanged(II)V
    .registers 6
    .param p1, "level"    # I
    .param p2, "scale"    # I

    .line 1186
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1187
    int-to-float v1, p1

    int-to-float v2, p2

    div-float/2addr v1, v2

    :try_start_6
    iput v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    .line 1188
    monitor-exit v0

    .line 1189
    return-void

    .line 1188
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_6 .. :try_end_c} :catchall_a

    throw v1
.end method

.method private buildBrightnessConfiguration([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)Landroid/hardware/display/BrightnessConfiguration;
    .registers 16
    .param p1, "origBrightnessWeights"    # [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 635
    const/4 v0, 0x0

    .line 637
    .local v0, "brightnessConfiguration":Landroid/hardware/display/BrightnessConfiguration;
    array-length v1, p1

    .line 639
    .local v1, "length":I
    new-array v2, v1, [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    .line 641
    .local v2, "brightnessWeights":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v1, :cond_12

    .line 642
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->copy()Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v4

    aput-object v4, v2, v3

    .line 641
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 647
    .end local v3    # "i":I
    :cond_12
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorDecsendingForWeight:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 652
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_18
    if-ge v3, v1, :cond_65

    .line 653
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v4

    .line 654
    .local v4, "prevLux":F
    aget-object v5, v2, v3

    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v5

    .line 656
    .local v5, "prevBrightness":F
    add-int/lit8 v6, v3, 0x1

    .local v6, "j":I
    :goto_28
    if-ge v6, v1, :cond_62

    .line 657
    aget-object v7, v2, v6

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v7

    .line 658
    .local v7, "currLux":F
    aget-object v8, v2, v6

    invoke-virtual {v8}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v8

    .line 659
    .local v8, "currBrightness":F
    move v9, v6

    .line 661
    .local v9, "currIndex":I
    invoke-static {v7, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleMinimumRatio(FF)F

    move-result v10

    .line 662
    .local v10, "permissibleMinRatio":F
    invoke-static {v7, v4}, Lcom/android/server/display/BrightnessMappingStrategy;->permissibleRatio(FF)F

    move-result v11

    .line 665
    .local v11, "permissibleMaxRatio":F
    cmpl-float v12, v7, v4

    if-lez v12, :cond_4c

    .line 666
    mul-float v12, v10, v5

    mul-float v13, v11, v5

    invoke-static {v8, v12, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v12

    .local v12, "constrainedBrightness":F
    goto :goto_54

    .line 670
    .end local v12    # "constrainedBrightness":F
    :cond_4c
    mul-float v12, v11, v5

    mul-float v13, v10, v5

    invoke-static {v8, v12, v13}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v12

    .line 675
    .restart local v12    # "constrainedBrightness":F
    :goto_54
    invoke-static {v8, v12}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-eqz v13, :cond_5f

    .line 676
    aget-object v13, v2, v9

    invoke-virtual {v13, v12}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    .line 656
    .end local v7    # "currLux":F
    .end local v8    # "currBrightness":F
    .end local v9    # "currIndex":I
    .end local v10    # "permissibleMinRatio":F
    .end local v11    # "permissibleMaxRatio":F
    .end local v12    # "constrainedBrightness":F
    :cond_5f
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 652
    .end local v4    # "prevLux":F
    .end local v5    # "prevBrightness":F
    .end local v6    # "j":I
    :cond_62
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 688
    .end local v3    # "i":I
    :cond_65
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_66
    if-ge v3, v1, :cond_7c

    .line 689
    aget-object v4, v2, v3

    invoke-virtual {v4}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_79

    .line 690
    aget-object v4, v2, v3

    invoke-virtual {v4, v5}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->setBrightness(F)V

    .line 688
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 696
    .end local v3    # "i":I
    :cond_7c
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mComparatorAscendingForLux:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 698
    const-string/jumbo v3, "lux sorted: "

    invoke-direct {p0, v2, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->printArrayBrightnessWeights([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Ljava/lang/String;)V

    .line 700
    new-array v3, v1, [F

    .line 701
    .local v3, "lux":[F
    new-array v4, v1, [F

    .line 703
    .local v4, "nits":[F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_8c
    if-ge v5, v1, :cond_db

    .line 704
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getLux()F

    move-result v6

    aput v6, v3, v5

    .line 705
    aget-object v6, v2, v5

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getBrightness()F

    move-result v6

    aput v6, v4, v5

    .line 707
    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMimumBrightnessSpline:Landroid/util/Spline;

    aget v7, v3, v5

    invoke-virtual {v6, v7}, Landroid/util/Spline;->interpolate(F)F

    move-result v6

    .line 708
    .local v6, "minBrightnessForLux":F
    aget v7, v4, v5

    cmpg-float v7, v7, v6

    if-gez v7, :cond_d8

    .line 709
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "buildBrightnessConfiguration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, ": min: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v4, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    aput v6, v4, v5

    .line 703
    .end local v6    # "minBrightnessForLux":F
    :cond_d8
    add-int/lit8 v5, v5, 0x1

    goto :goto_8c

    .line 715
    .end local v5    # "i":I
    :cond_db
    :try_start_db
    new-instance v5, Landroid/hardware/display/BrightnessConfiguration$Builder;

    invoke-direct {v5, v3, v4}, Landroid/hardware/display/BrightnessConfiguration$Builder;-><init>([F[F)V

    .line 716
    .local v5, "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    const-string/jumbo v6, "sbs:0"

    invoke-virtual {v5, v6}, Landroid/hardware/display/BrightnessConfiguration$Builder;->setDescription(Ljava/lang/String;)Landroid/hardware/display/BrightnessConfiguration$Builder;

    .line 718
    nop

    .line 719
    invoke-virtual {v5}, Landroid/hardware/display/BrightnessConfiguration$Builder;->build()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v6
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_db .. :try_end_eb} :catch_ed

    move-object v0, v6

    .line 723
    .end local v5    # "builder":Landroid/hardware/display/BrightnessConfiguration$Builder;
    goto :goto_f1

    .line 721
    :catch_ed
    move-exception v5

    .line 722
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 725
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_f1
    return-object v0
.end method

.method private disableColorSampling()V
    .registers 4

    .line 1134
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    .line 1135
    return-void

    .line 1137
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->enableColorSampling(ZI)Z

    .line 1138
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 1139
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    if-eqz v0, :cond_1b

    .line 1140
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unRegisterDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 1141
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 1144
    :cond_1b
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v1, "turning off color sampling"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdaptiveBrightnessStatsTrackerStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1089
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNoFramesToSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method private enableColorSampling()V
    .registers 6

    .line 1094
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 1095
    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_de

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v0, :cond_de

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    if-eqz v0, :cond_de

    .line 1098
    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->shouldCollectColorSamples()Z

    move-result v0

    if-nez v0, :cond_24

    goto/16 :goto_de

    .line 1102
    :cond_24
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    .line 1103
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    if-gtz v1, :cond_3b

    .line 1104
    const-string v0, "Default display has a zero or negative framerate."

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1107
    :cond_3b
    sget-wide v3, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->COLOR_SAMPLE_DURATION:J

    long-to-float v1, v3

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    .line 1109
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getSamplingAttributes()Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object v0

    .line 1110
    .local v0, "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    if-eqz v0, :cond_86

    .line 1111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Color sampling mask=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1112
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " dataSpace=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1113
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getDataspace()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pixelFormat=0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1111
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_86
    if-eqz v0, :cond_c4

    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getPixelFormat()I

    move-result v1

    const/16 v3, 0x37

    if-ne v1, v3, :cond_c4

    .line 1118
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSamplingAttributes;->getComponentMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_c4

    .line 1120
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->enableColorSampling(ZI)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    .line 1123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "turning on color sampling for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " frames, success="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    :cond_c4
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-eqz v1, :cond_dd

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    if-nez v1, :cond_dd

    .line 1128
    new-instance v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$1;)V

    iput-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDisplayListener:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$DisplayListener;

    .line 1129
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->registerDisplayListener(Landroid/content/Context;Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1131
    :cond_dd
    return-void

    .line 1099
    .end local v0    # "attributes":Landroid/hardware/display/DisplayedContentSamplingAttributes;
    :cond_de
    :goto_de
    return-void
.end method

.method private handleAmbientLuxChanged(F)V
    .registers 4
    .param p1, "ambientLux"    # F

    .line 562
    iput p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    .line 564
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->recordAmbientLuxEvent(F)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleAmbientLuxChanged: ambientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 567
    return-void
.end method

.method private handleBrightnessBnrPackageCleared()V
    .registers 3

    .line 628
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v1, "handleBrightnessBnrPackageCleared()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 631
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->resetBrightnessConfiguration()V

    .line 632
    return-void
.end method

.method private handleBrightnessChanged(FZFZZJLandroid/util/Spline;)V
    .registers 26
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "timestamp"    # J
    .param p8, "brightnessSpline"    # Landroid/util/Spline;

    .line 466
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v4

    .line 467
    :try_start_9
    iget-boolean v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    if-nez v0, :cond_f

    .line 469
    monitor-exit v4

    return-void

    .line 472
    :cond_f
    iget v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    .line 473
    .local v0, "previousBrightness":F
    iput v2, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_12e

    .line 474
    move-object/from16 v5, p8

    :try_start_15
    iput-object v5, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 476
    const-string v6, "AdaptiveBrightnessLongtermModelBuilder"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "handleBrightnessChanged: brightness: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v8, " userInitiated: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    if-nez v3, :cond_3d

    .line 482
    invoke-direct {v1, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 483
    monitor-exit v4

    return-void

    .line 486
    :cond_3d
    new-instance v6, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 487
    .local v6, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    invoke-virtual {v6, v2}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 488
    move-wide/from16 v7, p6

    invoke-virtual {v6, v7, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_4a
    .catchall {:try_start_15 .. :try_end_4a} :catchall_126

    .line 489
    move/from16 v9, p3

    :try_start_4c
    invoke-virtual {v6, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_124

    .line 490
    move/from16 v10, p4

    :try_start_51
    invoke-virtual {v6, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_122

    .line 491
    move/from16 v11, p5

    :try_start_56
    invoke-virtual {v6, v11}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 493
    const/4 v12, 0x1

    .line 494
    .local v12, "lightDataSize":I
    const/4 v13, 0x1

    new-array v14, v13, [F

    .line 495
    .local v14, "luxValues":[F
    new-array v15, v13, [J

    .line 497
    .local v15, "luxTimestamps":[J
    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget v13, v13, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    const/16 v16, 0x0

    aput v13, v14, v16

    .line 498
    iget-object v13, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget-wide v7, v13, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    aput-wide v7, v15, v16

    .line 500
    invoke-virtual {v6, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 501
    invoke-virtual {v6, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 503
    iget v7, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    invoke-virtual {v6, v7}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 504
    invoke-virtual {v6, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 505
    nop

    .end local v0    # "previousBrightness":F
    .end local v12    # "lightDataSize":I
    .end local v14    # "luxValues":[F
    .end local v15    # "luxTimestamps":[J
    monitor-exit v4
    :try_end_7d
    .catchall {:try_start_56 .. :try_end_7d} :catchall_139

    .line 508
    :try_start_7d
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFocusedStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    .line 509
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    if-eqz v0, :cond_118

    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_118

    .line 510
    iget v4, v0, Landroid/app/ActivityManager$StackInfo;->userId:I

    invoke-virtual {v6, v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 511
    iget-object v4, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_97} :catch_120

    .line 522
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    nop

    .line 524
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isNightDisplayActivated(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {v6, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 525
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getNightDisplayColorTemperature(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 527
    iget-boolean v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-eqz v0, :cond_dd

    .line 528
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mNoFramesToSample:I

    invoke-virtual {v0, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->sampleColor(I)Landroid/hardware/display/DisplayedContentSample;

    move-result-object v0

    .line 529
    .local v0, "sample":Landroid/hardware/display/DisplayedContentSample;
    if-eqz v0, :cond_dd

    sget-object v4, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v4

    if-eqz v4, :cond_dd

    .line 531
    invoke-virtual {v0}, Landroid/hardware/display/DisplayedContentSample;->getNumFrames()J

    move-result-wide v7

    long-to-float v4, v7

    iget v7, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    div-float/2addr v4, v7

    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v4, v7

    .line 532
    .local v4, "numMillis":F
    sget-object v7, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    .line 533
    invoke-virtual {v0, v7}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v7

    .line 534
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v8

    int-to-long v12, v8

    .line 532
    invoke-virtual {v6, v7, v12, v13}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 538
    .end local v0    # "sample":Landroid/hardware/display/DisplayedContentSample;
    .end local v4    # "numMillis":F
    :cond_dd
    invoke-virtual {v6}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v4

    .line 540
    .local v4, "event":Landroid/hardware/display/BrightnessChangeEvent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Event "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v7, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 543
    const/4 v0, 0x1

    :try_start_107
    iput-boolean v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 544
    iget-object v0, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0, v4}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 545
    monitor-exit v7
    :try_end_10f
    .catchall {:try_start_107 .. :try_end_10f} :catchall_115

    .line 547
    iput-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    .line 548
    invoke-direct {v1, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->updateAdaptiveBrightnessStats(Z)V

    .line 549
    return-void

    .line 545
    :catchall_115
    move-exception v0

    :try_start_116
    monitor-exit v7
    :try_end_117
    .catchall {:try_start_116 .. :try_end_117} :catchall_115

    throw v0

    .line 515
    .end local v4    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .local v0, "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :cond_118
    :try_start_118
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v7, "Ignoring event due to null focusedStack."

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catch Landroid/os/RemoteException; {:try_start_118 .. :try_end_11f} :catch_120

    .line 517
    return-void

    .line 519
    .end local v0    # "focusedStack":Landroid/app/ActivityManager$StackInfo;
    :catch_120
    move-exception v0

    .line 521
    .local v0, "e":Landroid/os/RemoteException;
    return-void

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v6    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    :catchall_122
    move-exception v0

    goto :goto_12b

    :catchall_124
    move-exception v0

    goto :goto_129

    :catchall_126
    move-exception v0

    move/from16 v9, p3

    :goto_129
    move/from16 v10, p4

    :goto_12b
    move/from16 v11, p5

    goto :goto_137

    :catchall_12e
    move-exception v0

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v5, p8

    :goto_137
    :try_start_137
    monitor-exit v4
    :try_end_138
    .catchall {:try_start_137 .. :try_end_138} :catchall_139

    throw v0

    :catchall_139
    move-exception v0

    goto :goto_137
.end method

.method private handleShortTermModelValid()V
    .registers 18

    .line 586
    move-object/from16 v0, p0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v2, "handleShortTermModelValid()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->summarizeStats(I)V

    .line 593
    iget-object v2, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v2, v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->getUserStats(I)Lcom/android/server/display/AdaptiveBrightnessWeightStats;

    move-result-object v2

    .line 594
    .local v2, "adaptiveBrightnessWeightStats":Lcom/android/server/display/AdaptiveBrightnessWeightStats;
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;

    move-result-object v3

    .line 595
    .local v3, "brightnessWeights":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getTimeCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v4

    .line 596
    .local v4, "timeStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    invoke-virtual {v2}, Lcom/android/server/display/AdaptiveBrightnessWeightStats;->getContinuityCollectorStats()[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;

    move-result-object v5

    .line 599
    .local v5, "continuityStats":[Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;
    if-eqz v3, :cond_9a

    if-eqz v4, :cond_9a

    if-eqz v5, :cond_9a

    .line 600
    invoke-direct {v0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->buildBrightnessConfiguration([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;)Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v13

    .line 602
    .local v13, "brightnessConfiguration":Landroid/hardware/display/BrightnessConfiguration;
    if-eqz v13, :cond_94

    .line 603
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    const-class v6, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 604
    .local v1, "displayManager":Landroid/hardware/display/DisplayManager;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v6

    .line 605
    .local v14, "weights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v15, v6

    .line 606
    .local v15, "timeWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v6

    .line 608
    .local v12, "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_4b
    array-length v7, v3

    if-ge v6, v7, :cond_5e

    .line 609
    aget-object v7, v3, v6

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;->getWeight()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 608
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 612
    .end local v6    # "i":I
    :cond_5e
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5f
    array-length v7, v4

    if-ge v6, v7, :cond_72

    .line 613
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 612
    add-int/lit8 v6, v6, 0x1

    goto :goto_5f

    .line 616
    .end local v6    # "i":I
    :cond_72
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_73
    array-length v7, v5

    if-ge v6, v7, :cond_86

    .line 617
    aget-object v7, v5, v6

    invoke-virtual {v7}, Lcom/android/server/display/AdaptiveBrightnessWeightStats$WeightStat;->getWeight()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 616
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 620
    .end local v6    # "i":I
    :cond_86
    const/4 v8, 0x0

    const-string/jumbo v9, "sbs"

    move-object v6, v1

    move-object v7, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v16, v12

    .end local v12    # "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v16, "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v6 .. v12}, Landroid/hardware/display/DisplayManager;->setBrightnessConfigurationForUser(Landroid/hardware/display/BrightnessConfiguration;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 621
    .end local v1    # "displayManager":Landroid/hardware/display/DisplayManager;
    .end local v14    # "weights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "timeWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "continuityWeights":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_9a

    .line 622
    :cond_94
    const-string/jumbo v6, "handleShortTermModelValid: brightnessConfiguration is null"

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v13    # "brightnessConfiguration":Landroid/hardware/display/BrightnessConfiguration;
    :cond_9a
    :goto_9a
    return-void
.end method

.method private printArrayBrightnessWeights([Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;Ljava/lang/String;)V
    .registers 10
    .param p1, "brightnessWeights"    # [Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    .param p2, "tag"    # Ljava/lang/String;

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 730
    .local v0, "tempSb":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ge v3, v1, :cond_24

    aget-object v4, p1, v3

    .line 732
    .local v4, "bw":Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v2

    const-string v6, "%9s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    .end local v4    # "bw":Lcom/android/server/display/AdaptiveBrightnessWeightStats$BrightnessWeights;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 734
    :cond_24
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    return-void
.end method

.method private readAdaptiveBrightnessStats()V
    .registers 6

    .line 841
    new-instance v0, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mHbmLux:I

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;-><init>(Landroid/os/UserManager;ILcom/android/server/display/AdaptiveBrightnessStatsTracker$Injector;Lcom/android/server/display/BrightnessMappingStrategy;)V

    iput-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 842
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v1, "adaptive_brightness_stats_sec.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 843
    .local v0, "readFrom":Landroid/util/AtomicFile;
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Landroid/util/AtomicFile;->exists()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 844
    const/4 v1, 0x0

    .line 846
    .local v1, "input":Ljava/io/FileInputStream;
    :try_start_1f
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    move-object v1, v2

    .line 847
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->readStats(Ljava/io/InputStream;)V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_29} :catch_30
    .catchall {:try_start_1f .. :try_end_29} :catchall_2e

    .line 852
    nop

    :goto_2a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 853
    goto :goto_41

    .line 852
    :catchall_2e
    move-exception v2

    goto :goto_3d

    .line 848
    :catch_30
    move-exception v2

    .line 849
    .local v2, "e":Ljava/io/IOException;
    :try_start_31
    invoke-virtual {v0}, Landroid/util/AtomicFile;->delete()V

    .line 850
    const-string v3, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v4, "Failed to read ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_31 .. :try_end_3b} :catchall_2e

    .line 852
    nop

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2a

    :goto_3d
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 853
    throw v2

    .line 855
    .end local v1    # "input":Ljava/io/FileInputStream;
    :cond_41
    :goto_41
    return-void
.end method

.method private readEvents()V
    .registers 7

    .line 820
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 822
    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    .line 823
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 824
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v2, "brightness_events_sec.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 825
    .local v1, "readFrom":Landroid/util/AtomicFile;
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2
    :try_end_19
    .catchall {:try_start_4 .. :try_end_19} :catchall_3d

    if-eqz v2, :cond_3b

    .line 826
    const/4 v2, 0x0

    .line 828
    .local v2, "input":Ljava/io/FileInputStream;
    :try_start_1c
    invoke-virtual {v1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v2, v3

    .line 829
    invoke-virtual {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readEventsLocked(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_24} :catch_2a
    .catchall {:try_start_1c .. :try_end_24} :catchall_28

    .line 834
    :goto_24
    :try_start_24
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_3d

    .line 835
    goto :goto_3b

    .line 834
    :catchall_28
    move-exception v3

    goto :goto_36

    .line 830
    :catch_2a
    move-exception v3

    .line 831
    .local v3, "e":Ljava/io/IOException;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 832
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v5, "Failed to read change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_28

    goto :goto_24

    .line 834
    .end local v3    # "e":Ljava/io/IOException;
    :goto_36
    :try_start_36
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 835
    nop

    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    throw v3

    .line 837
    .end local v1    # "readFrom":Landroid/util/AtomicFile;
    .end local v2    # "input":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    :cond_3b
    :goto_3b
    monitor-exit v0

    .line 838
    return-void

    .line 837
    :catchall_3d
    move-exception v1

    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method private recordAmbientLuxEvent(F)V
    .registers 7
    .param p1, "ambientLux"    # F

    .line 1167
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1169
    :try_start_3
    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ambient Lux event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    const/4 v1, 0x0

    .line 1174
    .local v1, "data":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    .line 1175
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iput p1, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    .line 1176
    .end local v1    # "data":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;
    monitor-exit v0

    .line 1177
    return-void

    .line 1176
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method private scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V
    .registers 3

    .line 762
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    if-nez v0, :cond_11

    .line 763
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$L-ZgA7H4zR9lwbYx7oq4rBbkNfM;

    invoke-direct {v1, p0}, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$L-ZgA7H4zR9lwbYx7oq4rBbkNfM;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 768
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 770
    :cond_11
    return-void
.end method

.method private setMaxWeight(I)V
    .registers 3
    .param p1, "userId"    # I

    .line 739
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->setMaxWeight(I)V

    .line 740
    return-void
.end method

.method private startAdaptiveBrightnessStatsTracker()V
    .registers 5

    .line 743
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    .line 744
    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isInteractive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContentResolver:Landroid/content/ContentResolver;

    .line 745
    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    if-nez v0, :cond_35

    .line 747
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    .line 748
    .local v0, "powerManagerInternal":Landroid/os/PowerManagerInternal;
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    .line 749
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->getLastUserActivityState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2f

    move v2, v3

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    .line 748
    :goto_30
    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->start(Z)V

    .line 750
    iput-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 752
    .end local v0    # "powerManagerInternal":Landroid/os/PowerManagerInternal;
    :cond_35
    return-void
.end method

.method private stopAdaptiveBrightnessStatsTracker()V
    .registers 2

    .line 755
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    if-eqz v0, :cond_c

    .line 756
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v0}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->stop()V

    .line 757
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTrackerStarted:Z

    .line 759
    :cond_c
    return-void
.end method

.method private updateAdaptiveBrightnessStats(Z)V
    .registers 11
    .param p1, "userInitiated"    # Z

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAdaptiveBrightnessStats: l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " u: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    iget v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastAmbientLux:F

    iget v5, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    iget-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    iget-object v7, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessChangeEvent:Landroid/hardware/display/BrightnessChangeEvent;

    const/4 v3, 0x0

    move v8, p1

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->add(IFFLandroid/util/Spline;Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 1183
    return-void
.end method

.method private updateColorSampling()V
    .registers 3

    .line 1149
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mColorSamplingEnabled:Z

    if-nez v0, :cond_5

    .line 1150
    return-void

    .line 1152
    :cond_5
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFrameRate(Landroid/content/Context;)F

    move-result v0

    .line 1153
    .local v0, "frameRate":F
    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mFrameRate:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_19

    .line 1154
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    .line 1155
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->enableColorSampling()V

    .line 1157
    :cond_19
    return-void
.end method

.method private writeAdaptiveBrightnessStats()V
    .registers 6

    .line 804
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v1, "adaptive_brightness_stats_sec.xml"

    invoke-virtual {v0, v1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v0

    .line 805
    .local v0, "writeTo":Landroid/util/AtomicFile;
    if-nez v0, :cond_b

    .line 806
    return-void

    .line 808
    :cond_b
    const/4 v1, 0x0

    .line 810
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    move-object v1, v2

    .line 811
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v2, v1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->writeStats(Ljava/io/OutputStream;)V

    .line 812
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_19} :catch_1a

    .line 816
    goto :goto_25

    .line 813
    :catch_1a
    move-exception v2

    .line 814
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 815
    const-string v3, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v4, "Failed to write ambient brightness stats."

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 817
    .end local v2    # "e":Ljava/io/IOException;
    :goto_25
    return-void
.end method

.method private writeEvents()V
    .registers 7

    .line 773
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 774
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    if-nez v1, :cond_9

    .line 776
    monitor-exit v0

    return-void

    .line 779
    :cond_9
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v2, "brightness_events_sec.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 780
    .local v1, "writeTo":Landroid/util/AtomicFile;
    if-nez v1, :cond_15

    .line 781
    monitor-exit v0

    return-void

    .line 783
    :cond_15
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2a

    .line 784
    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 785
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 787
    :cond_27
    iput-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_46

    goto :goto_44

    .line 789
    :cond_2a
    const/4 v2, 0x0

    .line 791
    .local v2, "output":Ljava/io/FileOutputStream;
    :try_start_2b
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 792
    invoke-virtual {p0, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeEventsLocked(Ljava/io/OutputStream;)V

    .line 793
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 794
    iput-boolean v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_39
    .catchall {:try_start_2b .. :try_end_38} :catchall_46

    .line 798
    goto :goto_44

    .line 795
    :catch_39
    move-exception v3

    .line 796
    .local v3, "e":Ljava/io/IOException;
    :try_start_3a
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 797
    const-string v4, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v5, "Failed to write change mEvents."

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 800
    .end local v1    # "writeTo":Landroid/util/AtomicFile;
    .end local v2    # "output":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_44
    monitor-exit v0

    .line 801
    return-void

    .line 800
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_3a .. :try_end_48} :catchall_46

    throw v1
.end method


# virtual methods
.method public addBrightnessWeightDirectly(FFFF)V
    .registers 12
    .param p1, "lux"    # F
    .param p2, "brightness"    # F
    .param p3, "durationSec"    # F
    .param p4, "continuity"    # F

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addBrightnessWeightDirectly: l:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " b:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " d:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy;->addUserDataPoint(FF)V

    .line 1195
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessMappingStrategy;->getBrightnessSpline()Landroid/util/Spline;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightnessSpline:Landroid/util/Spline;

    .line 1196
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    const/4 v2, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->addDirectly(IFFFLandroid/util/Spline;)V

    .line 1198
    return-void
.end method

.method public clearBrightnessEvents()V
    .registers 5

    .line 385
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "clearBrightnessEvents()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_a
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 390
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v2, "brightness_events_sec.xml"

    invoke-virtual {v1, v2}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v1

    .line 391
    .local v1, "eventFile":Landroid/util/AtomicFile;
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 392
    invoke-virtual {v1}, Landroid/util/AtomicFile;->delete()V

    .line 395
    :cond_22
    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    const-string v3, "adaptive_brightness_stats_sec.xml"

    invoke-virtual {v2, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getFile(Ljava/lang/String;)Landroid/util/AtomicFile;

    move-result-object v2

    .line 396
    .local v2, "statsFile":Landroid/util/AtomicFile;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 397
    invoke-virtual {v2}, Landroid/util/AtomicFile;->delete()V

    .line 399
    .end local v1    # "eventFile":Landroid/util/AtomicFile;
    .end local v2    # "statsFile":Landroid/util/AtomicFile;
    :cond_35
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_a .. :try_end_39} :catchall_37

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1043
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1045
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mStarted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1046
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBatteryLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBatteryLevel:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1047
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastLightData.lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget v2, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->lux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1049
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastLightData.timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mLastLightData:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;

    iget-wide v2, v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$LightData;->timestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    monitor-exit v0
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_20e

    .line 1051
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1052
    :try_start_7e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEventsDirty="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsDirty:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1053
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mEvents.size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 1055
    .local v0, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b7
    array-length v3, v0

    if-ge v2, v3, :cond_1af

    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    aget-object v6, v0, v2

    iget-wide v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1057
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", userId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1058
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1059
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isUserSetBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget-boolean v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", powerBrightnessFactor="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1061
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", isDefaultBrightnessConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v0, v2

    iget-boolean v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    const-string v3, " {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_167
    aget-object v4, v0, v2

    iget-object v4, v4, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v4, v4

    if-ge v3, v4, :cond_1a5

    .line 1064
    if-eqz v3, :cond_175

    .line 1065
    const-string v4, ", "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1067
    :cond_175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1063
    add-int/lit8 v3, v3, 0x1

    goto :goto_167

    .line 1069
    .end local v3    # "j":I
    :cond_1a5
    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1055
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b7

    .line 1071
    .end local v0    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "i":I
    :cond_1af
    monitor-exit v1
    :try_end_1b0
    .catchall {:try_start_7e .. :try_end_1b0} :catchall_20b

    .line 1073
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMimumBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMimumBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1075
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMaxBrightnessForNonHbmLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mMaxBrightnessForNonHbmLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1079
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$7fQbCchVru8rKYyn_m2rHefmQ3g;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->runWithScissors(Ljava/lang/Runnable;J)Z

    .line 1080
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    if-eqz v0, :cond_20a

    .line 1081
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1082
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mAdaptiveBrightnessStatsTracker:Lcom/android/server/display/AdaptiveBrightnessStatsTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/AdaptiveBrightnessStatsTracker;->dump(Ljava/io/PrintWriter;)V

    .line 1084
    :cond_20a
    return-void

    .line 1071
    :catchall_20b
    move-exception v0

    :try_start_20c
    monitor-exit v1
    :try_end_20d
    .catchall {:try_start_20c .. :try_end_20d} :catchall_20b

    throw v0

    .line 1050
    :catchall_20e
    move-exception v1

    :try_start_20f
    monitor-exit v0
    :try_end_210
    .catchall {:try_start_20f .. :try_end_210} :catchall_20e

    throw v1
.end method

.method public getEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .registers 12
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

    .line 410
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v1}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 412
    .local v1, "events":[Landroid/hardware/display/BrightnessChangeEvent;
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_6f

    .line 413
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v2, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getProfileIds(Landroid/os/UserManager;I)[I

    move-result-object v0

    .line 414
    .local v0, "profiles":[I
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 415
    .local v2, "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    array-length v4, v0

    const/4 v5, 0x1

    if-ge v3, v4, :cond_36

    .line 416
    aget v4, v0, v3

    .line 419
    .local v4, "profileId":I
    if-eqz p2, :cond_26

    if-eq v4, p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 v5, 0x0

    .line 420
    .local v5, "redact":Z
    :cond_26
    :goto_26
    aget v6, v0, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    .end local v4    # "profileId":I
    .end local v5    # "redact":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 422
    .end local v3    # "i":I
    :cond_36
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, v1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 423
    .local v3, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3d
    array-length v6, v1

    if-ge v4, v6, :cond_69

    .line 424
    aget-object v6, v1, v4

    iget v6, v6, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    .line 425
    .local v6, "redact":Ljava/lang/Boolean;
    if-eqz v6, :cond_66

    .line 426
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_5c

    .line 427
    aget-object v7, v1, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 429
    :cond_5c
    new-instance v7, Landroid/hardware/display/BrightnessChangeEvent;

    aget-object v8, v1, v4

    invoke-direct {v7, v8, v5}, Landroid/hardware/display/BrightnessChangeEvent;-><init>(Landroid/hardware/display/BrightnessChangeEvent;Z)V

    .line 431
    .local v7, "event":Landroid/hardware/display/BrightnessChangeEvent;
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    .end local v6    # "redact":Ljava/lang/Boolean;
    .end local v7    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    :cond_66
    :goto_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    .line 435
    .end local v4    # "i":I
    :cond_69
    new-instance v4, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v4, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object v4

    .line 412
    .end local v0    # "profiles":[I
    .end local v1    # "events":[Landroid/hardware/display/BrightnessChangeEvent;
    .end local v2    # "toRedact":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    .end local v3    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/display/BrightnessChangeEvent;>;"
    :catchall_6f
    move-exception v1

    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method public isStarted()Z
    .registers 3

    .line 579
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 580
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    monitor-exit v0

    return v1

    .line 581
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public synthetic lambda$dump$2$AdaptiveBrightnessLongtermModelBuilder(Ljava/io/PrintWriter;)V
    .registers 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1079
    invoke-direct {p0, p1}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public synthetic lambda$restartAdaptiveBrightnessStatsTracker$0$AdaptiveBrightnessLongtermModelBuilder(Z)V
    .registers 3
    .param p1, "fromBnr"    # Z

    .line 373
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->readAdaptiveBrightnessStats()V

    .line 374
    if-eqz p1, :cond_9

    .line 375
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->setMaxWeight(I)V

    .line 378
    :cond_9
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 379
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->startAdaptiveBrightnessStatsTracker()V

    .line 380
    return-void
.end method

.method public synthetic lambda$scheduleWriteAdaptiveBrightnessLongtermModelBuilderState$1$AdaptiveBrightnessLongtermModelBuilder()V
    .registers 2

    .line 764
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mWriteAdaptiveBrightnessLongtermModelBuilderStateScheduled:Z

    .line 765
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeEvents()V

    .line 766
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->writeAdaptiveBrightnessStats()V

    .line 767
    return-void
.end method

.method public notifyAmbientLuxChanged(F)V
    .registers 6
    .param p1, "ambientLux"    # F

    .line 553
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "notifyAmbientLuxChanged(lux=%f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    .line 557
    .local v0, "toSend":I
    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v1, v3, v0, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 558
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 559
    return-void
.end method

.method public notifyBrightnessChanged(FZFZZLandroid/util/Spline;)V
    .registers 20
    .param p1, "brightness"    # F
    .param p2, "userInitiated"    # Z
    .param p3, "powerBrightnessFactor"    # F
    .param p4, "isUserSetBrightness"    # Z
    .param p5, "isDefaultBrightnessConfig"    # Z
    .param p6, "brightnessSpline"    # Landroid/util/Spline;

    .line 450
    move-object v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 451
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 450
    const-string/jumbo v2, "notifyBrightnessChanged(brightness=%f, userInitiated=%b)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    .line 454
    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;

    iget-object v5, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    .line 456
    invoke-virtual {v5}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v10

    move-object v5, v2

    move v6, p1

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v12, p6

    invoke-direct/range {v5 .. v12}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$BrightnessChangeValues;-><init>(FFZZJLandroid/util/Spline;)V

    .line 453
    move v5, p2

    invoke-virtual {v1, v4, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 457
    .local v1, "m":Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 458
    return-void
.end method

.method public notifyShortTermResetValid()V
    .registers 3

    .line 571
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string/jumbo v1, "notifyShortTermResetValid()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 575
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 576
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 4
    .param p1, "newUserId"    # I

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Used id updated from 0 to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    return-void
.end method

.method public persistAdaptiveBrightnessLongtermModelBuilderState()V
    .registers 1

    .line 439
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->scheduleWriteAdaptiveBrightnessLongtermModelBuilderState()V

    .line 440
    return-void
.end method

.method readEventsLocked(Ljava/io/InputStream;)V
    .registers 39
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 931
    move-object/from16 v1, p0

    const-string v2, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v3, ","

    :try_start_6
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 932
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, p1

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 935
    :goto_15
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    move v7, v5

    .local v7, "type":I
    const/4 v8, 0x1

    if-eq v5, v8, :cond_21

    const/4 v5, 0x2

    if-eq v7, v5, :cond_21

    goto :goto_15

    .line 938
    :cond_21
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 939
    .local v5, "tag":Ljava/lang/String;
    const-string v9, "events"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_23e

    .line 944
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v9}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v9

    sget-wide v11, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    sub-long/2addr v9, v11

    .line 946
    .local v9, "timeCutOff":J
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 947
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    .line 948
    .local v11, "outerDepth":I
    :goto_3d
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    move v7, v12

    if-eq v12, v8, :cond_236

    const/4 v12, 0x3

    if-ne v7, v12, :cond_4d

    .line 949
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    if-le v13, v11, :cond_23c

    .line 950
    :cond_4d
    if-eq v7, v12, :cond_221

    const/4 v12, 0x4

    if-ne v7, v12, :cond_5c

    .line 951
    move-object/from16 v18, v3

    move-object/from16 v32, v4

    move/from16 v24, v7

    move-wide/from16 v16, v9

    goto/16 :goto_229

    .line 953
    :cond_5c
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 954
    const-string v12, "event"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_208

    .line 955
    new-instance v12, Landroid/hardware/display/BrightnessChangeEvent$Builder;

    invoke-direct {v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;-><init>()V

    .line 957
    .local v12, "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    const-string/jumbo v13, "nits"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 958
    .local v13, "brightness":Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v15

    invoke-virtual {v12, v15}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 959
    const-string/jumbo v15, "timestamp"

    invoke-interface {v4, v14, v15}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 960
    .local v15, "timestamp":Ljava/lang/String;
    move-wide/from16 v16, v9

    .end local v9    # "timeCutOff":J
    .local v16, "timeCutOff":J
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v12, v8, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setTimeStamp(J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 961
    const-string/jumbo v8, "packageName"

    invoke-interface {v4, v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPackageName(Ljava/lang/String;)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 962
    const-string/jumbo v8, "user"

    invoke-interface {v4, v14, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 963
    .local v8, "user":Ljava/lang/String;
    iget-object v9, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v10, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v9, v10, v14}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getUserId(Landroid/os/UserManager;I)I

    move-result v9

    invoke-virtual {v12, v9}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserId(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 964
    const-string v9, "batteryLevel"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 965
    .local v9, "batteryLevel":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v12, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setBatteryLevel(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 966
    const-string/jumbo v10, "nightMode"

    const/4 v14, 0x0

    invoke-interface {v4, v14, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 967
    .local v10, "nightMode":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    invoke-virtual {v12, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setNightMode(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 968
    const-string v14, "colorTemperature"

    .line 969
    move-object/from16 v19, v5

    const/4 v5, 0x0

    .end local v5    # "tag":Ljava/lang/String;
    .local v19, "tag":Ljava/lang/String;
    invoke-interface {v4, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 970
    .local v5, "colorTemperature":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorTemperature(I)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 971
    const-string/jumbo v14, "lastNits"

    move-object/from16 v20, v5

    const/4 v5, 0x0

    .end local v5    # "colorTemperature":Ljava/lang/String;
    .local v20, "colorTemperature":Ljava/lang/String;
    invoke-interface {v4, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v5, v14

    .line 972
    .local v5, "lastBrightness":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v14

    invoke-virtual {v12, v14}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLastBrightness(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 974
    const-string/jumbo v14, "lux"

    move-object/from16 v21, v5

    const/4 v5, 0x0

    .end local v5    # "lastBrightness":Ljava/lang/String;
    .local v21, "lastBrightness":Ljava/lang/String;
    invoke-interface {v4, v5, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 975
    .local v14, "luxValue":Ljava/lang/String;
    const-string/jumbo v5, "luxTimestamps"

    const/4 v6, 0x0

    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 977
    .local v5, "luxTimestamp":Ljava/lang/String;
    invoke-virtual {v14, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 978
    .local v6, "luxValuesStrings":[Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v23, v22

    .line 979
    .local v23, "luxTimestampsStrings":[Ljava/lang/String;
    move-object/from16 v22, v5

    .end local v5    # "luxTimestamp":Ljava/lang/String;
    .local v22, "luxTimestamp":Ljava/lang/String;
    array-length v5, v6

    move/from16 v24, v7

    move-object/from16 v7, v23

    move-object/from16 v23, v8

    .end local v8    # "user":Ljava/lang/String;
    .local v7, "luxTimestampsStrings":[Ljava/lang/String;
    .local v23, "user":Ljava/lang/String;
    .local v24, "type":I
    array-length v8, v7

    if-eq v5, v8, :cond_11b

    .line 980
    move-object/from16 v18, v3

    move-object/from16 v32, v4

    goto/16 :goto_212

    .line 982
    :cond_11b
    array-length v5, v6

    new-array v5, v5, [F

    .line 983
    .local v5, "luxValues":[F
    array-length v8, v6

    new-array v8, v8, [J

    .line 984
    .local v8, "luxTimestamps":[J
    const/16 v25, 0x0

    move-object/from16 v26, v9

    move/from16 v9, v25

    .local v9, "i":I
    .local v26, "batteryLevel":Ljava/lang/String;
    :goto_127
    move-object/from16 v25, v10

    .end local v10    # "nightMode":Ljava/lang/String;
    .local v25, "nightMode":Ljava/lang/String;
    array-length v10, v5

    if-ge v9, v10, :cond_141

    .line 985
    aget-object v10, v6, v9

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    aput v10, v5, v9

    .line 986
    aget-object v10, v7, v9

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    aput-wide v27, v8, v9

    .line 984
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v10, v25

    goto :goto_127

    .line 988
    .end local v9    # "i":I
    :cond_141
    invoke-virtual {v12, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxValues([F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 989
    invoke-virtual {v12, v8}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setLuxTimestamps([J)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 991
    const-string v9, "defaultConfig"

    const/4 v10, 0x0

    invoke-interface {v4, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 992
    .local v9, "defaultConfig":Ljava/lang/String;
    if-eqz v9, :cond_157

    .line 993
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v12, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setIsDefaultBrightnessConfig(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 995
    :cond_157
    const-string/jumbo v10, "powerSaveFactor"

    move-object/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "luxValues":[F
    .local v27, "luxValues":[F
    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 996
    .local v5, "powerSave":Ljava/lang/String;
    if-eqz v5, :cond_16c

    .line 997
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v12, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_171

    .line 999
    :cond_16c
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v12, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setPowerBrightnessFactor(F)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 1001
    :goto_171
    const-string/jumbo v10, "userPoint"

    move-object/from16 v28, v5

    const/4 v5, 0x0

    .end local v5    # "powerSave":Ljava/lang/String;
    .local v28, "powerSave":Ljava/lang/String;
    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v5, v10

    .line 1002
    .local v5, "userPoint":Ljava/lang/String;
    if-eqz v5, :cond_185

    .line 1003
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v12, v10}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setUserBrightnessPoint(Z)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    .line 1006
    :cond_185
    const-string v10, "colorSampleDuration"

    .line 1007
    move-object/from16 v29, v5

    const/4 v5, 0x0

    .end local v5    # "userPoint":Ljava/lang/String;
    .local v29, "userPoint":Ljava/lang/String;
    invoke-interface {v4, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1008
    .local v10, "colorSampleDurationString":Ljava/lang/String;
    const-string v5, "colorValueBuckets"

    .line 1009
    move-object/from16 v30, v6

    const/4 v6, 0x0

    .end local v6    # "luxValuesStrings":[Ljava/lang/String;
    .local v30, "luxValuesStrings":[Ljava/lang/String;
    invoke-interface {v4, v6, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1010
    .local v5, "colorValueBucketsString":Ljava/lang/String;
    if-eqz v10, :cond_1c8

    if-eqz v5, :cond_1c8

    .line 1011
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v31

    move-wide/from16 v33, v31

    .line 1012
    .local v33, "colorSampleDuration":J
    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1013
    .local v6, "buckets":[Ljava/lang/String;
    move-object/from16 v18, v3

    array-length v3, v6

    new-array v3, v3, [J

    .line 1014
    .local v3, "bucketValues":[J
    const/16 v31, 0x0

    move-object/from16 v32, v4

    move/from16 v4, v31

    .local v4, "i":I
    .local v32, "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1b0
    move-object/from16 v31, v5

    .end local v5    # "colorValueBucketsString":Ljava/lang/String;
    .local v31, "colorValueBucketsString":Ljava/lang/String;
    array-length v5, v3

    if-ge v4, v5, :cond_1c2

    .line 1015
    aget-object v5, v6, v4

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v35

    aput-wide v35, v3, v4

    .line 1014
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v5, v31

    goto :goto_1b0

    .line 1017
    .end local v4    # "i":I
    :cond_1c2
    move-wide/from16 v4, v33

    .end local v33    # "colorSampleDuration":J
    .local v4, "colorSampleDuration":J
    invoke-virtual {v12, v3, v4, v5}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->setColorValues([JJ)Landroid/hardware/display/BrightnessChangeEvent$Builder;

    goto :goto_1ce

    .line 1010
    .end local v3    # "bucketValues":[J
    .end local v6    # "buckets":[Ljava/lang/String;
    .end local v31    # "colorValueBucketsString":Ljava/lang/String;
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "colorValueBucketsString":Ljava/lang/String;
    :cond_1c8
    move-object/from16 v18, v3

    move-object/from16 v32, v4

    move-object/from16 v31, v5

    .line 1020
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "colorValueBucketsString":Ljava/lang/String;
    .restart local v31    # "colorValueBucketsString":Ljava/lang/String;
    .restart local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_1ce
    invoke-virtual {v12}, Landroid/hardware/display/BrightnessChangeEvent$Builder;->build()Landroid/hardware/display/BrightnessChangeEvent;

    move-result-object v3

    .line 1022
    .local v3, "event":Landroid/hardware/display/BrightnessChangeEvent;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    iget v4, v3, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_207

    iget-wide v4, v3, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v4, v4, v16

    if-lez v4, :cond_207

    iget-object v4, v3, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v4, v4

    if-lez v4, :cond_207

    .line 1028
    iget-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4, v3}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 1030
    .end local v3    # "event":Landroid/hardware/display/BrightnessChangeEvent;
    .end local v7    # "luxTimestampsStrings":[Ljava/lang/String;
    .end local v8    # "luxTimestamps":[J
    .end local v9    # "defaultConfig":Ljava/lang/String;
    .end local v10    # "colorSampleDurationString":Ljava/lang/String;
    .end local v12    # "builder":Landroid/hardware/display/BrightnessChangeEvent$Builder;
    .end local v13    # "brightness":Ljava/lang/String;
    .end local v14    # "luxValue":Ljava/lang/String;
    .end local v15    # "timestamp":Ljava/lang/String;
    .end local v20    # "colorTemperature":Ljava/lang/String;
    .end local v21    # "lastBrightness":Ljava/lang/String;
    .end local v22    # "luxTimestamp":Ljava/lang/String;
    .end local v23    # "user":Ljava/lang/String;
    .end local v25    # "nightMode":Ljava/lang/String;
    .end local v26    # "batteryLevel":Ljava/lang/String;
    .end local v27    # "luxValues":[F
    .end local v28    # "powerSave":Ljava/lang/String;
    .end local v29    # "userPoint":Ljava/lang/String;
    .end local v30    # "luxValuesStrings":[Ljava/lang/String;
    .end local v31    # "colorValueBucketsString":Ljava/lang/String;
    :cond_207
    goto :goto_212

    .line 954
    .end local v16    # "timeCutOff":J
    .end local v19    # "tag":Ljava/lang/String;
    .end local v24    # "type":I
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v5, "tag":Ljava/lang/String;
    .local v7, "type":I
    .local v9, "timeCutOff":J
    :cond_208
    move-object/from16 v18, v3

    move-object/from16 v32, v4

    move-object/from16 v19, v5

    move/from16 v24, v7

    move-wide/from16 v16, v9

    .line 948
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v9    # "timeCutOff":J
    .restart local v16    # "timeCutOff":J
    .restart local v19    # "tag":Ljava/lang/String;
    .restart local v24    # "type":I
    .restart local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_212
    move-object/from16 v6, p1

    move-wide/from16 v9, v16

    move-object/from16 v3, v18

    move-object/from16 v5, v19

    move/from16 v7, v24

    move-object/from16 v4, v32

    const/4 v8, 0x1

    goto/16 :goto_3d

    .line 950
    .end local v16    # "timeCutOff":J
    .end local v19    # "tag":Ljava/lang/String;
    .end local v24    # "type":I
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    .restart local v9    # "timeCutOff":J
    :cond_221
    move-object/from16 v18, v3

    move-object/from16 v32, v4

    move/from16 v24, v7

    move-wide/from16 v16, v9

    .line 948
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "type":I
    .end local v9    # "timeCutOff":J
    .restart local v16    # "timeCutOff":J
    .restart local v24    # "type":I
    .restart local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :goto_229
    move-object/from16 v6, p1

    move-wide/from16 v9, v16

    move-object/from16 v3, v18

    move/from16 v7, v24

    move-object/from16 v4, v32

    const/4 v8, 0x1

    goto/16 :goto_3d

    .end local v16    # "timeCutOff":J
    .end local v24    # "type":I
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "type":I
    .restart local v9    # "timeCutOff":J
    :cond_236
    move-object/from16 v32, v4

    move/from16 v24, v7

    move-wide/from16 v16, v9

    .line 1039
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v9    # "timeCutOff":J
    .end local v11    # "outerDepth":I
    :cond_23c
    nop

    .line 1040
    return-void

    .line 940
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5    # "tag":Ljava/lang/String;
    .restart local v7    # "type":I
    :cond_23e
    move-object/from16 v32, v4

    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Events not found in brightness tracker file "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .end local p1    # "stream":Ljava/io/InputStream;
    throw v3
    :try_end_257
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_257} :catch_257
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_257} :catch_257
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_257} :catch_257
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_257} :catch_257

    .line 1032
    .end local v5    # "tag":Ljava/lang/String;
    .end local v7    # "type":I
    .end local v32    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local p0    # "this":Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;
    .restart local p1    # "stream":Ljava/io/InputStream;
    :catch_257
    move-exception v0

    move-object v3, v0

    .line 1035
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/android/internal/util/RingBuffer;

    const-class v5, Landroid/hardware/display/BrightnessChangeEvent;

    const/16 v6, 0x14

    invoke-direct {v4, v5, v6}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v4, v1, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    .line 1036
    const-string v4, "Failed to parse brightness event"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1038
    new-instance v2, Ljava/io/IOException;

    const-string v4, "failed to parse file"

    invoke-direct {v2, v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public restartAdaptiveBrightnessStatsTracker(Z)V
    .registers 4
    .param p1, "fromBnr"    # Z

    .line 372
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/-$$Lambda$AdaptiveBrightnessLongtermModelBuilder$FbeRXSFM1hfeiTXTaimvXxV3mv0;-><init>(Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 381
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .registers 4
    .param p1, "brightnessConfiguration"    # Landroid/hardware/display/BrightnessConfiguration;

    .line 296
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 297
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 298
    return-void
.end method

.method public setTestModeEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 1202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTestModeEnabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-boolean v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    if-eq v0, p1, :cond_34

    .line 1206
    iput-boolean p1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mTestModeEnabled:Z

    .line 1207
    if-eqz p1, :cond_2a

    .line 1208
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_34

    .line 1210
    :cond_2a
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1213
    :cond_34
    :goto_34
    return-void
.end method

.method public start(F)V
    .registers 5
    .param p1, "initialBrightness"    # F

    .line 286
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "Start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 290
    return-void
.end method

.method stop()V
    .registers 6

    .line 340
    const-string v0, "AdaptiveBrightnessLongtermModelBuilder"

    const-string v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    if-nez v1, :cond_10

    .line 345
    monitor-exit v0

    return-void

    .line 347
    :cond_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_57

    .line 349
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBgHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 350
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->stopAdaptiveBrightnessStatsTracker()V

    .line 351
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/os/PowerManagerInternal;

    .line 352
    .local v2, "powerManagerInternal":Landroid/os/PowerManagerInternal;
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserActivityStateListener:Landroid/os/PowerManagerInternal$UserActivityStateListener;

    invoke-virtual {v2, v0}, Landroid/os/PowerManagerInternal;->unregisterUserActivityStateListener(Landroid/os/PowerManagerInternal$UserActivityStateListener;)V

    .line 353
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mSettingsObserver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$SettingsObserver;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unregisterBrightnessModeObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 354
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 355
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mPackageBroadcastReceiver:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$PackageBroadcastReceiver;

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 356
    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->cancelIdleJob(Landroid/content/Context;)V

    .line 358
    iget-object v3, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mDataCollectionLock:Ljava/lang/Object;

    monitor-enter v3

    .line 359
    :try_start_4d
    iput-boolean v1, p0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mStarted:Z

    .line 360
    monitor-exit v3
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_54

    .line 361
    invoke-direct {p0}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->disableColorSampling()V

    .line 362
    return-void

    .line 360
    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit v3
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw v0

    .line 347
    .end local v2    # "powerManagerInternal":Landroid/os/PowerManagerInternal;
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit v0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    throw v1
.end method

.method writeEventsLocked(Ljava/io/OutputStream;)V
    .registers 20
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 860
    move-object/from16 v0, p0

    new-instance v1, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v1}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 861
    .local v1, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p1

    invoke-interface {v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 862
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v1, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 863
    const-string/jumbo v4, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v1, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 865
    const-string v2, "events"

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 866
    iget-object v4, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v4}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/hardware/display/BrightnessChangeEvent;

    .line 868
    .local v4, "toWrite":[Landroid/hardware/display/BrightnessChangeEvent;
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v6}, Lcom/android/internal/util/RingBuffer;->clear()V

    .line 870
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Writing events "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AdaptiveBrightnessLongtermModelBuilder"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    iget-object v6, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    invoke-virtual {v6}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->currentTimeMillis()J

    move-result-wide v6

    sget-wide v8, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->MAX_EVENT_AGE:J

    sub-long/2addr v6, v8

    .line 873
    .local v6, "timeCutOff":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_54
    array-length v9, v4

    if-ge v8, v9, :cond_1a7

    .line 874
    iget-object v9, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mInjector:Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;

    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mUserManager:Landroid/os/UserManager;

    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->userId:I

    invoke-virtual {v9, v10, v11}, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder$Injector;->getUserSerialNumber(Landroid/os/UserManager;I)I

    move-result v9

    .line 875
    .local v9, "userSerialNo":I
    const/4 v10, -0x1

    if-eq v9, v10, :cond_1a2

    aget-object v10, v4, v8

    iget-wide v10, v10, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_1a2

    .line 876
    iget-object v10, v0, Lcom/android/server/display/AdaptiveBrightnessLongtermModelBuilder;->mEvents:Lcom/android/internal/util/RingBuffer;

    aget-object v11, v4, v8

    invoke-virtual {v10, v11}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 877
    const-string v10, "event"

    invoke-interface {v1, v5, v10}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 878
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->brightness:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "nits"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 879
    aget-object v11, v4, v8

    iget-wide v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->timeStamp:J

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "timestamp"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 880
    aget-object v11, v4, v8

    iget-object v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->packageName:Ljava/lang/String;

    const-string/jumbo v12, "packageName"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 881
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "user"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 882
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->batteryLevel:F

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    const-string v12, "batteryLevel"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 883
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->nightMode:Z

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "nightMode"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 884
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->colorTemperature:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "colorTemperature"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 886
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->lastBrightness:F

    .line 887
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    .line 886
    const-string/jumbo v12, "lastNits"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 888
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isDefaultBrightnessConfig:Z

    .line 889
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 888
    const-string v12, "defaultConfig"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 890
    aget-object v11, v4, v8

    iget v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->powerBrightnessFactor:F

    .line 891
    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    .line 890
    const-string/jumbo v12, "powerSaveFactor"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 892
    aget-object v11, v4, v8

    iget-boolean v11, v11, Landroid/hardware/display/BrightnessChangeEvent;->isUserSetBrightness:Z

    .line 893
    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    .line 892
    const-string/jumbo v12, "userPoint"

    invoke-interface {v1, v5, v12, v11}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 894
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 895
    .local v11, "luxValues":Ljava/lang/StringBuilder;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 896
    .local v12, "luxTimestamps":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_114
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    array-length v14, v14

    const/16 v15, 0x2c

    if-ge v13, v14, :cond_142

    .line 897
    if-lez v13, :cond_125

    .line 898
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 901
    :cond_125
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxValues:[F

    aget v14, v14, v13

    invoke-static {v14}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    aget-object v14, v4, v8

    iget-object v14, v14, Landroid/hardware/display/BrightnessChangeEvent;->luxTimestamps:[J

    aget-wide v14, v14, v13

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    add-int/lit8 v13, v13, 0x1

    goto :goto_114

    .line 904
    .end local v13    # "j":I
    :cond_142
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "lux"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 905
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "luxTimestamps"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 906
    aget-object v13, v4, v8

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    if-eqz v13, :cond_19e

    aget-object v13, v4, v8

    iget-object v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v13, v13

    if-lez v13, :cond_19e

    .line 908
    aget-object v13, v4, v8

    iget-wide v13, v13, Landroid/hardware/display/BrightnessChangeEvent;->colorSampleDuration:J

    .line 909
    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    .line 908
    const-string v14, "colorSampleDuration"

    invoke-interface {v1, v5, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 910
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 911
    .local v13, "buckets":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_176
    aget-object v5, v4, v8

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    array-length v5, v5

    if-ge v14, v5, :cond_193

    .line 912
    if-lez v14, :cond_182

    .line 913
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 915
    :cond_182
    aget-object v5, v4, v8

    iget-object v5, v5, Landroid/hardware/display/BrightnessChangeEvent;->colorValueBuckets:[J

    aget-wide v16, v5, v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    add-int/lit8 v14, v14, 0x1

    const/4 v5, 0x0

    goto :goto_176

    .line 917
    .end local v14    # "j":I
    :cond_193
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "colorValueBuckets"

    const/4 v15, 0x0

    invoke-interface {v1, v15, v14, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_19f

    .line 906
    .end local v13    # "buckets":Ljava/lang/StringBuilder;
    :cond_19e
    move-object v15, v5

    .line 919
    :goto_19f
    invoke-interface {v1, v15, v10}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 873
    .end local v9    # "userSerialNo":I
    .end local v11    # "luxValues":Ljava/lang/StringBuilder;
    .end local v12    # "luxTimestamps":Ljava/lang/StringBuilder;
    :cond_1a2
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x0

    goto/16 :goto_54

    .line 922
    .end local v8    # "i":I
    :cond_1a7
    const/4 v5, 0x0

    invoke-interface {v1, v5, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 923
    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 924
    invoke-virtual/range {p1 .. p1}, Ljava/io/OutputStream;->flush()V

    .line 925
    return-void
.end method
