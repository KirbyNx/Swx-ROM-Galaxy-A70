.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field static final ANDROID_FUSE_ENABLED:Ljava/lang/String; = "persist.sys.fuse"

.field static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field private static final GWP_ASAN:J = 0x8159f9eL

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field private static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field static final LMK_CAMERAKILLBOOST:B = 0xat

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_LAUNCHPID:B = 0x9t

.field static final LMK_PROCKILL:B = 0x6t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPRIOSTT:B = 0x8t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_SETPARAMETER:B = 0x7t

.field static final LMK_SUBSCRIBE:B = 0x5t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field private static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field private static final NATIVE_HEAP_POINTER_TAGGING:J = 0x81774caL

.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PICKED_ADJ:I = 0x352

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field private static final PROC_KILL_TIMEOUT:I = 0x7d0

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_FOREGROUND_BOOST:I = 0x6

.field static final SCHED_GROUP_ABNORMAL:I = -0x2

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_MODERATE:I = 0x5

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field static final SEEDBED_ADJ:I = 0x35c

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x3e9

.field private static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static addBonusEFK:I

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J

.field private static v_BonusEFK:I


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field private mAppDataIsolationEnabled:Z

.field private mAppDataIsolationWhitelistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field mDisplayHeight:I

.field mDisplayWidth:I

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field private mHaveDisplaySize:Z

.field mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field private mIsDisplayChanged:Z

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLruProcessActivityStart:I

.field mLruProcessServiceStart:I

.field final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mLruSeq:I

