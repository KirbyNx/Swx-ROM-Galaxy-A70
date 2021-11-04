.class public final Lcom/android/server/am/CachedAppOptimizer;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;,
        Lcom/android/server/am/CachedAppOptimizer$ZramStats;,
        Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;,
        Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;,
        Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;,
        Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;,
        Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;,
        Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    }
.end annotation


# static fields
.field private static final COMPACT_ACTION_ANON:Ljava/lang/String; = "anon"

.field private static final COMPACT_ACTION_ANON_FLAG:I = 0x2

.field private static final COMPACT_ACTION_FILE:Ljava/lang/String; = "file"

.field private static final COMPACT_ACTION_FILE_FLAG:I = 0x1

.field private static final COMPACT_ACTION_FULL:Ljava/lang/String; = "all"

.field private static final COMPACT_ACTION_FULL_FLAG:I = 0x3

.field private static final COMPACT_ACTION_NONE:Ljava/lang/String; = ""

.field private static final COMPACT_ACTION_NONE_FLAG:I = 0x4

.field private static final COMPACT_ACTION_WRITEBACK:Ljava/lang/String; = "writeback"

.field static final COMPACT_PROCESS_BFGS:I = 0x4

.field static final COMPACT_PROCESS_FULL:I = 0x2

.field static final COMPACT_PROCESS_MSG:I = 0x1

.field static final COMPACT_PROCESS_PERSISTENT:I = 0x3

.field static final COMPACT_PROCESS_SOME:I = 0x1

.field static final COMPACT_SYSTEM_MSG:I = 0x2

.field static final DEFAULT_COMPACT_ACTION_1:I = 0x1

.field static final DEFAULT_COMPACT_ACTION_2:I = 0x3

.field static final DEFAULT_COMPACT_ACTION_3:I = 0x2

.field static final DEFAULT_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:J = 0x1f40L

.field static final DEFAULT_COMPACT_FULL_RSS_THROTTLE_KB:J = 0x2ee0L

.field static final DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

.field static final DEFAULT_COMPACT_THROTTLE_1:J = 0x1388L

.field static final DEFAULT_COMPACT_THROTTLE_2:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_3:J = 0x1f4L

.field static final DEFAULT_COMPACT_THROTTLE_4:J = 0x2710L

.field static final DEFAULT_COMPACT_THROTTLE_5:J = 0x927c0L

.field static final DEFAULT_COMPACT_THROTTLE_6:J = 0x927c0L

.field static final DEFAULT_NANDSWAP_DELTA_RSS_THROTTLE_KB:J = 0x4e20L

.field static final DEFAULT_NANDSWAP_RSS_THROTTLE_KB:J = 0x4e20L

.field static final DEFAULT_NANDSWAP_THROTTLE_MS:J = 0x927c0L

.field static final DEFAULT_STATSD_SAMPLE_RATE:F = 0.1f

.field static final DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

.field static final DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

.field static final DEFAULT_USE_NANDSWAP:Ljava/lang/Boolean;

.field static final DO_FREEZE:I = 0x1

.field static final FREEZE_TIMEOUT_MS:I = 0x1f4

.field static final KEY_COMPACT_ACTION_1:Ljava/lang/String; = "compact_action_1"

.field static final KEY_COMPACT_ACTION_2:Ljava/lang/String; = "compact_action_2"

.field static final KEY_COMPACT_ACTION_3:Ljava/lang/String; = "compact_action_3"

.field static final KEY_COMPACT_FULL_DELTA_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_delta_rss_throttle_kb"

.field static final KEY_COMPACT_FULL_RSS_THROTTLE_KB:Ljava/lang/String; = "compact_full_rss_throttle_kb"

.field static final KEY_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String; = "compact_proc_state_throttle"

.field static final KEY_COMPACT_STATSD_SAMPLE_RATE:Ljava/lang/String; = "compact_statsd_sample_rate"

.field static final KEY_COMPACT_THROTTLE_1:Ljava/lang/String; = "compact_throttle_1"

.field static final KEY_COMPACT_THROTTLE_2:Ljava/lang/String; = "compact_throttle_2"

.field static final KEY_COMPACT_THROTTLE_3:Ljava/lang/String; = "compact_throttle_3"

