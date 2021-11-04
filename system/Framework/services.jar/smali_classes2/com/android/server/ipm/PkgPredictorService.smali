.class public Lcom/android/server/ipm/PkgPredictorService;
.super Lcom/samsung/android/ipm/IPkgPredictor$Stub;
.source "PkgPredictorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;,
        Lcom/android/server/ipm/PkgPredictorService$AUFHistory;,
        Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;
    }
.end annotation


# static fields
.field public static final ACTION_PRELOAD_NAP_SWITCHER:Ljava/lang/String; = "com.samsung.DISABLE_NAP"

.field public static final AUF_PERIODIC_JOB_ID:I = 0x264f

.field private static final CRITICAL:I = 0x4

.field public static final DAY_MILLIS:J = 0x5265c00L

.field public static DEBUG:Z = false

.field public static final HALF_YEAR_MILLIS:J = 0x39ef8b000L

.field private static final HEAVY:I = 0x3

.field private static KPM_LEVEL:I = 0x0

.field private static final LIGHT:I = 0x1

.field private static final MAX_AUF_APPLISTS:I = 0x1e

.field private static NAP_ENABLE:Z = false

.field private static NAP_SWITCH:Z = false

.field private static final NORMAL:I = 0x2

.field public static final PRELOAD_TRIGGER_DELAY_MILLIS:I = 0x3c

.field public static final PRELOAD_TRIGGER_HOUR:I = 0x2

.field public static final SCHEDULE_AUF_DATE:Ljava/text/SimpleDateFormat;

.field private static final SYSTEM_PROPERTY_BUB_ONOFF:Ljava/lang/String; = "persist.sys.bub_onoff"

.field private static final SYSTEM_PROPERTY_CHIMERA_ONOFF:Ljava/lang/String; = "persist.config.chimera.enable"

.field private static final SYSTEM_PROPERTY_NAP_ONOFF:Ljava/lang/String; = "persist.sys.nap_onoff"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService"

.field public static TOTAL_MEM_SIZE_GB:I = 0x0

.field public static TOTAL_MEM_SIZE_MB:J = 0x0L

.field public static TRAINNING_LIMIT_AMOUNT:I = 0x0

.field public static final TWO_YEAR_MILLIS:J = 0xeaf625800L

.field private static USE_IOPRELOAD:Z = false

.field public static final appPredictHour:I = 0x3

.field public static candidateNum:I = 0x0

.field static exceptionPks:Landroid/util/ArraySet; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final intervalHour:J = 0x1L

.field private static isScreenOff:Z

.field private static listOfAUFHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgPredictorService$AUFHistory;",
            ">;"
        }
    .end annotation
.end field

.field private static mBootupBoosterConfig:I

.field public static mBootupBoosterNum:I

.field public static mFirstTriggeredAfterBooting:Z

.field private static mIsFactoryBinary:Z

.field public static pps:Lcom/android/server/ipm/PkgPredictorService;

.field public static selectAppNum:I


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mAppUsageForecastConfig:Z

.field private mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

.field private mAufPredictor:Lcom/android/server/ipm/AufPredictor;

.field private mBooster:Lcom/android/server/ipm/BootUpBooster;

.field private final mBoosterAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mBtChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mBtState:I

.field private mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;

.field private mClearDBReceiver:Landroid/content/BroadcastReceiver;

.field private mCollector:Lcom/android/server/ipm/Collector;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/server/ipm/NapPreloadController;

.field private mCurrentRecord:Lcom/android/server/ipm/Record;

.field public mCurrentResolution:Ljava/lang/String;

.field private mDateChangedReceiver:Landroid/content/BroadcastReceiver;

.field mDexPreloader:Lcom/android/server/ipm/DexPreloader;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKPMChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScanReceiver:Landroid/content/BroadcastReceiver;

.field private mNapSwitchReceiver:Landroid/content/BroadcastReceiver;

.field private final mNapTrainAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mOrientation:I

.field private mOrientationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

.field private mPredictErr:Ljava/lang/String;

.field private mPredictions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictor:Lcom/android/server/ipm/NapPredictor;

.field private mPreviousPkg:Ljava/lang/String;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mScreenChangeObserver:Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;

.field private mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSeedbedController:Lcom/android/server/ipm/SeedbedPreloadController;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiState:I

.field private predictTime:I