.field private final mOomAdj:[I

.field private mOomLevelsSet:Z

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field private mProcStartSeqCounter:J

.field mProcStateSeqCounter:J

.field final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

.field private final mTotalMemMb:J

.field private mVoldAppDataIsolationEnabled:Z

.field private final mZygoteSigChldMessage:[I

.field private final mZygoteUnsolicitedMessage:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 356
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 362
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 454
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 455
    sput-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 486
    const-string/jumbo v2, "ro.slmk.add_bonusEFK"

    const-string v3, "-1"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->addBonusEFK:I

    .line 487
    const-string/jumbo v2, "ro.slmk.v_bonusEFK"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/am/ProcessList;->v_BonusEFK:I

    .line 497
    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 1441
    const/16 v1, 0x14

    new-array v1, v1, [I

    fill-array-data v1, :array_60

    sput-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1464
    new-array v1, v0, [J

    fill-array-data v1, :array_8c

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1472
    new-array v1, v0, [J

    fill-array-data v1, :array_a4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1480
    new-array v1, v0, [J

    fill-array-data v1, :array_bc

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1488
    new-array v1, v0, [J

    fill-array-data v1, :array_d4

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1496
    new-array v1, v0, [J

    fill-array-data v1, :array_ec

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1504
    new-array v0, v0, [J

    fill-array-data v0, :array_104

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_60
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_8c
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_a4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_bc
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_d4
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_ec
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_104
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 7

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 460
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_ba

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 466
    new-array v3, v1, [I

    fill-array-data v3, :array_ca

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 472
    new-array v1, v1, [I

    fill-array-data v1, :array_da

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 477
    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 482
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 484
    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 499
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 501
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 503
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 520
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 527
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 535
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 542
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 547
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 553
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 558
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 565
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 570
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 575
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 581
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 584
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 601
    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 606
    const/4 v2, 0x3

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 609
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 719
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 726
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 742
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 816
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 817
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 818
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 819
    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 820
    return-void

    :array_ba
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_ca
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_da
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static abortNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 2
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1581
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1582
    return-void
.end method

.method static synthetic access$000()Lcom/android/server/am/LmkdConnection;
    .registers 1

    .line 199
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .line 1359
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_15

    .line 1360
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 1361
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1359
    :cond_10
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 1364
    .end local v0    # "j":I
    .end local v1    # "fact":I
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1365
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 9
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "compactPrefix"    # Ljava/lang/String;
    .param p2, "space"    # Ljava/lang/String;
    .param p3, "val"    # I
    .param p4, "base"    # I
    .param p5, "compact"    # Z

    .line 1163
    sub-int v0, p3, p4

    .line 1164
    .local v0, "diff":I
    if-nez v0, :cond_1a

    .line 1165
    if-eqz p5, :cond_7

    .line 1166
    return-object p1

    .line 1168
    :cond_7
    if-nez p2, :cond_a

    return-object p0

    .line 1169
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1171
    :cond_1a
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_3c

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_2b

    goto :goto_2d

    :cond_2b
    const-string v2, "+ "

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1174
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSlow(JLjava/lang/String;)V
    .registers 10
    .param p1, "startTime"    # J
    .param p3, "where"    # Ljava/lang/String;

    .line 1943
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1944
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_2d

    .line 1946
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    :cond_2d
    return-void
.end method

.method public static commitNextPssTime(Lcom/android/server/am/ProcessList$ProcStateMemTracker;)V
    .registers 4
    .param p0, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;

    .line 1572
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    if-ltz v0, :cond_1b

    .line 1573
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    aput v2, v0, v1

    .line 1574
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    iget v1, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    iget v2, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    aput v2, v0, v1

    .line 1575
    iget v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1576
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1578
    :cond_1b
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"    # I

    .line 1158
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private computeGidsForProcess(II[I)[I
    .registers 13
    .param p1, "mountExternal"    # I
    .param p2, "uid"    # I
    .param p3, "permGids"    # [I

    .line 1951
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    const/4 v2, 0x5

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1953
    .local v0, "gidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 1954
    .local v1, "sharedAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v3

    .line 1955
    .local v3, "cacheAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v4

    .line 1959
    .local v4, "userGid":I
    array-length v5, p3

    const/4 v6, 0x0

    :goto_22
    if-ge v6, v5, :cond_30

    aget v7, p3, v6

    .line 1960
    .local v7, "permGid":I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1959
    .end local v7    # "permGid":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_22

    .line 1962
    :cond_30
    const/4 v5, -0x1

    if-eq v1, v5, :cond_3a

    .line 1963
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1965
    :cond_3a
    if-eq v3, v5, :cond_43

    .line 1966
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    :cond_43
    if-eq v4, v5, :cond_4c

    .line 1969
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1971
    :cond_4c
    const/16 v5, 0x8

    const/4 v6, 0x7

    const/16 v7, 0x437

    if-eq p1, v5, :cond_55

    if-ne p1, v6, :cond_76

    .line 1978
    :cond_55
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    const/16 v8, 0x3f7

    invoke-static {v5, v8}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1983
    const/16 v5, 0x436

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1984
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1986
    :cond_76
    if-ne p1, v2, :cond_7f

    .line 1988
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1990
    :cond_7f
    if-ne p1, v6, :cond_8a

    .line 1994
    const/16 v2, 0x3ff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1997
    :cond_8a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 1998
    .local v2, "gidArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_91
    array-length v6, v2

    if-ge v5, v6, :cond_a3

    .line 1999
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v2, v5

    .line 1998
    add-int/lit8 v5, v5, 0x1

    goto :goto_91

    .line 2001
    .end local v5    # "i":I
    :cond_a3
    return-object v2
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .registers 15
    .param p0, "procState"    # I
    .param p1, "tracker"    # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .line 1588
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1589
    .local v0, "memState":I
    if-eqz p1, :cond_2d

    .line 1590
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_c

    .line 1591
    move v1, v0

    goto :goto_e

    :cond_c
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1592
    .local v1, "highestMemState":I
    :goto_e
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1593
    .local v2, "first":Z
    :goto_17
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1594
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1595
    if-eqz v2, :cond_23

    .line 1596
    const/high16 v3, 0x3f800000    # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2c

    .line 1598
    .end local v4    # "scalingFactor":F
    :cond_23
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1599
    .restart local v4    # "scalingFactor":F
    const/high16 v3, 0x3fc00000    # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1601
    .end local v1    # "highestMemState":I
    :goto_2c
    goto :goto_30

    .line 1602
    .end local v2    # "first":Z
    .end local v4    # "scalingFactor":F
    :cond_2d
    const/4 v2, 0x1

    .line 1603
    .restart local v2    # "first":Z
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1605
    .restart local v4    # "scalingFactor":F
    :goto_30
    if-eqz p2, :cond_3a

    .line 1606
    if-eqz v2, :cond_37

    .line 1607
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4b

    .line 1608
    :cond_37
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4b

    .line 1609
    :cond_3a
    if-eqz v2, :cond_44

    .line 1610
    if-eqz p3, :cond_41

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4b

    :cond_41
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4b

    .line 1611
    :cond_44
    if-eqz p3, :cond_49

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4b

    :cond_49
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4b
    nop

    .line 1612
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1613
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_5b

    .line 1614
    const-wide/32 v5, 0x36ee80

    .line 1616
    :cond_5b
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2557
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2560
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 2561
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2563
    .local v2, "appZygote":Landroid/os/AppZygote;
    if-nez v2, :cond_71

    .line 2564
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_25

    .line 2565
    const-string v3, "ActivityManager"

    const-string v4, "Creating new app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :cond_25
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2569
    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v5

    .line 2568
    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v3

    .line 2570
    .local v3, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2573
    .local v4, "userId":I
    iget v5, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v4, v5}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 2574
    .local v5, "firstUid":I
    iget v6, v3, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v4, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2575
    .local v6, "lastUid":I
    new-instance v7, Landroid/content/pm/ApplicationInfo;

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v7, v8}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 2582
    .local v7, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v8}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2583
    iput v1, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2584
    new-instance v8, Landroid/os/AppZygote;

    invoke-direct {v8, v7, v1, v5, v6}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;III)V

    move-object v2, v8

    .line 2585
    iget-object v8, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9, v1, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2586
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2587
    .local v8, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v9, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v9, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2588
    nop

    .end local v3    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v4    # "userId":I
    .end local v5    # "firstUid":I
    .end local v6    # "lastUid":I
    .end local v7    # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_8e

    .line 2589
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_71
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_7c

    .line 2590
    const-string v3, "ActivityManager"

    const-string v4, "Reusing existing app zygote."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :cond_7c
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2593
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object v8, v3

    .line 2599
    .restart local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_8e
    invoke-virtual {v8, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2601
    monitor-exit v0
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2602
    .end local v1    # "uid":I
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    .end local v8    # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_96
    move-exception v1

    :try_start_97
    monitor-exit v0
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_96

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .registers 6

    .line 4646
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/unsolzygotesocket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4647
    .local v0, "socketFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 4648
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4651
    :cond_10
    const/4 v2, 0x0

    .line 4653
    .local v2, "serverSocket":Landroid/net/LocalSocket;
    :try_start_11
    new-instance v3, Landroid/net/LocalSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/net/LocalSocket;-><init>(I)V

    move-object v2, v3

    .line 4654
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 4656
    const/16 v3, 0x1b6

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_28

    .line 4665
    goto :goto_31

    .line 4657
    :catch_28
    move-exception v1

    .line 4658
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_31

    .line 4660
    :try_start_2b
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 4662
    goto :goto_30

    .line 4661
    :catch_2f
    move-exception v3

    .line 4663
    :goto_30
    const/4 v2, 0x0

    .line 4666
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    return-object v2
.end method

.method private decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2033
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/high16 v3, 0x400000

    const/4 v4, 0x1

    if-eqz v0, :cond_19

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-eq v0, v1, :cond_19

    .line 2035
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v0, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    if-ne v0, v4, :cond_17

    .line 2036
    move v2, v3

    goto :goto_18

    .line 2037
    :cond_17
    nop

    .line 2035
    :goto_18
    return v2

    .line 2040
    :cond_19
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-eq v0, v1, :cond_2d

    .line 2041
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getGwpAsanMode()I

    move-result v0

    if-ne v0, v4, :cond_2b

    .line 2042
    move v2, v3

    goto :goto_2c

    .line 2043
    :cond_2b
    nop

    .line 2041
    :goto_2c
    return v2

    .line 2047
    :cond_2d
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v5, 0x8159f9e

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v5, v6, v1}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 2048
    return v3

    .line 2050
    :cond_3b
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v4

    if-eqz v0, :cond_45

    .line 2051
    const/high16 v0, 0x200000

    return v0

    .line 2053
    :cond_45
    return v2
.end method

.method private decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I
    .registers 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2024
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->shouldEnableTaggedPointers(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2025
    const/high16 v0, 0x80000

    return v0

    .line 2028
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public static final declared-synchronized getLmkdKillCount(II)Ljava/lang/Integer;
    .registers 7
    .param p0, "min_oom_adj"    # I
    .param p1, "max_oom_adj"    # I

    const-class v0, Lcom/android/server/am/ProcessList;

    monitor-enter v0

    .line 1762
    const/16 v1, 0xc

    :try_start_5
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1763
    .local v1, "buf":Ljava/nio/ByteBuffer;
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1764
    .local v2, "repl":Ljava/nio/ByteBuffer;
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1765
    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1766
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1768
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1769
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1770
    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-ne v4, v3, :cond_36

    .line 1771
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_39

    monitor-exit v0

    return-object v3

    .line 1773
    :cond_36
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 1761
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "repl":Ljava/nio/ByteBuffer;
    .end local p0    # "min_oom_adj":I
    .end local p1    # "max_oom_adj":I
    :catchall_39
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 6
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3521
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 3525
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3526
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 3525
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 3523
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .registers 16
    .param p1, "pmInt"    # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2607
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2608
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2609
    .local v1, "userId":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_5f

    aget-object v4, p2, v3

    .line 2610
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v5

    .line 2611
    .local v5, "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const-string v6, "ActivityManager"

    if-nez v5, :cond_2d

    .line 2612
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    goto :goto_5c

    .line 2615
    :cond_2d
    invoke-interface {v5}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    .line 2616
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-virtual {p1, v4, v1}, Landroid/content/pm/PackageManagerInternal;->getCeDataInode(Ljava/lang/String;I)J

    move-result-wide v8

    .line 2617
    .local v8, "inode":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_51

    .line 2618
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inode == 0 (b/152760674)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2619
    const/4 v2, 0x0

    return-object v2

    .line 2621
    :cond_51
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2609
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "androidPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    .end local v7    # "volumeUuid":Ljava/lang/String;
    .end local v8    # "inode":J
    :goto_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2624
    :cond_5f
    return-object v0
.end method

.method private handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 31
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2462
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    .line 2463
    .local v11, "precedence":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_6a

    .line 2464
    iget v1, v11, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 2465
    .local v1, "pid":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2466
    .local v2, "now":J
    const-wide/16 v4, 0x7d0

    add-long/2addr v4, v2

    .line 2468
    .local v4, "end":J
    const/16 v0, 0x7d0

    :try_start_15
    invoke-static {v1, v0}, Landroid/os/Process;->waitForProcessDeath(II)V

    .line 2470
    monitor-enter v11
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_4c

    .line 2471
    :try_start_19
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2d

    .line 2472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6
    :try_end_21
    .catchall {:try_start_19 .. :try_end_21} :catchall_49

    move-wide v2, v6

    .line 2473
    cmp-long v0, v2, v4

    if-gez v0, :cond_2d

    .line 2475
    sub-long v6, v4, v2

    :try_start_28
    invoke-virtual {v11, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_49

    .line 2477
    goto :goto_2d

    .line 2476
    :catch_2c
    move-exception v0

    .line 2480
    :cond_2d
    :goto_2d
    :try_start_2d
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_47

    .line 2482
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " has died, but its cleanup isn\'t done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :cond_47
    monitor-exit v11

    .line 2489
    goto :goto_6a

    .line 2484
    :catchall_49
    move-exception v0

    monitor-exit v11
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_49

    .end local v1    # "pid":I
    .end local v2    # "now":J
    .end local v4    # "end":J
    .end local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    :try_start_4b
    throw v0
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_4c} :catch_4c

    .line 2485
    .restart local v1    # "pid":I
    .restart local v2    # "now":J
    .restart local v4    # "end":J
    .restart local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catch_4c
    move-exception v0

    .line 2487
    .local v0, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " refused to die, but we need to launch "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2492
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pid":I
    .end local v2    # "now":J
    .end local v4    # "end":J
    :cond_6a
    :goto_6a
    :try_start_6a
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->startUid:I

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-wide v8, v15, Lcom/android/server/am/ProcessRecord;->startTime:J
    :try_end_72
    .catch Ljava/lang/RuntimeException; {:try_start_6a .. :try_end_72} :catch_bd

    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v16, v8

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v18, v11

    .end local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v18, "precedence":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    :try_start_8c
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_90
    .catch Ljava/lang/RuntimeException; {:try_start_8c .. :try_end_90} :catch_b5

    move-object v1, v0

    .line 2497
    .local v1, "startResult":Landroid/os/Process$ProcessStartResult;
    move-object/from16 v2, p0

    :try_start_93
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_96
    .catch Ljava/lang/RuntimeException; {:try_start_93 .. :try_end_96} :catch_b3

    :try_start_96
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a7

    .line 2498
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :try_start_9d
    invoke-direct {v2, v4, v1, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2499
    monitor-exit v3
    :try_end_a1
    .catchall {:try_start_9d .. :try_end_a1} :catchall_a5

    :try_start_a1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_a4
    .catch Ljava/lang/RuntimeException; {:try_start_a1 .. :try_end_a4} :catch_b1

    .line 2510
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_107

    .line 2499
    .restart local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_a5
    move-exception v0

    goto :goto_ac

    :catchall_a7
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :goto_ac
    :try_start_ac
    monitor-exit v3
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_a5

    :try_start_ad
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "entryPoint":Ljava/lang/String;
    .end local p3    # "gids":[I
    .end local p4    # "runtimeFlags":I
    .end local p5    # "zygotePolicyFlags":I
    .end local p6    # "mountExternal":I
    .end local p7    # "requiredAbi":Ljava/lang/String;
    .end local p8    # "instructionSet":Ljava/lang/String;
    .end local p9    # "invokeWith":Ljava/lang/String;
    .end local p10    # "startSeq":J
    throw v0
    :try_end_b1
    .catch Ljava/lang/RuntimeException; {:try_start_ad .. :try_end_b1} :catch_b1

    .line 2500
    .end local v1    # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "entryPoint":Ljava/lang/String;
    .restart local p3    # "gids":[I
    .restart local p4    # "runtimeFlags":I
    .restart local p5    # "zygotePolicyFlags":I
    .restart local p6    # "mountExternal":I
    .restart local p7    # "requiredAbi":Ljava/lang/String;
    .restart local p8    # "instructionSet":Ljava/lang/String;
    .restart local p9    # "invokeWith":Ljava/lang/String;
    .restart local p10    # "startSeq":J
    :catch_b1
    move-exception v0

    goto :goto_c3

    :catch_b3
    move-exception v0

    goto :goto_b8

    :catch_b5
    move-exception v0

    move-object/from16 v2, p0

    :goto_b8
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    goto :goto_c3

    .end local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    :catch_bd
    move-exception v0

    move-object/from16 v18, v11

    move-wide v5, v12

    move-object v2, v14

    move-object v4, v15

    .end local v11    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "precedence":Lcom/android/server/am/ProcessRecord;
    :goto_c3
    move-object v1, v0

    .line 2501
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_c7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2502
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2504
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2505
    const/4 v0, 0x0

    iput-boolean v0, v4, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2506
    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2507
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v16, "start failure"

    .line 2506
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2509
    monitor-exit v3
    :try_end_104
    .catchall {:try_start_c7 .. :try_end_104} :catchall_108

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2511
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_107
    return-void

    .line 2509
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :catchall_108
    move-exception v0

    :try_start_109
    monitor-exit v3
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_108

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .registers 13
    .param p1, "pending"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"    # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"    # J

    .line 3061
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_15

    .line 3062
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_13

    .line 3063
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 3066
    :cond_13
    const/4 v0, 0x0

    return v0

    .line 3068
    :cond_15
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result v0

    return v0
.end method

.method private handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "events"    # I

    .line 4673
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 4674
    .local v0, "eventFd":I
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_4c

    .line 4677
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 4679
    .local v1, "len":I
    if-lez v1, :cond_34

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v3, v3

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    invoke-static {v5, v1, v6}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result v5

    if-ne v3, v5, :cond_34

    .line 4681
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v4, v5, v4

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v5, v5, v2

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    const/4 v7, 0x2

    aget v6, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_34} :catch_35

    .line 4688
    .end local v1    # "len":I
    :cond_34
    goto :goto_4c

    .line 4686
    :catch_35
    move-exception v1

    .line 4687
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading unsolicited zygote message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4690
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4c
    :goto_4c
    return v2
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"    # J

    .line 3010
    const/4 v0, 0x0

    .line 3011
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v1, :cond_13

    .line 3012
    if-nez v0, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 3013
    :cond_d
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3015
    :cond_13
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2c

    .line 3016
    if-nez v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 3017
    :cond_27
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3019
    :cond_2c
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    const/4 v2, 0x1

    if-nez v1, :cond_65

    .line 3021
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-eqz v1, :cond_57

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v1, v3, p2

    if-nez v1, :cond_57

    .line 3023
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 3024
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 3025
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Don\'t abort Starting process. It\'s Target Seq. App="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 3028
    :cond_57
    if-nez v0, :cond_5f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 3029
    :cond_5f
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3032
    :cond_65
    :goto_65
    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    cmp-long v1, v3, p2

    if-lez v1, :cond_9d

    .line 3033
    if-nez v0, :cond_73

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 3034
    :cond_73
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seq="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ",expected="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3036
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-nez v1, :cond_9d

    .line 3037
    iput-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 3042
    :cond_9d
    :try_start_9d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_9d .. :try_end_aa} :catch_c3
    .catch Ljava/lang/SecurityException; {:try_start_9d .. :try_end_aa} :catch_ab

    goto :goto_c4

    .line 3045
    :catch_ab
    move-exception v1

    .line 3046
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_c2

    .line 3047
    if-nez v0, :cond_bc

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 3048
    :cond_bc
    const-string v2, "Package is frozen;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c5

    .line 3051
    :cond_c2
    throw v1

    .line 3043
    .end local v1    # "e":Ljava/lang/SecurityException;
    :catch_c3
    move-exception v1

    .line 3053
    :goto_c4
    nop

    .line 3054
    :goto_c5
    if-nez v0, :cond_c9

    const/4 v1, 0x0

    goto :goto_cd

    :cond_c9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_cd
    return-object v1
.end method

.method static killProcessGroup(II)V
    .registers 4
    .param p0, "uid"    # I
    .param p1, "pid"    # I

    .line 1836
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_e

    .line 1837
    const/16 v1, 0xfa0

    .line 1838
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1837
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_18

    .line 1840
    :cond_e
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1843
    :goto_18
    return-void
.end method

.method public static synthetic lambda$hjUwwFAIhoht4KRKnKeUve_Kcto(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .registers 9
    .param p0, "setAdj"    # I
    .param p1, "compact"    # Z

    .line 1178
    const/16 v0, 0x384

    if-lt p0, v0, :cond_13

    .line 1179
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1181
    :cond_13
    const/16 v0, 0x35c

    if-lt p0, v0, :cond_27

    .line 1182
    const/4 v3, 0x0

    const/16 v5, 0x35c

    const-string/jumbo v1, "seed  "

    const-string/jumbo v2, "seed"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1184
    :cond_27
    const/16 v0, 0x352

    if-lt p0, v0, :cond_3b

    .line 1185
    const/4 v3, 0x0

    const/16 v5, 0x352

    const-string/jumbo v1, "picked "

    const-string/jumbo v2, "picked"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1187
    :cond_3b
    const/16 v0, 0x320

    if-lt p0, v0, :cond_4f

    .line 1188
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1190
    :cond_4f
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_63

    .line 1191
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1193
    :cond_63
    const/16 v0, 0x258

    if-lt p0, v0, :cond_77

    .line 1194
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string/jumbo v1, "home  "

    const-string/jumbo v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1196
    :cond_77
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_8b

    .line 1197
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1199
    :cond_8b
    const/16 v0, 0x190

    if-lt p0, v0, :cond_9f

    .line 1200
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string/jumbo v1, "hvy   "

    const-string/jumbo v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1202
    :cond_9f
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_b1

    .line 1203
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1205
    :cond_b1
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_c5

    .line 1206
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1208
    :cond_c5
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_d9

    .line 1209
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1211
    :cond_d9
    const/16 v0, 0x64

    if-lt p0, v0, :cond_ee

    .line 1212
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1214
    :cond_ee
    if-ltz p0, :cond_fe

    .line 1215
    const/4 v5, 0x0

    const-string v1, "fg "

    const-string v2, "fg "

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_fe
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_112

    .line 1218
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1220
    :cond_112
    const/16 v0, -0x320

    if-lt p0, v0, :cond_126

    .line 1221
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1223
    :cond_126
    const/16 v0, -0x384

    if-lt p0, v0, :cond_13a

    .line 1224
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1226
    :cond_13a
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_14e

    .line 1227
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1230
    :cond_14e
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .registers 2
    .param p0, "curProcState"    # I

    .line 1308
    packed-switch p0, :pswitch_data_48

    .line 1354
    const/16 v0, 0x3e6

    return v0

    .line 1350
    :pswitch_6
    const/16 v0, 0x3fb

    return v0

    .line 1348
    :pswitch_9
    const/16 v0, 0x3fa

    return v0

    .line 1346
    :pswitch_c
    const/16 v0, 0x3f9

    return v0

    .line 1344
    :pswitch_f
    const/16 v0, 0x3f8

    return v0

    .line 1342
    :pswitch_12
    const/16 v0, 0x3f7

    return v0

    .line 1340
    :pswitch_15
    const/16 v0, 0x3f6

    return v0

    .line 1338
    :pswitch_18
    const/16 v0, 0x3f5

    return v0

    .line 1332
    :pswitch_1b
    const/16 v0, 0x3f4

    return v0

    .line 1322
    :pswitch_1e
    const/16 v0, 0x3f3

    return v0

    .line 1336
    :pswitch_21
    const/16 v0, 0x3f2

    return v0

    .line 1334
    :pswitch_24
    const/16 v0, 0x3f1

    return v0

    .line 1330
    :pswitch_27
    const/16 v0, 0x3f0

    return v0

    .line 1328
    :pswitch_2a
    const/16 v0, 0x3ef

    return v0

    .line 1326
    :pswitch_2d
    const/16 v0, 0x3ee

    return v0

    .line 1324
    :pswitch_30
    const/16 v0, 0x3ed

    return v0

    .line 1320
    :pswitch_33
    const/16 v0, 0x3ec

    return v0

    .line 1318
    :pswitch_36
    const/16 v0, 0x3eb

    return v0

    .line 1316
    :pswitch_39
    const/16 v0, 0x3fc

    return v0

    .line 1314
    :pswitch_3c
    const/16 v0, 0x3ea

    return v0

    .line 1312
    :pswitch_3f
    const/16 v0, 0x3e9

    return v0

    .line 1310
    :pswitch_42
    const/16 v0, 0x3e8

    return v0

    .line 1352
    :pswitch_45
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"    # I

    .line 1236
    packed-switch p0, :pswitch_data_46

    .line 1301
    const-string v0, "??"

    .local v0, "procState":Ljava/lang/String;
    goto :goto_45

    .line 1298
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "NONE"

    .line 1299
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1295
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "CEM "

    .line 1296
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1292
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CRE "

    .line 1293
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1289
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "CACC"

    .line 1290
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1286
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "CAC "

    .line 1287
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1283
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_15
    const-string v0, "LAST"

    .line 1284
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1280
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_18
    const-string v0, "HOME"

    .line 1281
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1277
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "HVY "

    .line 1278
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1274
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "TPSL"

    .line 1275
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1271
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_21
    const-string v0, "RCVR"

    .line 1272
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1268
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_24
    const-string v0, "SVC "

    .line 1269
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1265
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_27
    const-string v0, "BKUP"

    .line 1266
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1262
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "TRNB"

    .line 1263
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1259
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "IMPB"

    .line 1260
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1256
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_30
    const-string v0, "IMPF"

    .line 1257
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1253
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_33
    const-string v0, "BFGS"

    .line 1254
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1250
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_36
    const-string v0, "FGS "

    .line 1251
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1247
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_39
    const-string v0, "BTOP"

    .line 1248
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1244
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3c
    const-string v0, "TOP "

    .line 1245
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1241
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3f
    const-string v0, "PERU"

    .line 1242
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_45

    .line 1238
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_42
    const-string v0, "PER "

    .line 1239
    .restart local v0    # "procState":Ljava/lang/String;
    nop

    .line 1304
    :goto_45
    return-object v0

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_12
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3
    .param p0, "test"    # Z

    .line 1568
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x3a98

    :goto_7
    return-wide v0
.end method

.method private needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "storageManagerInternal"    # Landroid/os/storage/StorageManagerInternal;
    .param p2, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2629
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v0, :cond_26

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_26

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2630
    invoke-virtual {p1, v0}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v0

    if-nez v0, :cond_26

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->mountMode:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_26

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->mountMode:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_26

    iget v0, p2, Lcom/android/server/am/ProcessRecord;->mountMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_26

    const/4 v0, 0x1

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    .line 2629
    :goto_27
    return v0
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .registers 6
    .param p0, "procState"    # I
    .param p1, "memAdj"    # I
    .param p2, "currApp"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 4261
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    .line 4263
    .local v0, "imp":I
    const/16 v1, 0x190

    if-ne v0, v1, :cond_b

    .line 4264
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_e

    .line 4266
    :cond_b
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 4268
    :goto_e
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .line 1564
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v0, p0

    aget v0, v0, p1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"    # I

    .line 1749
    if-gtz p0, :cond_3

    .line 1750
    return-void

    .line 1752
    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1753
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1754
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1755
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1756
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2529
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2531
    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2530
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2532
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_17

    .line 2533
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2536
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 2537
    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2536
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 2538
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_61

    .line 2539
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2540
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2541
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_61

    .line 2542
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2543
    iget-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v3, :cond_4e

    .line 2546
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_61

    .line 2548
    :cond_4e
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2549
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2550
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2554
    .end local v2    # "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "msg":Landroid/os/Message;
    :cond_61
    :goto_61
    return-void
.end method

.method public static final setLmkdCameraKillBoost(III)V
    .registers 12
    .param p0, "state"    # I
    .param p1, "pid"    # I
    .param p2, "appIndex"    # I

    .line 1730
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1732
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1733
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1734
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1735
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1736
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1737
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1739
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1740
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_40

    .line 1741
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW setLmkdCameraKillBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_40
    return-void
.end method

.method public static final setLmkdLaunchPid(I)V
    .registers 10
    .param p0, "pid"    # I

    .line 1712
    if-gtz p0, :cond_3

    .line 1713
    return-void

    .line 1716
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1718
    .local v0, "start":J
    const/16 v2, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1719
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1720
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1721
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1723
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1724
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_46

    .line 1725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW LMKD LAUNCH PID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    :cond_46
    return-void
.end method

.method public static final setLmkdParameter(II)V
    .registers 4
    .param p0, "index"    # I
    .param p1, "value"    # I

    .line 1637
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1638
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1639
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1640
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1641
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1642
    return-void
.end method

.method public static setOomAdj(III)V
    .registers 12
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .line 1657
    if-gtz p0, :cond_3

    .line 1658
    return-void

    .line 1660
    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    .line 1661
    return-void

    .line 1663
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1664
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1665
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1666
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1667
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1668
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1669
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1670
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1671
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_58

    .line 1672
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    :cond_58
    return-void
.end method

.method public static setOomAdj(IIII)V
    .registers 12
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I
    .param p3, "stv"    # I

    .line 1679
    if-gtz p0, :cond_3

    .line 1680
    return-void

    .line 1682
    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    .line 1683
    return-void

    .line 1685
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1687
    .local v0, "start":J
    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_30

    sget-boolean v2, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_REENTRY_LMK:Z

    if-eqz v2, :cond_30

    .line 1688
    const/16 v2, 0x14

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1689
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1690
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1691
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1692
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1693
    invoke-virtual {v2, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1694
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1695
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    goto :goto_46

    .line 1696
    :cond_30
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1697
    .restart local v2    # "buf":Ljava/nio/ByteBuffer;
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1698
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1699
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1700
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1701
    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1704
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    :goto_46
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1705
    .local v2, "now":J
    sub-long v4, v2, v0

    const-wide/16 v6, 0xfa

    cmp-long v4, v4, v6

    if-lez v4, :cond_7b

    .line 1706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SLOW OOM ADJ: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v5, v2, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "ms for pid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1709
    :cond_7b
    return-void
.end method

.method private shouldEnableTaggedPointers(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 2006
    invoke-static {}, Lcom/android/internal/os/Zygote;->nativeSupportsTaggedPointers()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2007
    return v1

    .line 2011
    :cond_8
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->allowsNativeHeapPointerTagging()Z

    move-result v0

    if-nez v0, :cond_11

    .line 2012
    return v1

    .line 2016
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v2, 0x81774ca

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2017
    return v1

    .line 2020
    :cond_1f
    const/4 v0, 0x1

    return v0
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .registers 55
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v15, p4

    move-wide/from16 v13, p13

    .line 2643
    const-wide/16 v11, 0x40

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start proc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2645
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2646
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    .line 2647
    .local v0, "isTopApp":Z
    const/4 v3, 0x1

    if-eqz v0, :cond_30

    .line 2651
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->setHasForegroundActivities(Z)V

    .line 2656
    :cond_30
    const/4 v4, 0x0

    .line 2657
    .local v4, "bindMountAppStorageDirs":Z
    iget-boolean v5, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v10, 0x0

    if-eqz v5, :cond_55

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2658
    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v5

    if-nez v5, :cond_46

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v5

    if-eqz v5, :cond_55

    :cond_46
    iget-object v5, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v6, 0x89450c5

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2659
    invoke-virtual {v5, v6, v7, v8}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v5

    if-eqz v5, :cond_55

    move v5, v3

    goto :goto_56

    :cond_55
    move v5, v10

    .line 2663
    .local v5, "bindMountAppsData":Z
    :goto_56
    iget-object v6, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    move-object v9, v6

    .line 2664
    .local v9, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v9, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object v8, v6

    .line 2666
    .local v8, "sharedPackages":[Ljava/lang/String;
    array-length v6, v8

    if-nez v6, :cond_74

    .line 2667
    new-array v6, v3, [Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v10

    goto :goto_75

    :cond_74
    move-object v6, v8

    :goto_75
    move-object v7, v6

    .line 2669
    .local v7, "targetPackagesList":[Ljava/lang/String;
    invoke-direct {v1, v9, v7, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v6
    :try_end_7a
    .catchall {:try_start_a .. :try_end_7a} :catchall_28d

    .line 2670
    .local v6, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v6, :cond_7d

    .line 2673
    const/4 v5, 0x0

    .line 2678
    :cond_7d
    :try_start_7d
    new-instance v11, Landroid/util/ArraySet;

    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationWhitelistedApps:Ljava/util/ArrayList;

    invoke-direct {v11, v12}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v12, v11

    .line 2679
    .local v12, "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v11, v7

    move v3, v10

    :goto_87
    if-ge v3, v11, :cond_97

    aget-object v19, v7, v3

    move-object/from16 v20, v19

    .line 2680
    .local v20, "pkg":Ljava/lang/String;
    move-object/from16 v10, v20

    .end local v20    # "pkg":Ljava/lang/String;
    .local v10, "pkg":Ljava/lang/String;
    invoke-interface {v12, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2679
    nop

    .end local v10    # "pkg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    const/4 v10, 0x0

    goto :goto_87

    .line 2683
    :cond_97
    const/4 v3, 0x0

    new-array v10, v3, [Ljava/lang/String;

    .line 2684
    invoke-interface {v12, v10}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 2683
    invoke-direct {v1, v9, v3, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v3

    .line 2685
    .local v3, "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v3, :cond_aa

    .line 2688
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_ac

    .line 2685
    :cond_aa
    move/from16 v26, v5

    .line 2691
    .end local v5    # "bindMountAppsData":Z
    .local v26, "bindMountAppsData":Z
    :goto_ac
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    move v11, v5

    .line 2692
    .local v11, "userId":I
    const-class v5, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManagerInternal;

    move-object v10, v5

    .line 2694
    .local v10, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-direct {v1, v10, v2}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 2695
    const/4 v4, 0x1

    .line 2696
    if-eqz v6, :cond_d5

    .line 2697
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object/from16 v20, v3

    .end local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v20, "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11, v5, v3}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d2

    goto :goto_d7

    :cond_d2
    move/from16 v27, v4

    goto :goto_e2

    .line 2696
    .end local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_d5
    move-object/from16 v20, v3

    .line 2701
    .end local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_d7
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    .line 2702
    const/4 v4, 0x0

    move/from16 v27, v4

    goto :goto_e2

    .line 2694
    .end local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_de
    move-object/from16 v20, v3

    .end local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move/from16 v27, v4

    .line 2708
    .end local v4    # "bindMountAppStorageDirs":Z
    .local v27, "bindMountAppStorageDirs":Z
    :goto_e2
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v3, :cond_ed

    .line 2709
    const/4 v6, 0x0

    .line 2710
    const/4 v3, 0x0

    move-object/from16 v28, v3

    move-object/from16 v29, v6

    .end local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    goto :goto_f1

    .line 2708
    .end local v3    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_ed
    move-object/from16 v29, v6

    move-object/from16 v28, v20

    .line 2714
    .end local v6    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v20    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v28, "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v29, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_f1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v3
    :try_end_f5
    .catchall {:try_start_7d .. :try_end_f5} :catchall_288

    const-string/jumbo v4, "seq="

    if-eqz v3, :cond_16a

    .line 2715
    :try_start_fa
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v21, v3

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    move-object/from16 v22, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move/from16 v18, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    .end local v7    # "targetPackagesList":[Ljava/lang/String;
    .end local v8    # "sharedPackages":[Ljava/lang/String;
    .local v23, "sharedPackages":[Ljava/lang/String;
    .local v24, "targetPackagesList":[Ljava/lang/String;
    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v19, 0x0

    aput-object v4, v3, v19
    :try_end_12e
    .catchall {:try_start_fa .. :try_end_12e} :catchall_165

    move-object/from16 v25, v3

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v30, v24

    .end local v24    # "targetPackagesList":[Ljava/lang/String;
    .local v30, "targetPackagesList":[Ljava/lang/String;
    move-object/from16 v7, p5

    move-object/from16 v31, v23

    .end local v23    # "sharedPackages":[Ljava/lang/String;
    .local v31, "sharedPackages":[Ljava/lang/String;
    move/from16 v8, p6

    move-object/from16 v32, v9

    .end local v9    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .local v32, "pmInt":Landroid/content/pm/PackageManagerInternal;
    move/from16 v9, p8

    move-object/from16 v34, v10

    move/from16 v33, v19

    .end local v10    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v34, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    move/from16 v10, v18

    move/from16 v35, v11

    const-wide/16 v36, 0x40

    .end local v11    # "userId":I
    .local v35, "userId":I
    move-object/from16 v11, p9

    move-object/from16 v38, v12

    .end local v12    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v38, "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, v21

    move-object/from16 v17, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v22

    move-object/from16 v18, v25

    :try_start_15f
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .local v3, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_22e

    .line 2762
    .end local v0    # "isTopApp":Z
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v26    # "bindMountAppsData":Z
    .end local v27    # "bindMountAppStorageDirs":Z
    .end local v28    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v30    # "targetPackagesList":[Ljava/lang/String;
    .end local v31    # "sharedPackages":[Ljava/lang/String;
    .end local v32    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v34    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v35    # "userId":I
    .end local v38    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_165
    move-exception v0

    const-wide/16 v36, 0x40

    goto/16 :goto_285

    .line 2720
    .restart local v0    # "isTopApp":Z
    .restart local v7    # "targetPackagesList":[Ljava/lang/String;
    .restart local v8    # "sharedPackages":[Ljava/lang/String;
    .restart local v9    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v10    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v11    # "userId":I
    .restart local v12    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26    # "bindMountAppsData":Z
    .restart local v27    # "bindMountAppStorageDirs":Z
    .restart local v28    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_16a
    move-object/from16 v30, v7

    move-object/from16 v31, v8

    move-object/from16 v32, v9

    move-object/from16 v34, v10

    move/from16 v35, v11

    move-object/from16 v38, v12

    const/16 v33, 0x0

    const-wide/16 v36, 0x40

    .end local v7    # "targetPackagesList":[Ljava/lang/String;
    .end local v8    # "sharedPackages":[Ljava/lang/String;
    .end local v9    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v10    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v11    # "userId":I
    .end local v12    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v30    # "targetPackagesList":[Ljava/lang/String;
    .restart local v31    # "sharedPackages":[Ljava/lang/String;
    .restart local v32    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v34    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v35    # "userId":I
    .restart local v38    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v3

    if-eqz v3, :cond_1dd

    .line 2721
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v3

    move-object/from16 v39, v3

    .line 2724
    .local v39, "appZygote":Landroid/os/AppZygote;
    invoke-virtual/range {v39 .. v39}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v6, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v19, 0x0

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v33

    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v25, v12

    move-object/from16 v12, p9

    move-object/from16 v20, v13

    move-object/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move/from16 v18, v19

    move/from16 v19, v0

    move-object/from16 v21, v29

    move-object/from16 v22, v28

    invoke-virtual/range {v3 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2732
    .end local v39    # "appZygote":Landroid/os/AppZygote;
    .restart local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_22e

    .line 2733
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_1dd
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    const/4 v3, 0x1

    new-array v12, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v33

    move-object/from16 v3, p2

    move-object v4, v5

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v24, v12

    move-object/from16 v12, p10

    move-object/from16 v19, v13

    move-object/from16 v13, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v20, v29

    move-object/from16 v21, v28

    move/from16 v22, v26

    move/from16 v23, v27

    invoke-static/range {v3 .. v24}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2743
    .restart local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    :goto_22e
    const-string v4, "activity"

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_275

    if-eqz v3, :cond_275

    .line 2744
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v4, :cond_246

    .line 2745
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 2747
    :cond_246
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v4, :cond_275

    .line 2748
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    if-nez v4, :cond_26e

    .line 2749
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 2750
    .local v4, "pm":Landroid/content/pm/PackageManager;
    if-nez v4, :cond_25b

    move/from16 v10, v33

    goto :goto_263

    :cond_25b
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->isSpeg(Ljava/lang/String;)Z

    move-result v10

    :goto_263
    move v5, v10

    .line 2751
    .local v5, "isSpeg":Z
    if-nez v5, :cond_26d

    iget-object v6, v1, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget v7, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 2752
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "isSpeg":Z
    :cond_26d
    goto :goto_275

    .line 2753
    :cond_26e
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mTaskBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget v5, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityManagerPerformance;->notifyTaskBoost(I)V

    .line 2759
    :cond_275
    :goto_275
    const-string/jumbo v4, "startProcess: returned from zygote!"
    :try_end_278
    .catchall {:try_start_15f .. :try_end_278} :catchall_284

    move-wide/from16 v5, p13

    :try_start_27a
    invoke-direct {v1, v5, v6, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_27d
    .catchall {:try_start_27a .. :try_end_27d} :catchall_282

    .line 2760
    nop

    .line 2762
    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    .line 2760
    return-object v3

    .line 2762
    .end local v0    # "isTopApp":Z
    .end local v3    # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v26    # "bindMountAppsData":Z
    .end local v27    # "bindMountAppStorageDirs":Z
    .end local v28    # "whitelistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v29    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v30    # "targetPackagesList":[Ljava/lang/String;
    .end local v31    # "sharedPackages":[Ljava/lang/String;
    .end local v32    # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v34    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v35    # "userId":I
    .end local v38    # "whitelistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_282
    move-exception v0

    goto :goto_291

    :catchall_284
    move-exception v0

    :goto_285
    move-wide/from16 v5, p13

    goto :goto_291

    :catchall_288
    move-exception v0

    move-wide v5, v13

    const-wide/16 v36, 0x40

    goto :goto_291

    :catchall_28d
    move-exception v0

    move-wide/from16 v36, v11

    move-wide v5, v13

    :goto_291
    invoke-static/range {v36 .. v37}, Landroid/os/Trace;->traceEnd(J)V

    .line 2763
    throw v0
.end method

.method private updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V
    .registers 21
    .param p1, "topApp"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"    # I
    .param p3, "bottomI"    # I
    .param p4, "endIndex"    # I

    .line 3837
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v3

    if-nez v3, :cond_320

    iget-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v3, :cond_320

    .line 3838
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_320

    .line 3844
    :cond_18
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3845
    .local v3, "uid":I
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    const-string v5, " group="

    const-string v6, " @ "

    const-string v7, "ActivityManager"

    if-lez v4, :cond_144

    .line 3846
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    .line 3847
    .local v4, "endImportance":I
    move/from16 v8, p4

    move v9, v8

    move v8, v4

    move/from16 v4, p4

    .end local p4    # "endIndex":I
    .local v4, "endIndex":I
    .local v8, "endImportance":I
    .local v9, "i":I
    :goto_2e
    if-lt v9, v2, :cond_141

    .line 3848
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3849
    .local v10, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_137

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-ne v11, v12, :cond_137

    .line 3851
    if-ne v9, v4, :cond_82

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-lt v11, v8, :cond_82

    .line 3855
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_7c

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Keeping in-place above "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " endImportance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3860
    :cond_7c
    add-int/lit8 v4, v4, -0x1

    .line 3861
    iget v8, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    goto/16 :goto_13b

    .line 3865
    :cond_82
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_a4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Pulling up "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " to position in group with importance="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    :cond_a4
    const/4 v11, 0x0

    .line 3870
    .local v11, "moved":Z
    move/from16 v12, p2

    .local v12, "pos":I
    :goto_a7
    const-string v13, " from position "

    const-string v14, "Moving "

    if-le v12, v4, :cond_fc

    .line 3871
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/ProcessRecord;

    .line 3872
    .local v15, "posProc":Lcom/android/server/am/ProcessRecord;
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move/from16 p4, v8

    .end local v8    # "endImportance":I
    .local p4, "endImportance":I
    iget v8, v15, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    if-gt v1, v8, :cond_f5

    .line 3874
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3875
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v12, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3876
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_f1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to above "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3880
    :cond_f1
    const/4 v11, 0x1

    .line 3881
    add-int/lit8 v4, v4, -0x1

    .line 3882
    goto :goto_fe

    .line 3870
    .end local v15    # "posProc":Lcom/android/server/am/ProcessRecord;
    :cond_f5
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v1, p1

    move/from16 v8, p4

    goto :goto_a7

    .end local p4    # "endImportance":I
    .restart local v8    # "endImportance":I
    :cond_fc
    move/from16 p4, v8

    .line 3885
    .end local v8    # "endImportance":I
    .end local v12    # "pos":I
    .restart local p4    # "endImportance":I
    :goto_fe
    if-nez v11, :cond_134

    .line 3887
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3888
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3889
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_12e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to end of group @ "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3893
    :cond_12e
    add-int/lit8 v4, v4, -0x1

    .line 3894
    iget v1, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    move v8, v1

    .end local p4    # "endImportance":I
    .local v1, "endImportance":I
    goto :goto_13b

    .line 3885
    .end local v1    # "endImportance":I
    .restart local p4    # "endImportance":I
    :cond_134
    move/from16 v8, p4

    goto :goto_13b

    .line 3849
    .end local v11    # "moved":Z
    .end local p4    # "endImportance":I
    .restart local v8    # "endImportance":I
    :cond_137
    move/from16 p4, v8

    .line 3847
    .end local v8    # "endImportance":I
    .end local v10    # "subProc":Lcom/android/server/am/ProcessRecord;
    .restart local p4    # "endImportance":I
    move/from16 v8, p4

    .end local p4    # "endImportance":I
    .restart local v8    # "endImportance":I
    :goto_13b
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v1, p1

    goto/16 :goto_2e

    :cond_141
    move/from16 p4, v8

    .end local v8    # "endImportance":I
    .restart local p4    # "endImportance":I
    goto :goto_146

    .line 3845
    .end local v4    # "endIndex":I
    .end local v9    # "i":I
    .local p4, "endIndex":I
    :cond_144
    move/from16 v4, p4

    .line 3903
    .end local p4    # "endIndex":I
    .restart local v4    # "endIndex":I
    :goto_146
    move v1, v4

    .line 3904
    .local v1, "i":I
    :goto_147
    if-lt v1, v2, :cond_31f

    .line 3905
    iget-object v8, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3906
    .local v8, "subProc":Lcom/android/server/am/ProcessRecord;
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v9, :cond_16f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Looking to spread old procs, at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3908
    :cond_16f
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v9, v3, :cond_31b

    .line 3912
    if-ge v1, v4, :cond_285

    .line 3913
    const/4 v9, 0x0

    .line 3914
    .local v9, "hasActivity":Z
    const/4 v10, 0x0

    .line 3915
    .local v10, "connUid":I
    const/4 v11, 0x0

    .line 3916
    .local v11, "connGroup":I
    :goto_17a
    if-lt v1, v2, :cond_285

    .line 3917
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3918
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v4, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3919
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_19e

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Different app, moving to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3921
    :cond_19e
    add-int/lit8 v1, v1, -0x1

    .line 3922
    if-ge v1, v2, :cond_1a4

    .line 3923
    goto/16 :goto_285

    .line 3925
    :cond_1a4
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v8, v12

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 3926
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1cd

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Looking at next app at "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ": "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    :cond_1cd
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v12

    if-nez v12, :cond_26b

    iget-boolean v12, v8, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v12, :cond_1d9

    goto/16 :goto_26b

    .line 3938
    :cond_1d9
    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v12

    if-eqz v12, :cond_281

    .line 3939
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_1e8

    const-string v12, "This is a client of an activity"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3941
    :cond_1e8
    if-eqz v9, :cond_23f

    .line 3942
    if-eqz v10, :cond_21a

    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v10, v12, :cond_1f3

    goto :goto_21a

    .line 3949
    :cond_1f3
    if-eqz v11, :cond_1f9

    iget v12, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_281

    .line 3952
    :cond_1f9
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_285

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different group: connGroup="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_285

    .line 3945
    :cond_21a
    :goto_21a
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_285

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Already found a different activity: connUid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_285

    .line 3958
    :cond_23f
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_263

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "This is an activity client!  uid="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3961
    :cond_263
    const/4 v9, 0x1

    .line 3962
    iget-object v12, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3963
    iget v11, v8, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    goto :goto_281

    .line 3929
    :cond_26b
    :goto_26b
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_274

    const-string v12, "This is hosting an activity!"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3931
    :cond_274
    if-eqz v9, :cond_280

    .line 3933
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_285

    const-string v12, "Already found an activity, done"

    invoke-static {v7, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_285

    .line 3937
    :cond_280
    const/4 v9, 0x1

    .line 3966
    :cond_281
    :goto_281
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_17a

    .line 3973
    .end local v9    # "hasActivity":Z
    .end local v10    # "connUid":I
    .end local v11    # "connGroup":I
    :cond_285
    :goto_285
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_2b7

    .line 3974
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3975
    .local v9, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v10, v3, :cond_2b6

    .line 3976
    sget-boolean v10, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v10, :cond_2b7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found next group of app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b7

    .line 3975
    .end local v9    # "endProc":Lcom/android/server/am/ProcessRecord;
    :cond_2b6
    goto :goto_285

    .line 3982
    :cond_2b7
    :goto_2b7
    if-lt v4, v2, :cond_301

    .line 3983
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 3984
    .restart local v9    # "endProc":Lcom/android/server/am/ProcessRecord;
    :goto_2c1
    add-int/lit8 v4, v4, -0x1

    if-lt v4, v2, :cond_301

    .line 3985
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3986
    .local v10, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v11, v3, :cond_2db

    iget v11, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    iget v12, v9, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    if-eq v11, v12, :cond_2da

    goto :goto_2db

    .end local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_2da
    goto :goto_2c1

    .line 3988
    .restart local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_2db
    :goto_2db
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_301

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Found next group or app: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    .end local v9    # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v10    # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    :cond_301
    sget-boolean v9, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v9, :cond_319

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Bumping scan position to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3997
    :cond_319
    move v1, v4

    goto :goto_31d

    .line 3999
    :cond_31b
    add-int/lit8 v1, v1, -0x1

    .line 4001
    .end local v8    # "subProc":Lcom/android/server/am/ProcessRecord;
    :goto_31d
    goto/16 :goto_147

    .line 4002
    :cond_31f
    return-void

    .line 3841
    .end local v1    # "i":I
    .end local v3    # "uid":I
    .end local v4    # "endIndex":I
    .restart local p4    # "endIndex":I
    :cond_320
    :goto_320
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .registers 25
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .line 989
    move-object/from16 v1, p0

    iget-wide v2, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v4, 0x15e

    sub-long/2addr v2, v4

    long-to-float v0, v2

    const/high16 v2, 0x43af0000    # 350.0f

    div-float/2addr v0, v2

    .line 992
    .local v0, "scaleMem":F
    const v2, 0x5dc00

    .line 993
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 997
    .local v3, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-nez v4, :cond_2b

    iget-wide v4, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v6, 0x600

    cmp-long v4, v4, v6

    if-gez v4, :cond_27

    mul-int v4, p1, p2

    const v5, 0xfa000

    if-lt v4, v5, :cond_27

    goto :goto_2b

    .line 1007
    :cond_27
    move v4, v3

    move v3, v2

    move v2, v0

    goto :goto_3f

    .line 999
    :cond_2b
    :goto_2b
    iget-wide v4, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v6, 0x12c

    sub-long/2addr v4, v6

    long-to-float v4, v4

    const v5, 0x44b54000    # 1450.0f

    div-float v0, v4, v5

    .line 1001
    const v2, 0x25800

    .line 1002
    const v3, 0x1fa400

    move v4, v3

    move v3, v2

    move v2, v0

    .line 1007
    .end local v0    # "scaleMem":F
    .local v2, "scaleMem":F
    .local v3, "minSize":I
    .local v4, "maxSize":I
    :goto_3f
    mul-int v0, p1, p2

    int-to-float v0, v0

    int-to-float v5, v3

    sub-float/2addr v0, v5

    sub-int v5, v4, v3

    int-to-float v5, v5

    div-float v5, v0, v5

    .line 1014
    .local v5, "scaleDisp":F
    cmpl-float v0, v2, v5

    if-lez v0, :cond_4f

    move v0, v2

    goto :goto_50

    :cond_4f
    move v0, v5

    .line 1015
    .local v0, "scale":F
    :goto_50
    const/4 v6, 0x0

    cmpg-float v6, v0, v6

    if-gez v6, :cond_57

    const/4 v0, 0x0

    goto :goto_5f

    .line 1016
    :cond_57
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v0, v6

    if-lez v6, :cond_5f

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1017
    :cond_5f
    :goto_5f
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e009a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 1019
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0099

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 1027
    .local v7, "minfree_abs":I
    sget v8, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v9, -0x40800000    # -1.0f

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_81

    .line 1028
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    move v8, v0

    goto :goto_82

    .line 1027
    :cond_81
    move v8, v0

    .line 1033
    .end local v0    # "scale":F
    .local v8, "scale":F
    :goto_82
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v10, 0x1

    if-lez v0, :cond_8a

    move v0, v10

    goto :goto_8b

    :cond_8a
    const/4 v0, 0x0

    :goto_8b
    move v11, v0

    .line 1035
    .local v11, "is64bit":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8d
    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x2

    const/4 v14, 0x4

    if-ge v0, v12, :cond_ba

    .line 1036
    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v0

    .line 1037
    .local v12, "low":I
    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v15, v15, v0

    .line 1038
    .local v15, "high":I
    if-eqz v11, :cond_ac

    .line 1040
    if-ne v0, v14, :cond_a5

    mul-int/lit8 v14, v15, 0x3

    div-int/lit8 v15, v14, 0x2

    goto :goto_ac

    .line 1041
    :cond_a5
    const/4 v13, 0x5

    if-ne v0, v13, :cond_ac

    mul-int/lit8 v13, v15, 0x7

    div-int/lit8 v15, v13, 0x4

    .line 1043
    :cond_ac
    :goto_ac
    iget-object v13, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v12

    sub-int v9, v15, v12

    int-to-float v9, v9

    mul-float/2addr v9, v8

    add-float/2addr v14, v9

    float-to-int v9, v14

    aput v9, v13, v0

    .line 1035
    .end local v12    # "low":I
    .end local v15    # "high":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 1046
    .end local v0    # "i":I
    :cond_ba
    if-ltz v7, :cond_d6

    .line 1047
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_bd
    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v9

    if-ge v0, v12, :cond_d6

    .line 1048
    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v7

    aget v13, v12, v0

    int-to-float v13, v13

    mul-float/2addr v15, v13

    array-length v9, v9

    sub-int/2addr v9, v10

    aget v9, v12, v9

    int-to-float v9, v9

    div-float/2addr v15, v9

    float-to-int v9, v15

    aput v9, v12, v0

    .line 1047
    add-int/lit8 v0, v0, 0x1

    const/4 v13, 0x2

    goto :goto_bd

    .line 1053
    .end local v0    # "i":I
    :cond_d6
    if-eqz v6, :cond_fc

    .line 1054
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_d9
    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v9

    if-ge v0, v12, :cond_fc

    .line 1055
    iget-object v12, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v13, v12, v0

    int-to-float v15, v6

    aget v14, v12, v0

    int-to-float v14, v14

    mul-float/2addr v15, v14

    array-length v9, v9

    sub-int/2addr v9, v10

    aget v9, v12, v9

    int-to-float v9, v9

    div-float/2addr v15, v9

    float-to-int v9, v15

    add-int/2addr v13, v9

    aput v13, v12, v0

    .line 1057
    aget v9, v12, v0

    if-gez v9, :cond_f8

    .line 1058
    const/4 v9, 0x0

    aput v9, v12, v0

    .line 1054
    :cond_f8
    add-int/lit8 v0, v0, 0x1

    const/4 v14, 0x4

    goto :goto_d9

    .line 1066
    .end local v0    # "i":I
    :cond_fc
    const/16 v0, 0x3e7

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long/2addr v12, v14

    const-wide/16 v17, 0x3

    div-long v12, v12, v17

    iput-wide v12, v1, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 1070
    mul-int v0, p1, p2

    const/4 v9, 0x4

    mul-int/2addr v0, v9

    mul-int/lit8 v0, v0, 0x3

    div-int/lit16 v0, v0, 0x400

    .line 1071
    .local v0, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    const v12, 0x10e0082

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v9

    .line 1073
    .local v9, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0081

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1076
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_12c

    .line 1077
    move v0, v12

    .line 1080
    :cond_12c
    if-eqz v9, :cond_132

    .line 1081
    add-int/2addr v0, v9

    .line 1082
    if-gez v0, :cond_132

    .line 1083
    const/4 v0, 0x0

    .line 1090
    :cond_132
    const/4 v13, 0x0

    .line 1091
    .local v13, "bonus":I
    move/from16 v18, v11

    .end local v11    # "is64bit":Z
    .local v18, "is64bit":Z
    iget-wide v10, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v19, 0xc00

    cmp-long v10, v10, v19

    const-wide v19, 0x3f847ae147ae147bL    # 0.01

    if-ltz v10, :cond_14f

    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v10

    if-nez v10, :cond_14f

    .line 1092
    iget-wide v10, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    mul-long/2addr v10, v14

    long-to-double v10, v10

    mul-double v10, v10, v19

    double-to-int v13, v10

    .line 1094
    :cond_14f
    sget v10, Lcom/android/server/am/ProcessList;->addBonusEFK:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15c

    .line 1095
    iget-wide v10, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    mul-long/2addr v10, v14

    long-to-double v10, v10

    mul-double v10, v10, v19

    double-to-int v13, v10

    goto :goto_165

    .line 1096
    :cond_15c
    const/4 v11, 0x2

    if-ne v10, v11, :cond_162

    .line 1097
    sget v13, Lcom/android/server/am/ProcessList;->v_BonusEFK:I

    goto :goto_165

    .line 1098
    :cond_162
    if-nez v10, :cond_165

    .line 1099
    const/4 v13, 0x0

    .line 1101
    :cond_165
    :goto_165
    sget-boolean v10, Lcom/android/server/am/DynamicHiddenApp;->IS_HIGH_CAPACITY_RAM:Z

    if-eqz v10, :cond_174

    .line 1102
    iget-wide v10, v1, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    mul-long/2addr v10, v14

    long-to-double v10, v10

    const-wide v14, 0x3f9eb851eb851eb8L    # 0.03

    mul-double/2addr v10, v14

    double-to-int v13, v10

    .line 1105
    :cond_174
    add-int v10, v0, v13

    .line 1108
    .end local v0    # "reserve":I
    .local v10, "reserve":I
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v11, "none"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1bf

    .line 1109
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1110
    .local v11, "mMinFreeProperty":[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "updateOomLevels using LMKArray "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v14, "ActivityManager"

    invoke-static {v14, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1a3
    :try_start_1a3
    array-length v15, v11

    if-ge v0, v15, :cond_1b7

    .line 1114
    iget-object v15, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget-object v19, v11, v0

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const/16 v16, 0x4

    mul-int/lit8 v19, v19, 0x4

    aput v19, v15, v0
    :try_end_1b4
    .catch Ljava/lang/NumberFormatException; {:try_start_1a3 .. :try_end_1b4} :catch_1b8

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a3

    .line 1118
    .end local v0    # "i":I
    :cond_1b7
    goto :goto_1bf

    .line 1116
    :catch_1b8
    move-exception v0

    .line 1117
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    const-string/jumbo v15, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static {v14, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v11    # "mMinFreeProperty":[Ljava/lang/String;
    .end local v13    # "bonus":I
    :cond_1bf
    :goto_1bf
    if-eqz p3, :cond_206

    .line 1124
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v0, v0

    const/4 v11, 0x2

    mul-int/2addr v0, v11

    const/4 v11, 0x1

    add-int/2addr v0, v11

    const/4 v11, 0x4

    mul-int/2addr v0, v11

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1125
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1126
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1d3
    iget-object v13, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    if-ge v11, v13, :cond_1ed

    .line 1127
    iget-object v13, v1, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v13, v13, v11

    mul-int/lit16 v13, v13, 0x400

    div-int/lit16 v13, v13, 0x1000

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1128
    iget-object v13, v1, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v13, v13, v11

    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1126
    add-int/lit8 v11, v11, 0x1

    goto :goto_1d3

    .line 1131
    .end local v11    # "i":I
    :cond_1ed
    const/4 v11, 0x0

    invoke-static {v0, v11}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1134
    const-string/jumbo v11, "sys.sysctl.watermark_boost_factor"

    const-string v13, "0"

    invoke-static {v11, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v13, "sys.sysctl.extra_free_kbytes"

    invoke-static {v13, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1138
    const/4 v11, 0x1

    iput-boolean v11, v1, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 1142
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    :cond_206
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "repl"    # Ljava/nio/ByteBuffer;

    .line 1804
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1806
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1807
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1806
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1810
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1811
    const/4 v0, 0x0

    return v0

    .line 1815
    :cond_1f
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method final addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "proc"    # Lcom/android/server/am/ProcessRecord;

    .line 3473
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 3474
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    const-string v1, "ActivityManager"

    if-ne v0, p1, :cond_27

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 3476
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-adding persistent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 3477
    :cond_27
    if-eqz v0, :cond_45

    .line 3478
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already have existing proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " when adding "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    :cond_45
    :goto_45
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3481
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    const/4 v3, 0x1

    if-nez v2, :cond_ac

    .line 3482
    new-instance v4, Lcom/android/server/am/UidRecord;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v4, v5}, Lcom/android/server/am/UidRecord;-><init>(I)V

    move-object v2, v4

    .line 3484
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v4, :cond_70

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new process uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3486
    :cond_70
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempWhitelist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3487
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 3486
    invoke-static {v1, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_8c

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingTempWhitelist:Lcom/android/server/am/PendingTempWhitelists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3488
    invoke-virtual {v1, v4}, Lcom/android/server/am/PendingTempWhitelists;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_90

    .line 3489
    :cond_8c
    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->curWhitelist:Z

    iput-boolean v3, v2, Lcom/android/server/am/UidRecord;->setWhitelist:Z

    .line 3491
    :cond_90
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3492
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3493
    iget v1, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v1}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3494
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v4, v2, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    iget v6, v2, Lcom/android/server/am/UidRecord;->curCapability:I

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3497
    :cond_ac
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 3498
    iget-object v1, v2, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 3501
    const/4 v1, 0x0

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->renderThreadTid:I

    .line 3502
    iget v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    add-int/2addr v1, v3

    iput v1, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 3503
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, v4, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3506
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SUPPORT_IQI:Z

    if-eqz v1, :cond_d6

    .line 3507
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string v3, "com.att.iqi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 3508
    const/16 v1, -0x320

    iput v1, p1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 3513
    :cond_d6
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_e1

    .line 3514
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3516
    :cond_e1
    return-void
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 7
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .line 919
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    if-eqz v0, :cond_52

    .line 920
    :cond_8
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 922
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 923
    iget v2, v0, Landroid/graphics/Point;->x:I

    if-eqz v2, :cond_52

    iget v2, v0, Landroid/graphics/Point;->y:I

    if-eqz v2, :cond_52

    .line 926
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 927
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 930
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 931
    iput-boolean v4, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 934
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Lcom/android/server/am/DynamicHiddenApp;->setTaskSnapshot(II)V

    .line 935
    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessList;->getCachedNumByRes(II)V

    .line 936
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 940
    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isKPMEnabled()Z

    move-result v1

    if-eqz v1, :cond_52

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    if-eqz v1, :cond_52

    .line 941
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mKillPolicyManager:Lcom/android/server/am/KillPolicyManager;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/KillPolicyManager;->updateDisplaySize(II)V

    .line 946
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_52
    return-void
.end method

.method clearAllDnsCacheLocked()V
    .registers 7

    .line 3738
    const-string v0, "ActivityManager"

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_68

    .line 3739
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3740
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_65

    .line 3745
    :try_start_18
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->scheduleAppThreadTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 3746
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_22} :catch_2b
    .catchall {:try_start_18 .. :try_end_22} :catchall_29

    .line 3752
    :try_start_22
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->unScheduleAppThreadTimeout(Lcom/android/server/am/ProcessRecord;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_4c

    .line 3753
    nop

    .line 3760
    goto :goto_65

    .line 3752
    :catchall_29
    move-exception v3

    goto :goto_45

    .line 3747
    :catch_2b
    move-exception v3

    .line 3748
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Callback Function is canceled because of app Stuck. e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 3750
    nop

    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    throw v3
    :try_end_45
    .catchall {:try_start_2c .. :try_end_45} :catchall_29

    .line 3752
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    :goto_45
    :try_start_45
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ActivityManagerService;->unScheduleAppThreadTimeout(Lcom/android/server/am/ProcessRecord;)V

    .line 3753
    nop

    .end local v1    # "i":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    throw v3
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4c} :catch_4c

    .line 3758
    .restart local v1    # "i":I
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    :catch_4c
    move-exception v3

    .line 3759
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear dns cache for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3738
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_65
    :goto_65
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 3763
    .end local v1    # "i":I
    :cond_68
    return-void
.end method

.method collectProcessesLocked(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "start"    # I
    .param p2, "allPkgs"    # Z
    .param p3, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4377
    if-eqz p3, :cond_6a

    array-length v0, p3

    if-le v0, p1, :cond_6a

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 4378
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_6a

    .line 4379
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4380
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 4382
    .local v1, "pid":I
    :try_start_16
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v1, v2

    .line 4384
    goto :goto_1f

    .line 4383
    :catch_1e
    move-exception v2

    .line 4385
    :goto_1f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_61

    .line 4386
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4387
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v4, :cond_3d

    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v4, v1, :cond_3d

    .line 4388
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 4389
    :cond_3d
    if-eqz p2, :cond_51

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    if-eqz v4, :cond_51

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    aget-object v5, p3, p1

    .line 4390
    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    .line 4391
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 4392
    :cond_51
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 4393
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4385
    .end local v3    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_5e
    :goto_5e
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 4396
    .end local v2    # "i":I
    :cond_61
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_69

    .line 4397
    const/4 v2, 0x0

    return-object v2

    .line 4399
    .end local v1    # "pid":I
    :cond_69
    goto :goto_71

    .line 4400
    .end local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_6a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4402
    .restart local v0    # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_71
    return-object v0
.end method

.method doStopUidForIdleUidsLocked()V
    .registers 7

    .line 4515
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 4516
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 4517
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 4518
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4519
    goto :goto_28

    .line 4521
    :cond_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4522
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->idle:Z

    if-nez v4, :cond_21

    .line 4523
    goto :goto_28

    .line 4525
    :cond_21
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 4516
    .end local v2    # "uid":I
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4527
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 4366
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4367
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4368
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4369
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4370
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4371
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4372
    return-void
.end method

.method fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 14
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"    # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"    # I

    .line 4275
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 4276
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 4277
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isHeavyWeightProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    .line 4278
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4280
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_2a

    .line 4281
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4283
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 4284
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4286
    :cond_36
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->trimMemoryLevel:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 4287
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 4288
    .local v0, "adj":I
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    .line 4289
    .local v3, "procState":I
    invoke-static {v3, v0, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 4291
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->adjTypeCode:I

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 4292
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 4293
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    const/4 v5, 0x0

    if-ne p1, v4, :cond_5b

    move v4, v1

    goto :goto_5c

    :cond_5b
    move v4, v5

    :goto_5c
    iput-boolean v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 4294
    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    iput-wide v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 4297
    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    iput-wide v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    .line 4298
    iget-wide v6, p1, Lcom/android/server/am/ProcessRecord;->initialIdlePss:J

    iput-wide v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->initialIdlePss:J

    .line 4299
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_89

    .line 4300
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v4}, Lcom/android/internal/app/procstats/ProcessState;->getTotalRunningPss()[J

    move-result-object v4

    .line 4301
    .local v4, "totalRunningPss":[J
    aget-wide v6, v4, v5

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_89

    .line 4302
    aget-wide v6, v4, v2

    iput-wide v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    .line 4303
    aget-wide v6, v4, v1

    iput-wide v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->minPss:J

    .line 4304
    const/4 v2, 0x3

    aget-wide v6, v4, v2

    iput-wide v6, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->maxPss:J

    .line 4307
    .end local v4    # "totalRunningPss":[J
    :cond_89
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    if-gtz v2, :cond_93

    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    if-eqz v2, :cond_92

    goto :goto_93

    :cond_92
    move v1, v5

    :cond_93
    :goto_93
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 4308
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->numberOfRunningServices()I

    move-result v1

    if-lez v1, :cond_a1

    .line 4309
    iget v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 4312
    :cond_a1
    return-void
.end method

.method findAppProcessLocked(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 10
    .param p1, "app"    # Landroid/os/IBinder;
    .param p2, "reason"    # Ljava/lang/String;

    .line 1924
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1925
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_b
    if-ge v1, v0, :cond_39

    .line 1926
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1927
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1928
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1e
    if-ge v4, v3, :cond_36

    .line 1929
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1930
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_33

    iget-object v6, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    if-ne v6, p1, :cond_33

    .line 1931
    return-object v5

    .line 1928
    .end local v5    # "p":Lcom/android/server/am/ProcessRecord;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1925
    .end local v2    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3    # "NA":I
    .end local v4    # "ia":I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1936
    .end local v1    # "ip":I
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1937
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1938
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1936
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    const/4 v1, 0x0

    return-object v1
.end method

.method getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .registers 6
    .param p1, "uidRec"    # Lcom/android/server/am/UidRecord;

    .line 4541
    nop

    .line 4542
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1a

    .line 4543
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    :goto_1a
    move v0, v2

    .line 4545
    .local v0, "isAllowed":Z
    :goto_1b
    iget v3, p1, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result v3

    if-nez v3, :cond_2e

    iget v3, p1, Lcom/android/server/am/UidRecord;->setProcState:I

    .line 4546
    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2e

    :cond_2c
    move v3, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v3, v2

    .line 4550
    .local v3, "wasAllowed":Z
    :goto_2f
    if-nez v3, :cond_34

    if-eqz v0, :cond_34

    .line 4551
    return v2

    .line 4555
    :cond_34
    if-eqz v3, :cond_3a

    if-nez v0, :cond_3a

    .line 4556
    const/4 v1, 0x2

    return v1

    .line 4558
    :cond_3a
    return v1
.end method

.method public getCachedNumByRes(II)V
    .registers 7
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I

    .line 1146
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->HRT_MaxCached_Enable:Z

    if-eqz v0, :cond_10

    mul-int v0, p1, p2

    const v1, 0x384000

    if-lt v0, v1, :cond_10

    .line 1147
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->highRes_MaxCached:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    goto :goto_14

    .line 1149
    :cond_10
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->normalRes_MaxCached:I

    sput v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    .line 1151
    :goto_14
    sget v0, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->DEFAULT_MAX_CACHED_PROCESSES:I

    .line 1152
    const/high16 v0, 0x3f800000    # 1.0f

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    int-to-float v1, v1

    sget v2, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    sget v3, Lcom/android/server/am/DynamicHiddenApp;->MAX_EMPTY_APPS:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    sput v0, Lcom/android/server/am/ActivityManagerConstants;->EMPTY_RATE:F

    .line 1153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change Max_Cached : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/DynamicHiddenApp;->MAX_CACHED_APPS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .line 1633
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method final getLRURecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 7
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .line 4233
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4234
    return-object v0

    .line 4236
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 4238
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_2a

    .line 4239
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4240
    .local v3, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v4, :cond_27

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v1, :cond_27

    .line 4241
    return-object v3

    .line 4238
    .end local v3    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 4244
    .end local v2    # "i":I
    :cond_2a
    return-object v0
.end method

.method getLruSizeLocked()I
    .registers 2

    .line 4361
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .registers 5
    .param p1, "adjustment"    # I

    .line 1620
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 1621
    aget v1, v1, v0

    if-gt p1, v1, :cond_12

    .line 1622
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1620
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1625
    .end local v0    # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 12
    .param p1, "outInfo"    # Landroid/app/ActivityManager$MemoryInfo;

    .line 1911
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1912
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1913
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1914
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1915
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1916
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    move v4, v5

    :goto_2a
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1917
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1918
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1919
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1920
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1921
    return-void
.end method

.method final getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;
    .registers 16
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "keepIfLarge"    # Z

    .line 1847
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 1851
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1852
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 1853
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1854
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 1855
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1856
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1858
    goto :goto_33

    .line 1860
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1854
    .end local v3    # "procUid":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1863
    .end local v0    # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1    # "procCount":I
    .end local v2    # "i":I
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1883
    .local v0, "proc":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_d5

    if-nez p3, :cond_d5

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v1, v1, Lcom/android/server/am/ActivityManagerService;->mLastMemoryLevel:I

    if-lez v1, :cond_d5

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_d5

    .line 1886
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v1, :cond_72

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "May not keep "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": pss="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_72
    iget-wide v1, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_d5

    .line 1889
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    const/4 v2, 0x1

    if-eqz v1, :cond_b7

    .line 1890
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    iget-wide v4, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/app/procstats/ProcessState;->reportCachedKill(Landroid/util/ArrayMap;J)V

    .line 1892
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_93
    if-ltz v1, :cond_b7

    .line 1893
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ProcessRecord$PackageList;->valueAt(I)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    move-result-object v3

    .line 1894
    .local v3, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    const/16 v4, 0x11

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1896
    invoke-virtual {v6}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 1897
    invoke-virtual {v7}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    iget-wide v10, v3, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1894
    invoke-static/range {v4 .. v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;JJ)V

    .line 1892
    .end local v3    # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    add-int/lit8 v1, v1, -0x1

    goto :goto_93

    .line 1901
    .end local v1    # "ipkg":I
    :cond_b7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, v0, Lcom/android/server/am/ProcessRecord;->lastCachedPss:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "k from cached"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0xd

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 1907
    :cond_d5
    return-object v0
.end method

.method getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .registers 9
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 953
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 954
    .local v0, "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 955
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_41

    .line 956
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 957
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_3e

    iget-boolean v4, v3, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    if-nez v4, :cond_26

    .line 958
    goto :goto_3e

    .line 960
    :cond_26
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 963
    .local v4, "pid":I
    if-eqz v4, :cond_36

    .line 967
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    .line 964
    :cond_36
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Pending process is not started yet,retry later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "userId":I
    throw v5

    .line 955
    .end local v3    # "record":Lcom/android/server/am/ProcessRecord;
    .end local v4    # "pid":I
    .restart local v0    # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "userId":I
    :cond_3e
    :goto_3e
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 969
    .end local v2    # "i":I
    :cond_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 970
    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method getRunningAppProcessesLocked(ZIZII)Ljava/util/List;
    .registers 13
    .param p1, "allUsers"    # Z
    .param p2, "userId"    # I
    .param p3, "allUids"    # Z
    .param p4, "callingUid"    # I
    .param p5, "clientTargetSdk"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 4318
    const/4 v0, 0x0

    .line 4320
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_84

    .line 4321
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4322
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    if-nez p1, :cond_19

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p2, :cond_81

    :cond_19
    if-nez p3, :cond_20

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v3, p4, :cond_20

    .line 4324
    goto :goto_81

    .line 4326
    :cond_20
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_81

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v3

    if-nez v3, :cond_81

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isNotResponding()Z

    move-result v3

    if-nez v3, :cond_81

    .line 4328
    new-instance v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 4330
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 4331
    .local v3, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v2, v3, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLocked(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 4332
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_57

    .line 4333
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4334
    iget v4, v2, Lcom/android/server/am/ProcessRecord;->adjSourceProcState:I

    .line 4335
    invoke-static {v4}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v4

    iput v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_6a

    .line 4337
    :cond_57
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v4, :cond_6a

    .line 4338
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v4, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 4340
    .local v4, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v5

    .line 4341
    .local v5, "pid":I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_6a

    .line 4342
    iput v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 4345
    .end local v4    # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v5    # "pid":I
    :cond_6a
    :goto_6a
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/ComponentName;

    if-eqz v4, :cond_76

    .line 4346
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->adjTarget:Ljava/lang/Object;

    check-cast v4, Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 4350
    :cond_76
    if-nez v0, :cond_7e

    .line 4351
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 4353
    :cond_7e
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4320
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_81
    :goto_81
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4356
    .end local v1    # "i":I
    :cond_84
    return-object v0
.end method

.method getUidProcStateLocked(I)I
    .registers 4
    .param p1, "uid"    # I

    .line 4499
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 4500
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_b

    const/16 v1, 0x14

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_f
    return v1
.end method

.method getUidRecordLocked(I)Lcom/android/server/am/UidRecord;
    .registers 3
    .param p1, "uid"    # I

    .line 4506
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method public getmIsDisplayChanged()Z
    .registers 2

    .line 983
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    return v0
.end method

.method handleAllTrustStorageUpdateLocked()V
    .registers 6

    .line 3767
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 3768
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3769
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 3771
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 3775
    goto :goto_37

    .line 3772
    :catch_1c
    move-exception v2

    .line 3773
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to handle trust storage update for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3767
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3778
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .registers 29
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"    # I
    .param p3, "usingWrapper"    # Z
    .param p4, "expectedStartSeq"    # J
    .param p6, "procAttached"    # Z

    .line 3075
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move-wide/from16 v11, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v11, v12}, Landroid/util/LongSparseArray;->remove(J)V

    .line 3076
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v13

    .line 3077
    .local v13, "reason":Ljava/lang/String;
    const/4 v14, 0x0

    if-eqz v13, :cond_49

    .line 3078
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " start not valid, killing pid="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ActivityManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 3082
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 3083
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 3084
    const/16 v0, 0xd

    invoke-virtual {v1, v2, v0, v0, v13}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 3086
    return v14

    .line 3088
    :cond_49
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 3089
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3091
    const/16 v0, 0x753e

    const/4 v15, 0x6

    new-array v3, v15, [Ljava/lang/Object;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    .line 3092
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x1

    aput-object v4, v3, v8

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    .line 3093
    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    aput-object v4, v3, v6

    .line 3094
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9c

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_9e

    :cond_9c
    const-string v4, ""

    :goto_9e
    const/4 v5, 0x5

    aput-object v4, v3, v5

    .line 3091
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3104
    :try_start_a4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->seInfo:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_b2
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_b2} :catch_c2

    move-object/from16 v17, v5

    move v5, v0

    const/4 v15, 0x4

    move v15, v7

    move-object/from16 v7, v17

    move v15, v8

    move/from16 v8, p2

    :try_start_bc
    invoke-interface/range {v3 .. v8}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_bf
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_bf} :catch_c0

    .line 3108
    goto :goto_c4

    .line 3106
    :catch_c0
    move-exception v0

    goto :goto_c4

    :catch_c2
    move-exception v0

    move v15, v8

    .line 3111
    :goto_c4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_d9

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 3112
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v3, v9}, Lcom/android/server/am/AppStateBroadcaster;->sendApplicationStart(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3116
    :cond_d9
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 3118
    iget-wide v3, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3119
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 3120
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3121
    const-string v0, "Start proc "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3123
    const/16 v0, 0x3a

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3124
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    const/16 v0, 0x2f

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3126
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    invoke-static {v3, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 3127
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    if-eqz v0, :cond_11e

    .line 3128
    const-string v0, " ["

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3129
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3130
    const-string v0, "]"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    :cond_11e
    const-string v0, " for "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3133
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3134
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_142

    .line 3135
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    :cond_142
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->startUid:I

    const-string v6, "ActivityManager"

    invoke-virtual {v0, v6, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3139
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 3140
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 3141
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 3145
    const/4 v0, -0x1

    .line 3146
    .local v0, "dhatemp":I
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->isNeverKillExceptionProcess(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_166

    .line 3148
    iput-boolean v15, v2, Lcom/android/server/am/ProcessRecord;->isNeverKillException:Z

    goto/16 :goto_1d1

    .line 3149
    :cond_166
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->isDhaKeepEmptyProcess(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    if-eq v4, v5, :cond_18a

    .line 3151
    sget v4, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnable:I

    if-ne v4, v15, :cond_178

    if-ne v0, v15, :cond_178

    .line 3152
    iput v15, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_1d1

    .line 3153
    :cond_178
    sget v4, Lcom/android/server/am/DynamicHiddenApp;->mDhaKeepEmptyEnableKnox:I

    if-ne v4, v15, :cond_1d1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1d1

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v5}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_1d1

    .line 3154
    iput v4, v2, Lcom/android/server/am/ProcessRecord;->dhaKeepEmptyFlag:I

    goto :goto_1d1

    .line 3156
    :cond_18a
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-static {v4, v6}, Lcom/android/server/am/DynamicHiddenApp;->isMLExceptionProcess(Ljava/lang/String;I)I

    move-result v4

    move v0, v4

    if-eq v4, v5, :cond_19c

    .line 3158
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-nez v4, :cond_1d1

    iput-boolean v15, v2, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    goto :goto_1d1

    .line 3159
    :cond_19c
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->isAMSExceptionProcess(Ljava/lang/String;)I

    move-result v4

    move v0, v4

    if-eq v4, v5, :cond_1aa

    .line 3161
    iput-boolean v15, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 3162
    iput v0, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_1d1

    .line 3163
    :cond_1aa
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/DynamicHiddenApp;->isWebviewProcess(Lcom/android/server/am/ProcessRecord;)I

    move-result v4

    move v0, v4

    if-eq v4, v5, :cond_1c6

    .line 3165
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1ba

    .line 3166
    iput-boolean v15, v2, Lcom/android/server/am/ProcessRecord;->isAMSException:Z

    .line 3167
    const/4 v4, 0x4

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_1d1

    .line 3168
    :cond_1ba
    const/4 v4, 0x4

    if-ne v0, v4, :cond_1c0

    .line 3169
    iput v4, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_1d1

    .line 3170
    :cond_1c0
    const/4 v4, 0x6

    if-ne v0, v4, :cond_1d1

    .line 3171
    iput v4, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    goto :goto_1d1

    .line 3173
    :cond_1c6
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/DynamicHiddenApp;->isLmkdOnlyKillProcess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d1

    .line 3174
    const/4 v4, 0x5

    iput v4, v2, Lcom/android/server/am/ProcessRecord;->AMSExceptionFlag:I

    .line 3177
    .end local v0    # "dhatemp":I
    :cond_1d1
    :goto_1d1
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v0, v4}, Lcom/android/server/am/DynamicHiddenApp;->checkIsCameraProcess(Ljava/lang/String;I)V

    .line 3181
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    if-eqz v0, :cond_1de

    .line 3182
    iput-boolean v14, v2, Lcom/android/server/am/ProcessRecord;->mIsCancelFromSeq:Z

    .line 3185
    :cond_1de
    iget-wide v4, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v4, v5, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3187
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 3188
    :try_start_1eb
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v5, v0

    .line 3189
    .local v5, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_1f5
    .catchall {:try_start_1eb .. :try_end_1f5} :catchall_2b3

    .line 3191
    if-eqz v5, :cond_24b

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_24b

    .line 3193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleProcessStartedLocked process:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " pid:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " belongs to another existing app:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " startSeq:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v5, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3198
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    const/16 v21, 0x1

    move-object/from16 v16, v0

    move-object/from16 v17, v5

    invoke-virtual/range {v16 .. v21}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;ZZIZ)Z

    .line 3201
    :cond_24b
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3202
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v6

    .line 3203
    if-nez p6, :cond_272

    .line 3204
    :try_start_257
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3205
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3206
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v10, :cond_26d

    .line 3207
    const-wide/32 v7, 0x124f80

    goto :goto_26f

    :cond_26d
    const-wide/16 v7, 0x2710

    .line 3206
    :goto_26f
    invoke-virtual {v4, v0, v7, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3209
    .end local v0    # "msg":Landroid/os/Message;
    :cond_272
    monitor-exit v6
    :try_end_273
    .catchall {:try_start_257 .. :try_end_273} :catchall_2b0

    .line 3210
    iget-wide v6, v2, Lcom/android/server/am/ProcessRecord;->startTime:J

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v6, v7, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3212
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    if-lez v0, :cond_286

    .line 3213
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerServiceExt;->promoteAsLongLivePackageIfNeededLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3215
    :cond_286
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-nez v0, :cond_2af

    .line 3216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-add uidRecord "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ActivityManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3217
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3220
    :cond_2af
    return v15

    .line 3209
    :catchall_2b0
    move-exception v0

    :try_start_2b1
    monitor-exit v6
    :try_end_2b2
    .catchall {:try_start_2b1 .. :try_end_2b2} :catchall_2b0

    throw v0

    .line 3189
    .end local v5    # "oldApp":Lcom/android/server/am/ProcessRecord;
    :catchall_2b3
    move-exception v0

    :try_start_2b4
    monitor-exit v4
    :try_end_2b5
    .catchall {:try_start_2b4 .. :try_end_2b5} :catchall_2b3

    throw v0
.end method

.method haveBackgroundProcessLocked()Z
    .registers 6

    .line 4248
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 4249
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4250
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_1d

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1d

    .line 4252
    return v1

    .line 4248
    .end local v2    # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 4255
    .end local v0    # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method incrementProcStateSeqAndNotifyAppsLocked(Lcom/android/server/am/ActiveUids;)V
    .registers 12
    .param p1, "activeUids"    # Lcom/android/server/am/ActiveUids;

    .line 4569
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerService;->mWaitForNetworkTimeoutMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_b

    .line 4570
    return-void

    .line 4573
    :cond_b
    const/4 v0, 0x0

    .line 4574
    .local v0, "blockingUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_8e

    .line 4575
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4577
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    iget v5, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v4

    if-nez v4, :cond_25

    .line 4578
    goto :goto_8b

    .line 4580
    :cond_25
    iget v4, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-eqz v4, :cond_8b

    iget-boolean v4, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v4, :cond_32

    .line 4581
    goto :goto_8b

    .line 4584
    :cond_32
    iget v4, v3, Lcom/android/server/am/UidRecord;->setProcState:I

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    if-ne v4, v5, :cond_3b

    .line 4585
    goto :goto_8b

    .line 4587
    :cond_3b
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v4

    .line 4590
    .local v4, "blockState":I
    if-nez v4, :cond_42

    .line 4591
    goto :goto_8b

    .line 4593
    :cond_42
    iget-object v5, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v5

    .line 4594
    :try_start_45
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    iput-wide v6, v3, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 4595
    if-ne v4, v2, :cond_62

    .line 4596
    if-nez v0, :cond_58

    .line 4597
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 4599
    :cond_58
    iget v6, v3, Lcom/android/server/am/UidRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_86

    .line 4601
    :cond_62
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v6, :cond_7d

    .line 4602
    const-string v6, "ActivityManager_Network"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uid going to background, notifying all blocking threads for uid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    :cond_7d
    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->waitingForNetwork:Z

    if-eqz v6, :cond_86

    .line 4606
    iget-object v6, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    .line 4609
    :cond_86
    :goto_86
    monitor-exit v5

    goto :goto_8b

    :catchall_88
    move-exception v2

    monitor-exit v5
    :try_end_8a
    .catchall {:try_start_45 .. :try_end_8a} :catchall_88

    throw v2

    .line 4574
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v4    # "blockState":I
    :cond_8b
    :goto_8b
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 4613
    .end local v1    # "i":I
    :cond_8e
    if-nez v0, :cond_91

    .line 4614
    return-void

    .line 4617
    :cond_91
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .restart local v1    # "i":I
    :goto_98
    if-ltz v1, :cond_e5

    .line 4618
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4619
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 4620
    goto :goto_e2

    .line 4622
    :cond_af
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v3, :cond_e2

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_e2

    .line 4623
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getUidRecordLocked(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4625
    .restart local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :try_start_bd
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v4, :cond_d7

    .line 4626
    const-string v4, "ActivityManager_Network"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Informing app thread that it needs to block: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4629
    :cond_d7
    if-eqz v3, :cond_e0

    .line 4630
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-wide v5, v3, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v4, v5, v6}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_e0} :catch_e1

    .line 4633
    :cond_e0
    goto :goto_e2

    .line 4632
    :catch_e1
    move-exception v4

    .line 4617
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_e2
    :goto_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_98

    .line 4636
    .end local v1    # "i":I
    :cond_e5
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .registers 10
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"    # Lcom/android/server/am/ActiveUids;
    .param p3, "platformCompat"    # Lcom/android/server/compat/PlatformCompat;

    .line 824
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 825
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 826
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 829
    nop

    .line 830
    const-string/jumbo v0, "persist.zygote.app_data_isolation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 831
    const-string/jumbo v0, "persist.sys.fuse"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 832
    .local v0, "fuseEnabled":Z
    const-string/jumbo v3, "persist.sys.vold_app_data_isolation_enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 834
    .local v3, "voldAppDataIsolationEnabled":Z
    if-nez v0, :cond_2b

    if-eqz v3, :cond_2b

    .line 835
    const-string v4, "ActivityManager"

    const-string v5, "Fuse is not enabled while vold app data isolation is enabled"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :cond_2b
    if-eqz v0, :cond_30

    if-eqz v3, :cond_30

    move v2, v1

    :cond_30
    iput-boolean v2, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 845
    sget-object v2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v2, :cond_9b

    .line 846
    new-instance v2, Lcom/android/server/ServiceThread;

    const/16 v4, 0xa

    const-string v5, "ActivityManager:kill"

    invoke-direct {v2, v5, v4, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 848
    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->start()V

    .line 849
    new-instance v2, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v4, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, p0, v4}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 850
    new-instance v2, Lcom/android/server/am/LmkdConnection;

    sget-object v4, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v5, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v2, v4, v5}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 896
    invoke-direct {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 897
    if-eqz v2, :cond_87

    .line 898
    sget-object v2, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$KillHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 899
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    new-instance v5, Lcom/android/server/am/-$$Lambda$ProcessList$hjUwwFAIhoht4KRKnKeUve_Kcto;

    invoke-direct {v5, p0}, Lcom/android/server/am/-$$Lambda$ProcessList$hjUwwFAIhoht4KRKnKeUve_Kcto;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 898
    invoke-virtual {v2, v4, v1, v5}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 902
    :cond_87
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 903
    new-instance v1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 905
    :cond_9b
    return-void
.end method

.method initAppDataIsolationAllowlistedApps()V
    .registers 3

    .line 909
    new-instance v0, Ljava/util/ArrayList;

    .line 910
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationWhitelistedApps:Ljava/util/ArrayList;

    .line 911
    return-void
.end method

.method killAllBackgroundProcessesExceptLocked(II)V
    .registers 15
    .param p1, "minTargetSdk"    # I
    .param p2, "maxProcState"    # I

    .line 3671
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3672
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3673
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_10
    if-ge v2, v1, :cond_46

    .line 3674
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3675
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3676
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_23
    if-ge v5, v4, :cond_43

    .line 3677
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3678
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v7, v6, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-nez v7, :cond_3d

    if-ltz p1, :cond_37

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_40

    :cond_37
    if-ltz p2, :cond_3d

    iget v7, v6, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-le v7, p2, :cond_40

    .line 3680
    :cond_3d
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3676
    .end local v6    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_40
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 3673
    .end local v3    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4    # "NA":I
    .end local v5    # "ia":I
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3689
    .end local v2    # "ip":I
    :cond_46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3690
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4b
    if-ge v3, v2, :cond_64

    .line 3691
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/16 v10, 0xa

    const-string/jumbo v11, "kill all background except"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 3690
    add-int/lit8 v3, v3, 0x1

    goto :goto_4b

    .line 3694
    .end local v3    # "i":I
    :cond_64
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .registers 8
    .param p1, "appZygote"    # Landroid/os/AppZygote;
    .param p2, "force"    # Z

    .line 2515
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2516
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2517
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_2c

    if-nez p2, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2c

    .line 2519
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2520
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2521
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2522
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 2524
    :cond_2c
    return-void
.end method

.method killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "force"    # Z

    .line 3264
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3265
    .local v0, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3266
    .local v2, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 3267
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 3268
    .local v4, "appZygoteUid":I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_34

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_34

    .line 3269
    goto :goto_55

    .line 3271
    :cond_34
    if-ltz p2, :cond_3d

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p2, :cond_3d

    .line 3272
    goto :goto_55

    .line 3274
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AppZygote;

    .line 3275
    .local v5, "appZygote":Landroid/os/AppZygote;
    if-eqz p1, :cond_52

    .line 3276
    invoke-virtual {v5}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 3277
    goto :goto_55

    .line 3279
    :cond_52
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3266
    .end local v4    # "appZygoteUid":I
    .end local v5    # "appZygote":Landroid/os/AppZygote;
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 3281
    .end local v2    # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .end local v3    # "i":I
    :cond_58
    goto :goto_13

    .line 3282
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 3283
    .local v2, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {p0, v2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 3284
    .end local v2    # "appZygote":Landroid/os/AppZygote;
    goto :goto_5d

    .line 3285
    :cond_6d
    return-void
.end method

.method killPackageProcessesLocked(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .registers 21
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "reasonCode"    # I
    .param p6, "subReason"    # I
    .param p7, "reason"    # Ljava/lang/String;

    .line 3254
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/ProcessList;->killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z
    .registers 30
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appId"    # I
    .param p3, "userId"    # I
    .param p4, "minOomAdj"    # I
    .param p5, "callerWillRestart"    # Z
    .param p6, "allowRestart"    # Z
    .param p7, "doit"    # Z
    .param p8, "evenPersistent"    # Z
    .param p9, "setRemoved"    # Z
    .param p10, "reasonCode"    # I
    .param p11, "subReason"    # I
    .param p12, "reason"    # Ljava/lang/String;

    .line 3292
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 3297
    .local v11, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v12

    .line 3298
    .local v12, "NP":I
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_19
    const/4 v14, 0x1

    if-ge v0, v12, :cond_ab

    .line 3299
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 3300
    .local v1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3301
    .local v2, "NA":I
    const/4 v3, 0x0

    .local v3, "ia":I
    :goto_2d
    if-ge v3, v2, :cond_a5

    .line 3302
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3303
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_41

    if-nez p8, :cond_41

    .line 3305
    move/from16 v15, p4

    goto/16 :goto_a2

    .line 3307
    :cond_41
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    if-eqz v5, :cond_50

    .line 3308
    if-eqz p7, :cond_4d

    .line 3309
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v15, p4

    goto :goto_a2

    .line 3308
    :cond_4d
    move/from16 v15, p4

    goto :goto_a2

    .line 3315
    :cond_50
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->setAdj:I

    move/from16 v15, p4

    if-ge v5, v15, :cond_57

    .line 3321
    goto :goto_a2

    .line 3326
    :cond_57
    const/4 v5, -0x1

    if-nez v8, :cond_6c

    .line 3327
    if-eq v10, v5, :cond_61

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_61

    .line 3328
    goto :goto_a2

    .line 3330
    :cond_61
    if-ltz v9, :cond_98

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, v9, :cond_98

    .line 3331
    goto :goto_a2

    .line 3337
    :cond_6c
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    if-eqz v6, :cond_7a

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pkgDeps:Landroid/util/ArraySet;

    .line 3338
    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7a

    move v6, v14

    goto :goto_7b

    :cond_7a
    const/4 v6, 0x0

    .line 3339
    .local v6, "isDep":Z
    :goto_7b
    if-nez v6, :cond_86

    iget v13, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v13}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v13

    if-eq v13, v9, :cond_86

    .line 3340
    goto :goto_a2

    .line 3342
    :cond_86
    if-eq v10, v5, :cond_8d

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_8d

    .line 3343
    goto :goto_a2

    .line 3345
    :cond_8d
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ProcessRecord$PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_98

    if-nez v6, :cond_98

    .line 3346
    goto :goto_a2

    .line 3351
    .end local v6    # "isDep":Z
    :cond_98
    if-nez p7, :cond_9b

    .line 3352
    return v14

    .line 3354
    :cond_9b
    if-eqz p9, :cond_9f

    .line 3355
    iput-boolean v14, v4, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 3357
    :cond_9f
    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3301
    .end local v4    # "app":Lcom/android/server/am/ProcessRecord;
    :goto_a2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_a5
    move/from16 v15, p4

    .line 3298
    .end local v1    # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2    # "NA":I
    .end local v3    # "ia":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_19

    :cond_ab
    move/from16 v15, p4

    .line 3361
    .end local v0    # "ip":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 3362
    .local v13, "N":I
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_b3
    if-ge v6, v13, :cond_f4

    .line 3365
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MNO_TMO_DEVICE_REPORTING:Z

    if-eqz v0, :cond_d9

    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->getStatus()Z

    move-result v0

    if-eqz v0, :cond_d9

    .line 3368
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v1, 0x22b

    .line 3369
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3370
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3368
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->sendAppStateMsg(ILjava/lang/String;II)V

    .line 3373
    :cond_d9
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    move-object/from16 v0, p0

    move/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p10

    move/from16 v5, p11

    move/from16 v16, v6

    .end local v6    # "i":I
    .local v16, "i":I
    move-object/from16 v6, p12

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 3362
    add-int/lit8 v6, v16, 0x1

    .end local v16    # "i":I
    .restart local v6    # "i":I
    goto :goto_b3

    :cond_f4
    move/from16 v16, v6

    .line 3376
    .end local v6    # "i":I
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    .line 3377
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_processEnd"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 3378
    if-lez v13, :cond_105

    goto :goto_106

    :cond_105
    move v14, v0

    :goto_106
    return v14
.end method

.method killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .registers 9
    .param p1, "pids"    # [I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "requester"    # I

    .line 4732
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4733
    return-void

    .line 4736
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 4738
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    .line 4739
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_33

    .line 4740
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 4741
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    .line 4742
    if-eqz v3, :cond_28

    .line 4743
    :try_start_23
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_33

    .line 4738
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4741
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "pids":[I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "requester":I
    :try_start_2d
    throw v3

    .line 4746
    .end local v1    # "i":I
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "pids":[I
    .restart local p2    # "reason":Ljava/lang/String;
    .restart local p3    # "requester":I
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 4747
    return-void

    .line 4746
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public synthetic lambda$startProcessLocked$0$ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "gids"    # [I
    .param p4, "runtimeFlags"    # I
    .param p5, "zygotePolicyFlags"    # I
    .param p6, "mountExternal"    # I
    .param p7, "requiredAbi"    # Ljava/lang/String;
    .param p8, "instructionSet"    # Ljava/lang/String;
    .param p9, "invokeWith"    # Ljava/lang/String;
    .param p10, "startSeq"    # J

    .line 2428
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method final newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 14
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"    # Ljava/lang/String;
    .param p3, "isolated"    # Z
    .param p4, "isolatedUid"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;

    .line 3533
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_6

    :cond_4
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3534
    .local v0, "proc":Ljava/lang/String;
    :goto_6
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3535
    .local v1, "userId":I
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3536
    .local v2, "uid":I
    const/4 v3, 0x1

    if-eqz p3, :cond_5c

    .line 3537
    if-nez p4, :cond_24

    .line 3538
    invoke-direct {p0, p1, p5}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v4

    .line 3539
    .local v4, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    const/4 v5, 0x0

    if-nez v4, :cond_1b

    .line 3540
    return-object v5

    .line 3542
    :cond_1b
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v2

    .line 3543
    const/4 v6, -0x1

    if-ne v2, v6, :cond_23

    .line 3544
    return-object v5

    .line 3546
    .end local v4    # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    :cond_23
    goto :goto_25

    .line 3549
    :cond_24
    move v2, p4

    .line 3551
    :goto_25
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v4, v4, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3552
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3560
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 3562
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v4

    if-eqz v4, :cond_55

    .line 3563
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v2, v5}, Landroid/os/CustomFrequencyManagerInternal;->addIsolatedUid(II)V

    .line 3566
    :cond_55
    const/16 v4, 0x2b

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4, v5, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    .line 3569
    :cond_5c
    new-instance v4, Lcom/android/server/am/ProcessRecord;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v4, v5, p1, v0, v2}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    .line 3571
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    const/16 v6, -0x320

    if-nez v5, :cond_85

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v5, :cond_85

    if-nez v1, :cond_85

    iget v5, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v7, 0x9

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_85

    .line 3575
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessRecord;->setCurrentSchedulingGroup(I)V

    .line 3576
    iput v5, v4, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    .line 3577
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3578
    iput v6, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 3580
    :cond_85
    if-eqz p3, :cond_8d

    if-eqz p4, :cond_8d

    .line 3583
    const/16 v3, -0x2bc

    iput v3, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 3588
    :cond_8d
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerServiceExt;->notifyNewProcessRecord(Lcom/android/server/am/ProcessRecord;)V

    .line 3596
    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3598
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mExt:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/android/server/am/ActivityManagerServiceExt;->isSkippableTmoPkgLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 3599
    iput v6, v4, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 3602
    :cond_a5
    return-object v4
.end method

.method noteAppKill(IIIILjava/lang/String;)V
    .registers 14
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 4720
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_33

    .line 4721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4725
    :cond_33
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    .line 4726
    return-void
.end method

.method noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 4711
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_33

    .line 4712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4715
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 4716
    return-void
.end method

.method noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 4698
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_20

    .line 4699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died, saving the exit info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4702
    :cond_20
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 4703
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    .line 4704
    return-void
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .registers 7
    .param p1, "ostream"    # Ljava/io/OutputStream;

    .line 1779
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1780
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1781
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1782
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 1784
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 1785
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1786
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v0, v3, :cond_44

    .line 1787
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1788
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1786
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1790
    .end local v0    # "i":I
    :cond_44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1793
    :cond_4f
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1794
    .end local v2    # "buf":Ljava/nio/ByteBuffer;
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1795
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1796
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_67} :catch_69

    .line 1799
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1800
    return v4

    .line 1797
    :catch_69
    move-exception v0

    .line 1798
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method onSystemReady()V
    .registers 2

    .line 915
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    .line 916
    return-void
.end method

.method final removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3224
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3225
    .local v0, "lrui":I
    if-ltz v0, :cond_70

    .line 3226
    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v1, :cond_5b

    .line 3227
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_29

    .line 3228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 3230
    :cond_29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing process that hasn\'t been killed: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 3231
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v1, :cond_58

    .line 3232
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 3233
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 3234
    const/16 v1, 0xd

    const/16 v2, 0x10

    const-string/jumbo v3, "hasn\'t been killed"

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_5b

    .line 3237
    :cond_58
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 3241
    :cond_5b
    :goto_5b
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v1, :cond_63

    .line 3242
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3244
    :cond_63
    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v1, :cond_6b

    .line 3245
    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3247
    :cond_6b
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3249
    :cond_70
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .registers 27
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "subReason"    # I
    .param p6, "reason"    # Ljava/lang/String;

    .line 3394
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2}, Landroid/content/pm/ASKSManager;->removePackageWithPid(I)V

    .line 3397
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3398
    .local v2, "name":Ljava/lang/String;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3399
    .local v3, "uid":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v5, "ActivityManager"

    if-eqz v4, :cond_40

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Force removing proc "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3400
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3399
    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3402
    :cond_40
    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3403
    .local v4, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v6, 0x0

    if-eq v4, v1, :cond_60

    .line 3405
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring remove of inactive process: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3406
    return v6

    .line 3408
    :cond_60
    invoke-virtual {v0, v2, v3}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3409
    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3411
    const/4 v5, 0x0

    .line 3412
    .local v5, "needRestart":Z
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v8, 0x14

    if-lez v7, :cond_7b

    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v9, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v7, v9, :cond_83

    :cond_7b
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    if-nez v7, :cond_10c

    iget-boolean v7, v1, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    if-eqz v7, :cond_10c

    .line 3414
    :cond_83
    iget v7, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 3415
    .local v7, "pid":I
    if-lez v7, :cond_d5

    .line 3416
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v1}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3417
    iput-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    .line 3418
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v6, v8, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3419
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3420
    iget-boolean v6, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v6, :cond_d5

    .line 3421
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v9}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3423
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v6

    if-eqz v6, :cond_ca

    .line 3424
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getCfmsInternalLocked()Landroid/os/CustomFrequencyManagerInternal;

    move-result-object v6

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8, v9}, Landroid/os/CustomFrequencyManagerInternal;->removeIsolatedUid(II)V

    .line 3427
    :cond_ca
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3431
    :cond_d5
    const/4 v6, 0x0

    .line 3438
    .local v6, "skipAddApp":Z
    const/4 v8, 0x0

    .line 3439
    .local v8, "willRestart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    if-eqz v9, :cond_e6

    iget-boolean v9, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v9, :cond_e6

    .line 3440
    if-nez p2, :cond_e5

    .line 3441
    const/4 v8, 0x1

    goto :goto_e6

    .line 3443
    :cond_e5
    const/4 v5, 0x1

    .line 3446
    :cond_e6
    :goto_e6
    const/4 v9, 0x1

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    invoke-virtual {v1, v12, v10, v11, v9}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;IIZ)V

    .line 3447
    iget-object v9, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move/from16 v13, p3

    invoke-virtual {v9, v1, v8, v13}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3448
    if-eqz v8, :cond_10b

    .line 3453
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3454
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3457
    .end local v6    # "skipAddApp":Z
    .end local v7    # "pid":I
    .end local v8    # "willRestart":Z
    :cond_10b
    goto :goto_11f

    .line 3412
    :cond_10c
    move/from16 v13, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move-object/from16 v12, p6

    .line 3460
    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/am/ProcessRecord;->callStack:Ljava/lang/String;

    .line 3463
    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3466
    :goto_11f
    return v5
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"    # Z
    .param p3, "allowRestart"    # Z
    .param p4, "reasonCode"    # I
    .param p5, "reason"    # Ljava/lang/String;

    .line 3384
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method final removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3607
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method final removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "expecting"    # Lcom/android/server/am/ProcessRecord;

    .line 3613
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3617
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_c

    if-ne v0, p3, :cond_11

    .line 3618
    :cond_c
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3621
    :cond_11
    if-eqz p3, :cond_15

    move-object v1, p3

    goto :goto_16

    :cond_15
    move-object v1, v0

    .line 3622
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_16
    if-eqz v1, :cond_60

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    if-eqz v2, :cond_60

    .line 3623
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 3624
    .local v2, "uidRecord":Lcom/android/server/am/UidRecord;
    iget v3, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    .line 3625
    iget-object v3, v2, Lcom/android/server/am/UidRecord;->procRecords:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3626
    iget v3, v2, Lcom/android/server/am/UidRecord;->numProcs:I

    if-nez v3, :cond_5d

    .line 3628
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_47

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No more processes in "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3630
    :cond_47
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    invoke-virtual {v3, v2, v5, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3631
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3632
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3633
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-virtual {v3, p2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3636
    :cond_5d
    const/4 v3, 0x0

    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->uidRecord:Lcom/android/server/am/UidRecord;

    .line 3638
    .end local v2    # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_60
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3639
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 3641
    if-eqz v1, :cond_73

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_73

    .line 3642
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3645
    :cond_73
    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 10
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "userId"    # I

    .line 4472
    const/4 v0, 0x0

    .line 4473
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3f

    .line 4474
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4475
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_3c

    const/4 v3, -0x1

    if-eq p3, v3, :cond_1e

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v3, p3, :cond_3c

    .line 4477
    :cond_1e
    :try_start_1e
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .local v3, "index":I
    :goto_21
    if-ltz v3, :cond_35

    if-nez v0, :cond_35

    .line 4478
    aget-object v4, p2, v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 4479
    const/4 v0, 0x1

    .line 4477
    :cond_32
    add-int/lit8 v3, v3, -0x1

    goto :goto_21

    .line 4482
    .end local v3    # "index":I
    :cond_35
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_3a} :catch_3b

    .line 4484
    goto :goto_3c

    .line 4483
    :catch_3b
    move-exception v3

    .line 4473
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4488
    .end local v1    # "i":I
    :cond_3f
    if-nez v0, :cond_4a

    .line 4490
    :try_start_41
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    .line 4492
    goto :goto_4a

    .line 4491
    :catch_49
    move-exception v1

    .line 4494
    :cond_4a
    :goto_4a
    return-void
.end method

.method setAllHttpProxy()V
    .registers 8

    .line 3717
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3718
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_4a

    .line 3719
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3723
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v3, v4, :cond_47

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_47

    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_56

    if-nez v3, :cond_47

    .line 3725
    :try_start_26
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catchall {:try_start_26 .. :try_end_2b} :catchall_56

    .line 3729
    goto :goto_47

    .line 3726
    :catch_2c
    move-exception v3

    .line 3727
    .local v3, "ex":Landroid/os/RemoteException;
    :try_start_2d
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to update http proxy for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ex":Landroid/os/RemoteException;
    :cond_47
    :goto_47
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 3732
    .end local v1    # "i":I
    :cond_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_2d .. :try_end_4b} :catchall_56

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3733
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 3734
    return-void

    .line 3732
    :catchall_56
    move-exception v1

    :try_start_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTrimCriticalTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .line 1820
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 1821
    return-void
.end method

.method public setTrimLowlTH(I)V
    .registers 2
    .param p1, "lValue"    # I

    .line 1824
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 1825
    return-void
.end method

.method public setmIsDisplayChanged(Z)V
    .registers 3
    .param p1, "isChanged"    # Z

    .line 975
    if-eqz p1, :cond_5

    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 979
    :cond_5
    return-void
.end method

.method final startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZLjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;ZZ)Lcom/android/server/am/ProcessRecord;
    .registers 44
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"    # Z
    .param p4, "intentFlags"    # I
    .param p5, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p6, "zygotePolicyFlags"    # I
    .param p7, "allowWhileBooting"    # Z
    .param p8, "isolated"    # Z
    .param p9, "isolatedUid"    # I
    .param p10, "keepIfLarge"    # Z
    .param p11, "abiOverride"    # Ljava/lang/String;
    .param p12, "entryPoint"    # Ljava/lang/String;
    .param p13, "entryPointArgs"    # [Ljava/lang/String;
    .param p14, "crashHandler"    # Ljava/lang/Runnable;
    .param p15, "isActiveLaunch"    # Z
    .param p16, "isMlLaunch"    # Z

    .line 2785
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2787
    .local v12, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 2788
    .local v14, "startAppKeepingtime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 2789
    .local v5, "startActivelaunchtime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 2792
    .local v3, "startMlLaunchtime":J
    const/16 v16, 0x0

    .line 2796
    .local v16, "isAppLockedPkg":Z
    const-string v2, "/"

    const/16 v17, 0x0

    const-string v1, "ActivityManager"

    if-nez v11, :cond_d3

    .line 2797
    iget v0, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v11, p10

    invoke-virtual {v7, v8, v0, v11}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2798
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    move-wide/from16 v20, v3

    .end local v3    # "startMlLaunchtime":J
    .local v20, "startMlLaunchtime":J
    const-string/jumbo v3, "startProcess: after getProcessRecord"

    invoke-direct {v7, v12, v13, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2800
    and-int/lit8 v3, p4, 0x4

    if-eqz v3, :cond_69

    .line 2803
    iget-object v3, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v3, v9}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 2804
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    :cond_64
    return-object v17

    .line 2803
    :cond_65
    move-object/from16 v23, v2

    goto/16 :goto_da

    .line 2813
    :cond_69
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_8b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing bad process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2815
    :cond_8b
    iget-object v3, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v3, v9}, Lcom/android/server/am/AppErrors;->resetProcessCrashTimeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2816
    iget-object v3, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v3, v9}, Lcom/android/server/am/AppErrors;->isBadProcessLocked(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-eqz v3, :cond_d0

    .line 2817
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2818
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v18, 0x0

    aput-object v3, v4, v18

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v19, 0x1

    aput-object v3, v4, v19

    const/4 v3, 0x2

    move-object/from16 v23, v2

    iget-object v2, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v2, v4, v3

    .line 2817
    const/16 v2, 0x7540

    invoke-static {v2, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2820
    iget-object v2, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    invoke-virtual {v2, v9}, Lcom/android/server/am/AppErrors;->clearBadProcessLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2821
    if-eqz v0, :cond_da

    .line 2822
    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/server/am/ProcessRecord;->bad:Z

    goto :goto_da

    .line 2816
    :cond_d0
    move-object/from16 v23, v2

    goto :goto_da

    .line 2828
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v20    # "startMlLaunchtime":J
    .restart local v3    # "startMlLaunchtime":J
    :cond_d3
    move/from16 v11, p10

    move-object/from16 v23, v2

    move-wide/from16 v20, v3

    .end local v3    # "startMlLaunchtime":J
    .restart local v20    # "startMlLaunchtime":J
    const/4 v0, 0x0

    .line 2837
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_da
    :goto_da
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_120

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcess: name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " app="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " knownToBeDead="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " thread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2839
    if-eqz v0, :cond_106

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    goto :goto_108

    :cond_106
    move-object/from16 v3, v17

    :goto_108
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2840
    if-eqz v0, :cond_115

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    goto :goto_116

    :cond_115
    const/4 v3, -0x1

    :goto_116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2837
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    :cond_120
    const/4 v2, 0x0

    .line 2842
    .local v2, "precedence":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1d8

    iget v3, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v3, :cond_1d8

    .line 2843
    if-nez v10, :cond_12d

    iget-boolean v3, v0, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-eqz v3, :cond_131

    :cond_12d
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_18d

    .line 2846
    :cond_131
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v3, :cond_149

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "App already running: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2848
    :cond_149
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    move-object/from16 v22, v2

    .end local v2    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v22, "precedence":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2851
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v1

    if-eqz v1, :cond_161

    if-eqz p15, :cond_161

    .line 2852
    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 2855
    :cond_161
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isMlLaunch()Z

    move-result v1

    if-nez v1, :cond_16d

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v1

    if-eqz v1, :cond_178

    :cond_16d
    if-nez p15, :cond_178

    if-nez p16, :cond_178

    .line 2856
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->setMlLaunch(Z)V

    .line 2857
    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 2859
    :cond_178
    if-eqz p15, :cond_186

    .line 2860
    iget v1, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->setLmkdLaunchPid(I)V

    .line 2861
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessRecord;->setIsforKeeping(Z)V

    .line 2862
    invoke-virtual {v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->setAppKeepingTime(J)V

    .line 2866
    :cond_186
    const-string/jumbo v1, "startProcess: done, added package to proc"

    invoke-direct {v7, v12, v13, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2867
    return-object v0

    .line 2872
    .end local v22    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "precedence":Lcom/android/server/am/ProcessRecord;
    :cond_18d
    move-object/from16 v22, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .end local v2    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "precedence":Lcom/android/server/am/ProcessRecord;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_1a9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App died: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    :cond_1a9
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-direct {v7, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2874
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v2, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2875
    const-string/jumbo v2, "startProcess: done killing old proc"

    invoke-direct {v7, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is attached to a previous process"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2880
    move-object v2, v0

    .line 2881
    .end local v22    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v2    # "precedence":Lcom/android/server/am/ProcessRecord;
    const/4 v0, 0x0

    move-object v4, v2

    goto :goto_1dd

    .line 2842
    :cond_1d8
    move-object/from16 v22, v2

    const/4 v3, 0x1

    .line 2884
    .end local v2    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v22    # "precedence":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v4, v22

    .end local v22    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v4, "precedence":Lcom/android/server/am/ProcessRecord;
    :goto_1dd
    if-nez v0, :cond_399

    .line 2885
    const-string/jumbo v2, "startProcess: creating new process record"

    invoke-direct {v7, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2886
    move-object v11, v1

    move v2, v3

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v18, v14

    move-object/from16 v14, v23

    move v15, v2

    .end local v14    # "startAppKeepingtime":J
    .local v18, "startAppKeepingtime":J
    move-object/from16 v2, p2

    move v15, v3

    move-wide/from16 v22, v12

    move-wide/from16 v12, v20

    .end local v20    # "startMlLaunchtime":J
    .local v12, "startMlLaunchtime":J
    .local v22, "startTime":J
    move-object/from16 v3, p1

    move-object/from16 v24, v4

    .end local v4    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v24, "precedence":Lcom/android/server/am/ProcessRecord;
    move/from16 v4, p8

    move-wide/from16 v25, v12

    move-wide v12, v5

    .end local v5    # "startActivelaunchtime":J
    .local v12, "startActivelaunchtime":J
    .local v25, "startMlLaunchtime":J
    move/from16 v5, p9

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZILcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 2889
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_25c

    if-eqz v10, :cond_25c

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "broadcast"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25c

    .line 2894
    const/4 v2, 0x0

    .line 2896
    .local v2, "aInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_218
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2897
    invoke-static {v4}, Landroid/os/UserHandle;->semGetUserId(I)I

    move-result v4

    .line 2896
    invoke-interface {v0, v3, v15, v4}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_228
    .catch Landroid/os/RemoteException; {:try_start_218 .. :try_end_228} :catch_22f
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_228} :catch_22a

    move-object v2, v0

    .line 2902
    :goto_229
    goto :goto_234

    .line 2900
    :catch_22a
    move-exception v0

    .line 2901
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_234

    .line 2898
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_22f
    move-exception v0

    .line 2899
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_229

    .line 2903
    :goto_234
    if-eqz v2, :cond_25c

    .line 2904
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_258

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating resourceDir for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and process "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2909
    :cond_258
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v0, v9, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 2914
    .end local v2    # "aInfo":Landroid/content/pm/ApplicationInfo;
    :cond_25c
    if-nez v1, :cond_285

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed making new process record for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isolated="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    return-object v17

    .line 2922
    :cond_285
    move/from16 v2, p8

    const-wide/16 v3, -0x1

    if-eqz p15, :cond_29f

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "activelaunch"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29f

    .line 2923
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 2924
    invoke-virtual {v1, v12, v13}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    goto :goto_2ab

    .line 2926
    :cond_29f
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v0

    if-eqz v0, :cond_2ab

    .line 2927
    invoke-virtual {v1, v15}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 2928
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 2933
    :cond_2ab
    :goto_2ab
    const-string v0, "2"

    const-string v5, "3"

    if-eqz p16, :cond_323

    invoke-virtual/range {p5 .. p5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v14, "mllaunch"

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_323

    .line 2935
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cd

    .line 2936
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/android/server/wm/WindowProcessController;->setSeedbed(Z)V

    goto :goto_2ce

    .line 2935
    :cond_2cd
    const/4 v5, 0x1

    .line 2939
    :goto_2ce
    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isPreloaded:Z

    .line 2940
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 2942
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    if-eqz v0, :cond_2ee

    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isMlNapPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2ee

    .line 2943
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    .line 2944
    move-wide/from16 v3, v25

    .end local v25    # "startMlLaunchtime":J
    .restart local v3    # "startMlLaunchtime":J
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    goto :goto_335

    .line 2942
    .end local v3    # "startMlLaunchtime":J
    .restart local v25    # "startMlLaunchtime":J
    :cond_2ee
    move-wide/from16 v3, v25

    .line 2945
    .end local v25    # "startMlLaunchtime":J
    .restart local v3    # "startMlLaunchtime":J
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    if-eqz v0, :cond_308

    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isMlBoosterPkg(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_308

    .line 2946
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    move-wide/from16 v25, v3

    goto :goto_335

    .line 2947
    :cond_308
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSeedbedReceiver:Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;

    if-eqz v0, :cond_320

    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mSeedbedReceiver:Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService$SeedbedLaunchReceiver;->isSeedBedPkg(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_320

    .line 2948
    iput-boolean v5, v1, Lcom/android/server/am/ProcessRecord;->isSDException:Z

    move-wide/from16 v25, v3

    goto :goto_335

    .line 2947
    :cond_320
    move-wide/from16 v25, v3

    goto :goto_335

    .line 2951
    .end local v3    # "startMlLaunchtime":J
    .restart local v25    # "startMlLaunchtime":J
    :cond_323
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_330

    .line 2952
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/server/wm/WindowProcessController;->setSeedbed(Z)V

    .line 2954
    :cond_330
    iput-boolean v15, v1, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    .line 2955
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 2960
    :goto_335
    move-object/from16 v3, p14

    iput-object v3, v1, Lcom/android/server/am/ProcessRecord;->crashHandler:Ljava/lang/Runnable;

    .line 2961
    move-object/from16 v4, p12

    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->isolatedEntryPoint:Ljava/lang/String;

    .line 2962
    move-object/from16 v5, p13

    iput-object v5, v1, Lcom/android/server/am/ProcessRecord;->isolatedEntryPointArgs:[Ljava/lang/String;

    .line 2963
    move-object/from16 v6, v24

    .end local v24    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v6, "precedence":Lcom/android/server/am/ProcessRecord;
    if-eqz v6, :cond_349

    .line 2964
    iput-object v6, v1, Lcom/android/server/am/ProcessRecord;->mPrecedence:Lcom/android/server/am/ProcessRecord;

    .line 2965
    iput-object v1, v6, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2969
    :cond_349
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Lcom/android/server/am/ActivityManagerService;->isImsProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38f

    .line 2970
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v14, 0x9

    and-int/2addr v0, v14

    if-ne v0, v14, :cond_38f

    .line 2971
    const/4 v14, 0x1

    invoke-virtual {v1, v14}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 2972
    const/16 v0, -0x320

    iput v0, v1, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 2974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "[IMS-AM] startProcessLocked () Set ["

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v14, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ":"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] as persistent"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_38f
    const-string/jumbo v0, "startProcess: done creating new process record"

    move-wide/from16 v14, v22

    .end local v22    # "startTime":J
    .local v14, "startTime":J
    invoke-direct {v7, v14, v15, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v0, v1

    goto :goto_3ba

    .line 2983
    .end local v1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6    # "precedence":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "startAppKeepingtime":J
    .end local v25    # "startMlLaunchtime":J
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    .restart local v4    # "precedence":Lcom/android/server/am/ProcessRecord;
    .restart local v5    # "startActivelaunchtime":J
    .local v12, "startTime":J
    .local v14, "startAppKeepingtime":J
    .restart local v20    # "startMlLaunchtime":J
    :cond_399
    move/from16 v2, p8

    move-object/from16 v3, p14

    move-object v11, v1

    move-wide/from16 v18, v14

    move-wide/from16 v25, v20

    move-wide v14, v12

    move-wide v12, v5

    move-object/from16 v5, p13

    move-object v6, v4

    move-object/from16 v4, p12

    .end local v4    # "precedence":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "startActivelaunchtime":J
    .end local v20    # "startMlLaunchtime":J
    .restart local v6    # "precedence":Lcom/android/server/am/ProcessRecord;
    .local v12, "startActivelaunchtime":J
    .local v14, "startTime":J
    .restart local v18    # "startAppKeepingtime":J
    .restart local v25    # "startMlLaunchtime":J
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v2, v9, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v4, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2984
    const-string/jumbo v1, "startProcess: added package to existing proc"

    invoke-direct {v7, v14, v15, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2989
    :goto_3ba
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_3fa

    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2990
    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_3fa

    if-nez p7, :cond_3fa

    .line 2992
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3db

    .line 2993
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2995
    :cond_3db
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_3f3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "System not ready, putting on hold: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2997
    :cond_3f3
    const-string/jumbo v1, "startProcess: returning with proc on hold"

    invoke-direct {v7, v14, v15, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2998
    return-object v0

    .line 3001
    :cond_3fa
    const-string/jumbo v1, "startProcess: stepping in to startProcess"

    invoke-direct {v7, v14, v15, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3002
    nop

    .line 3003
    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p11

    invoke-virtual {v7, v0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v4

    .line 3004
    .local v4, "success":Z
    const-string/jumbo v11, "startProcess: done starting proc!"

    invoke-direct {v7, v14, v15, v11}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 3005
    if-eqz v4, :cond_415

    move-object/from16 v17, v0

    :cond_415
    return-object v17
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I

    .line 2768
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    .line 2769
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .registers 44
    .param p1, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"    # Ljava/lang/String;
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "zygotePolicyFlags"    # I
    .param p8, "mountExternal"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "requiredAbi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "invokeWith"    # Ljava/lang/String;
    .param p13, "startTime"    # J

    .line 2380
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v12, 0x1

    iput-boolean v12, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2381
    const/4 v8, 0x0

    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    .line 2382
    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 2383
    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->killed:Z

    .line 2386
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    const-string v9, "ActivityManager"

    if-eqz v0, :cond_a0

    .line 2388
    :try_start_14
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    .line 2389
    .local v0, "emManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    if-eqz v0, :cond_8a

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkInvalidProcess(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8a

    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 2390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkipProcess: screenState["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v14, v15}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2397
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 2398
    invoke-virtual {v15, v8}, Lcom/android/server/am/ProcessRecord;->setPid(I)V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_89} :catch_8b

    .line 2399
    return v8

    .line 2403
    .end local v0    # "emManager":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    :cond_8a
    goto :goto_a0

    .line 2401
    :catch_8b
    move-exception v0

    .line 2402
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkipProcess e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2407
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_a0
    :goto_a0
    iget-wide v0, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string/jumbo v1, "startProcessLocked processName:"

    if-eqz v0, :cond_c9

    .line 2408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    :cond_c9
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eqz v0, :cond_eb

    .line 2412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with non-zero pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2415
    :cond_eb
    const/4 v0, 0x0

    iput-object v0, v15, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 2416
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_fa

    .line 2417
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    iput-object v0, v15, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 2419
    :cond_fa
    iget-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    iput-wide v0, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    move-wide v10, v0

    .line 2420
    .local v10, "startSeq":J
    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;J)V

    .line 2421
    if-nez p12, :cond_11e

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2422
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11c

    goto :goto_11e

    :cond_11c
    move v0, v8

    goto :goto_11f

    :cond_11e
    :goto_11e
    move v0, v12

    .line 2421
    :goto_11f
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2423
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2425
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_174

    .line 2426
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_14b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Posting procStart msg for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2427
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2426
    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2428
    :cond_14b
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v16, v10

    .end local v10    # "startSeq":J
    .local v16, "startSeq":J
    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v18, v12

    move-object v14, v13

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/-$$Lambda$ProcessList$jjoaAPSQT_weAnGqu0R0SCcvKqw;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2431
    return v18

    .line 2434
    .end local v16    # "startSeq":J
    .restart local v10    # "startSeq":J
    :cond_174
    move-wide/from16 v16, v10

    move/from16 v18, v12

    .end local v10    # "startSeq":J
    .restart local v16    # "startSeq":J
    :try_start_178
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2438
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_178 .. :try_end_18a} :catch_18d

    .line 2446
    move-object/from16 v1, p0

    .end local v0    # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_1cc

    .line 2440
    :catch_18d
    move-exception v0

    .line 2441
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2443
    iput-boolean v8, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    .line 2444
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v28, "start failure"

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 v27, v4

    invoke-virtual/range {v19 .. v28}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2447
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_1cc
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    if-lez v0, :cond_1d3

    move/from16 v12, v18

    goto :goto_1d4

    :cond_1d3
    move v12, v8

    :goto_1d4
    return v12
.end method

.method final startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "abiOverride"    # Ljava/lang/String;

    .line 2774
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZZLjava/lang/String;)Z
    .registers 39
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"    # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"    # I
    .param p4, "disableHiddenApiChecks"    # Z
    .param p5, "disableTestApiChecks"    # Z
    .param p6, "mountExtStorageFull"    # Z
    .param p7, "abiOverride"    # Ljava/lang/String;

    .line 2063
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    const-string v0, ""

    const-string v1, "1"

    iget-boolean v2, v15, Lcom/android/server/am/ProcessRecord;->pendingStart:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    .line 2064
    return v3

    .line 2066
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 2067
    .local v12, "startTime":J
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    const/4 v11, 0x0

    if-lez v2, :cond_40

    iget v2, v15, Lcom/android/server/am/ProcessRecord;->pid:I

    sget v4, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v2, v4, :cond_40

    .line 2068
    const-string/jumbo v2, "startProcess: removing from pids map"

    invoke-direct {v14, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2069
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v15}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2070
    iput-boolean v11, v15, Lcom/android/server/am/ProcessRecord;->bindMountPending:Z

    .line 2071
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v2, v4, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2072
    const-string/jumbo v2, "startProcess: done removing from pids map"

    invoke-direct {v14, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2073
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2074
    const-wide/16 v4, 0x0

    iput-wide v4, v15, Lcom/android/server/am/ProcessRecord;->startSeq:J

    .line 2078
    :cond_40
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->needToBlockImsRequest(Ljava/lang/String;I)Z

    move-result v2

    const-string v9, "ActivityManager"

    if-eqz v2, :cond_7b

    .line 2080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[IMS-AM] startProcessLocked(1) Block ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] of non-active user ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2083
    return v11

    .line 2087
    :cond_7b
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_9e

    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startProcessLocked removing on hold: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    :cond_9e
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2092
    const-string/jumbo v2, "startProcess: starting to update cpu stats"

    invoke-direct {v14, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2093
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 2094
    const-string/jumbo v2, "startProcess: done updating cpu stats"

    invoke-direct {v14, v12, v13, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2098
    :try_start_b6
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2
    :try_end_bc
    .catch Ljava/lang/RuntimeException; {:try_start_b6 .. :try_end_bc} :catch_563

    move v8, v2

    .line 2102
    .local v8, "userId":I
    :try_start_bd
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4, v8}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_c8
    .catch Landroid/os/RemoteException; {:try_start_bd .. :try_end_c8} :catch_553
    .catch Ljava/lang/RuntimeException; {:try_start_bd .. :try_end_c8} :catch_563

    .line 2105
    nop

    .line 2107
    :try_start_c9
    iget v2, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2108
    .local v2, "uid":I
    const/4 v4, 0x0

    .line 2109
    .local v4, "gids":[I
    const/4 v5, 0x0

    .line 2110
    .local v5, "mountExternal":I
    iget-boolean v6, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_cf
    .catch Ljava/lang/RuntimeException; {:try_start_c9 .. :try_end_cf} :catch_563

    if-nez v6, :cond_179

    .line 2111
    const/4 v6, 0x0

    .line 2113
    .local v6, "permGids":[I
    :try_start_d2
    const-string/jumbo v7, "startProcess: getting gids from package manager"

    invoke-direct {v14, v12, v13, v7}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2114
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    .line 2115
    .local v7, "pm":Landroid/content/pm/IPackageManager;
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_e0
    .catch Landroid/os/RemoteException; {:try_start_d2 .. :try_end_e0} :catch_168
    .catch Ljava/lang/RuntimeException; {:try_start_d2 .. :try_end_e0} :catch_15f

    const/high16 v11, 0x10000000

    :try_start_e2
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v7, v10, v11, v3}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;II)[I

    move-result-object v3

    move-object v6, v3

    .line 2117
    invoke-static {}, Landroid/os/storage/StorageManager;->hasIsolatedStorage()Z

    move-result v3

    if-eqz v3, :cond_f4

    if-eqz p6, :cond_f4

    .line 2118
    const/4 v3, 0x6

    move v5, v3

    .end local v5    # "mountExternal":I
    .local v3, "mountExternal":I
    goto :goto_105

    .line 2120
    .end local v3    # "mountExternal":I
    .restart local v5    # "mountExternal":I
    :cond_f4
    const-class v3, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManagerInternal;

    .line 2122
    .local v3, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2, v10}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v10
    :try_end_104
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_104} :catch_168
    .catch Ljava/lang/RuntimeException; {:try_start_e2 .. :try_end_104} :catch_170

    move v5, v10

    .line 2127
    .end local v3    # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v7    # "pm":Landroid/content/pm/IPackageManager;
    :goto_105
    nop

    .line 2132
    :try_start_106
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v3, :cond_156

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v3, v3, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v3, :cond_156

    .line 2133
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v3, v3, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    .local v3, "i":I
    :goto_11a
    if-ltz v3, :cond_153

    .line 2134
    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v10, v10, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 2135
    invoke-virtual {v10, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iget v11, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 2134
    invoke-virtual {v7, v10, v11}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v7

    .line 2136
    .local v7, "denyGids":[I
    if-eqz v7, :cond_14c

    .line 2137
    array-length v10, v7

    const/4 v11, 0x0

    :goto_134
    if-ge v11, v10, :cond_149

    aget v18, v7, v11

    move/from16 v19, v18

    .line 2138
    .local v19, "gid":I
    move-object/from16 v18, v4

    move/from16 v4, v19

    .end local v19    # "gid":I
    .local v4, "gid":I
    .local v18, "gids":[I
    invoke-static {v6, v4}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v19

    move-object/from16 v6, v19

    .line 2137
    .end local v4    # "gid":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v18

    goto :goto_134

    .end local v18    # "gids":[I
    .local v4, "gids":[I
    :cond_149
    move-object/from16 v18, v4

    .end local v4    # "gids":[I
    .restart local v18    # "gids":[I
    goto :goto_14e

    .line 2136
    .end local v18    # "gids":[I
    .restart local v4    # "gids":[I
    :cond_14c
    move-object/from16 v18, v4

    .line 2133
    .end local v4    # "gids":[I
    .end local v7    # "denyGids":[I
    .restart local v18    # "gids":[I
    :goto_14e
    add-int/lit8 v3, v3, -0x1

    move-object/from16 v4, v18

    goto :goto_11a

    .end local v18    # "gids":[I
    .restart local v4    # "gids":[I
    :cond_153
    move-object/from16 v18, v4

    .end local v4    # "gids":[I
    .restart local v18    # "gids":[I
    goto :goto_158

    .line 2132
    .end local v3    # "i":I
    .end local v18    # "gids":[I
    .restart local v4    # "gids":[I
    :cond_156
    move-object/from16 v18, v4

    .line 2144
    .end local v4    # "gids":[I
    .restart local v18    # "gids":[I
    :goto_158
    invoke-direct {v14, v5, v2, v6}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[I)[I

    move-result-object v3

    move-object v4, v3

    move v11, v5

    .end local v18    # "gids":[I
    .restart local v4    # "gids":[I
    goto :goto_17c

    .line 2360
    .end local v2    # "uid":I
    .end local v4    # "gids":[I
    .end local v5    # "mountExternal":I
    .end local v6    # "permGids":[I
    .end local v8    # "userId":I
    :catch_15f
    move-exception v0

    move-object/from16 v30, v9

    move/from16 v27, v11

    :goto_164
    move-wide/from16 v28, v12

    goto/16 :goto_56a

    .line 2125
    .restart local v2    # "uid":I
    .restart local v4    # "gids":[I
    .restart local v5    # "mountExternal":I
    .restart local v6    # "permGids":[I
    .restart local v8    # "userId":I
    :catch_168
    move-exception v0

    move-object/from16 v18, v4

    .line 2126
    .end local v4    # "gids":[I
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v18    # "gids":[I
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_170
    .catch Ljava/lang/RuntimeException; {:try_start_106 .. :try_end_170} :catch_170

    .line 2360
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "uid":I
    .end local v5    # "mountExternal":I
    .end local v6    # "permGids":[I
    .end local v8    # "userId":I
    .end local v18    # "gids":[I
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :catch_170
    move-exception v0

    move-object/from16 v30, v9

    move-wide/from16 v28, v12

    const/16 v27, 0x0

    goto/16 :goto_56a

    .line 2110
    .restart local v2    # "uid":I
    .restart local v4    # "gids":[I
    .restart local v5    # "mountExternal":I
    .restart local v8    # "userId":I
    :cond_179
    move-object/from16 v18, v4

    .end local v4    # "gids":[I
    .restart local v18    # "gids":[I
    move v11, v5

    .line 2146
    .end local v5    # "mountExternal":I
    .end local v18    # "gids":[I
    .restart local v4    # "gids":[I
    .local v11, "mountExternal":I
    :goto_17c
    :try_start_17c
    iput v11, v15, Lcom/android/server/am/ProcessRecord;->mountMode:I

    .line 2147
    const-string/jumbo v3, "startProcess: building args"

    invoke-direct {v14, v12, v13, v3}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2148
    iget-object v3, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 2149
    const/4 v2, 0x0

    move v7, v2

    goto :goto_196

    .line 2148
    :cond_195
    move v7, v2

    .line 2151
    .end local v2    # "uid":I
    .local v7, "uid":I
    :goto_196
    const/4 v2, 0x0

    .line 2152
    .local v2, "runtimeFlags":I
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_19b
    .catch Ljava/lang/RuntimeException; {:try_start_17c .. :try_end_19b} :catch_54b

    const/4 v5, 0x2

    and-int/2addr v3, v5

    if-eqz v3, :cond_1cb

    .line 2153
    or-int/lit8 v2, v2, 0x1

    .line 2154
    or-int/lit16 v2, v2, 0x100

    .line 2157
    or-int/2addr v2, v5

    .line 2160
    :try_start_1a4
    iget-object v3, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "art_verifier_verify_debuggable"

    const/4 v10, 0x1

    invoke-static {v3, v6, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_1cb

    .line 2162
    or-int/lit16 v2, v2, 0x200

    .line 2163
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": ART verification disabled"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1cb
    .catch Ljava/lang/RuntimeException; {:try_start_1a4 .. :try_end_1cb} :catch_170

    .line 2168
    :cond_1cb
    :try_start_1cb
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1cf
    .catch Ljava/lang/RuntimeException; {:try_start_1cb .. :try_end_1cf} :catch_54b

    and-int/lit16 v3, v3, 0x4000

    if-nez v3, :cond_1d9

    :try_start_1d3
    iget-object v3, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_1d7
    .catch Ljava/lang/RuntimeException; {:try_start_1d3 .. :try_end_1d7} :catch_170

    if-eqz v3, :cond_1db

    .line 2169
    :cond_1d9
    or-int/lit8 v2, v2, 0x8

    .line 2171
    :cond_1db
    :try_start_1db
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v6, 0x800000

    and-int/2addr v3, v6

    if-eqz v3, :cond_1e8

    .line 2172
    const v3, 0x8000

    or-int/2addr v2, v3

    .line 2174
    :cond_1e8
    const-string v3, "debug.checkjni"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f6

    .line 2175
    or-int/lit8 v2, v2, 0x2

    .line 2177
    :cond_1f6
    const-string v3, "debug.generate-debug-info"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v6, v3

    .line 2178
    .local v6, "genDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_201
    .catch Ljava/lang/RuntimeException; {:try_start_1db .. :try_end_201} :catch_54b

    const-string/jumbo v10, "true"

    if-nez v3, :cond_20c

    :try_start_206
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_20a
    .catch Ljava/lang/RuntimeException; {:try_start_206 .. :try_end_20a} :catch_170

    if-eqz v3, :cond_20e

    .line 2179
    :cond_20c
    or-int/lit8 v2, v2, 0x20

    .line 2181
    :cond_20e
    :try_start_20e
    const-string v3, "dalvik.vm.minidebuginfo"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2182
    .local v3, "genMiniDebugInfoProperty":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18
    :try_end_218
    .catch Ljava/lang/RuntimeException; {:try_start_20e .. :try_end_218} :catch_54b

    if-nez v18, :cond_220

    :try_start_21a
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10
    :try_end_21e
    .catch Ljava/lang/RuntimeException; {:try_start_21a .. :try_end_21e} :catch_170

    if-eqz v10, :cond_222

    .line 2183
    :cond_220
    or-int/lit16 v2, v2, 0x800

    .line 2185
    :cond_222
    :try_start_222
    const-string v10, "debug.jni.logging"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_230

    .line 2186
    or-int/lit8 v2, v2, 0x10

    .line 2188
    :cond_230
    const-string v10, "debug.assert"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23e

    .line 2189
    or-int/lit8 v2, v2, 0x4

    .line 2191
    :cond_23e
    const-string v10, "debug.ignoreappsignalhandler"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24d

    .line 2192
    const/high16 v1, 0x20000

    or-int/2addr v2, v1

    .line 2194
    :cond_24d
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_251
    .catch Ljava/lang/RuntimeException; {:try_start_222 .. :try_end_251} :catch_54b

    const/16 v10, 0x80

    if-eqz v1, :cond_26c

    :try_start_255
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2195
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26c

    .line 2197
    or-int/lit8 v1, v2, 0x40

    .line 2198
    .end local v2    # "runtimeFlags":I
    .local v1, "runtimeFlags":I
    or-int/lit8 v1, v1, 0x20

    .line 2199
    or-int/lit16 v2, v1, 0x80

    .line 2200
    .end local v1    # "runtimeFlags":I
    .restart local v2    # "runtimeFlags":I
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, 0x0

    iput-object v5, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_26c
    .catch Ljava/lang/RuntimeException; {:try_start_255 .. :try_end_26c} :catch_170

    .line 2203
    :cond_26c
    :try_start_26c
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v1
    :try_end_272
    .catch Ljava/lang/RuntimeException; {:try_start_26c .. :try_end_272} :catch_54b

    if-nez v1, :cond_28a

    :try_start_274
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2204
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v1

    if-eqz v1, :cond_28c

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord$PackageList;->mPkgList:Landroid/util/ArrayMap;

    .line 2205
    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_28c

    .line 2206
    :cond_28a
    or-int/lit16 v2, v2, 0x400

    .line 2209
    :cond_28c
    if-nez p4, :cond_2d3

    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_2d3

    .line 2210
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 2211
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v5

    .line 2210
    invoke-virtual {v1, v5}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 2212
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2213
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v1

    .line 2214
    .local v1, "policy":I
    sget v5, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v5, v1, v5

    .line 2215
    .local v5, "policyBits":I
    and-int/lit16 v10, v5, 0x3000

    if-ne v10, v5, :cond_2ba

    .line 2218
    or-int/2addr v2, v5

    .line 2220
    if-eqz p5, :cond_2d7

    .line 2221
    const/high16 v10, 0x40000

    or-int/2addr v2, v10

    goto :goto_2d7

    .line 2216
    :cond_2ba
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v2

    .end local v2    # "runtimeFlags":I
    .local v20, "runtimeFlags":I
    const-string v2, "Invalid API policy: "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_2d3
    .catch Ljava/lang/RuntimeException; {:try_start_274 .. :try_end_2d3} :catch_170

    .line 2209
    .end local v1    # "policy":I
    .end local v5    # "policyBits":I
    .end local v20    # "runtimeFlags":I
    .restart local v2    # "runtimeFlags":I
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :cond_2d3
    move/from16 v20, v2

    .line 2225
    .end local v2    # "runtimeFlags":I
    .restart local v20    # "runtimeFlags":I
    move/from16 v2, v20

    .end local v20    # "runtimeFlags":I
    .restart local v2    # "runtimeFlags":I
    :cond_2d7
    :goto_2d7
    :try_start_2d7
    const-string/jumbo v1, "persist.device_config.runtime_native.use_app_image_startup_cache"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 2228
    .local v5, "useAppImageCache":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_2e3
    .catch Ljava/lang/RuntimeException; {:try_start_2d7 .. :try_end_2e3} :catch_54b

    if-nez v1, :cond_2f0

    :try_start_2e5
    const-string v1, "false"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_2eb
    .catch Ljava/lang/RuntimeException; {:try_start_2e5 .. :try_end_2eb} :catch_170

    if-nez v1, :cond_2f0

    .line 2229
    const/high16 v1, 0x10000

    or-int/2addr v2, v1

    .line 2232
    :cond_2f0
    :try_start_2f0
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideGwpAsanLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v1

    or-int/2addr v1, v2

    .line 2234
    .end local v2    # "runtimeFlags":I
    .local v1, "runtimeFlags":I
    const/4 v2, 0x0

    .line 2235
    .local v2, "invokeWith":Ljava/lang/String;
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_2fa
    .catch Ljava/lang/RuntimeException; {:try_start_2f0 .. :try_end_2fa} :catch_54b

    const/16 v18, 0x2

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_350

    .line 2237
    :try_start_300
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v0

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/wrap.sh"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2238
    .local v10, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_31c
    .catch Ljava/lang/RuntimeException; {:try_start_300 .. :try_end_31c} :catch_170

    move-object/from16 v21, v0

    .line 2240
    .local v21, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_31e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_340

    .line 2241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_32e
    .catchall {:try_start_31e .. :try_end_32e} :catchall_348

    move-object/from16 v22, v2

    .end local v2    # "invokeWith":Ljava/lang/String;
    .local v22, "invokeWith":Ljava/lang/String;
    :try_start_330
    const-string v2, "/system/bin/logwrapper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_33c
    .catchall {:try_start_330 .. :try_end_33c} :catchall_33e

    move-object v2, v0

    .end local v22    # "invokeWith":Ljava/lang/String;
    .restart local v2    # "invokeWith":Ljava/lang/String;
    goto :goto_342

    .line 2244
    .end local v2    # "invokeWith":Ljava/lang/String;
    .restart local v22    # "invokeWith":Ljava/lang/String;
    :catchall_33e
    move-exception v0

    goto :goto_34b

    .line 2240
    .end local v22    # "invokeWith":Ljava/lang/String;
    .restart local v2    # "invokeWith":Ljava/lang/String;
    :cond_340
    move-object/from16 v22, v2

    .line 2244
    :goto_342
    :try_start_342
    invoke-static/range {v21 .. v21}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2245
    move-object/from16 v22, v2

    goto :goto_354

    .line 2244
    :catchall_348
    move-exception v0

    move-object/from16 v22, v2

    .end local v2    # "invokeWith":Ljava/lang/String;
    .restart local v22    # "invokeWith":Ljava/lang/String;
    :goto_34b
    invoke-static/range {v21 .. v21}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 2245
    nop

    .end local v12    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_350
    .catch Ljava/lang/RuntimeException; {:try_start_342 .. :try_end_350} :catch_170

    .line 2235
    .end local v10    # "wrapperFileName":Ljava/lang/String;
    .end local v21    # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v22    # "invokeWith":Ljava/lang/String;
    .restart local v2    # "invokeWith":Ljava/lang/String;
    .restart local v12    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :cond_350
    move-object/from16 v20, v0

    move-object/from16 v22, v2

    .line 2248
    .end local v2    # "invokeWith":Ljava/lang/String;
    .restart local v22    # "invokeWith":Ljava/lang/String;
    :goto_354
    if-eqz p7, :cond_359

    move-object/from16 v0, p7

    goto :goto_35d

    :cond_359
    :try_start_359
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_35d
    .catch Ljava/lang/RuntimeException; {:try_start_359 .. :try_end_35d} :catch_54b

    .line 2249
    .local v0, "requiredAbi":Ljava/lang/String;
    :goto_35d
    if-nez v0, :cond_36d

    .line 2250
    :try_start_35f
    sget-object v2, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_361
    .catch Ljava/lang/RuntimeException; {:try_start_35f .. :try_end_361} :catch_170

    const/4 v10, 0x0

    :try_start_362
    aget-object v2, v2, v10
    :try_end_364
    .catch Ljava/lang/RuntimeException; {:try_start_362 .. :try_end_364} :catch_366

    move-object v0, v2

    goto :goto_36e

    .line 2360
    .end local v0    # "requiredAbi":Ljava/lang/String;
    .end local v1    # "runtimeFlags":I
    .end local v3    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v4    # "gids":[I
    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .end local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    .end local v11    # "mountExternal":I
    .end local v22    # "invokeWith":Ljava/lang/String;
    :catch_366
    move-exception v0

    move-object/from16 v30, v9

    move/from16 v27, v10

    goto/16 :goto_164

    .line 2249
    .restart local v0    # "requiredAbi":Ljava/lang/String;
    .restart local v1    # "runtimeFlags":I
    .restart local v3    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v4    # "gids":[I
    .restart local v5    # "useAppImageCache":Ljava/lang/String;
    .restart local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "userId":I
    .restart local v11    # "mountExternal":I
    .restart local v22    # "invokeWith":Ljava/lang/String;
    :cond_36d
    move-object v2, v0

    .line 2253
    .end local v0    # "requiredAbi":Ljava/lang/String;
    .local v2, "requiredAbi":Ljava/lang/String;
    :goto_36e
    const/4 v0, 0x0

    .line 2254
    .local v0, "instructionSet":Ljava/lang/String;
    :try_start_36f
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_373
    .catch Ljava/lang/RuntimeException; {:try_start_36f .. :try_end_373} :catch_54b

    if-eqz v10, :cond_37f

    .line 2255
    :try_start_375
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    invoke-static {v10}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_37d
    .catch Ljava/lang/RuntimeException; {:try_start_375 .. :try_end_37d} :catch_170

    move-object v0, v10

    goto :goto_380

    .line 2254
    :cond_37f
    move-object v10, v0

    .line 2258
    .end local v0    # "instructionSet":Ljava/lang/String;
    .local v10, "instructionSet":Ljava/lang/String;
    :goto_380
    :try_start_380
    iput-object v4, v15, Lcom/android/server/am/ProcessRecord;->gids:[I

    .line 2259
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 2260
    iput-object v10, v15, Lcom/android/server/am/ProcessRecord;->instructionSet:Ljava/lang/String;
    :try_end_387
    .catch Ljava/lang/RuntimeException; {:try_start_380 .. :try_end_387} :catch_54b

    .line 2272
    if-eqz v10, :cond_395

    :try_start_389
    const-string v0, "arm64"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_38f
    .catch Ljava/lang/RuntimeException; {:try_start_389 .. :try_end_38f} :catch_170

    if-eqz v0, :cond_392

    goto :goto_395

    :cond_392
    move/from16 v21, v1

    goto :goto_39c

    .line 2273
    :cond_395
    :goto_395
    :try_start_395
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->decideTaggingLevel(Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    or-int/2addr v1, v0

    move/from16 v21, v1

    .line 2277
    .end local v1    # "runtimeFlags":I
    .local v21, "runtimeFlags":I
    :goto_39c
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_3a4
    .catch Ljava/lang/RuntimeException; {:try_start_395 .. :try_end_3a4} :catch_54b

    if-eqz v0, :cond_3d9

    .line 2278
    :try_start_3a6
    const-string v0, "SELinux tag not defined"

    new-instance v1, Ljava/lang/IllegalStateException;

    move-object/from16 v23, v2

    .end local v2    # "requiredAbi":Ljava/lang/String;
    .local v23, "requiredAbi":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v24, v3

    .end local v3    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v24, "genMiniDebugInfoProperty":Ljava/lang/String;
    const-string v3, "SELinux tag not defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v9, v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3d8
    .catch Ljava/lang/RuntimeException; {:try_start_3a6 .. :try_end_3d8} :catch_170

    goto :goto_3dd

    .line 2277
    .end local v23    # "requiredAbi":Ljava/lang/String;
    .end local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v2    # "requiredAbi":Ljava/lang/String;
    .restart local v3    # "genMiniDebugInfoProperty":Ljava/lang/String;
    :cond_3d9
    move-object/from16 v23, v2

    move-object/from16 v24, v3

    .line 2282
    .end local v2    # "requiredAbi":Ljava/lang/String;
    .end local v3    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v23    # "requiredAbi":Ljava/lang/String;
    .restart local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    :goto_3dd
    :try_start_3dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2283
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3f6

    move-object/from16 v1, v20

    goto :goto_3fa

    :cond_3f6
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_3fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v19, v10

    const/16 v1, 0x80

    .end local v10    # "instructionSet":Ljava/lang/String;
    .local v19, "instructionSet":Ljava/lang/String;
    move-object v10, v0

    .line 2286
    .local v10, "seInfo":Ljava/lang/String;
    const-string v0, "android.app.ActivityThread"

    move-object/from16 v20, v0

    .line 2290
    .local v20, "entryPoint":Ljava/lang/String;
    const/16 v2, 0x1f41

    .line 2291
    .local v2, "AID_VENDOR_SDP":I
    const/16 v3, 0x14b4

    .line 2293
    .local v3, "AID_VENDOR_DDAR_DENY_DEACCESS":I
    const/4 v1, 0x2

    new-array v0, v1, [I
    :try_end_411
    .catch Ljava/lang/RuntimeException; {:try_start_3dd .. :try_end_411} :catch_54b

    const/4 v1, 0x0

    :try_start_412
    aput v1, v0, v1

    const/16 v16, 0x1

    aput v1, v0, v16
    :try_end_418
    .catch Ljava/lang/RuntimeException; {:try_start_412 .. :try_end_418} :catch_545

    move-object v1, v0

    .line 2294
    .local v1, "gidsExtra":[I
    const/16 v26, 0x0

    .line 2298
    .local v26, "cnt":I
    :try_start_41b
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0
    :try_end_41f
    .catch Landroid/os/RemoteException; {:try_start_41b .. :try_end_41f} :catch_464
    .catch Ljava/lang/RuntimeException; {:try_start_41b .. :try_end_41f} :catch_170

    move/from16 v27, v2

    .end local v2    # "AID_VENDOR_SDP":I
    .local v27, "AID_VENDOR_SDP":I
    :try_start_421
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_425
    .catch Landroid/os/RemoteException; {:try_start_421 .. :try_end_425} :catch_45e
    .catch Ljava/lang/RuntimeException; {:try_start_421 .. :try_end_425} :catch_170

    move/from16 v28, v3

    .end local v3    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .local v28, "AID_VENDOR_DDAR_DENY_DEACCESS":I
    :try_start_427
    iget v3, v15, Lcom/android/server/am/ProcessRecord;->userId:I
    :try_end_429
    .catch Landroid/os/RemoteException; {:try_start_427 .. :try_end_429} :catch_45a
    .catch Ljava/lang/RuntimeException; {:try_start_427 .. :try_end_429} :catch_170

    move-object/from16 v29, v5

    const/16 v5, 0x80

    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .local v29, "useAppImageCache":Ljava/lang/String;
    :try_start_42d
    invoke-interface {v0, v2, v5, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2301
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_455

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v2, :cond_455

    const-string v2, "enabled"

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v5, "sdp"

    .line 2303
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2
    :try_end_446
    .catch Landroid/os/RemoteException; {:try_start_42d .. :try_end_446} :catch_458
    .catch Ljava/lang/RuntimeException; {:try_start_42d .. :try_end_446} :catch_170

    if-eqz v2, :cond_455

    .line 2304
    add-int/lit8 v2, v26, 0x1

    .end local v26    # "cnt":I
    .local v2, "cnt":I
    const/16 v3, 0x1f41

    :try_start_44c
    aput v3, v1, v26
    :try_end_44e
    .catch Landroid/os/RemoteException; {:try_start_44c .. :try_end_44e} :catch_451
    .catch Ljava/lang/RuntimeException; {:try_start_44c .. :try_end_44e} :catch_170

    move/from16 v26, v2

    goto :goto_455

    .line 2306
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_451
    move-exception v0

    move/from16 v26, v2

    goto :goto_46b

    .line 2308
    .end local v2    # "cnt":I
    .restart local v26    # "cnt":I
    :cond_455
    :goto_455
    move/from16 v0, v26

    goto :goto_472

    .line 2306
    :catch_458
    move-exception v0

    goto :goto_46b

    .end local v29    # "useAppImageCache":Ljava/lang/String;
    .restart local v5    # "useAppImageCache":Ljava/lang/String;
    :catch_45a
    move-exception v0

    move-object/from16 v29, v5

    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .restart local v29    # "useAppImageCache":Ljava/lang/String;
    goto :goto_46b

    .end local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .end local v29    # "useAppImageCache":Ljava/lang/String;
    .restart local v3    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .restart local v5    # "useAppImageCache":Ljava/lang/String;
    :catch_45e
    move-exception v0

    move/from16 v28, v3

    move-object/from16 v29, v5

    .end local v3    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .restart local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .restart local v29    # "useAppImageCache":Ljava/lang/String;
    goto :goto_46b

    .end local v27    # "AID_VENDOR_SDP":I
    .end local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .end local v29    # "useAppImageCache":Ljava/lang/String;
    .local v2, "AID_VENDOR_SDP":I
    .restart local v3    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .restart local v5    # "useAppImageCache":Ljava/lang/String;
    :catch_464
    move-exception v0

    move/from16 v27, v2

    move/from16 v28, v3

    move-object/from16 v29, v5

    .line 2307
    .end local v2    # "AID_VENDOR_SDP":I
    .end local v3    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .end local v5    # "useAppImageCache":Ljava/lang/String;
    .local v0, "re":Landroid/os/RemoteException;
    .restart local v27    # "AID_VENDOR_SDP":I
    .restart local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .restart local v29    # "useAppImageCache":Ljava/lang/String;
    :goto_46b
    :try_start_46b
    const-string v2, "Failed to get metadata for sdp "

    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_470
    .catch Ljava/lang/RuntimeException; {:try_start_46b .. :try_end_470} :catch_54b

    move/from16 v0, v26

    .line 2325
    .end local v26    # "cnt":I
    .local v0, "cnt":I
    :goto_472
    if-lez v0, :cond_49a

    :try_start_474
    array-length v2, v1
    :try_end_475
    .catch Ljava/lang/RuntimeException; {:try_start_474 .. :try_end_475} :catch_170

    if-gt v0, v2, :cond_49a

    .line 2326
    if-nez v4, :cond_485

    .line 2327
    const/4 v2, 0x0

    :try_start_47a
    new-array v3, v2, [I
    :try_end_47c
    .catch Ljava/lang/RuntimeException; {:try_start_47a .. :try_end_47c} :catch_47e

    move-object v4, v3

    goto :goto_485

    .line 2360
    .end local v0    # "cnt":I
    .end local v1    # "gidsExtra":[I
    .end local v4    # "gids":[I
    .end local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    .end local v10    # "seInfo":Ljava/lang/String;
    .end local v11    # "mountExternal":I
    .end local v19    # "instructionSet":Ljava/lang/String;
    .end local v20    # "entryPoint":Ljava/lang/String;
    .end local v21    # "runtimeFlags":I
    .end local v22    # "invokeWith":Ljava/lang/String;
    .end local v23    # "requiredAbi":Ljava/lang/String;
    .end local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v27    # "AID_VENDOR_SDP":I
    .end local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .end local v29    # "useAppImageCache":Ljava/lang/String;
    :catch_47e
    move-exception v0

    move/from16 v27, v2

    :goto_481
    move-object/from16 v30, v9

    goto/16 :goto_164

    .line 2329
    .restart local v0    # "cnt":I
    .restart local v1    # "gidsExtra":[I
    .restart local v4    # "gids":[I
    .restart local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "userId":I
    .restart local v10    # "seInfo":Ljava/lang/String;
    .restart local v11    # "mountExternal":I
    .restart local v19    # "instructionSet":Ljava/lang/String;
    .restart local v20    # "entryPoint":Ljava/lang/String;
    .restart local v21    # "runtimeFlags":I
    .restart local v22    # "invokeWith":Ljava/lang/String;
    .restart local v23    # "requiredAbi":Ljava/lang/String;
    .restart local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v27    # "AID_VENDOR_SDP":I
    .restart local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .restart local v29    # "useAppImageCache":Ljava/lang/String;
    :cond_485
    :goto_485
    :try_start_485
    array-length v2, v4

    add-int/2addr v2, v0

    new-array v2, v2, [I

    .line 2330
    .local v2, "gidsTemp":[I
    array-length v3, v4
    :try_end_48a
    .catch Ljava/lang/RuntimeException; {:try_start_485 .. :try_end_48a} :catch_170

    const/4 v5, 0x0

    :try_start_48b
    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2331
    array-length v3, v4

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_492
    .catch Ljava/lang/RuntimeException; {:try_start_48b .. :try_end_492} :catch_496

    .line 2332
    move-object v4, v2

    :try_start_493
    iput-object v2, v15, Lcom/android/server/am/ProcessRecord;->gids:[I

    goto :goto_49a

    .line 2360
    .end local v0    # "cnt":I
    .end local v1    # "gidsExtra":[I
    .end local v2    # "gidsTemp":[I
    .end local v4    # "gids":[I
    .end local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    .end local v10    # "seInfo":Ljava/lang/String;
    .end local v11    # "mountExternal":I
    .end local v19    # "instructionSet":Ljava/lang/String;
    .end local v20    # "entryPoint":Ljava/lang/String;
    .end local v21    # "runtimeFlags":I
    .end local v22    # "invokeWith":Ljava/lang/String;
    .end local v23    # "requiredAbi":Ljava/lang/String;
    .end local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v27    # "AID_VENDOR_SDP":I
    .end local v28    # "AID_VENDOR_DDAR_DENY_DEACCESS":I
    .end local v29    # "useAppImageCache":Ljava/lang/String;
    :catch_496
    move-exception v0

    move/from16 v27, v5

    goto :goto_481

    .line 2338
    .restart local v4    # "gids":[I
    .restart local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "userId":I
    .restart local v10    # "seInfo":Ljava/lang/String;
    .restart local v11    # "mountExternal":I
    .restart local v19    # "instructionSet":Ljava/lang/String;
    .restart local v20    # "entryPoint":Ljava/lang/String;
    .restart local v21    # "runtimeFlags":I
    .restart local v22    # "invokeWith":Ljava/lang/String;
    .restart local v23    # "requiredAbi":Ljava/lang/String;
    .restart local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v29    # "useAppImageCache":Ljava/lang/String;
    :cond_49a
    :goto_49a
    if-eqz v4, :cond_4b9

    invoke-static {v8}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-eqz v0, :cond_4b9

    .line 2339
    array-length v0, v4

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    .line 2340
    .local v0, "gids_tmp":[I
    array-length v1, v4
    :try_end_4a8
    .catch Ljava/lang/RuntimeException; {:try_start_493 .. :try_end_4a8} :catch_170

    const/4 v2, 0x0

    :try_start_4a9
    invoke-static {v4, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2341
    array-length v1, v4

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3
    :try_end_4b1
    .catch Ljava/lang/RuntimeException; {:try_start_4a9 .. :try_end_4b1} :catch_47e

    :try_start_4b1
    aput v3, v0, v1

    .line 2342
    move-object v4, v0

    .line 2343
    iput-object v4, v15, Lcom/android/server/am/ProcessRecord;->gids:[I

    .line 2345
    .end local v0    # "gids_tmp":[I
    move-object v0, v4

    const/4 v5, 0x0

    goto :goto_50f

    :cond_4b9
    const/16 v0, 0x3e8

    if-ne v7, v0, :cond_50d

    const-string v0, "com.samsung.android.da.daagent"

    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50d

    .line 2346
    array-length v0, v4

    add-int/lit8 v0, v0, 0x5

    new-array v0, v0, [I

    .line 2347
    .restart local v0    # "gids_tmp":[I
    array-length v1, v4
    :try_end_4cf
    .catch Ljava/lang/RuntimeException; {:try_start_4b1 .. :try_end_4cf} :catch_170

    const/4 v5, 0x0

    :try_start_4d0
    invoke-static {v4, v5, v0, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2348
    array-length v1, v4

    const/16 v2, 0x5f

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    .line 2349
    array-length v1, v4

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0x60

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    .line 2350
    array-length v1, v4

    const/4 v2, 0x2

    add-int/2addr v1, v2

    const/16 v2, 0x61

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    .line 2351
    array-length v1, v4

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x62

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    .line 2352
    array-length v1, v4

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x63

    invoke-static {v2}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v2

    aput v2, v0, v1

    .line 2353
    move-object v4, v0

    .line 2354
    iput-object v4, v15, Lcom/android/server/am/ProcessRecord;->gids:[I
    :try_end_50b
    .catch Ljava/lang/RuntimeException; {:try_start_4d0 .. :try_end_50b} :catch_496

    move-object v0, v4

    goto :goto_50f

    .line 2345
    .end local v0    # "gids_tmp":[I
    :cond_50d
    const/4 v5, 0x0

    .line 2357
    move-object v0, v4

    .end local v4    # "gids":[I
    .local v0, "gids":[I
    :goto_50f
    :try_start_50f
    const-string v3, "android.app.ActivityThread"
    :try_end_511
    .catch Ljava/lang/RuntimeException; {:try_start_50f .. :try_end_511} :catch_541

    move-object/from16 v1, p0

    move-object/from16 v16, v23

    .end local v23    # "requiredAbi":Ljava/lang/String;
    .local v16, "requiredAbi":Ljava/lang/String;
    move-object/from16 v2, p2

    move-object/from16 v17, v24

    .end local v24    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v17, "genMiniDebugInfoProperty":Ljava/lang/String;
    move-object/from16 v4, p1

    move/from16 v23, v5

    move-object/from16 v18, v29

    .end local v29    # "useAppImageCache":Ljava/lang/String;
    .local v18, "useAppImageCache":Ljava/lang/String;
    move v5, v7

    move-object/from16 v24, v6

    .end local v6    # "genDebugInfoProperty":Ljava/lang/String;
    .local v24, "genDebugInfoProperty":Ljava/lang/String;
    move-object v6, v0

    move/from16 v25, v7

    .end local v7    # "uid":I
    .local v25, "uid":I
    move/from16 v7, v21

    move/from16 v26, v8

    .end local v8    # "userId":I
    .local v26, "userId":I
    move/from16 v8, p3

    move-object/from16 v30, v9

    move v9, v11

    move/from16 v27, v23

    move/from16 v23, v11

    .end local v11    # "mountExternal":I
    .local v23, "mountExternal":I
    move-object/from16 v11, v16

    move-wide/from16 v28, v12

    .end local v12    # "startTime":J
    .local v28, "startTime":J
    move-object/from16 v12, v19

    move-object/from16 v13, v22

    move-wide/from16 v14, v28

    :try_start_53c
    invoke-virtual/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    return v1

    .line 2360
    .end local v0    # "gids":[I
    .end local v10    # "seInfo":Ljava/lang/String;
    .end local v16    # "requiredAbi":Ljava/lang/String;
    .end local v17    # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v18    # "useAppImageCache":Ljava/lang/String;
    .end local v19    # "instructionSet":Ljava/lang/String;
    .end local v20    # "entryPoint":Ljava/lang/String;
    .end local v21    # "runtimeFlags":I
    .end local v22    # "invokeWith":Ljava/lang/String;
    .end local v23    # "mountExternal":I
    .end local v24    # "genDebugInfoProperty":Ljava/lang/String;
    .end local v25    # "uid":I
    .end local v26    # "userId":I
    .end local v28    # "startTime":J
    .restart local v12    # "startTime":J
    :catch_541
    move-exception v0

    move/from16 v27, v5

    goto :goto_548

    :catch_545
    move-exception v0

    move/from16 v27, v1

    :goto_548
    move-object/from16 v30, v9

    goto :goto_568

    :catch_54b
    move-exception v0

    move-object/from16 v30, v9

    move-wide/from16 v28, v12

    const/16 v27, 0x0

    goto :goto_56a

    .line 2103
    .restart local v8    # "userId":I
    :catch_553
    move-exception v0

    move/from16 v26, v8

    move-object/from16 v30, v9

    move/from16 v27, v11

    move-wide/from16 v28, v12

    .line 2104
    .end local v8    # "userId":I
    .end local v12    # "startTime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v26    # "userId":I
    .restart local v28    # "startTime":J
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v28    # "startTime":J
    .end local p0    # "this":Lcom/android/server/am/ProcessList;
    .end local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3    # "zygotePolicyFlags":I
    .end local p4    # "disableHiddenApiChecks":Z
    .end local p5    # "disableTestApiChecks":Z
    .end local p6    # "mountExtStorageFull":Z
    .end local p7    # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_561
    .catch Ljava/lang/RuntimeException; {:try_start_53c .. :try_end_561} :catch_561

    .line 2360
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v26    # "userId":I
    .restart local v28    # "startTime":J
    .restart local p0    # "this":Lcom/android/server/am/ProcessList;
    .restart local p1    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2    # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3    # "zygotePolicyFlags":I
    .restart local p4    # "disableHiddenApiChecks":Z
    .restart local p5    # "disableTestApiChecks":Z
    .restart local p6    # "mountExtStorageFull":Z
    .restart local p7    # "abiOverride":Ljava/lang/String;
    :catch_561
    move-exception v0

    goto :goto_56a

    .end local v28    # "startTime":J
    .restart local v12    # "startTime":J
    :catch_563
    move-exception v0

    move-object/from16 v30, v9

    move/from16 v27, v11

    :goto_568
    move-wide/from16 v28, v12

    .line 2361
    .end local v12    # "startTime":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v28    # "startTime":J
    :goto_56a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure starting process "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v30

    invoke-static {v3, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2369
    move-object/from16 v1, p0

    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v12, "start failure"

    invoke-virtual/range {v3 .. v12}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2371
    return v27
.end method

.method updateAllTimePrefsLocked(I)V
    .registers 7
    .param p1, "timePref"    # I

    .line 3702
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3a

    .line 3703
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3704
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_37

    .line 3706
    :try_start_16
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1b} :catch_1c

    .line 3710
    goto :goto_37

    .line 3707
    :catch_1c
    move-exception v2

    .line 3708
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to update preferences for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3702
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_37
    :goto_37
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3713
    .end local v0    # "i":I
    :cond_3a
    return-void
.end method

.method updateApplicationInfoLocked(Ljava/util/List;IZ)V
    .registers 5
    .param p2, "userId"    # I
    .param p3, "updateFrameworkRes"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 4409
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->updateApplicationInfoLocked(Ljava/util/List;IZZ)V

    .line 4410
    return-void
.end method

.method updateApplicationInfoLocked(Ljava/util/List;IZZ)V
    .registers 16
    .param p2, "userId"    # I
    .param p3, "updateFrameworkRes"    # Z
    .param p4, "avoidRelaunch"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZZ)V"
        }
    .end annotation

    .line 4415
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_b6

    .line 4416
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4417
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_18

    .line 4418
    goto/16 :goto_b2

    .line 4421
    :cond_18
    const/4 v3, -0x1

    if-eq p2, v3, :cond_21

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_21

    .line 4422
    goto/16 :goto_b2

    .line 4425
    :cond_21
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$PackageList;->size()I

    move-result v3

    .line 4426
    .local v3, "packageCount":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_28
    if-ge v4, v3, :cond_b2

    .line 4427
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Lcom/android/server/am/ProcessRecord$PackageList;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ProcessRecord$PackageList;->keyAt(I)Ljava/lang/String;

    move-result-object v5

    .line 4428
    .local v5, "packageName":Ljava/lang/String;
    if-nez p3, :cond_3a

    invoke-interface {p1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3a

    .line 4429
    goto/16 :goto_ae

    .line 4432
    :cond_3a
    :try_start_3a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const/16 v7, 0x400

    iget v8, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 4433
    invoke-interface {v6, v5, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 4434
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-nez v6, :cond_49

    .line 4435
    goto :goto_ae

    .line 4438
    :cond_49
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v7

    if-eqz v7, :cond_56

    .line 4439
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v7

    iget-object v7, v7, Lcom/android/server/am/ActiveInstrumentation;->mTargetInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_58

    :cond_56
    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 4441
    .local v7, "processAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_58
    iget-object v8, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    invoke-static {v8, v9}, Landroid/content/om/SamsungThemeConstants;->localeDirsChanged([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    .line 4444
    .local v8, "localeOverlaysChanged":Z
    if-eqz v7, :cond_70

    if-eqz v5, :cond_70

    iget-object v9, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4445
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_70

    .line 4446
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    iput-object v9, v7, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    .line 4450
    :cond_70
    if-eqz v8, :cond_74

    if-nez p4, :cond_80

    :cond_74
    if-eqz p3, :cond_86

    if-eqz p4, :cond_86

    const-string v9, "android"

    .line 4453
    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_86

    .line 4454
    :cond_80
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v9, v6}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChangedAndNoRelaunch(Landroid/content/pm/ApplicationInfo;)V

    goto :goto_8b

    .line 4457
    :cond_86
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v9, v6}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 4459
    :goto_8b
    iget-object v9, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v10, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_99

    .line 4460
    iput-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_99} :catch_9a

    .line 4465
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "processAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "localeOverlaysChanged":Z
    :cond_99
    goto :goto_ae

    .line 4462
    :catch_9a
    move-exception v6

    .line 4463
    .local v6, "e":Landroid/os/RemoteException;
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    aput-object v2, v7, v1

    const-string v8, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4426
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "e":Landroid/os/RemoteException;
    :goto_ae
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_28

    .line 4415
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "packageCount":I
    .end local v4    # "j":I
    :cond_b2
    :goto_b2
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8

    .line 4468
    .end local v0    # "i":I
    :cond_b6
    return-void
.end method

.method updateCoreSettingsLocked(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "settings"    # Landroid/os/Bundle;

    .line 3651
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 3652
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3654
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    :try_start_12
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v2, :cond_1b

    .line 3655
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1b} :catch_1c

    .line 3659
    :cond_1b
    goto :goto_1d

    .line 3657
    :catch_1c
    move-exception v2

    .line 3651
    .end local v1    # "processRecord":Lcom/android/server/am/ProcessRecord;
    :goto_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3661
    .end local v0    # "i":I
    :cond_20
    return-void
.end method

.method public updateLMKThreshold()V
    .registers 4

    .line 1830
    iget v0, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 1831
    return-void
.end method

.method updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .registers 13
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J
    .param p4, "index"    # I
    .param p5, "lruSeq"    # I
    .param p6, "what"    # Ljava/lang/String;
    .param p7, "obj"    # Ljava/lang/Object;
    .param p8, "srcApp"    # Lcom/android/server/am/ProcessRecord;

    .line 3783
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 3785
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3787
    return p4

    .line 3790
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3791
    .local v0, "lrui":I
    const-string v1, "ActivityManager"

    if-gez v0, :cond_40

    .line 3792
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding dependent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not on LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    return p4

    .line 3797
    :cond_40
    if-lt v0, p4, :cond_43

    .line 3800
    return p4

    .line 3803
    :cond_43
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v2, :cond_4a

    if-ge p4, v2, :cond_4a

    .line 3805
    return p4

    .line 3808
    :cond_4a
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3809
    if-lez p4, :cond_53

    .line 3810
    add-int/lit8 p4, p4, -0x1

    .line 3812
    :cond_53
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_7b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving dep from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " in LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3814
    :cond_7b
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3815
    iput p5, p1, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 3816
    return p4
.end method

.method final updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 27
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"    # Z
    .param p3, "client"    # Lcom/android/server/am/ProcessRecord;

    .line 4006
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-nez v0, :cond_1b

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-boolean v0, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    move v0, v1

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v0, v12

    :goto_1c
    move v13, v0

    .line 4008
    .local v13, "hasActivity":Z
    const/4 v14, 0x0

    .line 4009
    .local v14, "hasService":Z
    if-nez p2, :cond_23

    if-eqz v13, :cond_23

    .line 4014
    return-void

    .line 4017
    :cond_23
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 4018
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4019
    .local v7, "now":J
    iput-wide v7, v10, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    .line 4023
    const-string v0, "ActivityManager"

    if-eqz v13, :cond_89

    .line 4024
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 4027
    .local v2, "N":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isActiveLaunch()Z

    move-result v3

    const-wide/16 v4, -0x1

    if-eqz v3, :cond_46

    .line 4028
    invoke-virtual {v10, v1}, Lcom/android/server/am/ProcessRecord;->setActiveLaunch(Z)V

    .line 4029
    invoke-virtual {v10, v4, v5}, Lcom/android/server/am/ProcessRecord;->setActiveLaunchTime(J)V

    .line 4032
    :cond_46
    iget-boolean v3, v10, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    if-eqz v3, :cond_63

    .line 4033
    iput-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isMlLaunch:Z

    .line 4034
    invoke-virtual {v10, v4, v5}, Lcom/android/server/am/ProcessRecord;->setMlLaunchTime(J)V

    .line 4035
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    if-eqz v3, :cond_63

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mMlReceiver:Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MlLaunchReceiver;->isMlBoosterPkg(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 4036
    iput-boolean v12, v10, Lcom/android/server/am/ProcessRecord;->isMLException:Z

    .line 4041
    :cond_63
    if-lez v2, :cond_88

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v10, :cond_88

    .line 4042
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_87

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not moving, already top activity: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4043
    :cond_87
    return-void

    .line 4045
    .end local v2    # "N":I
    :cond_88
    goto :goto_af

    .line 4046
    :cond_89
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v2, :cond_af

    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v2, v12

    .line 4047
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_af

    .line 4048
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_ae

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, already top other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4049
    :cond_ae
    return-void

    .line 4053
    :cond_af
    :goto_af
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v15

    .line 4055
    .local v15, "lrui":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_d6

    if-ltz v15, :cond_d6

    .line 4058
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_d5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4059
    :cond_d5
    return-void

    .line 4096
    :cond_d6
    if-ltz v15, :cond_eb

    .line 4097
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v15, v2, :cond_df

    .line 4098
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4100
    :cond_df
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v15, v2, :cond_e6

    .line 4101
    sub-int/2addr v2, v12

    iput v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4111
    :cond_e6
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4125
    :cond_eb
    const/4 v2, -0x1

    .line 4126
    .local v2, "nextActivityIndex":I
    if-eqz v13, :cond_189

    .line 4127
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4128
    .local v1, "N":I
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4129
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_163

    iget-boolean v4, v10, Lcom/android/server/am/ProcessRecord;->treatLikeActivity:Z

    if-nez v4, :cond_163

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_163

    .line 4133
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_132

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to second-top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " group="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " importance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v10, Lcom/android/server/am/ProcessRecord;->connectionImportance:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4137
    :cond_132
    add-int/lit8 v0, v1, -0x1

    .line 4138
    .local v0, "pos":I
    :goto_134
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v4, :cond_14f

    .line 4139
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4140
    .local v4, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_14b

    .line 4144
    goto :goto_14f

    .line 4146
    :cond_14b
    nop

    .end local v4    # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v0, v0, -0x1

    .line 4147
    goto :goto_134

    .line 4148
    :cond_14f
    :goto_14f
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4151
    add-int/lit8 v4, v0, -0x1

    .line 4152
    .local v4, "endIndex":I
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_15c

    .line 4153
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4155
    :cond_15c
    move v2, v4

    .line 4156
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-direct {v9, v10, v0, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 4157
    .end local v0    # "pos":I
    .end local v4    # "endIndex":I
    goto :goto_188

    .line 4159
    :cond_163
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_17b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    :cond_17b
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4161
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v2, v0

    .line 4163
    .end local v1    # "N":I
    :goto_188
    goto :goto_1f7

    .line 4171
    .end local v3    # "nextIndex":I
    :cond_189
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4172
    .local v3, "index":I
    if-eqz v11, :cond_1bd

    .line 4175
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v4

    .line 4176
    .local v4, "clientIndex":I
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v5, :cond_1b5

    if-gez v4, :cond_1b5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " when updating "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4178
    :cond_1b5
    if-gt v4, v15, :cond_1b8

    .line 4181
    move v4, v15

    .line 4183
    :cond_1b8
    if-ltz v4, :cond_1bd

    if-le v3, v4, :cond_1bd

    .line 4184
    move v3, v4

    .line 4187
    .end local v4    # "clientIndex":I
    :cond_1bd
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_1dd

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " of LRU list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4188
    :cond_1dd
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 4189
    add-int/lit8 v0, v3, -0x1

    .line 4190
    .local v0, "nextIndex":I
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 4191
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v4, v12

    iput v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 4192
    if-le v3, v12, :cond_1f6

    .line 4193
    sub-int/2addr v4, v12

    add-int/lit8 v5, v3, -0x1

    invoke-direct {v9, v10, v4, v1, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrdering(Lcom/android/server/am/ProcessRecord;III)V

    .line 4197
    .end local v3    # "index":I
    :cond_1f6
    move v3, v0

    .end local v0    # "nextIndex":I
    .local v3, "nextIndex":I
    :goto_1f7
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    iput v0, v10, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    .line 4201
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v6, v0

    move/from16 v16, v2

    move/from16 v17, v3

    .end local v2    # "nextActivityIndex":I
    .end local v3    # "nextIndex":I
    .local v6, "j":I
    .local v16, "nextActivityIndex":I
    .local v17, "nextIndex":I
    :goto_207
    if-ltz v6, :cond_2bc

    .line 4202
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v0, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/am/ConnectionRecord;

    .line 4203
    .local v5, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_2b0

    iget-boolean v0, v5, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_2b0

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_2b0

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2b0

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_2b0

    iget v0, v5, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130    # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_2b0

    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 4207
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_2a9

    .line 4208
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_284

    .line 4209
    if-ltz v16, :cond_27d

    .line 4210
    iget-object v0, v5, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v7

    move/from16 v19, v4

    move/from16 v4, v16

    move-object/from16 v20, v5

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v20, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v5, v19

    move/from16 v19, v6

    .end local v6    # "j":I
    .local v19, "j":I
    move-object/from16 v6, v18

    move-wide/from16 v21, v7

    .end local v7    # "now":J
    .local v21, "now":J
    move-object/from16 v7, v20

    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v16, v0

    .end local v16    # "nextActivityIndex":I
    .local v0, "nextActivityIndex":I
    goto :goto_2b6

    .line 4209
    .end local v0    # "nextActivityIndex":I
    .end local v19    # "j":I
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    .restart local v16    # "nextActivityIndex":I
    :cond_27d
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v19    # "j":I
    .restart local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v21    # "now":J
    goto :goto_2b6

    .line 4216
    .end local v19    # "j":I
    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_284
    move-object/from16 v20, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v19    # "j":I
    .restart local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v21    # "now":J
    move-object/from16 v8, v20

    .end local v20    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v17

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v18, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17    # "nextIndex":I
    .local v0, "nextIndex":I
    goto :goto_2b6

    .line 4207
    .end local v0    # "nextIndex":I
    .end local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "j":I
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    .restart local v17    # "nextIndex":I
    :cond_2a9
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v19    # "j":I
    .restart local v21    # "now":J
    goto :goto_2b6

    .line 4203
    .end local v18    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v19    # "j":I
    .end local v21    # "now":J
    .restart local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v6    # "j":I
    .restart local v7    # "now":J
    :cond_2b0
    move-object/from16 v18, v5

    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 4201
    .end local v5    # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v19    # "j":I
    .restart local v21    # "now":J
    :goto_2b6
    add-int/lit8 v6, v19, -0x1

    move-wide/from16 v7, v21

    .end local v19    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_207

    .end local v21    # "now":J
    .restart local v7    # "now":J
    :cond_2bc
    move/from16 v19, v6

    move-wide/from16 v21, v7

    .line 4223
    .end local v6    # "j":I
    .end local v7    # "now":J
    .restart local v21    # "now":J
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v12, v0

    .local v12, "j":I
    :goto_2c8
    if-ltz v12, :cond_306

    .line 4224
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 4225
    .local v8, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_301

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_301

    iget-object v0, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_301

    .line 4226
    iget-object v1, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide/from16 v2, v21

    move/from16 v4, v17

    move-object v7, v8

    move-object/from16 v18, v8

    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object/from16 v8, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLocked(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17    # "nextIndex":I
    .restart local v0    # "nextIndex":I
    goto :goto_303

    .line 4225
    .end local v0    # "nextIndex":I
    .end local v18    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v17    # "nextIndex":I
    :cond_301
    move-object/from16 v18, v8

    .line 4223
    .end local v8    # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_303
    add-int/lit8 v12, v12, -0x1

    goto :goto_2c8

    .line 4230
    .end local v12    # "j":I
    :cond_306
    return-void
.end method