.field static final KEY_COMPACT_THROTTLE_4:Ljava/lang/String; = "compact_throttle_4"

.field static final KEY_COMPACT_THROTTLE_5:Ljava/lang/String; = "compact_throttle_5"

.field static final KEY_COMPACT_THROTTLE_6:Ljava/lang/String; = "compact_throttle_6"

.field static final KEY_FREEZER_STATSD_SAMPLE_RATE:Ljava/lang/String; = "freeze_statsd_sample_rate"

.field static final KEY_USE_COMPACTION:Ljava/lang/String; = "use_compaction"

.field static final KEY_USE_FREEZER:Ljava/lang/String; = "use_freezer"

.field static final NANDSWAP_ACTION_BFGS:I = 0x6

.field static final NANDSWAP_ACTION_CACHED_APP_MIN:I = 0x0

.field static final NANDSWAP_ACTION_MAX:I = 0x7

.field static final NANDSWAP_ACTION_PERCEPTIBLE_LOW_APP:I = 0x4

.field static final NANDSWAP_ACTION_PERSISTENT:I = 0x5

.field static final NANDSWAP_ACTION_PICKED:I = 0x1

.field static final NANDSWAP_ACTION_SERVICE:I = 0x3

.field static final NANDSWAP_ACTION_SERVICE_B:I = 0x2

.field static final NANDSWAP_COMPACT_SYSTEM_DELAY:J = 0x2bf20L

.field static final NANDSWAP_LEVEL_AGGRESSIVE:I = 0x2

.field static final NANDSWAP_LEVEL_DISABLE:I = 0x0

.field static final NANDSWAP_LEVEL_NORMAL:I = 0x1

.field static final NANDSWAP_LRU_RATIO_MAX:I = 0x64

.field static final NANDSWAP_LRU_RATIO_MIN:I = 0x0

.field static final NANDSWAP_MAX_MSG_COUNT:J = 0x64L

.field static final NANDSWAP_PROCESS_MSG:I = 0x1

.field static final NANDSWAP_SYSTEM_MSG:I = 0x2

.field static final REPORT_UNFREEZE:I = 0x2

.field static final REPORT_UNFREEZE_MSG:I = 0x4

.field static final SET_FROZEN_PROCESS_MSG:I = 0x3


# instance fields
.field isDebugable:Z

.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private mBfgsCompactionCount:I

.field final mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

.field volatile mCompactActionAnon:Ljava/lang/String;

.field volatile mCompactActionFull:Ljava/lang/String;

.field volatile mCompactActionSome:Ljava/lang/String;

.field volatile mCompactStatsdSampleRate:F

.field volatile mCompactThrottleBFGS:J

.field volatile mCompactThrottleFullFull:J

.field volatile mCompactThrottleFullSome:J

.field volatile mCompactThrottlePersistent:J

.field volatile mCompactThrottleSomeFull:J

.field volatile mCompactThrottleSomeSome:J

.field mCompactionHandler:Landroid/os/Handler;

.field private mFreezeHandler:Landroid/os/Handler;

.field volatile mFreezerStatsdSampleRate:F

.field volatile mFullAnonRssThrottleKb:J

.field private mFullCompactionCount:I

.field volatile mFullDeltaRssThrottleKb:J

.field mLastCompactionStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;",
            ">;"
        }
    .end annotation
.end field

.field mLastNandswapStats:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/CachedAppOptimizer$LastNandswapStats;",
            ">;"
        }
    .end annotation
.end field