.field private wm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 96
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ipm/PkgPredictorService;->pps:Lcom/android/server/ipm/PkgPredictorService;

    .line 98
    const-wide/16 v1, 0x0

    sput-wide v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_MB:J

    .line 99
    const/4 v1, 0x0

    sput v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    .line 101
    const/4 v2, 0x3

    sput v2, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    .line 102
    const/4 v2, 0x1

    sput v2, Lcom/android/server/ipm/PkgPredictorService;->selectAppNum:I

    .line 103
    sput v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    .line 104
    sput v1, Lcom/android/server/ipm/PkgPredictorService;->KPM_LEVEL:I

    .line 105
    sput-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    .line 108
    sput-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    .line 109
    sput v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    .line 129
    sput-object v0, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    .line 131
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->mIsFactoryBinary:Z

    .line 134
    sput-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->mFirstTriggeredAfterBooting:Z

    .line 140
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ipm/PkgPredictorService;->SCHEDULE_AUF_DATE:Ljava/text/SimpleDateFormat;

    .line 141
    const/16 v0, 0xbb8

    sput v0, Lcom/android/server/ipm/PkgPredictorService;->TRAINNING_LIMIT_AMOUNT:I

    .line 164
    sput-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    .line 165
    sput-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z

    .line 177
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    .line 179
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 180
    .local v0, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 181
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    sput-wide v2, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_MB:J

    .line 183
    long-to-double v2, v2

    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr v2, v4

    :try_start_53
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sput v2, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_5a} :catch_5b

    .line 188
    goto :goto_68

    .line 184
    :catch_5b
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    sput v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    .line 187
    const-string v3, "PkgPredictorService"

    const-string v4, "Set TOTAL_MEM_SIZE_GB error, set it as 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_68
    sput-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->mFirstTriggeredAfterBooting:Z

    .line 191
    const-string/jumbo v1, "persist.sys.nap_onoff"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    .line 193
    invoke-static {}, Lcom/android/server/ipm/PkgPredictorService;->initialExceptionPkgs()V

    .line 194
    .end local v0    # "memInfo":Lcom/android/internal/util/MemInfoReader;
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 23
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 672
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/ipm/IPkgPredictor$Stub;-><init>()V

    .line 122
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    .line 123
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    .line 124
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;

    .line 128
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/ipm/PkgPredictorService;->mAppUsageForecastConfig:Z

    .line 136
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mSeedbedController:Lcom/android/server/ipm/SeedbedPreloadController;

    .line 139
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 145
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;

    .line 149
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->wm:Landroid/view/WindowManager;

    .line 150
    const-string v3, "FHD_HD"

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    .line 151
    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mScreenChangeObserver:Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;

    .line 224
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$1;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$1;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$2;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$2;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mMediaScanReceiver:Landroid/content/BroadcastReceiver;

    .line 282
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$3;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$3;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 312
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$4;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$4;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 345
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$5;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$5;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mKPMChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 372
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$6;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$6;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mClearDBReceiver:Landroid/content/BroadcastReceiver;

    .line 400
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$7;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$7;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mNapSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 426
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$8;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$8;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mBoosterAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 443
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$9;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$9;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mNapTrainAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 456
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$10;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$10;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mBtChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 471
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$11;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$11;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 486
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$12;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$12;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mOrientationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1681
    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$15;

    invoke-direct {v3, v0}, Lcom/android/server/ipm/PkgPredictorService$15;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mUidObserver:Landroid/app/IUidObserver;

    .line 673
    const-string/jumbo v3, "ro.boot.debug_level"

    const-string v4, "Unknown"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "state":Ljava/lang/String;
    sput-object v0, Lcom/android/server/ipm/PkgPredictorService;->pps:Lcom/android/server/ipm/PkgPredictorService;

    .line 677
    const-string v4, "0x494d"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_94

    const-string v4, "0x4948"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_96

    .line 678
    :cond_94
    sput-boolean v5, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    .line 685
    :cond_96
    sget v4, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    const/16 v6, 0x8

    const-string v7, "PkgPredictorService"

    if-le v4, v6, :cond_a6

    .line 686
    const/16 v4, 0xf

    sput v4, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    .line 687
    const/4 v4, 0x5

    sput v4, Lcom/android/server/ipm/PkgPredictorService;->selectAppNum:I

    goto :goto_be

    .line 688
    :cond_a6
    const/4 v6, 0x6

    const/4 v8, 0x3

    if-le v4, v6, :cond_b1

    .line 689
    const/16 v4, 0x9

    sput v4, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    .line 690
    sput v8, Lcom/android/server/ipm/PkgPredictorService;->selectAppNum:I

    goto :goto_be

    .line 691
    :cond_b1
    const/4 v6, 0x4

    if-lt v4, v6, :cond_b9

    .line 692
    sput v8, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    .line 693
    sput v5, Lcom/android/server/ipm/PkgPredictorService;->selectAppNum:I

    goto :goto_be

    .line 695
    :cond_b9
    const-string v4, "Error: mem size < 4G!"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    :goto_be
    const-string v4, "1"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sput v6, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    .line 699
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/android/server/ipm/PkgPredictorService;->setKPMLevel(I)V

    .line 700
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ipm/PkgPredictorService;->getBuBEnableProperties()V

    .line 703
    iput-boolean v5, v0, Lcom/android/server/ipm/PkgPredictorService;->mAppUsageForecastConfig:Z

    .line 706
    move-object/from16 v5, p1

    iput-object v5, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    .line 707
    move-object/from16 v8, p2

    iput-object v8, v0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 708
    invoke-static/range {p1 .. p1}, Lcom/android/server/ipm/DBManager;->init(Landroid/content/Context;)V

    .line 711
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ipm/PkgPredictorService;->getCurrentResolution()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    .line 713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ipm/PkgPredictorService;->calcTopNByKPMLevel()I

    .line 715
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "totalMemMb = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v10, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_MB:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " totalMemGb = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "candidateNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/ipm/PkgPredictorService;->candidateNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " selectAppNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/ipm/PkgPredictorService;->selectAppNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mBootupBoosterNum = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mBootupBoosterConfig = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v10, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mAppUsageForecastConfig = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v10, v0, Lcom/android/server/ipm/PkgPredictorService;->mAppUsageForecastConfig:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isAppUsageForecastEnabled() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    new-instance v7, Landroid/os/HandlerThread;

    const-string v9, "ObserverHandler"

    invoke-direct {v7, v9}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 721
    invoke-virtual {v7}, Landroid/os/HandlerThread;->start()V

    .line 722
    new-instance v7, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v9}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v7, v0, v9}, Lcom/android/server/ipm/PkgPredictorService$ObserverHandler;-><init>(Lcom/android/server/ipm/PkgPredictorService;Landroid/os/Looper;)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    .line 724
    iget-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mPM:Landroid/content/pm/PackageManager;

    .line 726
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v7

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7, v9, v10}, Lcom/android/server/ipm/MultiUserPkgManager;->init(Landroid/content/Context;Landroid/os/HandlerThread;)V

    .line 728
    iget-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/ipm/NapBigDataService;->schedule(Landroid/content/Context;)V

    .line 730
    new-instance v7, Lcom/android/server/ipm/Collector;

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/android/server/ipm/Collector;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    .line 731
    new-instance v7, Lcom/android/server/ipm/NapPredictor;

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-direct {v7, v9}, Lcom/android/server/ipm/NapPredictor;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    .line 732
    new-instance v7, Lcom/android/server/ipm/NapPreloadController;

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/ipm/NapPreloadController;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    .line 733
    new-instance v7, Lcom/android/server/ipm/BootUpBooster;

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    sget v10, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-direct {v7, v9, v10}, Lcom/android/server/ipm/BootUpBooster;-><init>(Landroid/content/Context;I)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;

    .line 734
    new-instance v7, Lcom/android/server/ipm/psitracker/PSITrackerService;

    iget-object v9, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/ipm/psitracker/PSITrackerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V

    iput-object v7, v0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    .line 736
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 737
    .local v7, "pkgFilter":Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 738
    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 739
    const-string/jumbo v9, "package"

    invoke-virtual {v7, v9}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 741
    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    .line 742
    .local v9, "screenFilter":Landroid/content/IntentFilter;
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 743
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v10, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v10, "android.intent.action.REBOOT"

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 746
    const/16 v10, 0x3e8

    invoke-virtual {v9, v10}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 748
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    .line 749
    .local v10, "mediaScanFilter":Landroid/content/IntentFilter;
    const-string v11, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 750
    const-string v11, "file"

    invoke-virtual {v10, v11}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 752
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 753
    .local v11, "dateChangedFilter":Landroid/content/IntentFilter;
    const-string v12, "android.intent.action.TIME_SET"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v12, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    const-string v12, "com.android.launcher3.quickstep.closeall"

    invoke-virtual {v11, v12}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 758
    .local v12, "KPMChangedFilter":Landroid/content/IntentFilter;
    const-string v13, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v12, v13}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 760
    new-instance v13, Landroid/content/IntentFilter;

    invoke-direct {v13}, Landroid/content/IntentFilter;-><init>()V

    .line 761
    .local v13, "ClearDBFilter":Landroid/content/IntentFilter;
    const-string v14, "com.samsung.CLEAR_AUF_DB"

    invoke-virtual {v13, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    const-string v14, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v13, v14}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 764
    new-instance v14, Landroid/content/IntentFilter;

    invoke-direct {v14}, Landroid/content/IntentFilter;-><init>()V

    .line 765
    .local v14, "napFilter":Landroid/content/IntentFilter;
    const-string v15, "com.samsung.DISABLE_NAP"

    invoke-virtual {v14, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 769
    new-instance v15, Lcom/android/server/ipm/AufPredictor;

    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-direct {v15, v1}, Lcom/android/server/ipm/AufPredictor;-><init>(Landroid/content/Context;)V

    iput-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mAufPredictor:Lcom/android/server/ipm/AufPredictor;

    .line 770
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    invoke-static {v2, v1}, Lcom/android/server/ipm/AufPredictor;->setTopN(II)V

    .line 771
    new-instance v1, Lcom/android/server/ipm/AufHitCalculation;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v15}, Lcom/android/server/ipm/AufHitCalculation;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    .line 772
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    .line 773
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z

    move-result v1

    if-nez v1, :cond_266

    .line 774
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ipm/AufPeriodic;->schedule(Landroid/content/Context;)V

    goto :goto_27b

    .line 776
    :cond_266
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    const-class v15, Landroid/app/job/JobScheduler;

    invoke-virtual {v1, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    .line 777
    .local v1, "jobScheduler":Landroid/app/job/JobScheduler;
    const/16 v15, 0x264f

    invoke-virtual {v1, v15}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object v16

    .line 778
    .local v16, "pending":Landroid/app/job/JobInfo;
    if-eqz v16, :cond_27b

    .line 779
    invoke-virtual {v1, v15}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 784
    .end local v1    # "jobScheduler":Landroid/app/job/JobScheduler;
    .end local v16    # "pending":Landroid/app/job/JobInfo;
    :cond_27b
    :goto_27b
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ipm/MultiUserPkgManager;->assembleRegister()V

    .line 785
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mScreenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v15, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 786
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mMediaScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v15, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 787
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mDateChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v15, v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 788
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mKPMChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v15, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 789
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mClearDBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v15, v13}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 790
    iget-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/server/ipm/PkgPredictorService;->mNapSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v15, v14}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 792
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 793
    .local v1, "btFilter":Landroid/content/IntentFilter;
    const-string v15, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v15}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 794
    new-instance v15, Landroid/content/IntentFilter;

    invoke-direct {v15}, Landroid/content/IntentFilter;-><init>()V

    .line 795
    .local v15, "wifiFilter":Landroid/content/IntentFilter;
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v15, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 796
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 797
    .local v2, "orientationFilter":Landroid/content/IntentFilter;
    const-string v6, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 799
    iget-object v6, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v3

    .end local v3    # "state":Ljava/lang/String;
    .local v17, "state":Ljava/lang/String;
    iget-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mBtChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 800
    iget-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/ipm/PkgPredictorService;->mWifiChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 801
    iget-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/ipm/PkgPredictorService;->mOrientationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v6, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 803
    iget-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/ipm/PkgPredictorService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v3, v6}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 804
    iget-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/ipm/PkgPredictorService;->mUidObserver:Landroid/app/IUidObserver;

    move-object/from16 v18, v1

    .end local v1    # "btFilter":Landroid/content/IntentFilter;
    .local v18, "btFilter":Landroid/content/IntentFilter;
    const/4 v1, -0x1

    move-object/from16 v19, v2

    const/4 v2, 0x2

    const/4 v5, 0x0

    .end local v2    # "orientationFilter":Landroid/content/IntentFilter;
    .local v19, "orientationFilter":Landroid/content/IntentFilter;
    invoke-virtual {v3, v6, v2, v1, v5}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 807
    new-instance v1, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;

    invoke-direct {v1, v0}, Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mScreenChangeObserver:Lcom/android/server/ipm/PkgPredictorService$ScreenChangeObserver;

    .line 810
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z

    .line 819
    invoke-virtual {v4, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_313

    .line 820
    new-instance v1, Lcom/android/server/ipm/DexPreloader;

    iget-object v2, v0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/ipm/DexPreloader;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V

    iput-object v1, v0, Lcom/android/server/ipm/PkgPredictorService;->mDexPreloader:Lcom/android/server/ipm/DexPreloader;

    .line 826
    :cond_313
    const-string/jumbo v1, "persist.config.chimera.enable"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 827
    .local v2, "sysPropChimeraOnOff":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_328

    .line 828
    const-string/jumbo v2, "true"

    .line 829
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    :cond_328
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/Collector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPredictor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->scheduleNapTrainningTrigger()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/ipm/PkgPredictorService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # I

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->clearDB()V

    return-void
.end method

.method static synthetic access$1300()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z

    return v0
.end method

.method static synthetic access$1302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 85
    sput-boolean p0, Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z

    return p0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    return v0
.end method

.method static synthetic access$1402(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 85
    sput-boolean p0, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/server/ipm/PkgPredictorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/server/ipm/PkgPredictorService;->mBtState:I

    return p1
.end method

.method static synthetic access$1602(Lcom/android/server/ipm/PkgPredictorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/server/ipm/PkgPredictorService;->mWifiState:I

    return p1
.end method

.method static synthetic access$1702(Lcom/android/server/ipm/PkgPredictorService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/server/ipm/PkgPredictorService;->mOrientation:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/ipm/PkgPredictorService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufPredictor;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mAufPredictor:Lcom/android/server/ipm/AufPredictor;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/AufHitCalculation;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->deleteHistoryRecord()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/ipm/PkgPredictorService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/PkgPredictorService;->processForegroundChanged(II)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/ipm/PkgPredictorService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/PkgPredictorService;->processProcessDie(II)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/BootUpBooster;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mBooster:Lcom/android/server/ipm/BootUpBooster;

    return-object v0
.end method

.method static synthetic access$2400()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    return v0
.end method

.method static synthetic access$2500()Ljava/util/ArrayList;
    .registers 1

    .line 85
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/server/ipm/PkgPredictorService;Lcom/android/server/ipm/chimera/ChimeraManager;)Lcom/android/server/ipm/chimera/ChimeraManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # Lcom/android/server/ipm/chimera/ChimeraManager;

    .line 85
    iput-object p1, p0, Lcom/android/server/ipm/PkgPredictorService;->mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/HandlerThread;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .line 85
    sput-boolean p0, Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/ipm/PkgPredictorService;)Lcom/android/server/ipm/NapPreloadController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ipm/PkgPredictorService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600()Z
    .registers 1

    .line 85
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->mIsFactoryBinary:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/ipm/PkgPredictorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/ipm/PkgPredictorService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 85
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ipm/PkgPredictorService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/PkgPredictorService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/server/ipm/PkgPredictorService;->scheduleBoosterPeriodPreload(Ljava/lang/String;)V

    return-void
.end method

.method private clearDB()V
    .registers 3

    .line 1091
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/PkgPredictorService$1DeleteRunnableForDump;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1092
    return-void
.end method

.method private deleteHistoryRecord()V
    .registers 6

    .line 598
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v0

    .line 599
    .local v0, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 600
    const-string v1, "PkgPredictorService"

    const-string v2, "clearDB failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    return-void

    .line 604
    :cond_12
    sget-object v1, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 605
    :try_start_15
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->beginTransaction()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_67

    .line 607
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, "sql":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/android/server/ipm/DBManager;->execSQL(Ljava/lang/String;)V

    .line 609
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/ipm/DBManager;->mInfoTable:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 610
    invoke-virtual {v0, v2}, Lcom/android/server/ipm/DBManager;->execSQL(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->setTransactionSuccessful()V

    .line 612
    const-string v3, "PkgPredictorService"

    const-string v4, "clear table successfully!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_4f} :catch_52
    .catchall {:try_start_18 .. :try_end_4f} :catchall_50

    goto :goto_5c

    .line 616
    .end local v2    # "sql":Ljava/lang/String;
    :catchall_50
    move-exception v2

    goto :goto_62

    .line 613
    :catch_52
    move-exception v2

    .line 614
    .local v2, "e":Ljava/lang/Exception;
    :try_start_53
    const-string v3, "PkgPredictorService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5c
    .catchall {:try_start_53 .. :try_end_5c} :catchall_50

    .line 616
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_5c
    :try_start_5c
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 617
    nop

    .line 618
    monitor-exit v1

    .line 619
    return-void

    .line 616
    :goto_62
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 617
    nop

    .end local v0    # "db":Lcom/android/server/ipm/DBManager;
    .end local p0    # "this":Lcom/android/server/ipm/PkgPredictorService;
    throw v2

    .line 618
    .restart local v0    # "db":Lcom/android/server/ipm/DBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/PkgPredictorService;
    :catchall_67
    move-exception v2

    monitor-exit v1
    :try_end_69
    .catchall {:try_start_5c .. :try_end_69} :catchall_67

    throw v2
.end method

.method private disableBUB(I)V
    .registers 6
    .param p1, "type"    # I

    .line 1038
    const-string v0, "PkgPredictorService"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1c

    .line 1039
    sput v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    .line 1040
    iput-boolean v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mAppUsageForecastConfig:Z

    .line 1041
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1042
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1043
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1044
    const-string v2, "Set BuB enable"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_35

    .line 1046
    :cond_1c
    const/4 v2, 0x0

    sput v2, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    .line 1047
    iput-boolean v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mAppUsageForecastConfig:Z

    .line 1048
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1049
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x7

    iput v3, v2, Landroid/os/Message;->what:I

    .line 1050
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 1051
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1052
    const-string v1, "Set BuB disable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1054
    .end local v2    # "msg":Landroid/os/Message;
    :goto_35
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->setBuBEnableProperties()V

    .line 1055
    return-void
.end method

.method private dumpAuf(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1058
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    const-string v1, "PkgPredictorService"

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1059
    return-void

    .line 1062
    :cond_b
    const-string/jumbo v0, "listOfAUFHistory:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_46

    .line 1064
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1065
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1f
    :try_start_1f
    sget-object v2, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 1066
    sget-object v2, Lcom/android/server/ipm/PkgPredictorService;->listOfAUFHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;

    invoke-virtual {v2}, Lcom/android/server/ipm/PkgPredictorService$AUFHistory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1065
    add-int/lit8 v1, v1, 0x1

    goto :goto_1f

    .line 1068
    .end local v1    # "i":I
    :cond_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_43

    .line 1069
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1070
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_46

    .line 1068
    :catchall_43
    move-exception v1

    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw v1

    .line 1072
    :cond_46
    :goto_46
    return-void
.end method

.method private dumpDB()V
    .registers 13

    .line 622
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/PkgPredictions.db"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 623
    .local v0, "f":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/PkgPredictions.db"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v1, "o":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_98

    .line 625
    const/4 v2, 0x0

    .line 626
    .local v2, "outF":Ljava/nio/channels/FileChannel;
    const/4 v3, 0x0

    .line 627
    .local v3, "inF":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 629
    .local v4, "fc":Ljava/nio/channels/FileChannel;
    :try_start_17
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v2, v5

    .line 630
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v5

    .line 631
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object v4, v5

    .line 632
    const-wide/16 v7, 0x0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v9

    move-object v6, v4

    move-object v11, v2

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 633
    const-string v5, "PkgPredictorService"

    const-string v6, "dump db successfully!"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_3e} :catch_63
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_3e} :catch_4f
    .catchall {:try_start_17 .. :try_end_3e} :catchall_4d

    .line 640
    if-eqz v4, :cond_43

    .line 641
    :try_start_40
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 643
    :cond_43
    nop

    .line 644
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 646
    if-eqz v2, :cond_7e

    .line 647
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_4c} :catch_6d

    goto :goto_7e

    .line 639
    :catchall_4d
    move-exception v5

    goto :goto_7f

    .line 636
    :catch_4f
    move-exception v5

    .line 637
    .local v5, "e":Ljava/io/IOException;
    :try_start_50
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    .line 640
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_58

    .line 641
    :try_start_55
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    .line 643
    :cond_58
    if-eqz v3, :cond_5d

    .line 644
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 646
    :cond_5d
    if-eqz v2, :cond_7e

    .line 647
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_62} :catch_6d

    goto :goto_7e

    .line 634
    :catch_63
    move-exception v5

    .line 635
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_64
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_4d

    .line 640
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    if-eqz v4, :cond_6f

    .line 641
    :try_start_69
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_6f

    .line 649
    :catch_6d
    move-exception v5

    goto :goto_7a

    .line 643
    :cond_6f
    :goto_6f
    if-eqz v3, :cond_74

    .line 644
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 646
    :cond_74
    if-eqz v2, :cond_7e

    .line 647
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_79} :catch_6d

    goto :goto_7e

    .line 650
    .local v5, "e":Ljava/io/IOException;
    :goto_7a
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_98

    .line 651
    :cond_7e
    :goto_7e
    goto :goto_98

    .line 640
    :goto_7f
    if-eqz v4, :cond_87

    .line 641
    :try_start_81
    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_87

    .line 649
    :catch_85
    move-exception v6

    goto :goto_92

    .line 643
    :cond_87
    :goto_87
    if-eqz v3, :cond_8c

    .line 644
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 646
    :cond_8c
    if-eqz v2, :cond_96

    .line 647
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_91} :catch_85

    goto :goto_96

    .line 650
    .local v6, "e":Ljava/io/IOException;
    :goto_92
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_97

    .line 651
    .end local v6    # "e":Ljava/io/IOException;
    :cond_96
    :goto_96
    nop

    .line 652
    :goto_97
    throw v5

    .line 654
    .end local v2    # "outF":Ljava/nio/channels/FileChannel;
    .end local v3    # "inF":Ljava/io/FileInputStream;
    .end local v4    # "fc":Ljava/nio/channels/FileChannel;
    :cond_98
    :goto_98
    return-void
