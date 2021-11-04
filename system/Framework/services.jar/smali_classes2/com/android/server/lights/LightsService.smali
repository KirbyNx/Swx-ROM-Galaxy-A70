.class public Lcom/android/server/lights/LightsService;
.super Lcom/android/server/SystemService;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsService$SvcLEDHandler;,
        Lcom/android/server/lights/LightsService$SvcLEDReceiver;,
        Lcom/android/server/lights/LightsService$VintfExtHalCache;,
        Lcom/android/server/lights/LightsService$VintfHalCache;,
        Lcom/android/server/lights/LightsService$LightImpl;,
        Lcom/android/server/lights/LightsService$LightsManagerBinderService;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field static final DEBUG:Z = false

.field public static final LIGHT_SEC_FLASH:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field public static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field public static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field public static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field public static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final SVCLED_BATTERY_MASK:I = 0x39

.field private static final SVCLED_CHARGING:I = 0x8

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x20

.field private static final SVCLED_LOW_BATTERY:I = 0x10

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_COUNT:I = 0x6

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I


# instance fields
.field private final LED_LOW_POWER_PATH:Ljava/lang/String;

.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private final mContext:Landroid/content/Context;

.field private mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

.field private mCoverOpened:Z

.field mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCoverType:I

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLightsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/lights/LightsService$LightImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

.field final mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mService:Lcom/android/server/lights/LightsManager;

.field private mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

.field private final mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field private final mVintfLights:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;"
        }
    .end annotation
.end field

.field private final mVintfSehLights:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/light/ISehLights;",
            ">;"
        }
    .end annotation
.end field

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 158
    const/4 v0, 0x0

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 159
    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 160
    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 161
    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 162
    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 163
    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 764
    new-instance v0, Lcom/android/server/lights/LightsService$VintfHalCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/lights/LightsService$VintfHalCache;-><init>(Lcom/android/server/lights/LightsService$1;)V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/lights/LightsService$VintfExtHalCache;

    invoke-direct {v3, v1}, Lcom/android/server/lights/LightsService$VintfExtHalCache;-><init>(Lcom/android/server/lights/LightsService$1;)V

    invoke-direct {p0, p1, v0, v2, v3}, Lcom/android/server/lights/LightsService;-><init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V

    .line 766
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/function/Supplier;Landroid/os/Looper;Ljava/util/function/Supplier;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Supplier<",
            "Landroid/hardware/light/ILights;",
            ">;",
            "Landroid/os/Looper;",
            "Ljava/util/function/Supplier<",
            "Lvendor/samsung/hardware/light/ISehLights;",
            ">;)V"
        }
    .end annotation

    .line 771
    .local p2, "service":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Landroid/hardware/light/ILights;>;"
    .local p4, "extService":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lvendor/samsung/hardware/light/ISehLights;>;"
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 113
    const/16 v1, 0x2bc

    iput v1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    .line 124
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    .line 125
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    .line 126
    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    .line 129
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 130
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 131
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 164
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 167
    const-string v3, "/sys/power/wake_lock"

    const-string v4, "/sys/power/wake_unlock"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 168
    aget-object v4, v3, v0

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 169
    aget-object v1, v3, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 170
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    .line 174
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/lights/LightsService$LightImpl;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    .line 175
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    .line 890
    new-instance v1, Lcom/android/server/lights/LightsService$2;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$2;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    .line 1012
    new-instance v1, Lcom/android/server/lights/LightsService$3;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$3;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 1037
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 1057
    new-instance v1, Lcom/android/server/lights/LightsService$4;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsService$4;-><init>(Lcom/android/server/lights/LightsService;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 1106
    const-string v1, "/sys/class/sec/led/led_lowpower"

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->LED_LOW_POWER_PATH:Ljava/lang/String;

    .line 1107
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    .line 1108
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1232
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 772
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    .line 773
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_71

    move-object v1, p2

    goto :goto_72

    :cond_71
    move-object v1, v2

    :goto_72
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    .line 774
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7c

    move-object v1, p4

    goto :goto_7d

    :cond_7c
    move-object v1, v2

    :goto_7d
    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    .line 776
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLights(Landroid/content/Context;)V

    .line 777
    new-instance v1, Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/LightsService$LightsManagerBinderService;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    .line 780
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    .line 781
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    .line 782
    new-instance v0, Lcom/android/server/lights/LightsService$1;

    const-string/jumbo v1, "mSvcLEDThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/lights/LightsService$1;-><init>(Lcom/android/server/lights/LightsService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 809
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 810
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v0

    .line 811
    :goto_9d
    :try_start_9d
    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_9f
    .catchall {:try_start_9d .. :try_end_9f} :catchall_ab

    if-nez v1, :cond_a9

    .line 813
    :try_start_a1
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_a6
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_a6} :catch_a7
    .catchall {:try_start_a1 .. :try_end_a6} :catchall_ab

    goto :goto_a8

    .line 814
    :catch_a7
    move-exception v1

    .line 816
    :goto_a8
    goto :goto_9d

    .line 818
    :cond_a9
    :try_start_a9
    monitor-exit v0

    .line 820
    return-void

    .line 818
    :catchall_ab
    move-exception v1

    monitor-exit v0
    :try_end_ad
    .catchall {:try_start_a9 .. :try_end_ad} :catchall_ab

    throw v1