.field private mNandswapBdObjcnt:[J

.field private mNandswapBdWrites:[J

.field private mNandswapCount:[I

.field private mNandswapCountSwapOnly:[I

.field private mNandswapDeltaRssThrottleKb:J

.field private mNandswapHandler:Landroid/os/Handler;

.field private volatile mNandswapLevel:I

.field private volatile mNandswapLruRatio:I

.field private mNandswapMsgCount:J

.field private mNandswapRssThrottleKb:J

.field private mNandswapThrottle:J

.field private final mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mPendingCompactionProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingNandswapProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

.field private mPersistentCompactionCount:I

.field private final mPhenotypeFlagLock:Ljava/lang/Object;

.field final mProcStateThrottle:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

.field private final mRandom:Ljava/util/Random;

.field private mSomeCompactionCount:I

.field private mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

.field private volatile mUseCompaction:Z

.field private volatile mUseFreezer:Z

.field private volatile mUseNandswap:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 112
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 113
    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    .line 128
    nop

    .line 129
    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    .line 131
    sput-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_NANDSWAP:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 329
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/CachedAppOptimizer$DefaultProcessDependencies;-><init>(Lcom/android/server/am/CachedAppOptimizer$1;)V

    invoke-direct {p0, p1, v1, v0}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V

    .line 330
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;)V
    .registers 11
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "callback"    # Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .param p3, "processDependencies"    # Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingNandswapProcesses:Ljava/util/ArrayList;

    .line 206
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$1;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 241
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    .line 244
    nop

    .line 246
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 247
    const/4 v0, 0x3

    .line 249
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 250
    const/4 v0, 0x2

    .line 252
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionAnon:Ljava/lang/String;

    .line 253
    const-wide/16 v3, 0x1388

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 255
    const-wide/16 v3, 0x2710

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 257
    const-wide/16 v5, 0x1f4

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 259
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 261
    const-wide/32 v3, 0x927c0

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 263
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 265
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 266
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 267
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_FREEZER:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 268
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_NANDSWAP:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    .line 269
    const-string/jumbo v0, "ro.nandswap.level"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    .line 270
    const/4 v0, -0x1

    const-string/jumbo v5, "ro.nandswap.lru_ratio"

    invoke-static {v5, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLruRatio:I

    .line 271
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    .line 272
    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 274
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 275
    const-wide/16 v5, 0x2ee0

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 278
    const-wide/16 v5, 0x1f40

    iput-wide v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 284
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapThrottle:J

    .line 285
    const-wide/16 v3, 0x4e20

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapRssThrottleKb:J

    .line 286
    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapDeltaRssThrottleKb:J

    .line 292
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    .line 305
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$2;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    .line 314
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/CachedAppOptimizer$3;-><init>(Lcom/android/server/am/CachedAppOptimizer;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastNandswapStats:Ljava/util/LinkedHashMap;

    .line 335
    iput-object p1, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 336
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v3, "CachedAppOptimizerThread"

    const/4 v4, -0x2

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    .line 338
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    .line 339
    iput-object p3, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    .line 340
    iput-object p2, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    .line 342
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_f0

    # invokes: Lcom/android/server/am/CachedAppOptimizer$ZramStats;->isWritebackEnabled()Z
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->access$1100()Z

    move-result v0

    if-eqz v0, :cond_f0

    .line 343
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "PerProcessNandswapThread"

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

    .line 345
    const/4 v0, 0x7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCount:[I

    .line 346
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCountSwapOnly:[I

    .line 347
    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapBdWrites:[J

    .line 348
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapBdObjcnt:[J

    goto :goto_f5

    .line 350
    :cond_f0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

    .line 351
    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    .line 353
    :goto_f5
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/CachedAppOptimizer;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcessDependencies:Lcom/android/server/am/CachedAppOptimizer$ProcessDependencies;

    return-object v0
.end method

.method static synthetic access$1808(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    return v0
.end method

.method static synthetic access$1908(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    return-void
.end method

.method static synthetic access$2008(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    return v0
.end method

.method static synthetic access$2108(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/Random;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/am/CachedAppOptimizer;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingNandswapProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    return-wide v0
.end method

.method static synthetic access$2510(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/CachedAppOptimizer;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapRssThrottleKb:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/CachedAppOptimizer;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapDeltaRssThrottleKb:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/am/CachedAppOptimizer;IZJJ)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # J
    .param p5, "x4"    # J

    .line 74
    invoke-direct/range {p0 .. p6}, Lcom/android/server/am/CachedAppOptimizer;->updateNandswapStat(IZJJ)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/am/CachedAppOptimizer;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;
    .param p1, "x1"    # Z

    .line 74
    invoke-direct {p0, p1}, Lcom/android/server/am/CachedAppOptimizer;->compactSystem(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/CachedAppOptimizer;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/am/CachedAppOptimizer;)Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/CachedAppOptimizer;

    .line 74
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mTestCallback:Lcom/android/server/am/CachedAppOptimizer$PropertyChangedCallbackForTest;

    return-object v0
.end method

.method static compactActionIntToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "action"    # I

    .line 867
    const/4 v0, 0x1

    if-eq p0, v0, :cond_12

    const/4 v0, 0x2

    if-eq p0, v0, :cond_f

    const/4 v0, 0x3

    if-eq p0, v0, :cond_c

    .line 877
    const-string v0, ""

    return-object v0

    .line 875
    :cond_c
    const-string v0, "all"

    return-object v0

    .line 873
    :cond_f
    const-string v0, "anon"

    return-object v0

    .line 871
    :cond_12
    const-string v0, "file"

    return-object v0
.end method

.method private native compactSystem(Z)V
.end method

.method public static isFreezerSupported()Z
    .registers 6

    .line 670
    const-string v0, "ActivityManager"

    const/4 v1, 0x0

    .line 671
    .local v1, "supported":Z
    const/4 v2, 0x0

    .line 674
    .local v2, "fr":Ljava/io/FileReader;
    :try_start_4
    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/dev/freezer/frozen/freezer.killable"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 675
    invoke-virtual {v2}, Ljava/io/FileReader;->read()I

    move-result v3

    .line 677
    .local v3, "i":I
    int-to-char v4, v3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_17

    .line 678
    const/4 v1, 0x1

    goto :goto_3d

    .line 680
    :cond_17
    const-string v4, "Freezer killability is turned off, disabling freezer"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_1c} :catch_37
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_1c} :catch_1d

    goto :goto_3d

    .line 684
    .end local v3    # "i":I
    :catch_1d
    move-exception v3

    .line 685
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to read freezer.killable, disabling freezer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3e

    .line 682
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_37
    move-exception v3

    .line 683
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Freezer.killable not present, disabling freezer"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :goto_3d
    nop

    .line 688
    :goto_3e
    if-eqz v2, :cond_5d

    .line 690
    :try_start_40
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    .line 693
    goto :goto_5d

    .line 691
    :catch_44
    move-exception v3

    .line 692
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception closing freezer.killable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    .end local v3    # "e":Ljava/io/IOException;
    :cond_5d
    :goto_5d
    return v1
.end method

.method private parseProcStateThrottle(Ljava/lang/String;)Z
    .registers 9
    .param p1, "procStateThrottleString"    # Ljava/lang/String;

    .line 851
    const-string v0, ","

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 852
    .local v0, "procStates":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 853
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_3b

    aget-object v4, v0, v3

    .line 855
    .local v4, "procState":Ljava/lang/String;
    :try_start_12
    iget-object v5, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_1f} :catch_23

    .line 860
    nop

    .line 853
    .end local v4    # "procState":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 856
    .restart local v4    # "procState":Ljava/lang/String;
    :catch_23
    move-exception v1

    .line 857
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse default app compaction proc state: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ActivityManager"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return v2

    .line 862
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "procState":Ljava/lang/String;
    :cond_3b
    const/4 v1, 0x1

    return v1
.end method

.method private updateCompactStatsdSampleRate()V
    .registers 4

    .line 801
    const-string v0, "activity_manager"

    const-string v1, "compact_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 803
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    .line 804
    return-void
.end method

.method private updateCompactionActions()V
    .registers 6

    .line 733
    const-string v0, "activity_manager"

    const-string v1, "compact_action_1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 736
    .local v1, "compactAction1":I
    const-string v2, "compact_action_2"

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 739
    .local v2, "compactAction2":I
    const-string v3, "compact_action_3"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 742
    .local v0, "compactAction3":I
    invoke-static {v1}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    .line 743
    invoke-static {v0}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionAnon:Ljava/lang/String;

    .line 744
    invoke-static {v2}, Lcom/android/server/am/CachedAppOptimizer;->compactActionIntToString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    .line 745
    return-void
.end method

.method private updateCompactionThrottles()V
    .registers 12

    .line 749
    const/4 v0, 0x0

    .line 750
    .local v0, "useThrottleDefaults":Z
    nop

    .line 751
    const-string v1, "activity_manager"

    const-string v2, "compact_throttle_1"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 753
    .local v2, "throttleSomeSomeFlag":Ljava/lang/String;
    nop

    .line 754
    const-string v3, "compact_throttle_2"

    invoke-static {v1, v3}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 756
    .local v3, "throttleSomeFullFlag":Ljava/lang/String;
    nop

    .line 757
    const-string v4, "compact_throttle_3"

    invoke-static {v1, v4}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 759
    .local v4, "throttleFullSomeFlag":Ljava/lang/String;
    nop

    .line 760
    const-string v5, "compact_throttle_4"

    invoke-static {v1, v5}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 762
    .local v5, "throttleFullFullFlag":Ljava/lang/String;
    nop

    .line 763
    const-string v6, "compact_throttle_5"

    invoke-static {v1, v6}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 765
    .local v6, "throttleBFGSFlag":Ljava/lang/String;
    nop

    .line 766
    const-string v7, "compact_throttle_6"

    invoke-static {v1, v7}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "throttlePersistentFlag":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 770
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 771
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 772
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_80

    .line 773
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_52

    goto :goto_80

    .line 778
    :cond_52
    :try_start_52
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 779
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 780
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 781
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 782
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 783
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    int-to-long v7, v7

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J
    :try_end_7c
    .catch Ljava/lang/NumberFormatException; {:try_start_52 .. :try_end_7c} :catch_7d

    .line 786
    goto :goto_81

    .line 784
    :catch_7d
    move-exception v7

    .line 785
    .local v7, "e":Ljava/lang/NumberFormatException;
    const/4 v0, 0x1

    goto :goto_81

    .line 775
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    :cond_80
    :goto_80
    const/4 v0, 0x1

    .line 789
    :goto_81
    if-eqz v0, :cond_98

    .line 790
    const-wide/16 v7, 0x1388

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    .line 791
    const-wide/16 v7, 0x2710

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    .line 792
    const-wide/16 v9, 0x1f4

    iput-wide v9, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    .line 793
    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    .line 794
    const-wide/32 v7, 0x927c0

    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    .line 795
    iput-wide v7, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    .line 797
    :cond_98
    return-void
.end method

.method private updateFreezerStatsdSampleRate()V
    .registers 4

    .line 808
    const-string v0, "activity_manager"

    const-string/jumbo v1, "freeze_statsd_sample_rate"

    const v2, 0x3dcccccd    # 0.1f

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 810
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    .line 811
    return-void
.end method

.method private updateFullDeltaRssThrottle()V
    .registers 7

    .line 826
    const-string v0, "activity_manager"

    const-string v1, "compact_full_delta_rss_throttle_kb"

    const-wide/16 v2, 0x1f40

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 829
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 830
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    .line 832
    :cond_16
    return-void
.end method

.method private updateFullRssThrottle()V
    .registers 7

    .line 815
    const-string v0, "activity_manager"

    const-string v1, "compact_full_rss_throttle_kb"

    const-wide/16 v2, 0x2ee0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 819
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gez v0, :cond_16

    .line 820
    iput-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    .line 822
    :cond_16
    return-void
.end method

.method private updateNandswapStat(IZJJ)V
    .registers 10
    .param p1, "action"    # I
    .param p2, "writeback"    # Z
    .param p3, "writes"    # J
    .param p5, "objcnt"    # J

    .line 461
    if-eqz p2, :cond_19

    .line 462
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCount:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 463
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapBdWrites:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p3

    aput-wide v1, v0, p1

    .line 464
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapBdObjcnt:[J

    aget-wide v1, v0, p1

    add-long/2addr v1, p5

    aput-wide v1, v0, p1

    goto :goto_21

    .line 466
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCountSwapOnly:[I

    aget v1, v0, p1

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, p1

    .line 468
    :goto_21
    return-void
.end method

.method private updateNandswapTuningParameter(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "name = [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ], value = [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_24
    const-string/jumbo v0, "ro.nandswap.level"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_2b} :catch_8b

    const-string v2, " "

    if-eqz v0, :cond_54

    .line 438
    :try_start_2f
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 440
    .local v0, "level":I
    const/4 v3, 0x2

    if-gt v0, v3, :cond_88

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update nandswap level "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    goto :goto_88

    .line 444
    .end local v0    # "level":I
    :cond_54
    const-string/jumbo v0, "ro.nandswap.lru_ratio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 445
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 447
    .local v0, "ratio":I
    if-ltz v0, :cond_89

    const/16 v3, 0x64

    if-gt v0, v3, :cond_89

    .line 448
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "update nandswap lru ratio "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    iput v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLruRatio:I

    .line 450
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->applyNandswapLruRatio()V
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_87} :catch_8b

    goto :goto_89

    .line 444
    .end local v0    # "ratio":I
    :cond_88
    :goto_88
    nop

    .line 457
    :cond_89
    :goto_89
    nop

    .line 458
    return-void

    .line 453
    :catch_8b
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred not correct data format ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 456
    return-void
.end method

.method private updateProcStateThrottle()V
    .registers 5

    .line 836
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    const-string v1, "activity_manager"

    const-string v2, "compact_proc_state_throttle"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 839
    .local v0, "procStateThrottleString":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to parse app compact proc state throttle \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" falling back to default."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    sget-object v1, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/CachedAppOptimizer;->parseProcStateThrottle(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse default app compact proc state throttle "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_COMPACT_PROC_STATE_THROTTLE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    :cond_49
    return-void
.end method

.method private updateUseCompaction()V
    .registers 4

    .line 642
    sget-object v0, Lcom/android/server/am/CachedAppOptimizer;->DEFAULT_USE_COMPACTION:Ljava/lang/Boolean;

    .line 643
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 642
    const-string v1, "activity_manager"

    const-string/jumbo v2, "use_compaction"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 645
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_2a

    .line 646
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_22

    .line 647
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 650
    :cond_22
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$MemCompactionHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    .line 652
    :cond_2a
    return-void
.end method

.method private updateUseFreezer()V
    .registers 3

    .line 705
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    .line 720
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    if-eqz v0, :cond_26

    .line 721
    const-string v0, "ActivityManager"

    const-string v1, "Freezer enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/FreecessController;->ENABLE_PROCESS_FREEZE:Z

    .line 723
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 724
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 727
    :cond_1e
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$FreezeHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 729
    :cond_26
    return-void
.end method

.method private updateUseNandswap()V
    .registers 3

    .line 655
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_1c

    .line 656
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_11

    .line 657
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 660
    :cond_11
    new-instance v0, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/CachedAppOptimizer$NandswapHandler;-><init>(Lcom/android/server/am/CachedAppOptimizer;Lcom/android/server/am/CachedAppOptimizer$1;)V

    iput-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapHandler:Landroid/os/Handler;

    .line 662
    invoke-virtual {p0}, Lcom/android/server/am/CachedAppOptimizer;->applyNandswapLruRatio()V

    .line 664
    :cond_1c
    return-void
.end method


# virtual methods
.method public applyNandswapLruRatio()V
    .registers 3

    .line 414
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLruRatio:I

    if-ltz v0, :cond_16

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLruRatio:I

    const/16 v1, 0x64

    if-gt v0, v1, :cond_16

    .line 415
    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLruRatio:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sys.sysctl.zram_balance_ratio"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    :cond_16
    return-void
.end method

.method compactAllSystem()V
    .registers 3

    .line 615
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    if-eqz v0, :cond_e

    .line 616
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 619
    :cond_e
    return-void
.end method

.method compactAppBfgs(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 561
    const/4 v0, 0x4

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 562
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 564
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 563
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    return-void
.end method

.method compactAppFull(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 536
    const/4 v0, 0x2

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 537
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 539
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 538
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 542
    return-void
.end method

.method compactAppPersistent(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 546
    const/4 v0, 0x3

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 547
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 548
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 549
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 548
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 551
    return-void
.end method

.method compactAppSome(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 527
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/am/ProcessRecord;->reqCompactAction:I

    .line 528
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingCompactionProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactionHandler:Landroid/os/Handler;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    .line 530
    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 529
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 532
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 9
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 472
    const-string v0, "CachedAppOptimizer settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  use_compaction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionSome:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_action_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactActionFull:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleSomeFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullSome:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_4="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleFullFull:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_throttle_6="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullAnonRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_full_delta_rss_throttle_kb="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullDeltaRssThrottleKb:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  compact_proc_state_throttle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mProcStateThrottle:Ljava/util/Set;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Integer;

    .line 489
    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mSomeCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " some, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFullCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " full, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mPersistentCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " persistent, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mBfgsCompactionCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " BFGS compactions."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Tracking last compaction stats for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " processes."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " use_freezer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  freeze_statsd_sample_rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezerStatsdSampleRate:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_204

    .line 501
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mLastCompactionStats:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_204

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 502
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 503
    .local v3, "pid":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;

    .line 504
    .local v4, "stats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {v4}, Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;->getRssAfterCompaction()[J

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 506
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;>;"
    .end local v3    # "pid":I
    .end local v4    # "stats":Lcom/android/server/am/CachedAppOptimizer$LastCompactionStats;
    goto :goto_1c3

    .line 508
    :cond_204
    monitor-exit v0
    :try_end_205
    .catchall {:try_start_8 .. :try_end_205} :catchall_2ac

    .line 510
    const-string v0, "PerProcessNandswap settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  use_nandswap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 512
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_2ab

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  nandswap msg count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 514
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  nandswap_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  nandswap_lru_ratio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLruRatio:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_267
    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCount:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2ab

    .line 517
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCount:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapCountSwapOnly:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapBdWrites:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapBdObjcnt:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 516
    add-int/lit8 v0, v0, 0x1

    goto :goto_267

    .line 523
    .end local v0    # "i":I
    :cond_2ab
    return-void

    .line 508
    :catchall_2ac
    move-exception v1

    :try_start_2ad
    monitor-exit v0
    :try_end_2ae
    .catchall {:try_start_2ad .. :try_end_2ae} :catchall_2ac

    throw v1
.end method

.method freezeAppAsync(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 883
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    .line 886
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 885
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 889
    return-void
.end method

.method public init()V
    .registers 4

    .line 360
    nop

    .line 361
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mOnFlagsChangedListener:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    .line 360
    const-string v2, "activity_manager"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseCompaction()V

    .line 364
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionActions()V

    .line 365
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactionThrottles()V

    .line 366
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateCompactStatsdSampleRate()V

    .line 367
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFreezerStatsdSampleRate()V

    .line 368
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullRssThrottle()V

    .line 369
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateFullDeltaRssThrottle()V

    .line 370
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateProcStateThrottle()V

    .line 371
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseFreezer()V

    .line 372
    invoke-direct {p0}, Lcom/android/server/am/CachedAppOptimizer;->updateUseNandswap()V

    .line 373
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_13 .. :try_end_32} :catchall_4a

    .line 374
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mCachedAppOptimizerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 377
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_49

    .line 378
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPerProcessNandswapThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getThreadId()I

    move-result v0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadGroupAndCpuset(II)V

    .line 381
    :cond_49
    return-void

    .line 373
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    throw v1
.end method

.method nandswapAllSystem(J)V
    .registers 5
    .param p1, "delay"    # J

    .line 623
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_22

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    if-eqz v0, :cond_22

    .line 624
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const/4 v1, 0x2

    if-eqz v0, :cond_19

    .line 625
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_22

    .line 628
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 632
    :cond_22
    :goto_22
    return-void
.end method

.method nandswapApp(Lcom/android/server/am/ProcessRecord;I)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "action"    # I

    .line 576
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_41

    .line 577
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-gez v0, :cond_25

    .line 578
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPendingNandswapProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    iget-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    .line 580
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 581
    invoke-virtual {v0, v1, v2, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 580
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_41

    .line 584
    :cond_25
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v0, :cond_41

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping send NANDSWAP_PROCESS_MSG, count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapMsgCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :cond_41
    :goto_41
    return-void
.end method

.method shouldCompactBFGS(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 570
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottleBFGS:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method shouldCompactPersistent(Lcom/android/server/am/ProcessRecord;J)Z
    .registers 8
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J

    .line 555
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_15

    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mCompactThrottlePersistent:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 v0, 0x1

    :goto_16
    return v0
.end method

.method shouldNandswap(Lcom/android/server/am/ProcessRecord;JI)Z
    .registers 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"    # J
    .param p4, "action"    # I

    .line 594
    const/4 v0, 0x0

    .line 596
    .local v0, "needNandswap":Z
    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    if-eqz v1, :cond_2d

    iget v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    if-nez p4, :cond_d

    goto :goto_2d

    .line 600
    :cond_d
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1f

    .line 601
    iget-wide v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapThrottle:J

    cmp-long v1, p2, v1

    if-lez v1, :cond_1c

    .line 602
    const/4 v0, 0x1

    .line 604
    :cond_1c
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    goto :goto_2c

    .line 605
    :cond_1f
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    sub-long v1, p2, v1

    iget-wide v3, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapThrottle:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2c

    .line 606
    const/4 v0, 0x1

    .line 607
    iput-wide p2, p1, Lcom/android/server/am/ProcessRecord;->lastCompactTime:J

    .line 610
    :cond_2c
    :goto_2c
    return v0

    .line 598
    :cond_2d
    :goto_2d
    return v0
.end method

.method unfreezeAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 11
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 893
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 895
    sget-boolean v0, Lcom/android/server/am/FreecessController;->ENABLE_PROCESS_FREEZE:Z

    if-eqz v0, :cond_34

    .line 896
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 897
    :try_start_d
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 898
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessController;->getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 900
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_2f

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v2, :cond_2f

    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v2, v3, :cond_2f

    .line 901
    monitor-exit v0

    return-void

    .line 903
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_2f
    monitor-exit v0

    goto :goto_34

    :catchall_31
    move-exception v1

    monitor-exit v0
    :try_end_33
    .catchall {:try_start_d .. :try_end_33} :catchall_31

    throw v1

    .line 906
    :cond_34
    :goto_34
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-nez v0, :cond_64

    .line 907
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v0, :cond_63

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unfreeze for process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (not frozen)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_63
    return-void

    .line 915
    :cond_64
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 918
    .local v0, "freezeTime":J
    :try_start_66
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/Process;->setProcessFrozen(IIZ)V

    .line 920
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    .line 921
    iput-boolean v4, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_76} :catch_77

    .line 925
    goto :goto_9f

    .line 922
    :catch_77
    move-exception v2

    .line 923
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to unfreeze "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". Any related user experience might be hanged."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9f
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->frozen:Z

    if-nez v2, :cond_e3

    .line 928
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FREEZER:Z

    if-eqz v2, :cond_ca

    .line 929
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync unfroze "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_ca
    iget-object v2, p0, Lcom/android/server/am/CachedAppOptimizer;->mFreezeHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-wide v5, p1, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTime:J

    sub-long/2addr v5, v0

    const-wide/32 v7, 0x7fffffff

    .line 935
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    long-to-int v5, v5

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 933
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 932
    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 938
    :cond_e3
    return-void
.end method

.method public updateNandswapParamsIntent(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "pExtras"    # Landroid/os/Bundle;

    .line 420
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_42

    .line 421
    const-string v0, "ActivityManager"

    const-string v1, "Start updateNandswapParamsIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 423
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 424
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2d

    .line 425
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/CachedAppOptimizer;->updateNandswapTuningParameter(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 427
    :cond_2d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - value is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .end local v2    # "name":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :goto_41
    goto :goto_13

    .line 431
    :cond_42
    return-void
.end method

.method public useCompaction()Z
    .registers 3

    .line 387
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 389
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->isDebugable:Z

    if-eqz v1, :cond_a

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    .line 393
    :cond_a
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseCompaction:Z

    monitor-exit v0

    return v1

    .line 394
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public useFreezer()Z
    .registers 3

    .line 401
    iget-object v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mPhenotypeFlagLock:Ljava/lang/Object;

    monitor-enter v0

    .line 402
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseFreezer:Z

    monitor-exit v0

    return v1

    .line 403
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public useNandswap()Z
    .registers 2

    .line 410
    iget-boolean v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mUseNandswap:Z

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/am/CachedAppOptimizer;->mNandswapLevel:I

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