.end method

.method private dumpHelp(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1094
    const-string v0, "---------------------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1095
    const-string v1, "PkgPredictorService dump options:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    const-string v1, "    -i: dump all installed app information"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1097
    const-string v1, "    -c: dump collector information"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1098
    const-string v1, "    -p: dump NapPredictor information"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1099
    const-string v1, "    -t: start a training immediately"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    const-string v1, "    -f: copy DB file"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1101
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method private dumpInstalledApps(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 567
    const-string/jumbo v0, "installed apps info:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/MultiUserPkgManager;->dump(Ljava/io/PrintWriter;)V

    .line 569
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 571
    return-void
.end method

.method private getBuBEnableProperties()V
    .registers 3

    .line 1473
    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    .line 1474
    invoke-virtual {p0}, Lcom/android/server/ipm/PkgPredictorService;->calcTopNByKPMLevel()I

    .line 1475
    return-void
.end method

.method public static getScreenOff()Z
    .registers 1

    .line 1803
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->isScreenOff:Z

    return v0
.end method

.method public static initialExceptionPkgs()V
    .registers 2

    .line 196
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.android.system"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.samsung.android.MtpApplication"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.google.android.MtpApplication"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.google.android.setupwizard"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.android.app.setupwizard"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.android.app.tinym"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.autosettingapk2"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.android.systemperformancemanager"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.samsung.cmhscanner"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.sec.android.easyMover"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 215
    const-string v0, "3"

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    .line 216
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.airbnb.android"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.locnall.KimGiSa"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string/jumbo v1, "skplanet.musicmate"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    const-string v1, "com.amazon.mp3"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_9e
    return-void
.end method

.method private isAppUsageForecastEnabled()Z
    .registers 3

    .line 657
    iget-boolean v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mAppUsageForecastConfig:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 658
    return v1

    .line 660
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method private isBootupBoosterEnabled()Z
    .registers 3

    .line 664
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 665
    return v1

    .line 666
    :cond_6
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 667
    return v1

    .line 669
    :cond_a
    return v1
.end method

.method private isShowIconPackage(Ljava/lang/String;I)Z
    .registers 7
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1154
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_25

    .line 1155
    const/4 v2, 0x1

    return v2

    .line 1157
    :cond_25
    return v2
.end method

.method private processForegroundChanged(II)V
    .registers 25
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1161
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const/4 v0, 0x0

    .line 1162
    .local v0, "foregroundApp":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1163
    .local v4, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;>;"
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1165
    .local v11, "userId":I
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledApps()Ljava/util/HashMap;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "unknown app go to foreground... uid is "

    const-string v12, "PkgPredictorService"

    if-nez v5, :cond_3a

    .line 1166
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void

    .line 1170
    :cond_3a
    invoke-static {}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstanse()Lcom/android/server/ipm/MultiUserPkgManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/ipm/MultiUserPkgManager;->getInstalledApps()Ljava/util/HashMap;

    move-result-object v5

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1171
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v5, :cond_ac

    .line 1172
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 1173
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v13, :cond_aa

    .line 1174
    const/4 v5, 0x0

    .line 1175
    .local v5, "pkgs":[Ljava/lang/String;
    iget-object v7, v1, Lcom/android/server/ipm/PkgPredictorService;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_87

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1176
    .local v8, "r":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v9, v3, :cond_86

    iget v9, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v9, v2, :cond_86

    .line 1177
    iget-object v5, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 1178
    goto :goto_87

    .line 1180
    .end local v8    # "r":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_86
    goto :goto_6f

    .line 1181
    :cond_87
    :goto_87
    if-eqz v5, :cond_aa

    .line 1182
    array-length v7, v5

    move v8, v14

    :goto_8b
    if-ge v8, v7, :cond_aa

    aget-object v9, v5, v8

    .line 1183
    .local v9, "pkg":Ljava/lang/String;
    new-instance v10, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    invoke-direct {v10, v11, v3, v9, v14}, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;-><init>(IILjava/lang/String;Z)V

    .line 1184
    .local v10, "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a7

    .line 1185
    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;

    .line 1186
    move-object v15, v0

    goto :goto_ad

    .line 1182
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v10    # "info":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :cond_a7
    add-int/lit8 v8, v8, 0x1

    goto :goto_8b

    .line 1193
    .end local v5    # "pkgs":[Ljava/lang/String;
    :cond_aa
    move-object v15, v0

    goto :goto_ad

    .line 1171
    :cond_ac
    move-object v15, v0

    .line 1193
    .end local v0    # "foregroundApp":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    .local v15, "foregroundApp":Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;
    :goto_ad
    if-nez v15, :cond_c2

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void

    .line 1198
    :cond_c2
    iget-object v0, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v0, v11}, Lcom/android/server/ipm/PkgPredictorService;->isShowIconPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f3

    .line 1199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "background app without no launcher icon "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " for.uid: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->uid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userId: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    return-void

    .line 1204
    :cond_f3
    const-string v0, "1"

    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 1205
    const-string/jumbo v0, "persist.sys.dex2oat_en"

    const-string/jumbo v5, "true"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114

    .line 1206
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mDexPreloader:Lcom/android/server/ipm/DexPreloader;

    if-eqz v0, :cond_114

    .line 1207
    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v2, v3}, Lcom/android/server/ipm/DexPreloader;->storeDexProfile(Ljava/lang/String;II)V

    .line 1213
    :cond_114
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPreviousPkg:Ljava/lang/String;

    const-string v10, "_&_"

    const-wide/16 v7, 0x40

    if-eqz v0, :cond_275

    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_275

    .line 1214
    const-string v0, "PkgPredictorService- start collecting"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1215
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v0, :cond_145

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " go to foreground!"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_145
    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    iget-object v0, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/ipm/PkgPredictorService;->mBtState:I

    iget v9, v1, Lcom/android/server/ipm/PkgPredictorService;->mWifiState:I

    iget v13, v1, Lcom/android/server/ipm/PkgPredictorService;->mOrientation:I

    move/from16 v17, v6

    move v6, v11

    move-wide/from16 v18, v7

    move-object v7, v0

    move/from16 v8, v17

    move-object/from16 v21, v10

    move v10, v13

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/ipm/Collector;->generateRecord(ILjava/lang/String;III)Lcom/android/server/ipm/Record;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    .line 1220
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v0, :cond_1b8

    .line 1221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "previous pkgs: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v5, v5, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    aget-object v5, v5, v14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v6, v6, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v5, v5, Lcom/android/server/ipm/Record;->previousPkg:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v5, v5, v13

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " running pkg: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", uid: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is system: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->system:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b9

    .line 1220
    :cond_1b8
    const/4 v13, 0x2

    .line 1229
    :goto_1b9
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/android/server/ipm/Record;->launchTime:J

    .line 1231
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictErr:Ljava/lang/String;

    if-eqz v0, :cond_1ca

    .line 1232
    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iput-object v0, v5, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    goto :goto_1df

    .line 1233
    :cond_1ca
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictions:Ljava/util/List;

    if-nez v0, :cond_1d6

    .line 1234
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    const-string/jumbo v5, "the first app after booting.."

    iput-object v5, v0, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    goto :goto_1df

    .line 1236
    :cond_1d6
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v0, v0, Lcom/android/server/ipm/Record;->prediction:Ljava/util/List;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictions:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1237
    :goto_1df
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    .line 1238
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iput v11, v0, Lcom/android/server/ipm/Record;->userId:I

    .line 1239
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v0, v0, Lcom/android/server/ipm/Record;->prediction:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v12, v21

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v6, v6, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_210

    .line 1240
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/ipm/Record;->success:Z

    .line 1241
    :cond_210
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v5, v5, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/NapPreloadController;->isPreloadedPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_221

    .line 1242
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/ipm/Record;->preloaded:Z

    .line 1243
    :cond_221
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget v5, v1, Lcom/android/server/ipm/PkgPredictorService;->predictTime:I

    iput v5, v0, Lcom/android/server/ipm/Record;->predictTime:I

    .line 1245
    :try_start_227
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mPM:Landroid/content/pm/PackageManager;

    iget-object v6, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6, v14}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/ipm/Record;->apkVersion:Ljava/lang/String;
    :try_end_235
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_227 .. :try_end_235} :catch_236

    .line 1248
    goto :goto_23a

    .line 1246
    :catch_236
    move-exception v0

    .line 1247
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 1251
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_23a
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/Collector;->saveRecord(Lcom/android/server/ipm/Record;)V

    .line 1254
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    invoke-virtual {v0}, Lcom/android/server/ipm/Collector;->isRecordsSizeMax()Z

    move-result v0

    if-eqz v0, :cond_258

    .line 1255
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1256
    .local v0, "msg":Landroid/os/Message;
    const/4 v5, 0x4

    iput v5, v0, Landroid/os/Message;->what:I

    .line 1257
    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7d0

    invoke-virtual {v5, v0, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1260
    .end local v0    # "msg":Landroid/os/Message;
    :cond_258
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/NapPredictor;->updateSummary(Lcom/android/server/ipm/Record;)V

    .line 1261
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v5, v5, Lcom/android/server/ipm/Record;->runningPkg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/NapPreloadController;->setCurrent(Ljava/lang/String;)V

    .line 1262
    invoke-static/range {v18 .. v19}, Landroid/os/Trace;->traceEnd(J)V

    .line 1264
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    if-eqz v0, :cond_279

    .line 1266
    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v11}, Lcom/android/server/ipm/AufHitCalculation;->calculateMessage(Ljava/lang/String;I)V

    goto :goto_279

    .line 1213
    :cond_275
    move-wide/from16 v18, v7

    move-object v12, v10

    const/4 v13, 0x2

    .line 1271
    :cond_279
    :goto_279
    sget-object v0, Lcom/android/server/ipm/PkgPredictorService;->exceptionPks:Landroid/util/ArraySet;

    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_332

    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    if-eqz v0, :cond_332

    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z

    if-eqz v0, :cond_332

    .line 1272
    const-string v0, "PkgPredictorService- start predicting"

    move-wide/from16 v9, v18

    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1275
    iget-object v0, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPreviousPkg:Ljava/lang/String;

    .line 1276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 1278
    .local v17, "predictStartTime":J
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    if-nez v0, :cond_2b7

    .line 1279
    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    iget-object v7, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    iget v8, v1, Lcom/android/server/ipm/PkgPredictorService;->mBtState:I

    iget v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mWifiState:I

    iget v6, v1, Lcom/android/server/ipm/PkgPredictorService;->mOrientation:I

    move/from16 v16, v6

    move v6, v11

    move-wide/from16 v19, v9

    move v9, v0

    move/from16 v10, v16

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/ipm/Collector;->generateRecord(ILjava/lang/String;III)Lcom/android/server/ipm/Record;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    goto :goto_2b9

    .line 1278
    :cond_2b7
    move-wide/from16 v19, v9

    .line 1280
    :goto_2b9
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v6, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/ipm/NapPredictor;->predictWithHitRatio(Lcom/android/server/ipm/Record;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictions:Ljava/util/List;

    .line 1281
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v0, v0, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    if-eqz v0, :cond_2d0

    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mCurrentRecord:Lcom/android/server/ipm/Record;

    iget-object v0, v0, Lcom/android/server/ipm/Record;->error:Ljava/lang/String;

    goto :goto_2d1

    :cond_2d0
    const/4 v0, 0x0

    :goto_2d1
    iput-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictErr:Ljava/lang/String;

    .line 1282
    if-nez v0, :cond_2df

    .line 1283
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v5, v5, v17

    long-to-int v0, v5

    iput v0, v1, Lcom/android/server/ipm/PkgPredictorService;->predictTime:I

    goto :goto_2e2

    .line 1285
    :cond_2df
    const/4 v0, -0x1

    iput v0, v1, Lcom/android/server/ipm/PkgPredictorService;->predictTime:I

    .line 1287
    :goto_2e2
    invoke-static/range {v19 .. v20}, Landroid/os/Trace;->traceEnd(J)V

    .line 1288
    iget-object v0, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictions:Ljava/util/List;

    if-nez v0, :cond_2ea

    .line 1289
    return-void

    .line 1290
    :cond_2ea
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1291
    .local v0, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/PkgInfo;>;"
    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mPredictions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2f5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_320

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1292
    .local v6, "pkg":Ljava/lang/String;
    invoke-virtual {v6, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1293
    .local v7, "temp":[Ljava/lang/String;
    if-eqz v7, :cond_31f

    array-length v8, v7

    if-ne v8, v13, :cond_31f

    .line 1294
    new-instance v8, Lcom/android/server/ipm/PkgInfo;

    const/4 v9, 0x1

    aget-object v10, v7, v9

    aget-object v16, v7, v14

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v8, v10, v9}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1295
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "temp":[Ljava/lang/String;
    :cond_31f
    goto :goto_2f5

    .line 1299
    :cond_320
    iget-object v5, v15, Lcom/android/server/ipm/MultiUserPkgManager$APPInfo;->packageName:Ljava/lang/String;

    const-string v6, "com.sec.android.app.camera"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_332

    .line 1300
    iget-object v5, v1, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    const-string/jumbo v6, "ml"

    invoke-virtual {v5, v0, v6}, Lcom/android/server/ipm/NapPreloadController;->preloadWithUid(Ljava/util/List;Ljava/lang/String;)V

    .line 1303
    .end local v0    # "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/PkgInfo;>;"
    .end local v17    # "predictStartTime":J
    :cond_332
    return-void
.end method

.method private processProcessDie(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 1307
    return-void
.end method

.method private scheduleBoosterPeriodPreload(Ljava/lang/String;)V
    .registers 13
    .param p1, "reason"    # Ljava/lang/String;

    .line 531
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 532
    .local v0, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 535
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 542
    .local v1, "nowTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x36ee80

    add-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 543
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Schedule next trigger time interval: 1 /now Time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PkgPredictorService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Schedule next trigger time: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " reason = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v3, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 562
    .local v3, "am":Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService;->mBoosterAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 563
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    iget-object v9, p0, Lcom/android/server/ipm/PkgPredictorService;->mBoosterAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    iget-object v10, p0, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    const-string v8, "Bootup_Booster"

    move-object v4, v3

    invoke-virtual/range {v4 .. v10}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 564
    return-void
.end method

.method private scheduleNapTrainningTrigger()V
    .registers 12

    .line 516
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 517
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0xb

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 518
    const/16 v1, 0xc

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 519
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 520
    const/16 v1, 0xe

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 521
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 522
    .local v1, "am":Landroid/app/AlarmManager;
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mNapTrainAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 523
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 524
    .local v9, "triggerTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v2, v9

    if-lez v2, :cond_3a

    .line 525
    const/4 v2, 0x5

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 526
    :cond_3a
    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v7, p0, Lcom/android/server/ipm/PkgPredictorService;->mNapTrainAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v8, 0x0

    const-string v6, "Nap_Train"

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 527
    return-void
.end method

.method private setBuBEnableProperties()V
    .registers 3

    .line 1464
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z

    move-result v0

    const-string/jumbo v1, "persist.sys.bub_onoff"

    if-eqz v0, :cond_f

    .line 1465
    const-string v0, "1"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14

    .line 1468
    :cond_f
    const-string v0, "0"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    :goto_14
    return-void
.end method


# virtual methods
.method public calcTopNByKPMLevel()I
    .registers 10

    .line 1313
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    .line 1314
    .local v0, "TOPN":I
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->KPM_LEVEL:I

    const/4 v2, 0x6

    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v1, v7, :cond_ac

    if-eq v1, v6, :cond_7f

    if-eq v1, v5, :cond_4d

    if-eq v1, v4, :cond_1c

    .line 1412
    sget v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    .line 1413
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    sput-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1388
    :cond_1c
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v1, v3, :cond_25

    .line 1389
    const/4 v0, 0x4

    .line 1390
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1391
    :cond_25
    if-le v1, v2, :cond_2c

    .line 1392
    const/4 v0, 0x3

    .line 1393
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1394
    :cond_2c
    if-le v1, v4, :cond_33

    .line 1395
    const/4 v0, 0x2

    .line 1396
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1397
    :cond_33
    if-le v1, v5, :cond_3a

    .line 1398
    const/4 v0, 0x1

    .line 1399
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1400
    :cond_3a
    if-le v1, v6, :cond_41

    .line 1401
    const/4 v0, 0x0

    .line 1402
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1403
    :cond_41
    if-le v1, v7, :cond_48

    .line 1404
    const/4 v0, 0x0

    .line 1405
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1407
    :cond_48
    const/4 v0, 0x0

    .line 1408
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    .line 1410
    goto/16 :goto_db

    .line 1364
    :cond_4d
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v1, v3, :cond_57

    .line 1365
    const/16 v0, 0x8

    .line 1366
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1367
    :cond_57
    if-le v1, v2, :cond_5e

    .line 1368
    const/4 v0, 0x6

    .line 1369
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1370
    :cond_5e
    if-le v1, v4, :cond_65

    .line 1371
    const/4 v0, 0x4

    .line 1372
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1373
    :cond_65
    if-le v1, v5, :cond_6c

    .line 1374
    const/4 v0, 0x2

    .line 1375
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1376
    :cond_6c
    if-le v1, v6, :cond_73

    .line 1377
    const/4 v0, 0x0

    .line 1378
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1379
    :cond_73
    if-le v1, v7, :cond_7a

    .line 1380
    const/4 v0, 0x0

    .line 1381
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto/16 :goto_db

    .line 1383
    :cond_7a
    const/4 v0, 0x0

    .line 1384
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    .line 1386
    goto/16 :goto_db

    .line 1340
    :cond_7f
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v1, v3, :cond_88

    .line 1341
    const/16 v0, 0xc

    .line 1342
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1343
    :cond_88
    if-le v1, v2, :cond_8f

    .line 1344
    const/16 v0, 0xa

    .line 1345
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1346
    :cond_8f
    if-le v1, v4, :cond_96

    .line 1347
    const/16 v0, 0x8

    .line 1348
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1349
    :cond_96
    if-le v1, v5, :cond_9c

    .line 1350
    const/4 v0, 0x6

    .line 1351
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1352
    :cond_9c
    if-le v1, v6, :cond_a2

    .line 1353
    const/4 v0, 0x4

    .line 1354
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1355
    :cond_a2
    if-le v1, v7, :cond_a8

    .line 1356
    const/4 v0, 0x2

    .line 1357
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1359
    :cond_a8
    const/4 v0, 0x0

    .line 1360
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    .line 1362
    goto :goto_db

    .line 1316
    :cond_ac
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->TOTAL_MEM_SIZE_GB:I

    if-le v1, v3, :cond_b5

    .line 1317
    const/16 v0, 0x10

    .line 1318
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1319
    :cond_b5
    if-le v1, v2, :cond_bc

    .line 1320
    const/16 v0, 0xe

    .line 1321
    sput-boolean v7, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1322
    :cond_bc
    if-le v1, v4, :cond_c3

    .line 1323
    const/16 v0, 0xc

    .line 1324
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1325
    :cond_c3
    if-le v1, v5, :cond_ca

    .line 1326
    const/16 v0, 0xa

    .line 1327
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1328
    :cond_ca
    if-le v1, v6, :cond_d1

    .line 1329
    const/16 v0, 0x8

    .line 1330
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1331
    :cond_d1
    if-le v1, v7, :cond_d7

    .line 1332
    const/4 v0, 0x6

    .line 1333
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    goto :goto_db

    .line 1335
    :cond_d7
    const/4 v0, 0x0

    .line 1336
    sput-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    .line 1338
    nop

    .line 1418
    :goto_db
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mCurrentResolution:Ljava/lang/String;

    if-eqz v1, :cond_ed

    const-string v2, "WQHD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ed

    .line 1419
    if-le v0, v6, :cond_ec

    .line 1420
    add-int/lit8 v0, v0, -0x2

    goto :goto_ed

    .line 1423
    :cond_ec
    const/4 v0, 0x0

    .line 1428
    :cond_ed
    :goto_ed
    sput v0, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    .line 1429
    sget-boolean v1, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v2, "PkgPredictorService"

    if-eqz v1, :cond_11b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPM calc TopN : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", IOPreload : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/ipm/PkgPredictorService;->USE_IOPRELOAD:Z

    if-eqz v3, :cond_10f

    const-string/jumbo v3, "true"

    goto :goto_111

    :cond_10f
    const-string v3, "false"

    :goto_111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    :cond_11b
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mAufPredictor:Lcom/android/server/ipm/AufPredictor;

    if-eqz v1, :cond_134

    .line 1432
    sget v1, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterNum:I

    .line 1435
    .local v1, "bubNum":I
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->isBootupBoosterEnabled()Z

    move-result v3

    if-nez v3, :cond_131

    .line 1436
    const/4 v1, 0x0

    .line 1437
    sget-boolean v3, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v3, :cond_131

    const-string v3, "BuB disabled, set temporary BuB TopN = 0"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_131
    invoke-static {v8, v1}, Lcom/android/server/ipm/AufPredictor;->setTopN(II)V

    .line 1442
    .end local v1    # "bubNum":I
    :cond_134
    return v0
.end method

.method public collectStandbyBucketForChimera()V
    .registers 2

    .line 1108
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;

    if-eqz v0, :cond_7

    .line 1109
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraManager;->collectStandbyBucket()V

    .line 1111
    :cond_7
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 836
    if-eqz p3, :cond_2b4

    array-length v0, p3

    if-eqz v0, :cond_2b4

    .line 837
    const/4 v0, 0x0

    .line 838
    .local v0, "opti":I
    array-length v1, p3

    if-nez v1, :cond_e

    .line 839
    invoke-direct {p0, p2}, Lcom/android/server/ipm/PkgPredictorService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2b4

    .line 841
    :cond_e
    :goto_e
    array-length v1, p3

    if-ge v0, v1, :cond_2b4

    .line 842
    aget-object v1, p3, v0

    .line 843
    .local v1, "arg":Ljava/lang/String;
    const-string v2, "-h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 844
    invoke-direct {p0, p2}, Lcom/android/server/ipm/PkgPredictorService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 845
    return-void

    .line 847
    :cond_1f
    const-string v2, "-i"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 848
    invoke-direct {p0, p2}, Lcom/android/server/ipm/PkgPredictorService;->dumpInstalledApps(Ljava/io/PrintWriter;)V

    .line 850
    :cond_2a
    const-string v2, "-c"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 851
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    invoke-virtual {v2, p2}, Lcom/android/server/ipm/Collector;->dump(Ljava/io/PrintWriter;)V

    .line 853
    :cond_37
    const-string v2, "-p"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 854
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    invoke-virtual {v2, p2}, Lcom/android/server/ipm/NapPredictor;->dump(Ljava/io/PrintWriter;)V

    .line 856
    :cond_44
    const-string v2, "-t"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8d

    .line 857
    array-length v2, p3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5e

    .line 858
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sput v2, Lcom/android/server/ipm/PkgPredictorService;->TRAINNING_LIMIT_AMOUNT:I

    .line 860
    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "train amounts:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/ipm/PkgPredictorService;->TRAINNING_LIMIT_AMOUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " start..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 861
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$13;

    invoke-direct {v3, p0}, Lcom/android/server/ipm/PkgPredictorService$13;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 867
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 868
    const-string/jumbo v2, "train finish..."

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 870
    :cond_8d
    const-string v2, "-f"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_98

    .line 871
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->dumpDB()V

    .line 873
    :cond_98
    const-string v2, "-m"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "PkgPredictorService"

    if-eqz v2, :cond_f0

    .line 874
    invoke-static {}, Lcom/android/server/ipm/NapBigDataService;->getPkgAccuracyMap()Ljava/util/HashMap;

    move-result-object v2

    .line 875
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    if-nez v2, :cond_ae

    .line 876
    const-string v4, "Get map == null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    .line 878
    :cond_ae
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 879
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;>;"
    :goto_b6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f0

    .line 880
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 881
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 882
    .local v6, "pkg":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    .line 883
    .local v7, "acc":D
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " acc = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "acc":D
    goto :goto_b6

    .line 887
    .end local v2    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Double;>;"
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Double;>;>;"
    :cond_f0
    :goto_f0
    const-string v2, "-b"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 903
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/ipm/PkgPredictorService$1BigDataRunnableForDump;

    invoke-direct {v4, p0}, Lcom/android/server/ipm/PkgPredictorService$1BigDataRunnableForDump;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 905
    :cond_105
    const-string v2, "-B"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 921
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/ipm/PkgPredictorService$2BigDataRunnableForDump;

    invoke-direct {v4, p0}, Lcom/android/server/ipm/PkgPredictorService$2BigDataRunnableForDump;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 923
    :cond_11a
    const-string v2, "-d"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_125

    .line 924
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->clearDB()V

    .line 926
    :cond_125
    const-string v2, "-disable_bub"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_150

    .line 927
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    const-string/jumbo v6, "on"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_140

    .line 928
    invoke-direct {p0, v5}, Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V

    goto :goto_150

    .line 929
    :cond_140
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    const-string/jumbo v6, "off"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_150

    .line 930
    invoke-direct {p0, v4}, Lcom/android/server/ipm/PkgPredictorService;->disableBUB(I)V

    .line 933
    :cond_150
    :goto_150
    const-string v2, "-nap"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_172

    .line 934
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    .line 935
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v6, v0, 0x2

    aget-object v6, p3, v6

    .line 936
    .local v6, "appName":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 937
    .local v7, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    new-instance v8, Lcom/android/server/ipm/PkgInfo;

    invoke-direct {v8, v6, v4}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    iget-object v8, p0, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    invoke-virtual {v8, p2, v7, v2}, Lcom/android/server/ipm/NapPreloadController;->dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 940
    .end local v2    # "type":Ljava/lang/String;
    .end local v6    # "appName":Ljava/lang/String;
    .end local v7    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    :cond_172
    const-string v2, "-auf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19b

    .line 941
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    .line 942
    .restart local v2    # "type":Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 943
    .local v6, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    const/4 v7, 0x2

    .local v7, "index":I
    :goto_184
    array-length v8, p3

    if-ge v7, v8, :cond_196

    .line 944
    new-instance v8, Lcom/android/server/ipm/PkgInfo;

    add-int v9, v0, v7

    aget-object v9, p3, v9

    invoke-direct {v8, v9, v4}, Lcom/android/server/ipm/PkgInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 943
    add-int/lit8 v7, v7, 0x1

    goto :goto_184

    .line 946
    .end local v7    # "index":I
    :cond_196
    iget-object v7, p0, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    invoke-virtual {v7, p2, v6, v2}, Lcom/android/server/ipm/NapPreloadController;->dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 948
    .end local v2    # "type":Ljava/lang/String;
    .end local v6    # "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    :cond_19b
    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "AppUsageForecast is not enable."

    const-string v7, "1"

    if-eqz v2, :cond_227

    .line 949
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[nap] "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    if-eqz v8, :cond_1ba

    sget-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z

    if-eqz v8, :cond_1ba

    move v4, v5

    :cond_1ba
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 950
    sget-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->NAP_ENABLE:Z

    if-eqz v2, :cond_1eb

    sget-boolean v2, Lcom/android/server/ipm/PkgPredictorService;->NAP_SWITCH:Z

    if-eqz v2, :cond_1eb

    .line 951
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[train] ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    invoke-virtual {v4}, Lcom/android/server/ipm/NapPredictor;->getSummary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 953
    :cond_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[bub] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/ipm/PkgPredictorService;->mBootupBoosterConfig:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 954
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mController:Lcom/android/server/ipm/NapPreloadController;

    if-eqz v2, :cond_208

    .line 955
    invoke-virtual {v2, p2}, Lcom/android/server/ipm/NapPreloadController;->dump(Ljava/io/PrintWriter;)V

    .line 962
    :cond_208
    invoke-virtual {v7, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_215

    .line 963
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mDexPreloader:Lcom/android/server/ipm/DexPreloader;

    if-eqz v2, :cond_215

    .line 964
    invoke-virtual {v2, p2}, Lcom/android/server/ipm/DexPreloader;->dump(Ljava/io/PrintWriter;)V

    .line 967
    :cond_215
    const-string v2, "------------------------------"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z

    move-result v2

    if-eqz v2, :cond_224

    .line 969
    invoke-direct {p0, p2}, Lcom/android/server/ipm/PkgPredictorService;->dumpAuf(Ljava/io/PrintWriter;)V

    goto :goto_227

    .line 971
    :cond_224
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_227
    :goto_227
    const-string v2, "-r"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_246

    .line 975
    invoke-direct {p0}, Lcom/android/server/ipm/PkgPredictorService;->isAppUsageForecastEnabled()Z

    move-result v2

    if-eqz v2, :cond_243

    .line 976
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/ipm/PkgPredictorService$14;

    invoke-direct {v3, p0}, Lcom/android/server/ipm/PkgPredictorService$14;-><init>(Lcom/android/server/ipm/PkgPredictorService;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 987
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_246

    .line 989
    :cond_243
    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    :cond_246
    :goto_246
    const-string v2, "-seedbed"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_256

    .line 994
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    .line 995
    .local v2, "appName":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x2

    aget-object v3, p3, v3

    .line 1001
    .end local v2    # "appName":Ljava/lang/String;
    :cond_256
    const-string v2, "-dex"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_271

    .line 1002
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    .line 1003
    .local v2, "dexpr":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x2

    aget-object v3, p3, v3

    .line 1004
    .local v3, "dex2":Ljava/lang/String;
    invoke-virtual {v7, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_271

    .line 1005
    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService;->mDexPreloader:Lcom/android/server/ipm/DexPreloader;

    invoke-virtual {v4, p2, v2, v3}, Lcom/android/server/ipm/DexPreloader;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    .end local v2    # "dexpr":Ljava/lang/String;
    .end local v3    # "dex2":Ljava/lang/String;
    :cond_271
    const-string v2, "-psi"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_291

    .line 1010
    array-length v2, p3

    if-le v2, v0, :cond_28a

    .line 1011
    add-int/lit8 v2, v0, 0x1

    aget-object v2, p3, v2

    .line 1012
    .local v2, "from":Ljava/lang/String;
    add-int/lit8 v3, v0, 0x2

    aget-object v3, p3, v3

    .line 1013
    .local v3, "to":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v4, p2, v2, v3}, Lcom/android/server/ipm/psitracker/PSITrackerService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    .end local v2    # "from":Ljava/lang/String;
    .end local v3    # "to":Ljava/lang/String;
    goto :goto_291

    .line 1015
    :cond_28a
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    const-string v3, "0"

    invoke-virtual {v2, p2, v3, v3}, Lcom/android/server/ipm/psitracker/PSITrackerService;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    :cond_291
    :goto_291
    const-string v2, "-enable_chimera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "persist.config.chimera.enable"

    if-eqz v2, :cond_2a2

    .line 1021
    const-string/jumbo v2, "true"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    :cond_2a2
    const-string v2, "-disable_chimera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2af

    .line 1025
    const-string v2, "false"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    :cond_2af
    nop

    .end local v1    # "arg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 1028
    goto/16 :goto_e

    .line 1032
    .end local v0    # "opti":I
    :cond_2b4
    :goto_2b4
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;

    if-eqz v0, :cond_2bb

    .line 1033
    invoke-virtual {v0, p2, p3}, Lcom/android/server/ipm/chimera/ChimeraManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1035
    :cond_2bb
    return-void
.end method

.method public getAvailableMemInfo(JJ)Ljava/util/List;
    .registers 6
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/ipm/PSIAvailableMem;",
            ">;"
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getAvailableMemInfo(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getChimeraStat()Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    .registers 2

    .line 1807
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mChimeraManager:Lcom/android/server/ipm/chimera/ChimeraManager;

    if-eqz v0, :cond_9

    .line 1808
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraManager;->getChimeraStat()Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    move-result-object v0

    return-object v0

    .line 1811
    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentResolution()Ljava/lang/String;
    .registers 12

    .line 1749
    const/4 v0, 0x0

    .local v0, "width":I
    const/4 v1, 0x0

    .line 1750
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "display_size_forced"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1751
    .local v2, "sizeStr":Ljava/lang/String;
    const-string v3, "WQHD"

    .line 1753
    .local v3, "currentResolution":Ljava/lang/String;
    const/4 v4, 0x0

    const-string v5, "PkgPredictorService"

    if-eqz v2, :cond_85

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_85

    .line 1754
    const/16 v6, 0x2c

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 1755
    .local v7, "pos":I
    sget-boolean v8, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    const-string v9, ", height :"

    if-eqz v8, :cond_41

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getCurrentResolution width : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    :cond_41
    if-lez v7, :cond_80

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-ne v6, v7, :cond_80

    .line 1758
    :try_start_49
    invoke-virtual {v2, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    .line 1759
    add-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 1760
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_7b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentResolution in Setting DB width : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7b
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_7b} :catch_7c

    .line 1763
    :cond_7b
    goto :goto_80

    .line 1761
    :catch_7c
    move-exception v4

    .line 1762
    .local v4, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 1765
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_80
    :goto_80
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1766
    .end local v7    # "pos":I
    goto :goto_d0

    .line 1767
    :cond_85
    iget-object v6, p0, Lcom/android/server/ipm/PkgPredictorService;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/android/server/ipm/PkgPredictorService;->wm:Landroid/view/WindowManager;

    .line 1768
    if-eqz v6, :cond_d0

    .line 1769
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 1770
    .local v6, "size":Landroid/graphics/Point;
    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v7

    .line 1772
    .local v7, "wm":Landroid/view/IWindowManager;
    if-nez v7, :cond_a7

    .line 1773
    :try_start_a3
    const-string v4, "FHD_HD"

    move-object v3, v4

    .line 1774
    return-object v3

    .line 1776
    :cond_a7
    invoke-interface {v7, v4, v6}, Landroid/view/IWindowManager;->getInitialDisplaySize(ILandroid/graphics/Point;)V

    .line 1777
    iget v4, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v4, v8}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v0, v4

    .line 1778
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_cb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getCurrentResolution in WM size width : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_cb} :catch_cc

    .line 1784
    :cond_cb
    goto :goto_d0

    .line 1781
    :catch_cc
    move-exception v4

    .line 1783
    .local v4, "e":Landroid/os/RemoteException;
    invoke-virtual {v4}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1788
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v6    # "size":Landroid/graphics/Point;
    .end local v7    # "wm":Landroid/view/IWindowManager;
    :cond_d0
    :goto_d0
    const/4 v4, 0x1

    if-le v0, v4, :cond_f5

    .line 1789
    sget-boolean v4, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v4, :cond_eb

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentResolution(): width = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1791
    :cond_eb
    const/16 v4, 0x5a0

    if-lt v0, v4, :cond_f2

    .line 1792
    const-string v3, "WQHD"

    goto :goto_f7

    .line 1794
    :cond_f2
    const-string v3, "FHD_HD"

    goto :goto_f7

    .line 1796
    :cond_f5
    const-string v3, "WQHD"

    .line 1798
    :goto_f7
    return-object v3
.end method

.method public getEntryInfo(JJ)Ljava/util/List;
    .registers 6
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/ipm/AppEntryInfo;",
            ">;"
        }
    .end annotation

    .line 1126
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getEntryInfo(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPSI(JJ)Ljava/util/List;
    .registers 6
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Lcom/samsung/android/ipm/PSIInformation;",
            ">;"
        }
    .end annotation

    .line 1123
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSI(JJ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPSICurrentValue()[F
    .registers 2

    .line 1138
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSICurrentValue()[F

    move-result-object v0

    return-object v0
.end method

.method public getPSIThreshold()F
    .registers 2

    .line 1132
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->getPSIThreshold()F

    move-result v0

    return v0
.end method

.method public getPredictApplists()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1446
    const/4 v0, 0x0

    .line 1448
    .local v0, "applists":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    if-eqz v1, :cond_c

    .line 1449
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    invoke-virtual {v1}, Lcom/android/server/ipm/AufHitCalculation;->getPredictApplists()Ljava/util/ArrayList;

    move-result-object v1
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_d

    move-object v0, v1

    .line 1450
    :cond_c
    return-object v0

    .line 1451
    :catch_d
    move-exception v1

    .line 1452
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PkgPredictorService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    .end local v1    # "e":Ljava/lang/Exception;
    return-object v0
.end method

.method public isPredictedAppForMARs(ILjava/lang/String;)Z
    .registers 4
    .param p1, "bucketSize"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1459
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mAufHitCalculation:Lcom/android/server/ipm/AufHitCalculation;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ipm/AufHitCalculation;->isPredictedAppForMARs(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportPSI()Z
    .registers 2

    .line 1135
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPSITrackerService:Lcom/android/server/ipm/psitracker/PSITrackerService;

    invoke-virtual {v0}, Lcom/android/server/ipm/psitracker/PSITrackerService;->isSupportPSI()Z

    move-result v0

    return v0
.end method

.method public reportToNAP(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "activityName"    # Ljava/lang/String;
    .param p3, "thisTime"    # J

    .line 1113
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    if-eqz v0, :cond_2b

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " thisTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PkgPredictorService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1117
    :cond_2b
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1118
    .local v0, "name":[Ljava/lang/String;
    array-length v1, v0

    if-lez v1, :cond_3e

    .line 1119
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mCollector:Lcom/android/server/ipm/Collector;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, p1, v2, p3, p4}, Lcom/android/server/ipm/Collector;->updateActivityLaunchConsumeTime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1120
    :cond_3e
    return-void
.end method

.method public saveRemainRecords()V
    .registers 3

    .line 1142
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1143
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1144
    iget-object v1, p0, Lcom/android/server/ipm/PkgPredictorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1145
    return-void
.end method

.method public setKPMLevel(I)V
    .registers 2
    .param p1, "level"    # I

    .line 1310
    sput p1, Lcom/android/server/ipm/PkgPredictorService;->KPM_LEVEL:I

    .line 1311
    return-void
.end method

.method public trainModel()V
    .registers 2

    .line 1105
    iget-object v0, p0, Lcom/android/server/ipm/PkgPredictorService;->mPredictor:Lcom/android/server/ipm/NapPredictor;

    invoke-virtual {v0}, Lcom/android/server/ipm/NapPredictor;->trainModel()V

    .line 1106
    return-void
.end method

.method public trim(J)V
    .registers 9
    .param p1, "period"    # J

    .line 575
    invoke-static {}, Lcom/android/server/ipm/DBManager;->getInstance()Lcom/android/server/ipm/DBManager;

    move-result-object v0

    .line 576
    .local v0, "db":Lcom/android/server/ipm/DBManager;
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->isDBClosed()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 577
    const-string v1, "PkgPredictorService"

    const-string/jumbo v2, "trim failed! db is closed!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 580
    :cond_13
    sget-object v1, Lcom/android/server/ipm/DBManager;->LOCK_DATABASE:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_16
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->beginTransaction()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_5a

    .line 583
    :try_start_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    .line 584
    .local v2, "deadline":J
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/ipm/DBManager;->mSampleTable:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " where launch_time < "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 586
    .local v4, "sql":Ljava/lang/String;
    invoke-virtual {v0, v4}, Lcom/android/server/ipm/DBManager;->execSQL(Ljava/lang/String;)V

    .line 587
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->setTransactionSuccessful()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_3f} :catch_45
    .catchall {:try_start_19 .. :try_end_3f} :catchall_43

    .line 591
    .end local v2    # "deadline":J
    .end local v4    # "sql":Ljava/lang/String;
    :try_start_3f
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_5a

    goto :goto_52

    :catchall_43
    move-exception v2

    goto :goto_55

    .line 588
    :catch_45
    move-exception v2

    .line 589
    .local v2, "e":Ljava/lang/Exception;
    :try_start_46
    const-string v3, "PkgPredictorService"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_46 .. :try_end_4f} :catchall_43

    .line 591
    .end local v2    # "e":Ljava/lang/Exception;
    :try_start_4f
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 592
    :goto_52
    nop

    .line 593
    monitor-exit v1

    .line 594
    return-void

    .line 591
    :goto_55
    invoke-virtual {v0}, Lcom/android/server/ipm/DBManager;->endTransaction()V

    .line 592
    nop

    .end local v0    # "db":Lcom/android/server/ipm/DBManager;
    .end local p0    # "this":Lcom/android/server/ipm/PkgPredictorService;
    .end local p1    # "period":J
    throw v2

    .line 593
    .restart local v0    # "db":Lcom/android/server/ipm/DBManager;
    .restart local p0    # "this":Lcom/android/server/ipm/PkgPredictorService;
    .restart local p1    # "period":J
    :catchall_5a
    move-exception v2

    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_4f .. :try_end_5c} :catchall_5a

    throw v2
.end method