.end method

.method static synthetic access$000(Lcom/android/server/lights/LightsService;)Landroid/util/SparseArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/lights/LightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/lights/LightsService;IIIIIZ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .line 103
    invoke-direct/range {p0 .. p6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/lights/LightsService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$SvcLEDHandler;)Lcom/android/server/lights/LightsService$SvcLEDHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/LightsService$SvcLEDHandler;

    .line 103
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget v0, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/lights/LightsService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/lights/LightsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method static synthetic access$1700()I
    .registers 1

    .line 103
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->getVrDisplayMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/server/lights/LightsService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/server/lights/LightsService;)[Lcom/android/server/lights/LightsService$LightImpl;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)Lcom/android/server/lights/LogicalLight;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/LogicalLight;

    .line 103
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverBatteryLight:Lcom/android/server/lights/LogicalLight;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LogicalLight;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LogicalLight;)Lcom/android/server/lights/LogicalLight;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Lcom/android/server/lights/LogicalLight;

    .line 103
    iput-object p1, p0, Lcom/android/server/lights/LightsService;->mCoverNotiLight:Lcom/android/server/lights/LogicalLight;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/android/server/lights/LightsService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .line 103
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/lights/LightsService;)Landroid/app/PendingIntent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/lights/LightsService;)Landroid/app/AlarmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget v0, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/lights/LightsService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfLights:Ljava/util/function/Supplier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 103
    invoke-static {}, Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/lights/LightsService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget v0, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/lights/LightsService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # I

    .line 103
    iput p1, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/lights/LightsService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/lights/LightsService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;
    .param p1, "x1"    # Z

    .line 103
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService;

    .line 103
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method private acquireWakeLockForLED()V
    .registers 3

    .line 1235
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string v1, "LightsService"

    if-nez v0, :cond_c

    .line 1236
    const-string v0, "acquireWakeLockForLED : WakeLock path is not initialized"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    return-void

    .line 1240
    :cond_c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_18

    .line 1244
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 1249
    :cond_18
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .registers 5

    .line 1439
    const-string v0, ""

    .line 1440
    .local v0, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1441
    .local v1, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1443
    .local v2, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1444
    return-object v0
.end method

.method private clearSvcLedStateLocked(I)V
    .registers 9
    .param p1, "lightType"    # I

    .line 1276
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 1277
    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .registers 6
    .param p1, "enable"    # Z

    .line 1039
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_9

    goto :goto_2e

    .line 1043
    :cond_9
    if-eqz p1, :cond_1f

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eqz v1, :cond_1f

    .line 1044
    iget-boolean v1, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-nez v1, :cond_2d

    .line 1045
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 1046
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    goto :goto_2d

    .line 1049
    :cond_1f
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_2d

    .line 1050
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1051
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->isLightSensorEnabled:Z

    .line 1054
    :cond_2d
    :goto_2d
    return-void

    .line 1040
    :cond_2e
    :goto_2e
    return-void
.end method

.method private getVrDisplayMode()I
    .registers 5

    .line 883
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 884
    .local v0, "currentUser":I
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vr_display_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    return v1
.end method

.method private handleForcedSvcLEDTask()V
    .registers 3

    .line 1186
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] handleForcedSvcLEDTask()"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 1188
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsService;->setSvcLedLightLocked(I)V

    .line 1189
    return-void
.end method

.method private initCoverState()V
    .registers 5

    .line 994
    const-string v0, "LightsService"

    const-string/jumbo v1, "initCoverState()start"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_3d

    .line 996
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v1

    .line 997
    .local v1, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v1, :cond_36

    .line 998
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v2

    iput v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    .line 999
    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "initCoverState() coverstate : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return-void

    .line 1003
    :cond_36
    const-string/jumbo v2, "initCoverState() : state is null"

    invoke-static {v0, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    return-void

    .line 1007
    .end local v1    # "state":Lcom/samsung/android/cover/CoverState;
    :cond_3d
    const-string/jumbo v1, "initCoverState() : mCoverManager is null!!!!"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void
.end method

.method private initializeWakeLockPath()V
    .registers 4

    .line 1211
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_37

    .line 1213
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "LightsService"

    if-eqz v0, :cond_30

    .line 1214
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v0, v1

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 1221
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/android/server/power/PowerManagerUtil;->fileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1222
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 1228
    iput-boolean v1, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    goto :goto_37

    .line 1224
    :cond_29
    const-string/jumbo v0, "wake_unlock path does not exists "

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    return-void

    .line 1216
    :cond_30
    const-string/jumbo v0, "wake_lock path does not exists"

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    return-void

    .line 1230
    :cond_37
    :goto_37
    return-void
.end method

.method private populateAvailableLights(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 823
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    if-eqz v0, :cond_8

    .line 824
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromAidl(Landroid/content/Context;)V

    goto :goto_b

    .line 826
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsService;->populateAvailableLightsFromHidl(Landroid/content/Context;)V

    .line 829
    :goto_b
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_13
    if-ltz v0, :cond_37

    .line 832
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/lights/LightsService$LightImpl;

    # getter for: Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;
    invoke-static {v1}, Lcom/android/server/lights/LightsService$LightImpl;->access$200(Lcom/android/server/lights/LightsService$LightImpl;)Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v1

    iget v1, v1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    .line 834
    .local v1, "type":I
    if-ltz v1, :cond_34

    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    array-length v3, v2

    if-ge v1, v3, :cond_34

    .line 835
    iget-object v3, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/lights/LightsService$LightImpl;

    aput-object v3, v2, v1

    .line 829
    .end local v1    # "type":I
    :cond_34
    add-int/lit8 v0, v0, -0x1

    goto :goto_13

    .line 838
    .end local v0    # "i":I
    :cond_37
    return-void
.end method

.method private populateAvailableLightsFromAidl(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 844
    :try_start_0
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/samsung/hardware/light/ISehLights;

    invoke-interface {v0}, Lvendor/samsung/hardware/light/ISehLights;->getLights()[Lvendor/samsung/hardware/light/SehHwLight;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 846
    .local v3, "hwLight":Lvendor/samsung/hardware/light/SehHwLight;
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mLightsById:Landroid/util/SparseArray;

    iget v5, v3, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    new-instance v6, Lcom/android/server/lights/LightsService$LightImpl;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p1, v3, v7}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_23

    .line 844
    .end local v3    # "hwLight":Lvendor/samsung/hardware/light/SehHwLight;
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 850
    :cond_22
    goto :goto_2b

    .line 848
    :catch_23
    move-exception v0

    .line 849
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "LightsService"

    const-string v2, "Unable to get lights from HAL"

    invoke-static {v1, v2, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 851
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_2b
    return-void
.end method

.method private populateAvailableLightsFromHidl(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 865
    return-void
.end method

.method private releaseWakeLockForLED()V
    .registers 4

    .line 1252
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mInitializedWakeLockPath:Z

    const-string v1, "LightsService"

    if-nez v0, :cond_d

    .line 1253
    const-string/jumbo v0, "releaseWakeLockForLED: WakeLock path is not initialized"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    return-void

    .line 1257
    :cond_d
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_22

    .line 1261
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mWakeLockAcquired:Z

    .line 1272
    :cond_22
    return-void
.end method

.method static native setLight_native(IIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .registers 14
    .param p1, "sensorValue"    # I

    .line 1112
    const/4 v0, 0x1

    const/16 v1, 0x14

    if-ge p1, v1, :cond_7

    move v1, v0

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    .line 1114
    .local v1, "ledLowPower":I
    :goto_8
    if-ne v1, v0, :cond_15

    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mCoverOpened:Z

    if-eq v2, v0, :cond_15

    iget v2, p0, Lcom/android/server/lights/LightsService;->mCoverType:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_15

    .line 1115
    const/4 v1, 0x0

    .line 1118
    :cond_15
    iget-boolean v2, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v2, :cond_26

    iget v2, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    if-eq v1, v2, :cond_26

    .line 1119
    iput v1, p0, Lcom/android/server/lights/LightsService;->mLedLowPower:I

    .line 1120
    const-string v2, "/sys/class/sec/led/led_lowpower"

    invoke-static {v2, v1}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    .line 1121
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 1124
    :cond_26
    const/4 v2, 0x0

    .line 1125
    .local v2, "priority":I
    const/4 v3, 0x1

    .line 1126
    .local v3, "operator":I
    const/4 v4, -0x1

    .line 1127
    .local v4, "mode":I
    const/4 v2, 0x0

    :goto_2a
    const/4 v5, 0x6

    if-ge v2, v5, :cond_37

    .line 1128
    sget v5, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    shr-int/2addr v5, v2

    and-int/2addr v5, v0

    if-eqz v5, :cond_34

    .line 1129
    goto :goto_37

    .line 1127
    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1133
    :cond_37
    :goto_37
    const/4 v5, 0x0

    .line 1135
    .local v5, "ledMode":I
    sget v6, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-nez v6, :cond_41

    .line 1136
    iget v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1137
    .local v0, "svcLedId":I
    const/4 v5, 0x0

    move v11, v5

    goto :goto_72

    .line 1139
    .end local v0    # "svcLedId":I
    :cond_41
    if-eqz v2, :cond_6e

    if-eq v2, v0, :cond_69

    const/4 v0, 0x2

    if-eq v2, v0, :cond_64

    const/4 v0, 0x3

    if-eq v2, v0, :cond_5f

    const/4 v0, 0x4

    if-eq v2, v0, :cond_5a

    const/4 v0, 0x5

    if-eq v2, v0, :cond_55

    .line 1165
    const/4 v0, 0x5

    .line 1166
    .restart local v0    # "svcLedId":I
    const/4 v5, 0x0

    move v11, v5

    goto :goto_72

    .line 1161
    .end local v0    # "svcLedId":I
    :cond_55
    const/4 v0, 0x3

    .line 1162
    .restart local v0    # "svcLedId":I
    const/16 v5, 0xe

    .line 1163
    move v11, v5

    goto :goto_72

    .line 1157
    .end local v0    # "svcLedId":I
    :cond_5a
    const/4 v0, 0x3

    .line 1158
    .restart local v0    # "svcLedId":I
    const/16 v5, 0xd

    .line 1159
    move v11, v5

    goto :goto_72

    .line 1153
    .end local v0    # "svcLedId":I
    :cond_5f
    const/4 v0, 0x3

    .line 1154
    .restart local v0    # "svcLedId":I
    const/16 v5, 0xa

    .line 1155
    move v11, v5

    goto :goto_72

    .line 1149
    .end local v0    # "svcLedId":I
    :cond_64
    const/4 v0, 0x4

    .line 1150
    .restart local v0    # "svcLedId":I
    sget v5, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1151
    move v11, v5

    goto :goto_72

    .line 1145
    .end local v0    # "svcLedId":I
    :cond_69
    const/4 v0, 0x4

    .line 1146
    .restart local v0    # "svcLedId":I
    const/16 v5, 0xc

    .line 1147
    move v11, v5

    goto :goto_72

    .line 1141
    .end local v0    # "svcLedId":I
    :cond_6e
    const/4 v0, 0x3

    .line 1142
    .restart local v0    # "svcLedId":I
    const/16 v5, 0xb

    .line 1143
    move v11, v5

    .line 1171
    .end local v5    # "ledMode":I
    .local v11, "ledMode":I
    :goto_72
    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mLightsByType:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v5, v5, v0

    sget v6, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    sget v8, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    sget v9, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    const/4 v10, 0x0

    move v7, v11

    # invokes: Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/lights/LightsService$LightImpl;->access$3700(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V

    .line 1173
    iget v5, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    const-string v6, "LightsService"

    if-eq v5, v0, :cond_b3

    .line 1174
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SvcLED] setSvcLedLightLocked : priority changed! SvcLED("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    invoke-virtual {p0, v7}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") OUT; ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1175
    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") IN"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1174
    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d0

    .line 1177
    :cond_b3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[SvcLED] setSvcLedLightLocked : Current SvcLED("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/server/lights/LightsService;->translateID(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") maintains its priority right"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    :goto_d0
    iput v0, p0, Lcom/android/server/lights/LightsService;->mLastSvcLedId:I

    .line 1181
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->releaseWakeLockForLED()V

    .line 1182
    return-void
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .registers 16
    .param p1, "lightType"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "set"    # Z

    .line 1280
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    .line 1282
    const/4 v1, 0x3

    const-string v2, "LightsService"

    if-eq p1, v1, :cond_3f

    const/4 v1, 0x4

    if-eq p1, v1, :cond_25

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SvcLED] setSvcLedStateLocked : Not Support, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 1288
    :cond_25
    if-eqz p6, :cond_3a

    .line 1289
    const/16 v1, 0xc

    if-ne p3, v1, :cond_30

    .line 1290
    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    goto :goto_4c

    .line 1292
    :cond_30
    const/4 v4, 0x4

    move-object v3, p0

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->writeSvcLedData(IIIII)V

    goto :goto_4c

    .line 1295
    :cond_3a
    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1297
    goto :goto_4c

    .line 1284
    :cond_3f
    and-int/lit8 v0, v0, -0x3a

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1285
    if-eqz p6, :cond_4c

    invoke-virtual {p0, p3}, Lcom/android/server/lights/LightsService;->convertToBitMask(I)I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1302
    :cond_4c
    :goto_4c
    sget v0, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_55

    .line 1303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z

    .line 1306
    :cond_55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SvcLED] setSvcLedStateLocked : SvcLEDState: 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/lights/LightsService;->mPrevSvcLedState:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " -> 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1307
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | SvcLED("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-virtual {p0, p1}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p6, :cond_8c

    const-string v1, "On"

    goto :goto_8e

    :cond_8c
    const-string v1, "Off"

    :goto_8e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1306
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    return-void
.end method


# virtual methods
.method public convertToBitMask(I)I
    .registers 3
    .param p1, "mode"    # I

    .line 1411
    packed-switch p1, :pswitch_data_12

    .line 1421
    :pswitch_3
    const/16 v0, -0x3a

    return v0

    .line 1415
    :pswitch_6
    const/16 v0, 0x20

    return v0

    .line 1417
    :pswitch_9
    const/16 v0, 0x10

    return v0

    .line 1419
    :pswitch_c
    const/4 v0, 0x1

    return v0

    .line 1413
    :pswitch_e
    const/16 v0, 0x8

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0xa
        :pswitch_e
        :pswitch_c
        :pswitch_3
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"    # I

    .line 876
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_7

    .line 877
    invoke-virtual {p0}, Lcom/android/server/lights/LightsService;->systemReady()V

    .line 880
    :cond_7
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 869
    const-class v0, Lcom/android/server/lights/LightsManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mService:Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 870
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mManagerService:Lcom/android/server/lights/LightsService$LightsManagerBinderService;

    const-string/jumbo v1, "lights"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/lights/LightsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 871
    return-void
.end method

.method public systemReady()V
    .registers 8

    .line 963
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] systemReady"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/lights/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 965
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 966
    .local v1, "updateSvcLEDIntent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 968
    new-instance v4, Landroid/hardware/SystemSensorManager;

    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 969
    iget-boolean v5, p0, Lcom/android/server/lights/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v5, :cond_3e

    .line 970
    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 974
    :cond_3e
    new-instance v4, Lcom/samsung/android/cover/CoverManager;

    iget-object v5, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 975
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initCoverState()V

    .line 976
    iget-object v4, p0, Lcom/android/server/lights/LightsService;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v4, :cond_54

    .line 977
    iget-object v0, p0, Lcom/android/server/lights/LightsService;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v4, v0}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    goto :goto_5a

    .line 979
    :cond_54
    const-string/jumbo v4, "initLightsService() : mCoverManager is null!!!!"

    invoke-static {v0, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    :goto_5a
    invoke-direct {p0}, Lcom/android/server/lights/LightsService;->initializeWakeLockPath()V

    .line 986
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 987
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 989
    iget-object v2, p0, Lcom/android/server/lights/LightsService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/lights/LightsService$SvcLEDReceiver;

    invoke-direct {v4, p0, v3}, Lcom/android/server/lights/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/lights/LightsService;Lcom/android/server/lights/LightsService$1;)V

    invoke-virtual {v2, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 990
    return-void
.end method

.method public translateID(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 1358
    packed-switch p1, :pswitch_data_26

    .line 1382
    :pswitch_3
    const-string/jumbo v0, "translateID error"

    return-object v0

    .line 1380
    :pswitch_7
    const-string v0, "COUNT"

    return-object v0

    .line 1377
    :pswitch_a
    const-string v0, "SUB_BACKLIGHT"

    return-object v0

    .line 1374
    :pswitch_d
    const-string v0, "WIFI"

    return-object v0

    .line 1372
    :pswitch_10
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 1370
    :pswitch_13
    const-string v0, "ATTENTION"

    return-object v0

    .line 1368
    :pswitch_16
    const-string v0, "NOTIFICATIONS"

    return-object v0

    .line 1366
    :pswitch_19
    const-string v0, "BATTERY"

    return-object v0

    .line 1364
    :pswitch_1c
    const-string v0, "BUTTON"

    return-object v0

    .line 1362
    :pswitch_1f
    const-string v0, "KEYBOARD"

    return-object v0

    .line 1360
    :pswitch_22
    const-string v0, "BACKLIGHT"

    return-object v0

    nop

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_22
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_3
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method public translateLightType(I)Ljava/lang/String;
    .registers 3
    .param p1, "lightType"    # I

    .line 1313
    packed-switch p1, :pswitch_data_22

    .line 1353
    :pswitch_3
    const-string/jumbo v0, "translateLightType error"

    return-object v0

    .line 1350
    :pswitch_7
    const-string v0, "SUB_BACKLIGHT"

    return-object v0

    .line 1348
    :pswitch_a
    const-string v0, "WIFI"

    return-object v0

    .line 1346
    :pswitch_d
    const-string v0, "BLUETOOTH"

    return-object v0

    .line 1344
    :pswitch_10
    const-string v0, "ATTENTION"

    return-object v0

    .line 1342
    :pswitch_13
    const-string v0, "NOTIFICATIONS"

    return-object v0

    .line 1340
    :pswitch_16
    const-string v0, "BATTERY"

    return-object v0

    .line 1338
    :pswitch_19
    const-string v0, "BUTTON"

    return-object v0

    .line 1336
    :pswitch_1c
    const-string v0, "KEYBOARD"

    return-object v0

    .line 1334
    :pswitch_1f
    const-string v0, "BACKLIGHT"

    return-object v0

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_13
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public translateMode(I)Ljava/lang/String;
    .registers 3
    .param p1, "mode"    # I

    .line 1388
    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_21

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1e

    packed-switch p1, :pswitch_data_28

    .line 1406
    const-string/jumbo v0, "translateMode error"

    return-object v0

    .line 1404
    :pswitch_f
    const-string v0, "LIGHT_SEC_FLASH_FULLY_CHARGED"

    return-object v0

    .line 1402
    :pswitch_12
    const-string v0, "LIGHT_SEC_FLASH_LOW_BATTERY"

    return-object v0

    .line 1400
    :pswitch_15
    const-string v0, "LIGHT_SEC_FLASH_MISSED_NOTIFICATION"

    return-object v0

    .line 1398
    :pswitch_18
    const-string v0, "LIGHT_SEC_FLASH_CHARGING_ERROR"

    return-object v0

    .line 1396
    :pswitch_1b
    const-string v0, "LIGHT_SEC_FLASH_CHARGING"

    return-object v0

    .line 1394
    :cond_1e
    const-string v0, "LIGHT_FLASH_HARDWARE"

    return-object v0

    .line 1392
    :cond_21
    const-string v0, "LIGHT_FLASH_TIMED"

    return-object v0

    .line 1390
    :cond_24
    const-string v0, "LIGHT_FLASH_NONE"

    return-object v0

    nop

    :pswitch_data_28
    .packed-switch 0xa
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
    .end packed-switch
.end method

.method public writeSvcLedData(IIIII)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I

    .line 1426
    sget v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    or-int/2addr v0, p1

    sput v0, Lcom/android/server/lights/LightsService;->mSvcLedState:I

    .line 1427
    sput p2, Lcom/android/server/lights/LightsService;->mSvcLedColor:I

    .line 1428
    sput p3, Lcom/android/server/lights/LightsService;->mSvcLedMode:I

    .line 1429
    sput p4, Lcom/android/server/lights/LightsService;->mSvcLedOnMS:I

    .line 1430
    sput p5, Lcom/android/server/lights/LightsService;->mSvcLedOffMS:I

    .line 1431
    return-void
.end method
