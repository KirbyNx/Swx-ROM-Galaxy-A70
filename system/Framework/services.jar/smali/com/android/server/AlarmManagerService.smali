.class Lcom/android/server/AlarmManagerService;
.super Lcom/android/server/SystemService;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerService$PrevAlarm;,
        Lcom/android/server/AlarmManagerService$EmergencyReceiver;,
        Lcom/android/server/AlarmManagerService$ShellCmd;,
        Lcom/android/server/AlarmManagerService$DeliveryTracker;,
        Lcom/android/server/AlarmManagerService$AppStandbyTracker;,
        Lcom/android/server/AlarmManagerService$UidObserver;,
        Lcom/android/server/AlarmManagerService$UninstallReceiver;,
        Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;,
        Lcom/android/server/AlarmManagerService$ClockReceiver;,
        Lcom/android/server/AlarmManagerService$ChargingReceiver;,
        Lcom/android/server/AlarmManagerService$AlarmHandler;,
        Lcom/android/server/AlarmManagerService$AlarmThread;,
        Lcom/android/server/AlarmManagerService$Injector;,
        Lcom/android/server/AlarmManagerService$Alarm;,
        Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;,
        Lcom/android/server/AlarmManagerService$LocalService;,
        Lcom/android/server/AlarmManagerService$BroadcastStats;,
        Lcom/android/server/AlarmManagerService$FilterStats;,
        Lcom/android/server/AlarmManagerService$InFlight;,
        Lcom/android/server/AlarmManagerService$BatchTimeOrder;,
        Lcom/android/server/AlarmManagerService$Batch;,
        Lcom/android/server/AlarmManagerService$WakeupEvent;,
        Lcom/android/server/AlarmManagerService$PriorityClass;,
        Lcom/android/server/AlarmManagerService$Constants;,
        Lcom/android/server/AlarmManagerService$AppWakeupHistory;,
        Lcom/android/server/AlarmManagerService$Stats;,
        Lcom/android/server/AlarmManagerService$IdleDispatchEntry;
    }
.end annotation


# static fields
.field static final ACTIVE_INDEX:I = 0x0

.field private static APP_SYNC_NewAlarm:Z = false

.field static final DEBUG_ALARM_CLOCK:Z = false

.field static final DEBUG_BATCH:Z = false

.field static final DEBUG_BG_LIMIT:Z = false

.field static final DEBUG_LISTENER_CALLBACK:Z = false

.field static final DEBUG_MID:Z

.field static final DEBUG_PER_UID_LIMIT:Z = true

.field static final DEBUG_STANDBY:Z = false

.field static final DEBUG_VALIDATE:Z = false

.field static final DEBUG_WAKELOCK:Z = false

.field private static final ELAPSED_REALTIME_MASK:I = 0x8

.field private static final ELAPSED_REALTIME_WAKEUP_MASK:I = 0x4

.field static final FREQUENT_INDEX:I = 0x2

.field static final IS_WAKEUP_MASK:I = 0x5

.field static final MILLIS_IN_DAY:J = 0x5265c00L

.field static final MIN_FUZZABLE_INTERVAL:J = 0x2710L

.field static final NEVER_INDEX:I = 0x4

.field private static final NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

.field static final PRIO_NORMAL:I = 0x2

.field static final PRIO_TICK:I = 0x0

.field static final PRIO_WAKEUP:I = 0x1

.field static final RARE_INDEX:I = 0x3

.field static final RECORD_ALARMS_IN_HISTORY:Z = true

.field static final RECORD_DEVICE_IDLE_ALARMS:Z = false

.field private static final REMOVE_ALARM_EVENT_ALARM_ALLOWED:I = 0x0

.field private static final REMOVE_ALARM_EVENT_ALL_ALLOWED:I = 0x1

.field private static final REVIVAL_ALARM_EVENT:I = 0x2

.field private static final REVIVAL_ALARM_EVENT_PACKAGE_CHANGED:I = 0x3

.field private static final RTC_MASK:I = 0x2

.field private static final RTC_WAKEUP_MASK:I = 0x1

.field static final SHIP_BUILD:Z

.field static final TAG:Ljava/lang/String; = "AlarmManager"

.field static final TICK_HISTORY_DEPTH:I = 0xa

.field static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field static final TIME_CHANGED_MASK:I = 0x10000

.field static final TYPE_NONWAKEUP_MASK:I = 0x1

.field static final WAKEUP_STATS:Z

.field static final WORKING_INDEX:I = 0x1

.field static final localLOGV:Z

.field static final sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

.field static final sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;


# instance fields
.field final MAX_WAKEUP_STATS_SIZE:I

.field final RECENT_WAKEUP_PERIOD:J

.field private emergencyAlarmHandler:Landroid/os/Handler;

.field final mAlarmBatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;"
        }
    .end annotation
.end field

.field final mAlarmDispatchComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmPackageFlag:I

.field mAlarmsPerUid:Landroid/util/SparseIntArray;

.field final mAllowWhileIdleDispatches:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$IdleDispatchEntry;",
            ">;"
        }
    .end annotation
.end field

.field mAppOps:Landroid/app/AppOpsManager;

.field private mAppStandbyParole:Z

.field private mAppStateTracker:Lcom/android/server/AppStateTracker;

.field private mAppSync:Lcom/android/server/AppSyncWrapper;

.field mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

.field private final mBackgroundIntent:Landroid/content/Intent;

.field mBroadcastRefCount:I

.field final mBroadcastStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$BroadcastStats;",
            ">;>;"
        }
    .end annotation
.end field

.field mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

.field mConstants:Lcom/android/server/AlarmManagerService$Constants;

.field mCurrentSeq:I

.field mDateChangeSender:Landroid/app/PendingIntent;

.field final mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

.field private mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

.field private mEmergencyReceiver:Lcom/android/server/AlarmManagerService$EmergencyReceiver;

.field private final mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

.field private mGmsManager:Lcom/android/server/GmsAlarmManager;

.field mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

.field private final mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mIdleOptions:Landroid/os/Bundle;

.field mInFlight:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$InFlight;",
            ">;"
        }
    .end annotation
.end field

.field private final mInFlightListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerInternal$InFlightListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mInjector:Lcom/android/server/AlarmManagerService$Injector;

.field mInteractive:Z

.field mLastAlarmDeliveryTime:J

.field final mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

.field private mLastTickAdded:J

.field private mLastTickReceived:J

.field private mLastTickRemoved:J

.field private mLastTickSet:J

.field mLastTimeChangeClockTime:J

.field mLastTimeChangeRealtime:J

.field private mLastTrigger:J

.field private mLastWakeup:J

.field private mListenerCount:I

.field mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mListenerFinishCount:I

.field mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

.field final mLock:Ljava/lang/Object;

.field final mLog:Lcom/android/internal/util/LocalLog;

.field mMaxDelayTime:J

.field private final mNextAlarmClockForUser:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNextAlarmClockMayChange:Z

.field private mNextNonWakeUpSetAt:J

.field private mNextNonWakeup:J

.field mNextNonWakeupDeliveryTime:J

.field private mNextTickHistory:I

.field mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

.field private mNextWakeUpSetAt:J

.field private mNextWakeup:J

.field mNonInteractiveStartTime:J

.field mNonInteractiveTime:J

.field mNumDelayedAlarms:I

.field mNumTimeChanged:I

.field private mPendingAlarmList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$PrevAlarm;",
            ">;"
        }
    .end annotation
.end field

.field mPendingBackgroundAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

.field mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;"
        }
    .end annotation
.end field

.field mPendingNonWakeupAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field private final mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

.field mPendingWhileIdleAlarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field final mPriorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/AlarmManagerService$PriorityClass;",
            ">;"
        }
    .end annotation
.end field

.field mRandom:Ljava/util/Random;

.field final mRecentWakeups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/AlarmManagerService$WakeupEvent;",
            ">;"
        }
    .end annotation
.end field

.field final mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

.field private mSendCount:I

.field private mSendFinishCount:I

.field private final mService:Landroid/os/IBinder;

.field mStartCurrentDelayTime:J

.field private final mStatLogger:Lcom/android/internal/util/StatLogger;

.field mSystemUiUid:I

.field private final mTickHistory:[J

.field mTimeTickIntent:Landroid/content/Intent;

.field mTimeTickTrigger:Landroid/app/IAlarmListener;

.field private final mTmpSparseAlarmClockArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mTotalDelayTime:J

.field private mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field final mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 208
    new-instance v0, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    .line 210
    nop

    .line 211
    const-string/jumbo v0, "ro.product_ship"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->SHIP_BUILD:Z

    .line 213
    const-string/jumbo v0, "ro.boot.debug_level"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x494d"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AlarmManagerService;->DEBUG_MID:Z

    .line 214
    sget-boolean v1, Lcom/android/server/AlarmManagerService;->SHIP_BUILD:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_33

    if-eqz v0, :cond_31

    goto :goto_33

    :cond_31
    move v0, v2

    goto :goto_34

    :cond_33
    :goto_33
    const/4 v0, 0x1

    :goto_34
    sput-boolean v0, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x21000000

    .line 218
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    .line 724
    sput-boolean v2, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    .line 981
    new-instance v0, Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-direct {v0}, Lcom/android/server/AlarmManagerService$BatchTimeOrder;-><init>()V

    sput-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1004
    new-instance v0, Lcom/android/server/AlarmManagerService$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/AlarmManagerService$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V

    .line 1005
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/AlarmManagerService$Injector;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "injector"    # Lcom/android/server/AlarmManagerService$Injector;

    .line 992
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 206
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 207
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    .line 221
    new-instance v0, Lcom/android/internal/util/LocalLog;

    const-string v1, "AlarmManager"

    invoke-direct {v0, v1}, Lcom/android/internal/util/LocalLog;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    .line 227
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    .line 230
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    .line 232
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    .line 234
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmPackageFlag:I

    .line 249
    const/16 v0, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    .line 253
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    .line 255
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    .line 257
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    .line 263
    new-instance v1, Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$DeliveryTracker;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    .line 269
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 289
    new-instance v1, Landroid/util/SparseLongArray;

    invoke-direct {v1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    .line 295
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 305
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAllowWhileIdleDispatches:Ljava/util/ArrayList;

    .line 312
    new-instance v1, Lcom/android/internal/util/StatLogger;

    const-string v2, "REBATCH_ALL_ALARMS"

    const-string v3, "REORDER_ALARMS_FOR_STANDBY"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/util/StatLogger;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    .line 322
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    .line 324
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 326
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 331
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 710
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    .line 711
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 714
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    .line 739
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    .line 740
    const-wide/32 v1, 0x5265c00

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->RECENT_WAKEUP_PERIOD:J

    .line 741
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/AlarmManagerService;->MAX_WAKEUP_STATS_SIZE:I

    .line 919
    new-instance v1, Lcom/android/server/AlarmManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$1;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    .line 982
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 986
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 987
    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 988
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1663
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    .line 1666
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    .line 1667
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1668
    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 2382
    new-instance v1, Lcom/android/server/AlarmManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$4;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    .line 5155
    new-instance v1, Lcom/android/server/AlarmManagerService$7;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$7;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    .line 5215
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    .line 5217
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    .line 5219
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    .line 5221
    iput v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    .line 5588
    new-instance v0, Lcom/android/server/AlarmManagerService$8;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$8;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;

    .line 993
    iput-object p2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 996
    new-instance v0, Lcom/android/server/SamsungAlarmManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/SamsungAlarmManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    .line 999
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/server/AlarmManagerServiceExt;->createAppSync(Landroid/content/Context;Lcom/android/server/AlarmManagerService;Ljava/lang/Object;)Lcom/android/server/AppSyncWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    .line 1001
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$Injector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/AlarmManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->isIdlingImpl()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppSyncWrapper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AppStateTracker;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    return-object v0
.end method

.method static synthetic access$1500()J
    .registers 2

    .line 168
    invoke-static {}, Lcom/android/server/AlarmManagerService;->init()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(J)I
    .registers 3
    .param p0, "x0"    # J

    .line 168
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->waitForAlarm(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(JIJJ)I
    .registers 8
    .param p0, "x0"    # J
    .param p2, "x1"    # I
    .param p3, "x2"    # J
    .param p5, "x3"    # J

    .line 168
    invoke-static/range {p0 .. p6}, Lcom/android/server/AlarmManagerService;->set(JIJJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(JI)J
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 168
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getNextAlarm(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1900(JI)I
    .registers 4
    .param p0, "x0"    # J
    .param p2, "x1"    # I

    .line 168
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setKernelTimezone(JI)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/AlarmManagerService;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    return-void
.end method

.method static synthetic access$2000(JJ)I
    .registers 5
    .param p0, "x0"    # J
    .param p2, "x1"    # J

    .line 168
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/AlarmManagerService;->setKernelTime(JJ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(JLjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # J
    .param p2, "x1"    # Ljava/lang/String;

    .line 168
    invoke-static {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->setBootAlarm(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(J)V
    .registers 2
    .param p0, "x0"    # J

    .line 168
    invoke-static {p0, p1}, Lcom/android/server/AlarmManagerService;->close(J)V

    return-void
.end method

.method static synthetic access$2302(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    return-wide p1
.end method

.method static synthetic access$2402(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->filtAlarmsForFreeCess(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/AlarmManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->sendNextAlarmClockChanged()V

    return-void
.end method

.method static synthetic access$2902(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    return p1
.end method

.method static synthetic access$3002(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    return-wide p1
.end method

.method static synthetic access$302(Lcom/android/server/AlarmManagerService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 168
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/AlarmManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmCompleteLocked(I)V

    return-void
.end method

.method static synthetic access$3208(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    return v0
.end method

.method static synthetic access$3308(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 168
    invoke-static {p0}, Lcom/android/server/AlarmManagerService;->getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3508(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mSendCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/AlarmManagerService;)Landroid/content/Intent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$3708(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/AlarmManagerService;)[J
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/AlarmManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/AlarmManagerService;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 168
    iput p1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return p1
.end method

.method static synthetic access$3908(Lcom/android/server/AlarmManagerService;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget v0, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/AlarmManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->notifyBroadcastAlarmPendingLocked(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    return-wide p1
.end method

.method static synthetic access$4100(Lcom/android/server/AlarmManagerService;)Landroid/os/IBinder;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/AlarmManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->removeDisallowedAlarmList(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/AlarmManagerService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Z

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->restoreDisallowedAlarmList(Z)V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/server/AlarmManagerService;)Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/AlarmManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;

    .line 168
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->emergencyAlarmHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # Landroid/app/PendingIntent;

    .line 168
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/AlarmManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/AlarmManagerService;
    .param p1, "x1"    # J

    .line 168
    iput-wide p1, p0, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    return-wide p1
.end method

.method static addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z
    .registers 5
    .param p1, "newBatch"    # Lcom/android/server/AlarmManagerService$Batch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ")Z"
        }
    .end annotation

    .line 1033
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    sget-object v0, Lcom/android/server/AlarmManagerService;->sBatchOrder:Lcom/android/server/AlarmManagerService$BatchTimeOrder;

    invoke-static {p0, p1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1034
    .local v0, "index":I
    const/4 v1, 0x1

    if-gez v0, :cond_d

    .line 1035
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 1037
    :cond_d
    invoke-virtual {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1038
    if-nez v0, :cond_13

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    return v1
.end method

.method private addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V
    .registers 19
    .param p1, "reqAlarm"    # Lcom/android/server/AlarmManagerService$PrevAlarm;

    .line 5822
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 5823
    .local v3, "operation":Landroid/app/PendingIntent;
    if-nez v3, :cond_11

    iget-object v0, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    if-nez v0, :cond_11

    .line 5824
    return-void

    .line 5826
    :cond_11
    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1c

    :cond_18
    iget-object v0, v2, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    :goto_1c
    move-object v4, v0

    .line 5827
    .local v4, "reqPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 5828
    .local v5, "reqAction":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 5830
    .local v6, "ident":J
    const/4 v0, 0x0

    if-eqz v3, :cond_39

    :try_start_25
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_39

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8
    :try_end_33
    .catchall {:try_start_25 .. :try_end_33} :catchall_34

    goto :goto_3a

    .line 5832
    :catchall_34
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5833
    throw v0

    .line 5830
    :cond_39
    move-object v8, v0

    :goto_3a
    move-object v5, v8

    .line 5832
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5833
    nop

    .line 5835
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v9, 0x7

    invoke-virtual {v8, v4, v5, v9}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v8

    if-nez v8, :cond_49

    .line 5836
    return-void

    .line 5837
    :cond_49
    const-string v8, "android"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5a

    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v8, v4, v5}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkValidIntentAction(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5a

    .line 5838
    return-void

    .line 5840
    :cond_5a
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 5841
    const/4 v9, 0x0

    .line 5842
    .local v9, "pkg":Ljava/lang/String;
    :try_start_5e
    iget-object v10, v1, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_64
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$PrevAlarm;

    .line 5843
    .local v11, "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    iget-object v12, v11, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 5844
    .local v12, "mOperation":Landroid/app/PendingIntent;
    if-eqz v12, :cond_7b

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v13

    goto :goto_7f

    :cond_7b
    iget-object v13, v11, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    :goto_7f
    move-object v9, v13

    .line 5847
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13
    :try_end_84
    .catchall {:try_start_5e .. :try_end_84} :catchall_db

    .line 5849
    .local v13, "ident2":J
    if-eqz v12, :cond_9b

    :try_start_86
    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_9b

    invoke-virtual {v12}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15
    :try_end_94
    .catchall {:try_start_86 .. :try_end_94} :catchall_95

    goto :goto_9c

    .line 5851
    :catchall_95
    move-exception v0

    :try_start_96
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5852
    nop

    .end local v3    # "operation":Landroid/app/PendingIntent;
    .end local v4    # "reqPackage":Ljava/lang/String;
    .end local v5    # "reqAction":Ljava/lang/String;
    .end local v6    # "ident":J
    .end local p0    # "this":Lcom/android/server/AlarmManagerService;
    .end local p1    # "reqAlarm":Lcom/android/server/AlarmManagerService$PrevAlarm;
    throw v0

    .line 5849
    .restart local v3    # "operation":Landroid/app/PendingIntent;
    .restart local v4    # "reqPackage":Ljava/lang/String;
    .restart local v5    # "reqAction":Ljava/lang/String;
    .restart local v6    # "ident":J
    .restart local p0    # "this":Lcom/android/server/AlarmManagerService;
    .restart local p1    # "reqAlarm":Lcom/android/server/AlarmManagerService$PrevAlarm;
    :cond_9b
    move-object v15, v0

    .line 5851
    .local v15, "pendingAction":Ljava/lang/String;
    :goto_9c
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5852
    nop

    .line 5854
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b8

    .line 5855
    if-nez v5, :cond_ac

    if-nez v15, :cond_ac

    .line 5856
    monitor-exit v8

    return-void

    .line 5857
    :cond_ac
    if-eqz v5, :cond_b8

    if-eqz v15, :cond_b8

    .line 5858
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_b8

    .line 5859
    monitor-exit v8

    return-void

    .line 5862
    .end local v11    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v12    # "mOperation":Landroid/app/PendingIntent;
    .end local v13    # "ident2":J
    .end local v15    # "pendingAction":Ljava/lang/String;
    :cond_b8
    goto :goto_64

    .line 5864
    :cond_b9
    const-string v0, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Add pending alarm list : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/AlarmManagerService$PrevAlarm;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5866
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5867
    nop

    .end local v9    # "pkg":Ljava/lang/String;
    monitor-exit v8

    .line 5868
    return-void

    .line 5867
    :catchall_db
    move-exception v0

    monitor-exit v8
    :try_end_dd
    .catchall {:try_start_96 .. :try_end_dd} :catchall_db

    throw v0
.end method

.method private adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 21
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 2134
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 2135
    return v3

    .line 2137
    :cond_c
    iget-boolean v2, v0, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    const/4 v4, 0x1

    if-eqz v2, :cond_23

    .line 2138
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_22

    .line 2140
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2141
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2142
    return v4

    .line 2144
    :cond_22
    return v3

    .line 2146
    :cond_23
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2147
    .local v5, "oldWhenElapsed":J
    iget-wide v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2149
    .local v7, "oldMaxWhenElapsed":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 2150
    .local v2, "sourcePackage":Ljava/lang/String;
    iget v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2151
    .local v9, "sourceUserId":I
    iget-object v10, v0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v11, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    .line 2152
    invoke-virtual {v11}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 2151
    invoke-virtual {v10, v2, v9, v11, v12}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v10

    .line 2155
    .local v10, "standbyBucket":I
    const/4 v11, 0x0

    .line 2156
    .local v11, "deferred":Z
    iget-object v12, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v12, v2, v9}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getTotalWakeupsInWindow(Ljava/lang/String;I)I

    move-result v12

    .line 2158
    .local v12, "wakeupsInWindow":I
    const/16 v13, 0x2d

    if-ne v10, v13, :cond_77

    .line 2162
    if-lez v12, :cond_74

    .line 2163
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v14, v14, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_QUOTA:I

    invoke-virtual {v13, v2, v9, v14}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v13

    .line 2165
    .local v13, "lastWakeupTime":J
    iget-object v15, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v15}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v15

    sub-long/2addr v15, v13

    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    move-wide/from16 v17, v5

    .end local v5    # "oldWhenElapsed":J
    .local v17, "oldWhenElapsed":J
    iget-wide v4, v3, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    cmp-long v3, v15, v4

    if-gez v3, :cond_73

    .line 2167
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_RESTRICTED_WINDOW:J

    add-long/2addr v3, v13

    .line 2169
    .local v3, "minElapsed":J
    iget-wide v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_73

    .line 2170
    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2171
    const/4 v11, 0x1

    .line 2174
    .end local v3    # "minElapsed":J
    .end local v13    # "lastWakeupTime":J
    :cond_73
    goto :goto_a3

    .line 2162
    .end local v17    # "oldWhenElapsed":J
    .restart local v5    # "oldWhenElapsed":J
    :cond_74
    move-wide/from16 v17, v5

    .end local v5    # "oldWhenElapsed":J
    .restart local v17    # "oldWhenElapsed":J
    goto :goto_a3

    .line 2176
    .end local v17    # "oldWhenElapsed":J
    .restart local v5    # "oldWhenElapsed":J
    :cond_77
    move-wide/from16 v17, v5

    .end local v5    # "oldWhenElapsed":J
    .restart local v17    # "oldWhenElapsed":J
    invoke-virtual {v0, v10}, Lcom/android/server/AlarmManagerService;->getQuotaForBucketLocked(I)I

    move-result v3

    .line 2177
    .local v3, "quotaForBucket":I
    if-lt v12, v3, :cond_a3

    .line 2179
    if-gtz v3, :cond_8c

    .line 2181
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v4

    const-wide/32 v13, 0x5265c00

    add-long/2addr v4, v13

    .local v4, "minElapsed":J
    goto :goto_98

    .line 2185
    .end local v4    # "minElapsed":J
    :cond_8c
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    invoke-virtual {v4, v2, v9, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->getNthLastWakeupForPackage(Ljava/lang/String;II)J

    move-result-wide v4

    .line 2187
    .local v4, "t":J
    iget-object v6, v0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v13, v6, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_WINDOW:J

    add-long/2addr v13, v4

    move-wide v4, v13

    .line 2189
    .local v4, "minElapsed":J
    :goto_98
    iget-wide v13, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    cmp-long v6, v13, v4

    if-gez v6, :cond_a3

    .line 2190
    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2191
    const/4 v11, 0x1

    .line 2195
    .end local v3    # "quotaForBucket":I
    .end local v4    # "minElapsed":J
    :cond_a3
    :goto_a3
    if-nez v11, :cond_ad

    .line 2197
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2198
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    iput-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 2201
    :cond_ad
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v17, v3

    if-nez v3, :cond_bc

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v3, v7, v3

    if-eqz v3, :cond_ba

    goto :goto_bc

    :cond_ba
    const/4 v3, 0x0

    goto :goto_bd

    :cond_bc
    :goto_bc
    const/4 v3, 0x1

    :goto_bd
    return v3
.end method

.method static clampPositive(J)J
    .registers 4
    .param p0, "val"    # J

    .line 1235
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_8

    move-wide v0, p0

    goto :goto_d

    :cond_8
    const-wide v0, 0x7fffffffffffffffL

    :goto_d
    return-wide v0
.end method

.method private static native close(J)V
.end method

.method private convertToElapsed(JI)J
    .registers 9
    .param p1, "when"    # J
    .param p3, "type"    # I

    .line 1008
    const/4 v0, 0x1

    if-eq p3, v0, :cond_7

    if-nez p3, :cond_6

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1009
    .local v0, "isRtc":Z
    :cond_7
    :goto_7
    if-eqz v0, :cond_17

    .line 1010
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sub-long/2addr p1, v1

    .line 1012
    :cond_17
    return-wide p1
.end method

.method private decrementAlarmCount(II)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "decrement"    # I

    .line 5526
    const/4 v0, 0x0

    .line 5527
    .local v0, "oldCount":I
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    .line 5528
    .local v1, "uidIndex":I
    if-ltz v1, :cond_1e

    .line 5529
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    .line 5530
    if-le v0, p2, :cond_19

    .line 5531
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    sub-int v3, v0, p2

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_1e

    .line 5533
    :cond_19
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 5536
    :cond_1e
    :goto_1e
    if-ge v0, p2, :cond_46

    .line 5537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to decrement existing alarm count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " for uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 5540
    :cond_46
    return-void
.end method

.method private deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 33
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 1348
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1349
    .local v14, "N":I
    const/4 v1, 0x0

    .line 1350
    .local v1, "hasWakeup":Z
    const/4 v2, 0x0

    move v10, v2

    .local v10, "i":I
    :goto_d
    if-ge v10, v14, :cond_a1

    .line 1351
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1352
    .local v11, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v2, v11, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v2, :cond_1e

    .line 1353
    const/4 v1, 0x1

    move/from16 v21, v1

    goto :goto_20

    .line 1352
    :cond_1e
    move/from16 v21, v1

    .line 1355
    .end local v1    # "hasWakeup":Z
    .local v21, "hasWakeup":Z
    :goto_20
    const/4 v1, 0x1

    iput v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1358
    iget-wide v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_8d

    .line 1359
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, v12, v3

    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 1361
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v1, v3

    .line 1362
    .local v22, "delta":J
    iget-wide v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v24, v1, v22

    .local v24, "nextElapsed":J
    move-wide/from16 v4, v24

    .line 1363
    iget v1, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v11, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v22

    iget-wide v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    iget-wide v8, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 1364
    move-wide/from16 v16, v8

    move-wide/from16 v8, p2

    move/from16 v26, v10

    move/from16 v18, v14

    move-object v14, v11

    .end local v10    # "i":I
    .end local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v18, "N":I
    .local v26, "i":I
    move-wide/from16 v10, v24

    move-wide/from16 v12, v16

    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    move/from16 v27, v18

    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v18    # "N":I
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v27, "N":I
    move-object/from16 v14, v16

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move v15, v14

    const/16 v16, 0x1

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v14

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v14

    .line 1363
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v28, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v28, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    goto :goto_93

    .line 1358
    .end local v22    # "delta":J
    .end local v24    # "nextElapsed":J
    .end local v26    # "i":I
    .end local v27    # "N":I
    .end local v28    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10    # "i":I
    .restart local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "N":I
    :cond_8d
    move/from16 v26, v10

    move-object/from16 v28, v11

    move/from16 v27, v14

    .line 1350
    .end local v10    # "i":I
    .end local v11    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v14    # "N":I
    .restart local v26    # "i":I
    .restart local v27    # "N":I
    :goto_93
    add-int/lit8 v10, v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p2

    move/from16 v1, v21

    move/from16 v14, v27

    .end local v26    # "i":I
    .restart local v10    # "i":I
    goto/16 :goto_d

    .end local v21    # "hasWakeup":Z
    .end local v27    # "N":I
    .restart local v1    # "hasWakeup":Z
    .restart local v14    # "N":I
    :cond_a1
    move/from16 v26, v10

    move/from16 v27, v14

    .line 1370
    .end local v10    # "i":I
    .end local v14    # "N":I
    .restart local v27    # "N":I
    if-nez v1, :cond_dd

    move-object/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->checkAllowNonWakeupDelayLocked(J)Z

    move-result v4

    if-eqz v4, :cond_da

    .line 1372
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_c9

    .line 1373
    iput-wide v2, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    .line 1374
    nop

    .line 1375
    invoke-virtual {v0, v2, v3}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    add-long/2addr v4, v2

    iput-wide v4, v0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 1377
    :cond_c9
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1378
    iget v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v4, v6

    iput v4, v0, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    goto :goto_111

    .line 1370
    :cond_da
    move-object/from16 v5, p1

    goto :goto_e3

    :cond_dd
    move-object/from16 v0, p0

    move-object/from16 v5, p1

    move-wide/from16 v2, p2

    .line 1384
    :goto_e3
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_106

    .line 1385
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1386
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v6, v2, v6

    .line 1387
    .local v6, "thisDelayTime":J
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v8, v6

    iput-wide v8, v0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 1388
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v8, v6

    if-gez v4, :cond_101

    .line 1389
    iput-wide v6, v0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 1391
    :cond_101
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1393
    .end local v6    # "thisDelayTime":J
    :cond_106
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 1394
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1395
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1397
    :goto_111
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 22
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "nowELAPSED"    # J
    .param p5, "nowRTC"    # J
    .param p7, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3955
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    .local v10, "i":I
    :goto_a
    if-ltz v10, :cond_4f

    .line 3956
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3957
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v12, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v13

    .line 3958
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3959
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3955
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13    # "label":Ljava/lang/String;
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_4f
    move-object v11, p1

    .line 3962
    .end local v10    # "i":I
    return-void
.end method

.method private static final dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V
    .registers 23
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "nowELAPSED"    # J
    .param p6, "nowRTC"    # J
    .param p8, "sdf"    # Ljava/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 3935
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object v8, p0

    move-object/from16 v9, p2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    .local v10, "i":I
    :goto_a
    if-ltz v10, :cond_4b

    .line 3936
    move-object v11, p1

    invoke-virtual {p1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3937
    .local v12, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v13, p3

    invoke-virtual {p0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, " #"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v10}, Ljava/io/PrintWriter;->print(I)V

    .line 3938
    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v12

    move-object v1, p0

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move-object/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3935
    .end local v12    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_4b
    move-object v11, p1

    move-object/from16 v13, p3

    .line 3941
    .end local v10    # "i":I
    return-void
.end method

.method private dumpUpcomingNAlarmsForUid(Ljava/io/PrintWriter;II)V
    .registers 24
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "uid"    # I
    .param p3, "n"    # I

    .line 2040
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move/from16 v10, p3

    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2041
    .local v8, "sdf":Ljava/text/SimpleDateFormat;
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v11

    .line 2042
    .local v11, "nowElapsed":J
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v13

    .line 2044
    .local v13, "nowRtc":J
    const/4 v1, 0x0

    .line 2045
    .local v1, "count":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "i":I
    :goto_1d
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v15, v2, :cond_97

    if-ge v1, v10, :cond_97

    .line 2046
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/server/AlarmManagerService$Batch;

    .line 2047
    .local v6, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v2, 0x0

    move v7, v2

    .local v7, "j":I
    :goto_32
    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    if-ge v7, v2, :cond_8e

    if-ge v1, v10, :cond_8e

    .line 2048
    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v4

    .line 2049
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v5, p2

    if-ne v2, v5, :cond_81

    .line 2050
    iget v2, v4, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-static {v2}, Lcom/android/server/AlarmManagerService;->labelForType(I)Ljava/lang/String;

    move-result-object v3

    .line 2051
    .local v3, "label":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .local v0, "count":I
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2052
    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2053
    const-string v16, "  "

    move-object v1, v4

    move-object/from16 v2, p1

    move-object/from16 v17, v3

    .end local v3    # "label":Ljava/lang/String;
    .local v17, "label":Ljava/lang/String;
    move-object/from16 v3, v16

    move-object/from16 v16, v4

    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .local v16, "a":Lcom/android/server/AlarmManagerService$Alarm;
    move-wide v4, v11

    move-object/from16 v18, v6

    move/from16 v19, v7

    .end local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v7    # "j":I
    .local v18, "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v19, "j":I
    move-wide v6, v13

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    move v1, v0

    goto :goto_87

    .line 2049
    .end local v0    # "count":I
    .end local v16    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v17    # "label":Ljava/lang/String;
    .end local v18    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v19    # "j":I
    .restart local v1    # "count":I
    .restart local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v7    # "j":I
    :cond_81
    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move/from16 v19, v7

    .line 2047
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v7    # "j":I
    .restart local v18    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v19    # "j":I
    :goto_87
    add-int/lit8 v7, v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v6, v18

    .end local v19    # "j":I
    .restart local v7    # "j":I
    goto :goto_32

    .end local v18    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_8e
    move-object/from16 v18, v6

    move/from16 v19, v7

    .line 2045
    .end local v6    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v7    # "j":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_1d

    .line 2057
    .end local v15    # "i":I
    :cond_97
    return-void
.end method

.method private filtAlarmsForFreeCess(Ljava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 4560
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_b8

    .line 4561
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4562
    .local v1, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    if-eqz v1, :cond_b4

    iget-object v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_b4

    .line 4563
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 4564
    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4563
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 4566
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-nez v2, :cond_42

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v2

    if-nez v2, :cond_9b

    .line 4567
    :cond_42
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/FreecessController;->isPacketMonitoredApp(I)Z

    move-result v2

    if-nez v2, :cond_9b

    .line 4568
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedByLcdOnPolicy(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6d

    goto :goto_9b

    .line 4571
    :cond_6d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MARs: filtAlarmsForFreeCess ---pkgName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b4

    .line 4569
    :cond_9b
    :goto_9b
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "Alarm"

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 4560
    .end local v1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_b4
    :goto_b4
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_6

    .line 4577
    .end local v0    # "i":I
    :cond_b8
    return-void
.end method

.method static findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 1326
    .local p0, "pendingAlarms":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;>;"
    .local p1, "unrestrictedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .local p2, "isBackgroundRestricted":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "uidIndex":I
    :goto_6
    if-ltz v0, :cond_3c

    .line 1327
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1328
    .local v1, "uid":I
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1330
    .local v2, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "alarmIndex":I
    :goto_18
    if-ltz v3, :cond_30

    .line 1331
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1333
    .local v4, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-interface {p2, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 1334
    goto :goto_2d

    .line 1337
    :cond_27
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1330
    .end local v4    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_2d
    add-int/lit8 v3, v3, -0x1

    goto :goto_18

    .line 1341
    .end local v3    # "alarmIndex":I
    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_39

    .line 1342
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1326
    .end local v1    # "uid":I
    .end local v2    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1345
    .end local v0    # "uidIndex":I
    :cond_3c
    return-void
.end method

.method private findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;
    .registers 5

    .line 3265
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3266
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 3267
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 3268
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->hasWakeups()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3269
    return-object v2

    .line 3266
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3272
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method private static formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "info"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p2, "userId"    # I

    .line 3440
    invoke-static {p0, p2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "EHm"

    goto :goto_b

    :cond_9
    const-string v0, "Ehma"

    .line 3441
    .local v0, "skeleton":Ljava/lang/String;
    :goto_b
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3442
    .local v1, "pattern":Ljava/lang/String;
    if-nez p1, :cond_18

    const-string v2, ""

    goto :goto_24

    .line 3443
    :cond_18
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3442
    :goto_24
    return-object v2
.end method

.method static fuzzForDuration(J)I
    .registers 4
    .param p0, "duration"    # J

    .line 4401
    const-wide/32 v0, 0xdbba0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 4404
    long-to-int v0, p0

    return v0

    .line 4405
    :cond_9
    const-wide/32 v0, 0x5265c0

    cmp-long v0, p0, v0

    if-gez v0, :cond_14

    .line 4407
    const v0, 0xdbba0

    return v0

    .line 4410
    :cond_14
    const v0, 0x1b7740

    return v0
.end method

.method private static getAlarmAttributionUid(Lcom/android/server/AlarmManagerService$Alarm;)I
    .registers 2
    .param p0, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4790
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 4791
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->getAttributionUid()I

    move-result v0

    return v0

    .line 4794
    :cond_13
    iget v0, p0, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    return v0
.end method

.method static getAlarmCount(Ljava/util/ArrayList;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)I"
        }
    .end annotation

    .line 1071
    .local p0, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    const/4 v0, 0x0

    .line 1073
    .local v0, "ret":I
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1074
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_16

    .line 1075
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    add-int/2addr v0, v3

    .line 1074
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1077
    .end local v2    # "i":I
    :cond_16
    return v0
.end method

.method private static native getNextAlarm(JI)J
.end method

.method private final getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 5197
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 5198
    .local v0, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    if-nez v0, :cond_15

    .line 5199
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    move-object v0, v1

    .line 5200
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5202
    :cond_15
    invoke-virtual {v0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 5203
    .local v1, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    if-nez v1, :cond_26

    .line 5204
    new-instance v2, Lcom/android/server/AlarmManagerService$BroadcastStats;

    invoke-direct {v2, p1, p2}, Lcom/android/server/AlarmManagerService$BroadcastStats;-><init>(ILjava/lang/String;)V

    move-object v1, v2

    .line 5205
    invoke-virtual {v0, p2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5207
    :cond_26
    return-object v1
.end method

.method private final getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    .registers 5
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .line 5191
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 5192
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 5193
    .local v1, "uid":I
    invoke-direct {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->getStatsLocked(ILjava/lang/String;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v2

    return-object v2
.end method

.method private getWhileIdleMinIntervalLocked(I)J
    .registers 6
    .param p1, "uid"    # I

    .line 4018
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    .line 4019
    .local v0, "dozing":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v3, :cond_14

    .line 4020
    invoke-virtual {v3}, Lcom/android/server/AppStateTracker;->isForceAllAppsStandbyEnabled()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_15

    :cond_14
    move v1, v2

    .line 4021
    .local v1, "ebs":Z
    :goto_15
    if-nez v0, :cond_1e

    if-nez v1, :cond_1e

    .line 4022
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 4024
    :cond_1e
    if-eqz v0, :cond_25

    .line 4025
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2

    .line 4027
    :cond_25
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 4030
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_SHORT_TIME:J

    return-wide v2

    .line 4032
    :cond_32
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Constants;->ALLOW_WHILE_IDLE_LONG_TIME:J

    return-wide v2
.end method

.method private incrementAlarmCount(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 5517
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 5518
    .local v0, "uidIndex":I
    const/4 v1, 0x1

    if-ltz v0, :cond_14

    .line 5519
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->setValueAt(II)V

    goto :goto_19

    .line 5521
    :cond_14
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 5523
    :goto_19
    return-void
.end method

.method private static native init()J
.end method

.method private insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1042
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_10

    .line 1043
    :cond_8
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->attemptCoalesceLocked(JJ)I

    move-result v0

    :goto_10
    nop

    .line 1045
    .local v0, "whichBatch":I
    if-gez v0, :cond_1e

    .line 1046
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/AlarmManagerService$Batch;

    invoke-direct {v2, p0, p1}, Lcom/android/server/AlarmManagerService$Batch;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V

    invoke-static {v1, v2}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    goto :goto_36

    .line 1048
    :cond_1e
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1049
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->add(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1052
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1053
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-static {v2, v1}, Lcom/android/server/AlarmManagerService;->addBatchLocked(Ljava/util/ArrayList;Lcom/android/server/AlarmManagerService$Batch;)Z

    .line 1056
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_36
    :goto_36
    return-void
.end method

.method private isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 8
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3965
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    move v0, v1

    goto :goto_b

    :cond_a
    move v0, v2

    .line 3966
    .local v0, "exemptOnBatterySaver":Z
    :goto_b
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_10

    .line 3968
    return v2

    .line 3970
    :cond_10
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v3, :cond_26

    .line 3971
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 3973
    return v2

    .line 3975
    :cond_1d
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3977
    const/4 v0, 0x1

    .line 3980
    :cond_26
    iget-object v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 3981
    .local v3, "sourcePackage":Ljava/lang/String;
    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 3982
    .local v4, "sourceUid":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v5, :cond_35

    .line 3983
    invoke-virtual {v5, v4, v3, v0}, Lcom/android/server/AppStateTracker;->areAlarmsRestricted(ILjava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_35

    goto :goto_36

    :cond_35
    move v1, v2

    .line 3982
    :goto_36
    return v1
.end method

.method private isExemptFromAppStandby(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4463
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

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

.method private isIdlingImpl()Z
    .registers 3

    .line 3282
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3283
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 3284
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method private isMARsRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 7
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3989
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_55

    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    iget v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmPackageFlag:I

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_55

    .line 3990
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 3991
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    .line 3992
    .local v1, "uid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 3994
    .local v2, "userId":I
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->checkMARsRestrictedAlarmTarget(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 3996
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-nez v3, :cond_39

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v3

    if-nez v3, :cond_53

    .line 3997
    :cond_39
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/FreecessController;->isPacketMonitoredApp(I)Z

    move-result v3

    if-nez v3, :cond_53

    .line 3998
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/android/server/am/FreecessController;->isFreezedByLcdOnPolicy(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_55

    .line 3999
    :cond_53
    const/4 v3, 0x1

    return v3

    .line 4004
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "uid":I
    .end local v2    # "userId":I
    :cond_55
    const/4 v0, 0x0

    return v0
.end method

.method private static final labelForType(I)Ljava/lang/String;
    .registers 2
    .param p0, "type"    # I

    .line 3944
    if-eqz p0, :cond_17

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    .line 3950
    const-string v0, "--unknown--"

    return-object v0

    .line 3947
    :cond_e
    const-string v0, "ELAPSED"

    return-object v0

    .line 3948
    :cond_11
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    .line 3945
    :cond_14
    const-string v0, "RTC"

    return-object v0

    .line 3946
    :cond_17
    const-string v0, "RTC_WAKEUP"

    return-object v0
.end method

.method public static synthetic lambda$nSJw2tKfoL3YIrKDtszoL44jcSM(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$removeForStoppedLocked$3(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3744
    :try_start_0
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_13

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_12

    if-eqz v0, :cond_13

    .line 3746
    const/4 v0, 0x1

    return v0

    .line 3748
    :catch_12
    move-exception v0

    :cond_13
    nop

    .line 3749
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$removeLocked$0(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 4
    .param p0, "operation"    # Landroid/app/PendingIntent;
    .param p1, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p2, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3496
    invoke-virtual {p2, p0, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeLocked$1(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "uid"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3581
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method static synthetic lambda$removeUserLocked$4(ILcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 3
    .param p0, "userHandle"    # I
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3808
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private logAllAlarmsForUidLocked(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 2030
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 2031
    .local v0, "logWriter":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 2033
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "List of all pending alarms for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2034
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v2, v2, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-direct {p0, v1, p1, v2}, Lcom/android/server/AlarmManagerService;->dumpUpcomingNAlarmsForUid(Ljava/io/PrintWriter;II)V

    .line 2035
    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 2036
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    return-void
.end method

.method private logBatchesLocked(Ljava/text/SimpleDateFormat;)V
    .registers 20
    .param p1, "sdf"    # Ljava/text/SimpleDateFormat;

    .line 3229
    move-object/from16 v0, p0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x800

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3230
    .local v1, "bs":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 3231
    .local v2, "pw":Ljava/io/PrintWriter;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v11

    .line 3232
    .local v11, "nowRTC":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v13

    .line 3233
    .local v13, "nowELAPSED":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 3234
    .local v15, "NZ":I
    const/4 v3, 0x0

    move v10, v3

    .local v10, "iz":I
    :goto_22
    if-ge v10, v15, :cond_5f

    .line 3235
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lcom/android/server/AlarmManagerService$Batch;

    .line 3236
    .local v8, "bz":Lcom/android/server/AlarmManagerService$Batch;
    const-string v3, "Batch "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v10}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    invoke-virtual {v2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3237
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v5, "  "

    move-object v3, v2

    move-wide v6, v13

    move-object/from16 v16, v8

    .end local v8    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    .local v16, "bz":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v8, v11

    move/from16 v17, v10

    .end local v10    # "iz":I
    .local v17, "iz":I
    move-object/from16 v10, p1

    invoke-static/range {v3 .. v10}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 3238
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 3239
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AlarmManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3240
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 3234
    .end local v16    # "bz":Lcom/android/server/AlarmManagerService$Batch;
    add-int/lit8 v10, v17, 0x1

    .end local v17    # "iz":I
    .restart local v10    # "iz":I
    goto :goto_22

    .line 3242
    .end local v10    # "iz":I
    :cond_5f
    return-void
.end method

.method static maxTriggerTime(JJJ)J
    .registers 12
    .param p0, "now"    # J
    .param p2, "triggerAtTime"    # J
    .param p4, "interval"    # J

    .line 1022
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-nez v0, :cond_9

    .line 1023
    sub-long v0, p2, p0

    goto :goto_a

    .line 1024
    :cond_9
    move-wide v0, p4

    :goto_a
    nop

    .line 1025
    .local v0, "futurity":J
    const-wide/16 v2, 0x2710

    cmp-long v2, v0, v2

    if-gez v2, :cond_13

    .line 1026
    const-wide/16 v0, 0x0

    .line 1028
    :cond_13
    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    long-to-double v4, v0

    mul-double/2addr v4, v2

    double-to-long v2, v4

    add-long/2addr v2, p2

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    return-wide v2
.end method

.method private notifyBroadcastAlarmCompleteLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1569
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1570
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1571
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmComplete(I)V

    .line 1570
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1573
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private notifyBroadcastAlarmPendingLocked(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 1562
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1563
    .local v0, "numListeners":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 1564
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInFlightListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerInternal$InFlightListener;

    invoke-interface {v2, p1}, Lcom/android/server/AlarmManagerInternal$InFlightListener;->broadcastAlarmPending(I)V

    .line 1563
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1566
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private removeDisallowedAlarmList(I)V
    .registers 23
    .param p1, "allowed"    # I

    .line 5705
    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5706
    const/4 v0, 0x0

    .line 5707
    .local v0, "nextWakeFromIdleMayChange":Z
    const/4 v3, 0x0

    .line 5708
    .local v3, "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_7
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 5709
    .local v4, "numBatches":I
    add-int/lit8 v5, v4, -0x1

    .local v5, "nextBatch":I
    :goto_f
    if-ltz v5, :cond_182

    .line 5710
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Batch;

    .line 5711
    .local v6, "curBatch":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 5712
    .local v7, "numAlarms":I
    add-int/lit8 v8, v7, -0x1

    move v9, v8

    move-object v8, v3

    move v3, v0

    .end local v0    # "nextWakeFromIdleMayChange":Z
    .local v3, "nextWakeFromIdleMayChange":Z
    .local v8, "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .local v9, "nextAlarm":I
    :goto_24
    if-ltz v9, :cond_168

    .line 5713
    const-string v0, "AlarmManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "start Remove Alarm Index : ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5714
    iget-object v0, v6, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    move-object v10, v0

    .line 5715
    .local v10, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v0, v6, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    const/4 v11, 0x1

    and-int/2addr v0, v11

    if-eqz v0, :cond_6b

    move v0, v11

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x0

    :goto_6c
    move v12, v0

    .line 5716
    .local v12, "standAlone":Z
    iget v0, v10, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move v13, v0

    .line 5717
    .local v13, "type":I
    iget-object v0, v10, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object v14, v0

    .line 5718
    .local v14, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v14, :cond_7a

    invoke-virtual {v14}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_7c

    :cond_7a
    iget-object v0, v10, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    :goto_7c
    move-object v15, v0

    .line 5719
    .local v15, "targetPkg":Ljava/lang/String;
    const/16 v16, 0x0

    .line 5720
    .local v16, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17
    :try_end_83
    .catchall {:try_start_7 .. :try_end_83} :catchall_1a7

    .line 5722
    .local v17, "ident":J
    if-eqz v14, :cond_94

    :try_start_85
    invoke-virtual {v14}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_8d
    .catchall {:try_start_85 .. :try_end_8d} :catchall_8e

    goto :goto_95

    .line 5724
    :catchall_8e
    move-exception v0

    :try_start_8f
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5725
    nop

    .end local p0    # "this":Lcom/android/server/AlarmManagerService;
    .end local p1    # "allowed":I
    throw v0

    .line 5722
    .restart local p0    # "this":Lcom/android/server/AlarmManagerService;
    .restart local p1    # "allowed":I
    :cond_94
    const/4 v0, 0x0

    .line 5724
    .end local v16    # "action":Ljava/lang/String;
    .local v0, "action":Ljava/lang/String;
    :goto_95
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5725
    nop

    .line 5727
    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-object/from16 v19, v14

    move/from16 v14, p1

    .end local v14    # "pendingIntent":Landroid/app/PendingIntent;
    .local v19, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v11, v15, v0, v14}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v11

    if-nez v11, :cond_12e

    .line 5728
    const-string v11, "AlarmManager"

    move/from16 v20, v3

    .end local v3    # "nextWakeFromIdleMayChange":Z
    .local v20, "nextWakeFromIdleMayChange":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "remove Disallowed Alarm List : pkg="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", act="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", Type="

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", Index=["

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "/"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]"

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v11, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5731
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_116

    .line 5732
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 5733
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_116

    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v10, v3}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_116

    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v10, v3, :cond_116

    .line 5734
    const/4 v3, 0x1

    .line 5735
    .end local v20    # "nextWakeFromIdleMayChange":Z
    .restart local v3    # "nextWakeFromIdleMayChange":Z
    const-string v11, "AlarmManager"

    const-string/jumbo v14, "mNextWakeFromIdle Alarm will be removed."

    invoke-static {v11, v14}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_118

    .line 5738
    .end local v3    # "nextWakeFromIdleMayChange":Z
    .restart local v20    # "nextWakeFromIdleMayChange":Z
    :cond_116
    move/from16 v3, v20

    .end local v20    # "nextWakeFromIdleMayChange":Z
    .restart local v3    # "nextWakeFromIdleMayChange":Z
    :goto_118
    iget-object v11, v6, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5739
    new-instance v11, Lcom/android/server/AlarmManagerService$PrevAlarm;

    invoke-direct {v11, v1, v10, v12}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Z)V

    invoke-direct {v1, v11}, Lcom/android/server/AlarmManagerService;->addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V

    .line 5740
    iget v11, v10, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    const/4 v14, 0x1

    invoke-direct {v1, v11, v14}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    move v11, v4

    move v14, v7

    goto :goto_162

    .line 5741
    :cond_12e
    move/from16 v20, v3

    .end local v3    # "nextWakeFromIdleMayChange":Z
    .restart local v20    # "nextWakeFromIdleMayChange":Z
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_15a

    .line 5744
    iget-object v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_155

    iget v3, v10, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_155

    .line 5745
    if-eqz v8, :cond_14d

    move v11, v4

    .end local v4    # "numBatches":I
    .local v11, "numBatches":I
    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    move v14, v7

    move-object/from16 v16, v8

    .end local v7    # "numAlarms":I
    .end local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "numAlarms":I
    .local v16, "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    iget-wide v7, v10, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v3, v7

    if-lez v3, :cond_15e

    goto :goto_151

    .end local v11    # "numBatches":I
    .end local v14    # "numAlarms":I
    .end local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v4    # "numBatches":I
    .restart local v7    # "numAlarms":I
    .restart local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_14d
    move v11, v4

    move v14, v7

    move-object/from16 v16, v8

    .line 5746
    .end local v4    # "numBatches":I
    .end local v7    # "numAlarms":I
    .end local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v11    # "numBatches":I
    .restart local v14    # "numAlarms":I
    .restart local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_151
    move-object v8, v10

    move/from16 v3, v20

    .end local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_162

    .line 5744
    .end local v11    # "numBatches":I
    .end local v14    # "numAlarms":I
    .restart local v4    # "numBatches":I
    .restart local v7    # "numAlarms":I
    :cond_155
    move v11, v4

    move v14, v7

    move-object/from16 v16, v8

    .end local v4    # "numBatches":I
    .end local v7    # "numAlarms":I
    .end local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v11    # "numBatches":I
    .restart local v14    # "numAlarms":I
    .restart local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_15e

    .line 5741
    .end local v11    # "numBatches":I
    .end local v14    # "numAlarms":I
    .end local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v4    # "numBatches":I
    .restart local v7    # "numAlarms":I
    .restart local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_15a
    move v11, v4

    move v14, v7

    move-object/from16 v16, v8

    .line 5712
    .end local v0    # "action":Ljava/lang/String;
    .end local v4    # "numBatches":I
    .end local v7    # "numAlarms":I
    .end local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v12    # "standAlone":Z
    .end local v13    # "type":I
    .end local v15    # "targetPkg":Ljava/lang/String;
    .end local v17    # "ident":J
    .end local v19    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v11    # "numBatches":I
    .restart local v14    # "numAlarms":I
    .restart local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_15e
    :goto_15e
    move-object/from16 v8, v16

    move/from16 v3, v20

    .end local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v20    # "nextWakeFromIdleMayChange":Z
    .restart local v3    # "nextWakeFromIdleMayChange":Z
    .restart local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_162
    add-int/lit8 v9, v9, -0x1

    move v4, v11

    move v7, v14

    goto/16 :goto_24

    .end local v11    # "numBatches":I
    .end local v14    # "numAlarms":I
    .restart local v4    # "numBatches":I
    .restart local v7    # "numAlarms":I
    :cond_168
    move/from16 v20, v3

    move v11, v4

    move v14, v7

    move-object/from16 v16, v8

    .line 5752
    .end local v3    # "nextWakeFromIdleMayChange":Z
    .end local v4    # "numBatches":I
    .end local v7    # "numAlarms":I
    .end local v8    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v9    # "nextAlarm":I
    .restart local v11    # "numBatches":I
    .restart local v14    # "numAlarms":I
    .restart local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v20    # "nextWakeFromIdleMayChange":Z
    invoke-virtual {v6}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v0

    if-nez v0, :cond_179

    .line 5753
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 5709
    .end local v6    # "curBatch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14    # "numAlarms":I
    :cond_179
    add-int/lit8 v5, v5, -0x1

    move v4, v11

    move-object/from16 v3, v16

    move/from16 v0, v20

    goto/16 :goto_f

    .end local v11    # "numBatches":I
    .end local v16    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v20    # "nextWakeFromIdleMayChange":Z
    .local v0, "nextWakeFromIdleMayChange":Z
    .local v3, "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v4    # "numBatches":I
    :cond_182
    move v11, v4

    .line 5756
    .end local v4    # "numBatches":I
    .end local v5    # "nextBatch":I
    .restart local v11    # "numBatches":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 5759
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v4, :cond_1a5

    if-eqz v0, :cond_1a5

    .line 5760
    iput-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 5761
    const-string v4, "AlarmManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mNextWakeFromIdle is set with next alarmClock : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5763
    .end local v0    # "nextWakeFromIdleMayChange":Z
    .end local v3    # "nextAlarmWakeFromIdle":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v11    # "numBatches":I
    :cond_1a5
    monitor-exit v2

    .line 5764
    return-void

    .line 5763
    :catchall_1a7
    move-exception v0

    monitor-exit v2
    :try_end_1a9
    .catchall {:try_start_8f .. :try_end_1a9} :catchall_1a7

    throw v0
.end method

.method private restoreDisallowedAlarmList(Z)V
    .registers 37
    .param p1, "screen_on"    # Z

    .line 5767
    move-object/from16 v11, p0

    move/from16 v10, p1

    iget-object v9, v11, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 5768
    :try_start_7
    const-string v0, "AlarmManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pending Alarm Start : size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v11, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5769
    iget-object v0, v11, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_1c3

    if-eqz v1, :cond_1b8

    :try_start_34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$PrevAlarm;

    move-object v5, v1

    .line 5770
    .local v5, "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    iget-object v1, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_1a2

    .line 5771
    iget-object v1, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    move v6, v1

    .line 5772
    .local v6, "type":I
    iget-object v1, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 5773
    .local v1, "triggerAtTime":J
    iget-object v3, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 5774
    .local v3, "whenElapsed":J
    iget-object v7, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-wide/from16 v16, v7

    .line 5775
    .local v16, "windowLength":J
    iget-object v7, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v7, v7, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 5776
    .local v7, "interval":J
    iget-object v12, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v12, v12, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v18, v12

    .line 5777
    .local v18, "operation":Landroid/app/PendingIntent;
    iget-boolean v12, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mIsStandalone:Z

    if-eqz v12, :cond_62

    const/4 v12, 0x1

    goto :goto_63

    :cond_62
    const/4 v12, 0x0

    .line 5778
    .local v12, "flags":I
    :goto_63
    iget-object v13, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v13, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    .line 5779
    .local v13, "workSource":Landroid/os/WorkSource;
    iget-object v14, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v14, v14, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    .line 5780
    .local v14, "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v15, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget v15, v15, Lcom/android/server/AlarmManagerService$Alarm;->uid:I
    :try_end_6f
    .catchall {:try_start_34 .. :try_end_6f} :catchall_1b2

    .line 5781
    .local v15, "uid":I
    if-eqz v18, :cond_7c

    :try_start_71
    invoke-virtual/range {v18 .. v18}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v19
    :try_end_75
    .catchall {:try_start_71 .. :try_end_75} :catchall_1c3

    move-object/from16 v34, v19

    move-object/from16 v19, v0

    move-object/from16 v0, v34

    goto :goto_82

    :cond_7c
    move-object/from16 v19, v0

    :try_start_7e
    iget-object v0, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    :goto_82
    move-object/from16 v20, v0

    .line 5782
    .local v20, "targetPkg":Ljava/lang/String;
    const/16 v21, 0x0

    .line 5783
    .local v21, "action":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v22
    :try_end_8a
    .catchall {:try_start_7e .. :try_end_8a} :catchall_1b2

    .line 5785
    .local v22, "ident1":J
    if-eqz v18, :cond_a2

    :try_start_8c
    invoke-virtual/range {v18 .. v18}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_94
    .catchall {:try_start_8c .. :try_end_94} :catchall_95

    goto :goto_a3

    .line 5788
    :catchall_95
    move-exception v0

    move-wide/from16 v27, v3

    move/from16 v24, v6

    move-object/from16 v33, v9

    move-object/from16 v25, v21

    move-object/from16 v21, v5

    goto/16 :goto_19b

    .line 5785
    :cond_a2
    const/4 v0, 0x0

    :goto_a3
    move-object/from16 v24, v0

    .line 5786
    .end local v21    # "action":Ljava/lang/String;
    .local v24, "action":Ljava/lang/String;
    :try_start_a5
    const-string v0, "AlarmManager"
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_190

    move-wide/from16 v25, v7

    .end local v7    # "interval":J
    .local v25, "interval":J
    :try_start_a9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", triggerAtTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", whenElapsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_a9 .. :try_end_ce} :catchall_182

    .line 5788
    :try_start_ce
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5789
    nop

    .line 5791
    iget-object v0, v11, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v7, 0x2

    move-object/from16 v8, v20

    move/from16 v20, v12

    move-object/from16 v12, v24

    .end local v24    # "action":Ljava/lang/String;
    .local v8, "targetPkg":Ljava/lang/String;
    .local v12, "action":Ljava/lang/String;
    .local v20, "flags":I
    invoke-virtual {v0, v8, v12, v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0
    :try_end_df
    .catchall {:try_start_ce .. :try_end_df} :catchall_1b2

    if-eqz v0, :cond_116

    .line 5792
    :try_start_e1
    const-string v0, "AlarmManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v27, v3

    .end local v3    # "whenElapsed":J
    .local v27, "whenElapsed":J
    const-string/jumbo v3, "restoreDisallowedAlarmList => sendBroadcast : BOOT_COMPLETED, screen_on "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5793
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5794
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5795
    if-eqz v10, :cond_10c

    .line 5796
    const-string/jumbo v3, "screen_on"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5798
    :cond_10c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_118

    .line 5791
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v27    # "whenElapsed":J
    .restart local v3    # "whenElapsed":J
    :cond_116
    move-wide/from16 v27, v3

    .line 5801
    .end local v3    # "whenElapsed":J
    .restart local v27    # "whenElapsed":J
    :goto_118
    const/4 v0, 0x2

    if-eq v6, v0, :cond_13a

    const/4 v0, 0x3

    if-ne v6, v0, :cond_11f

    goto :goto_13a

    .line 5808
    :cond_11f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_155

    .line 5809
    const-string v0, "AlarmManager"

    const-string v3, "checkValidPackage(USER_ALLOW): false"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3
    :try_end_132
    .catchall {:try_start_e1 .. :try_end_132} :catchall_1c3

    move-wide v1, v3

    .line 5811
    const-wide/16 v16, 0x0

    move-wide/from16 v29, v1

    move-wide/from16 v31, v16

    goto :goto_159

    .line 5802
    :cond_13a
    :goto_13a
    :try_start_13a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_13e
    .catchall {:try_start_13a .. :try_end_13e} :catchall_1b2

    cmp-long v0, v1, v3

    if-gez v0, :cond_155

    .line 5803
    :try_start_142
    const-string v0, "AlarmManager"

    const-string v3, "checkValidPackage(USER_ALLOW): false"

    invoke-static {v0, v3}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5804
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_14d
    .catchall {:try_start_142 .. :try_end_14d} :catchall_1c3

    move-wide v1, v3

    .line 5805
    const-wide/16 v16, 0x0

    move-wide/from16 v29, v1

    move-wide/from16 v31, v16

    goto :goto_159

    .line 5814
    :cond_155
    move-wide/from16 v29, v1

    move-wide/from16 v31, v16

    .end local v1    # "triggerAtTime":J
    .end local v16    # "windowLength":J
    .local v29, "triggerAtTime":J
    .local v31, "windowLength":J
    :goto_159
    :try_start_159
    iget-object v0, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v1, v5, Lcom/android/server/AlarmManagerService$PrevAlarm;->mAlarm:Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->listenerTag:Ljava/lang/String;
    :try_end_161
    .catchall {:try_start_159 .. :try_end_161} :catchall_1b2

    move-object/from16 v1, p0

    move v2, v6

    move-wide/from16 v3, v29

    move-object/from16 v21, v5

    move/from16 v24, v6

    .end local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v6    # "type":I
    .local v21, "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .local v24, "type":I
    move-wide/from16 v5, v31

    move-object/from16 v33, v9

    move-object/from16 v9, v18

    move-object v10, v0

    move-object v11, v7

    move-object/from16 v16, v8

    move/from16 v34, v20

    move-object/from16 v20, v8

    move-wide/from16 v7, v25

    move-object/from16 v25, v12

    move/from16 v12, v34

    .end local v8    # "targetPkg":Ljava/lang/String;
    .restart local v7    # "interval":J
    .local v12, "flags":I
    .local v20, "targetPkg":Ljava/lang/String;
    .local v25, "action":Ljava/lang/String;
    :try_start_17e
    invoke-virtual/range {v1 .. v16}, Lcom/android/server/AlarmManagerService;->setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    goto :goto_1a8

    .line 5788
    .end local v7    # "interval":J
    .end local v21    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v27    # "whenElapsed":J
    .end local v29    # "triggerAtTime":J
    .end local v31    # "windowLength":J
    .restart local v1    # "triggerAtTime":J
    .restart local v3    # "whenElapsed":J
    .restart local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .restart local v6    # "type":I
    .restart local v16    # "windowLength":J
    .local v24, "action":Ljava/lang/String;
    .local v25, "interval":J
    :catchall_182
    move-exception v0

    move-wide/from16 v27, v3

    move-object/from16 v21, v5

    move-object/from16 v33, v9

    move-wide/from16 v7, v25

    move-object/from16 v25, v24

    move/from16 v24, v6

    .end local v3    # "whenElapsed":J
    .end local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v6    # "type":I
    .restart local v7    # "interval":J
    .restart local v21    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .local v24, "type":I
    .local v25, "action":Ljava/lang/String;
    .restart local v27    # "whenElapsed":J
    goto :goto_19b

    .end local v21    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v25    # "action":Ljava/lang/String;
    .end local v27    # "whenElapsed":J
    .restart local v3    # "whenElapsed":J
    .restart local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .restart local v6    # "type":I
    .local v24, "action":Ljava/lang/String;
    :catchall_190
    move-exception v0

    move-wide/from16 v27, v3

    move-object/from16 v21, v5

    move-object/from16 v33, v9

    move-object/from16 v25, v24

    move/from16 v24, v6

    .end local v3    # "whenElapsed":J
    .end local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v6    # "type":I
    .restart local v21    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .local v24, "type":I
    .restart local v25    # "action":Ljava/lang/String;
    .restart local v27    # "whenElapsed":J
    :goto_19b
    invoke-static/range {v22 .. v23}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5789
    nop

    .end local p0    # "this":Lcom/android/server/AlarmManagerService;
    .end local p1    # "screen_on":Z
    throw v0
    :try_end_1a0
    .catchall {:try_start_17e .. :try_end_1a0} :catchall_1a0

    .line 5818
    .end local v1    # "triggerAtTime":J
    .end local v7    # "interval":J
    .end local v12    # "flags":I
    .end local v13    # "workSource":Landroid/os/WorkSource;
    .end local v14    # "clockInfo":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v15    # "uid":I
    .end local v16    # "windowLength":J
    .end local v18    # "operation":Landroid/app/PendingIntent;
    .end local v20    # "targetPkg":Ljava/lang/String;
    .end local v21    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    .end local v22    # "ident1":J
    .end local v24    # "type":I
    .end local v25    # "action":Ljava/lang/String;
    .end local v27    # "whenElapsed":J
    .restart local p0    # "this":Lcom/android/server/AlarmManagerService;
    .restart local p1    # "screen_on":Z
    :catchall_1a0
    move-exception v0

    goto :goto_1b5

    .line 5770
    .restart local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    :cond_1a2
    move-object/from16 v19, v0

    move-object/from16 v21, v5

    move-object/from16 v33, v9

    .line 5816
    .end local v5    # "pa":Lcom/android/server/AlarmManagerService$PrevAlarm;
    :goto_1a8
    move-object/from16 v11, p0

    move/from16 v10, p1

    move-object/from16 v0, v19

    move-object/from16 v9, v33

    goto/16 :goto_2e

    .line 5818
    :catchall_1b2
    move-exception v0

    move-object/from16 v33, v9

    :goto_1b5
    move-object/from16 v1, p0

    goto :goto_1c7

    .line 5817
    :cond_1b8
    move-object/from16 v33, v9

    move-object/from16 v1, p0

    :try_start_1bc
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mPendingAlarmList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5818
    monitor-exit v33

    .line 5819
    return-void

    .line 5818
    :catchall_1c3
    move-exception v0

    move-object/from16 v33, v9

    move-object v1, v11

    :goto_1c7
    monitor-exit v33
    :try_end_1c8
    .catchall {:try_start_1bc .. :try_end_1c8} :catchall_1c9

    throw v0

    :catchall_1c9
    move-exception v0

    goto :goto_1c7
.end method

.method private sendNextAlarmClockChanged()V
    .registers 9

    .line 3409
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandlerSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3410
    .local v0, "pendingUsers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3412
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3413
    :try_start_8
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3414
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_25

    .line 3415
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 3416
    .local v4, "userId":I
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3414
    .end local v4    # "userId":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3418
    .end local v3    # "i":I
    :cond_25
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3419
    .end local v2    # "N":I
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_64

    .line 3421
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 3422
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    if-ge v2, v1, :cond_63

    .line 3423
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 3424
    .local v3, "userId":I
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3425
    .local v4, "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 3427
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lcom/android/server/AlarmManagerService;->formatNextAlarm(Landroid/content/Context;Landroid/app/AlarmManager$AlarmClockInfo;I)Ljava/lang/String;

    move-result-object v6

    .line 3425
    const-string/jumbo v7, "next_alarm_formatted"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 3430
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcom/android/server/AlarmManagerService;->NEXT_ALARM_CLOCK_CHANGED_INTENT:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 3422
    .end local v3    # "userId":I
    .end local v4    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 3433
    .end local v2    # "i":I
    :cond_63
    return-void

    .line 3419
    .end local v1    # "N":I
    :catchall_64
    move-exception v2

    :try_start_65
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v2
.end method

.method private static native set(JIJJ)I
.end method

.method private static native setBootAlarm(JLjava/lang/String;)V
.end method

.method private setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 43
    .param p1, "type"    # I
    .param p2, "when"    # J
    .param p4, "whenElapsed"    # J
    .param p6, "windowLength"    # J
    .param p8, "maxWhen"    # J
    .param p10, "interval"    # J
    .param p12, "operation"    # Landroid/app/PendingIntent;
    .param p13, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p14, "listenerTag"    # Ljava/lang/String;
    .param p15, "flags"    # I
    .param p16, "doValidate"    # Z
    .param p17, "workSource"    # Landroid/os/WorkSource;
    .param p18, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p19, "callingUid"    # I
    .param p20, "callingPackage"    # Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p12

    move-object/from16 v15, p13

    move/from16 v14, p19

    move/from16 v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move v1, v14

    move-object/from16 v14, p12

    move-object/from16 v16, p14

    move/from16 v18, p15

    move-object/from16 v17, p17

    move-object/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    .line 2063
    new-instance v0, Lcom/android/server/AlarmManagerService$Alarm;

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 2067
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_29
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2d} :catch_5c

    move-object/from16 v3, p20

    :try_start_2f
    invoke-interface {v0, v1, v3}, Landroid/app/IActivityManager;->isAppStartModeDisabled(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 2068
    const-string v0, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not setting alarm from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " -- package not allowed to start"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_58} :catch_5a

    .line 2070
    return-object v2

    .line 2073
    :cond_59
    goto :goto_5f

    .line 2072
    :catch_5a
    move-exception v0

    goto :goto_5f

    :catch_5c
    move-exception v0

    move-object/from16 v3, p20

    .line 2076
    :goto_5f
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mGmsManager:Lcom/android/server/GmsAlarmManager;

    if-eqz v0, :cond_6a

    if-nez p18, :cond_6a

    .line 2077
    invoke-virtual {v0, v2}, Lcom/android/server/GmsAlarmManager;->schedulingGmsAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2082
    :cond_6a
    sget-boolean v0, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    const/4 v4, 0x0

    if-eqz v0, :cond_9d

    if-nez p18, :cond_9d

    .line 2083
    sput-boolean v4, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    .line 2084
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    cmp-long v5, p4, p8

    if-nez v5, :cond_7b

    const/4 v5, 0x1

    goto :goto_7c

    :cond_7b
    move v5, v4

    :goto_7c
    invoke-virtual {v0, v2, v5}, Lcom/android/server/AppSyncWrapper;->log(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 2085
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-wide v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2086
    invoke-virtual {v0, v5, v6, v7, v8}, Lcom/android/server/AppSyncWrapper;->lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z

    move-result v0

    .line 2089
    .local v0, "isNonAdjustableAlarm":Z
    move-object/from16 v5, p12

    move-object/from16 v6, p13

    invoke-virtual {v1, v5, v6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2091
    if-nez v0, :cond_9c

    .line 2095
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v7, v2}, Lcom/android/server/AppSyncWrapper;->scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J

    move-result-wide v7

    iput-wide v7, v2, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2098
    .end local v0    # "isNonAdjustableAlarm":Z
    :cond_9c
    goto :goto_a4

    .line 2082
    :cond_9d
    move-object/from16 v5, p12

    move-object/from16 v6, p13

    .line 2100
    invoke-virtual {v1, v5, v6}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 2102
    :goto_a4
    iget v0, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {v1, v0}, Lcom/android/server/AlarmManagerService;->incrementAlarmCount(I)V

    .line 2103
    move/from16 v7, p16

    invoke-direct {v1, v2, v4, v7}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 2104
    return-object v2
.end method

.method private setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V
    .registers 12
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "rebatching"    # Z
    .param p3, "doValidate"    # Z

    .line 2205
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4b

    .line 2210
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_1e

    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 2211
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 2214
    :cond_1e
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 2215
    .local v0, "nowElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->fuzzForDuration(J)I

    move-result v2

    .line 2216
    .local v2, "fuzz":I
    if-lez v2, :cond_5b

    .line 2217
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    if-nez v3, :cond_38

    .line 2218
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    .line 2220
    :cond_38
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 2221
    .local v3, "delta":I
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    int-to-long v6, v3

    sub-long/2addr v4, v6

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 2229
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    goto :goto_5b

    .line 2232
    .end local v0    # "nowElapsed":J
    .end local v2    # "fuzz":I
    .end local v3    # "delta":I
    :cond_4b
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v0, :cond_5b

    .line 2235
    iget v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v0, v0, 0xe

    if-nez v0, :cond_5c

    .line 2239
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2240
    return-void

    .line 2232
    :cond_5b
    :goto_5b
    nop

    .line 2255
    :cond_5c
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 2256
    invoke-direct {p0, p1}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 2258
    iget-object v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v0, :cond_71

    .line 2259
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 2261
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    const-string/jumbo v1, "set"

    invoke-virtual {v0, p1, v1}, Lcom/android/server/SamsungAlarmManagerService;->notifyAlarmClockChanged(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;)V

    .line 2265
    :cond_71
    const/4 v0, 0x0

    .line 2267
    .local v0, "needRebatch":Z
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a3

    .line 2277
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v1, p1, :cond_9f

    if-eqz v1, :cond_9f

    .line 2278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setImplLocked: idle until changed from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_9f
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2283
    const/4 v0, 0x1

    goto :goto_bc

    .line 2284
    :cond_a3
    iget v1, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_bc

    .line 2285
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_b5

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v3, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_bc

    .line 2286
    :cond_b5
    iput-object p1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 2290
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_bc

    .line 2291
    const/4 v0, 0x1

    .line 2296
    :cond_bc
    :goto_bc
    if-nez p2, :cond_d1

    .line 2298
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    iget-boolean v2, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    invoke-virtual {v1, p1, v2}, Lcom/android/server/SamsungAlarmManagerService;->notifySetAlarm(Lcom/android/server/AlarmManagerService$Alarm;Z)V

    .line 2313
    if-eqz v0, :cond_cb

    .line 2314
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 2317
    :cond_cb
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 2318
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 2320
    :cond_d1
    return-void
.end method

.method private static native setKernelTime(JJ)I
.end method

.method private static native setKernelTimezone(JI)I
.end method

.method private setLocked(IJ)V
    .registers 7
    .param p1, "type"    # I
    .param p2, "when"    # J

    .line 3916
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3918
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/SamsungAlarmManagerService;->notifySetLocked(IJ)V

    .line 3920
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/AlarmManagerService$Injector;->setAlarm(IJ)V

    goto :goto_2b

    .line 3922
    :cond_13
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3923
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3925
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3927
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/SamsungAlarmManagerService;->notifySendAlarmEvent()V

    .line 3929
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v1, v0, p2, p3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 3931
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2b
    return-void
.end method

.method private updateNextAlarmClockLocked()V
    .registers 14

    .line 3322
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    if-nez v0, :cond_5

    .line 3323
    return-void

    .line 3325
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    .line 3327
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mTmpSparseAlarmClockArray:Landroid/util/SparseArray;

    .line 3328
    .local v0, "nextForUser":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 3330
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3331
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_6e

    .line 3332
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 3333
    .local v3, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 3335
    .local v4, "M":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_25
    if-ge v5, v4, :cond_6b

    .line 3336
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3337
    .local v6, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v7, :cond_68

    .line 3338
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 3339
    .local v7, "userId":I
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3348
    .local v8, "current":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4b

    .line 3349
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_68

    .line 3350
    :cond_4b
    iget-object v9, v6, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v9, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_68

    .line 3351
    invoke-virtual {v8}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v9

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v11}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gtz v9, :cond_68

    .line 3353
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3335
    .end local v6    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v7    # "userId":I
    .end local v8    # "current":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_68
    :goto_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 3331
    .end local v3    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v4    # "M":I
    .end local v5    # "j":I
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 3360
    .end local v2    # "i":I
    :cond_6e
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 3361
    .local v2, "NN":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_73
    if-ge v3, v2, :cond_93

    .line 3362
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3363
    .local v4, "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3364
    .local v5, "userId":I
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3365
    .local v6, "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_90

    .line 3366
    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3361
    .end local v4    # "newAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v5    # "userId":I
    .end local v6    # "currentAlarm":Landroid/app/AlarmManager$AlarmClockInfo;
    :cond_90
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    .line 3371
    .end local v3    # "i":I
    :cond_93
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 3372
    .local v3, "NNN":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_9b
    if-ltz v4, :cond_b0

    .line 3373
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3374
    .restart local v5    # "userId":I
    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_ad

    .line 3375
    const/4 v6, 0x0

    invoke-direct {p0, v5, v6}, Lcom/android/server/AlarmManagerService;->updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V

    .line 3372
    .end local v5    # "userId":I
    :cond_ad
    add-int/lit8 v4, v4, -0x1

    goto :goto_9b

    .line 3378
    .end local v4    # "i":I
    :cond_b0
    return-void
.end method

.method private updateNextAlarmInfoForUserLocked(ILandroid/app/AlarmManager$AlarmClockInfo;)V
    .registers 5
    .param p1, "userId"    # I
    .param p2, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3382
    if-eqz p2, :cond_8

    .line 3387
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_d

    .line 3392
    :cond_8
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3395
    :goto_d
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3396
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->removeMessages(I)V

    .line 3397
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/AlarmManagerService$AlarmHandler;->sendEmptyMessage(I)Z

    .line 3398
    return-void
.end method

.method private validateConsistencyLocked()Z
    .registers 2

    .line 3261
    const/4 v0, 0x1

    return v0
.end method

.method private static native waitForAlarm(J)I
.end method


# virtual methods
.method addAlarm(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 5
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 1480
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1481
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_5
    invoke-direct {p0, p1, v1, v2}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1482
    monitor-exit v0

    .line 1483
    return-void

    .line 1482
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_a

    throw v1
.end method

.method attemptCoalesceLocked(JJ)I
    .registers 9
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .line 1060
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1061
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_21

    .line 1062
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1063
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget v3, v2, Lcom/android/server/AlarmManagerService$Batch;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1e

    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/android/server/AlarmManagerService$Batch;->canHold(JJ)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1064
    return v1

    .line 1061
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1067
    .end local v1    # "i":I
    :cond_21
    const/4 v1, -0x1

    return v1
.end method

.method calculateDeliveryPriorities(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)V"
        }
    .end annotation

    .line 942
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 943
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_52

    .line 944
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Alarm;

    .line 947
    .local v2, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_15

    .line 948
    const/4 v3, 0x0

    .local v3, "alarmPrio":I
    goto :goto_1c

    .line 949
    .end local v3    # "alarmPrio":I
    :cond_15
    iget-boolean v3, v2, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v3, :cond_1b

    .line 950
    const/4 v3, 0x1

    .restart local v3    # "alarmPrio":I
    goto :goto_1c

    .line 952
    .end local v3    # "alarmPrio":I
    :cond_1b
    const/4 v3, 0x2

    .line 955
    .restart local v3    # "alarmPrio":I
    :goto_1c
    iget-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 956
    .local v4, "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    .line 957
    .local v5, "alarmPackage":Ljava/lang/String;
    if-nez v4, :cond_2b

    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 958
    :cond_2b
    if-nez v4, :cond_3a

    .line 959
    new-instance v6, Lcom/android/server/AlarmManagerService$PriorityClass;

    invoke-direct {v6, p0}, Lcom/android/server/AlarmManagerService$PriorityClass;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v6, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    move-object v4, v6

    .line 960
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mPriorities:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    :cond_3a
    iput-object v4, v2, Lcom/android/server/AlarmManagerService$Alarm;->priorityClass:Lcom/android/server/AlarmManagerService$PriorityClass;

    .line 964
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    iget v7, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    if-eq v6, v7, :cond_49

    .line 966
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 967
    iget v6, p0, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    iput v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->seq:I

    goto :goto_4f

    .line 972
    :cond_49
    iget v6, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    if-ge v3, v6, :cond_4f

    .line 973
    iput v3, v4, Lcom/android/server/AlarmManagerService$PriorityClass;->priority:I

    .line 943
    .end local v2    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v3    # "alarmPrio":I
    .end local v4    # "packagePrio":Lcom/android/server/AlarmManagerService$PriorityClass;
    .end local v5    # "alarmPackage":Ljava/lang/String;
    :cond_4f
    :goto_4f
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 977
    .end local v1    # "i":I
    :cond_52
    return-void
.end method

.method checkAllowNonWakeupDelayLocked(J)Z
    .registers 9
    .param p1, "nowELAPSED"    # J

    .line 4415
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 4416
    return v1

    .line 4418
    :cond_6
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_f

    .line 4419
    return v1

    .line 4421
    :cond_f
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1e

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v0, v2, p1

    if-gez v0, :cond_1e

    .line 4425
    return v1

    .line 4427
    :cond_1e
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, p1, v2

    .line 4428
    .local v2, "timeSinceLast":J
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-gtz v0, :cond_2b

    const/4 v1, 0x1

    :cond_2b
    return v1
.end method

.method currentNonWakeupFuzzLocked(J)J
    .registers 7
    .param p1, "nowELAPSED"    # J

    .line 4387
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v0, p1, v0

    .line 4388
    .local v0, "timeSinceOn":J
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_f

    .line 4390
    const-wide/32 v2, 0x1d4c0

    return-wide v2

    .line 4391
    :cond_f
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_1a

    .line 4393
    const-wide/32 v2, 0xdbba0

    return-wide v2

    .line 4396
    :cond_1a
    const-wide/32 v2, 0x36ee80

    return-wide v2
.end method

.method deliverAlarmsLocked(Ljava/util/ArrayList;J)V
    .registers 14
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)V"
        }
    .end annotation

    .line 4432
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iput-wide p2, p0, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    .line 4433
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_86

    .line 4434
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4435
    .local v1, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    move v2, v3

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 4436
    .local v2, "allowWhileIdle":Z
    :goto_19
    iget-boolean v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    const-wide/32 v5, 0x20000

    if-eqz v4, :cond_37

    .line 4437
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dispatch wakeup alarm to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    goto :goto_4d

    .line 4439
    :cond_37
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Dispatch non-wakeup alarm to "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 4446
    :goto_4d
    :try_start_4d
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mBackgroundIntent:Landroid/content/Intent;

    const-string v7, "android.intent.extra.ALARM_TARGET_TIME"

    iget-wide v8, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenOriginal:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 4447
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    iget v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v1, v7, v8, v9}, Lcom/android/server/AppSyncWrapper;->updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V

    .line 4450
    iget-object v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    iget-object v7, v1, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    iget v8, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    iget-object v9, v1, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v4, v7, v8, v9}, Landroid/app/ActivityManager;->noteAlarmStart(Landroid/app/PendingIntent;Landroid/os/WorkSource;ILjava/lang/String;)V

    .line 4453
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mDeliveryTracker:Lcom/android/server/AlarmManagerService$DeliveryTracker;

    invoke-virtual {v4, v1, p2, p3, v2}, Lcom/android/server/AlarmManagerService$DeliveryTracker;->deliverLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    :try_end_71
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_71} :catch_72

    .line 4456
    goto :goto_7a

    .line 4454
    :catch_72
    move-exception v4

    .line 4455
    .local v4, "e":Ljava/lang/RuntimeException;
    const-string v7, "AlarmManager"

    const-string v8, "Failure sending alarm."

    invoke-static {v7, v8, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4457
    .end local v4    # "e":Ljava/lang/RuntimeException;
    :goto_7a
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 4458
    iget v4, v1, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v4, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 4433
    .end local v1    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v2    # "allowWhileIdle":Z
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 4460
    .end local v0    # "i":I
    :cond_86
    return-void
.end method

.method dumpImpl(Ljava/io/PrintWriter;)V
    .registers 33
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 2586
    move-object/from16 v1, p0

    move-object/from16 v10, p1

    iget-object v11, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 2587
    :try_start_7
    const-string v2, "Current Alarm Manager state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2588
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AlarmManagerService$Constants;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2589
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2591
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v2, :cond_24

    .line 2592
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AppStateTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2593
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2596
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  App Standby Parole: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Lcom/android/server/AlarmManagerService;->mAppStandbyParole:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2597
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2599
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    move-wide v12, v2

    .line 2600
    .local v12, "nowELAPSED":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v14, v2

    .line 2601
    .local v14, "nowUPTIME":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v2

    move-wide v7, v2

    .line 2602
    .local v7, "nowRTC":J
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v9, v2

    .line 2604
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    const-string v2, "  nowRTC="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 2605
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2606
    const-string v2, " nowELAPSED="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 2607
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2608
    const-string v2, "  mLastTimeChangeClockTime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 2609
    const-string v2, "="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    const-string v2, "  mLastTimeChangeRealtime="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v10, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    .line 2611
    const-string v2, "  mLastTickReceived="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickReceived:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    const-string v2, "  mLastTickSet="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickSet:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2613
    const-string v2, "  mLastTickAdded="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickAdded:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    const-string v2, "  mLastTickRemoved="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTickRemoved:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2617
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2618
    const-string v2, "  Recent TIME_TICK history:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2619
    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    .line 2621
    .local v2, "i":I
    :goto_fa
    add-int/lit8 v2, v2, -0x1

    .line 2622
    if-gez v2, :cond_100

    const/16 v2, 0x9

    .line 2623
    :cond_100
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mTickHistory:[J

    aget-wide v3, v3, v2

    .line 2624
    .local v3, "time":J
    const-string v5, "    "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2625
    const-wide/16 v5, 0x0

    cmp-long v16, v3, v5

    if-lez v16, :cond_11f

    .line 2626
    new-instance v5, Ljava/util/Date;

    sub-long v18, v12, v3

    move-wide/from16 v20, v3

    .end local v3    # "time":J
    .local v20, "time":J
    sub-long v3, v7, v18

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    goto :goto_123

    .line 2627
    .end local v20    # "time":J
    .restart local v3    # "time":J
    :cond_11f
    move-wide/from16 v20, v3

    .end local v3    # "time":J
    .restart local v20    # "time":J
    const-string v3, "-"

    .line 2625
    :goto_123
    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    .end local v20    # "time":J
    iget v3, v1, Lcom/android/server/AlarmManagerService;->mNextTickHistory:I

    if-ne v2, v3, :cond_85f

    .line 2631
    .end local v2    # "i":I
    const-class v2, Lcom/android/server/SystemServiceManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/SystemServiceManager;

    move-object/from16 v18, v2

    .line 2632
    .local v18, "ssm":Lcom/android/server/SystemServiceManager;
    if-eqz v18, :cond_17d

    .line 2633
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2634
    const-string v2, "  RuntimeStarted="

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2635
    new-instance v2, Ljava/util/Date;

    sub-long v3, v7, v12

    .line 2636
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 2635
    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2637
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->isRuntimeRestarted()Z

    move-result v2

    if-eqz v2, :cond_15c

    .line 2638
    const-string v2, "  (Runtime restarted)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2640
    :cond_15c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2641
    const-string v2, "  Runtime uptime (elapsed): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2642
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartElapsedTime()J

    move-result-wide v2

    invoke-static {v12, v13, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2643
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2644
    const-string v2, "  Runtime uptime (uptime): "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2645
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/SystemServiceManager;->getRuntimeStartUptime()J

    move-result-wide v2

    invoke-static {v14, v15, v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2646
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2649
    :cond_17d
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2650
    iget-boolean v2, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v2, :cond_193

    .line 2651
    const-string v2, "  Time since non-interactive: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2652
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2653
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2655
    :cond_193
    const-string v2, "  Max wakeup delay: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2656
    invoke-virtual {v1, v12, v13}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2657
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2658
    const-string v2, "  Time since last dispatch: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2659
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v2, v12, v2

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2660
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2661
    const-string v2, "  Next non-wakeup delivery time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2662
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2663
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2665
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long v4, v7, v12

    add-long v5, v2, v4

    .line 2666
    .local v5, "nextWakeupRTC":J
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long v19, v7, v12

    add-long v3, v2, v19

    .line 2667
    .local v3, "nextNonWakeupRTC":J
    const-string v2, "  Next non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2668
    move-wide/from16 v19, v14

    .end local v14    # "nowUPTIME":J
    .local v19, "nowUPTIME":J
    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2669
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2670
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2671
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2672
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2673
    const-string v2, "  Next wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2674
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2675
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2676
    const-string v2, "    set at "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2677
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2679
    const-string v2, "  Next kernel non-wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2680
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x3

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2681
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2682
    const-string v2, "  Next kernel wakeup alarm: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2683
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const/4 v14, 0x2

    invoke-virtual {v2, v14}, Lcom/android/server/AlarmManagerService$Injector;->getNextAlarm(I)J

    move-result-wide v14

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2684
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2686
    const-string v2, "  Last wakeup: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2687
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2688
    const-string v2, "  Last trigger: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-static {v14, v15, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2689
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v1, Lcom/android/server/AlarmManagerService;->mLastTrigger:J

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    .line 2690
    const-string v2, "  Num time change events: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2692
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2693
    const-string v2, "  Next alarm clock information: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    move-object v14, v2

    .line 2695
    .local v14, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_295
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_2ad

    .line 2696
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2695
    add-int/lit8 v2, v2, 0x1

    goto :goto_295

    .line 2698
    .end local v2    # "i":I
    :cond_2ad
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2ae
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15}, Landroid/util/SparseBooleanArray;->size()I

    move-result v15

    if-ge v2, v15, :cond_2c6

    .line 2699
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v15, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 2698
    add-int/lit8 v2, v2, 0x1

    goto :goto_2ae

    .line 2701
    .end local v2    # "i":I
    :cond_2c6
    invoke-virtual {v14}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2ca
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_33f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 2702
    .local v15, "user":I
    move-object/from16 v21, v2

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 2703
    .local v2, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v2, :cond_2eb

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v22

    goto :goto_2ed

    :cond_2eb
    const-wide/16 v22, 0x0

    :goto_2ed
    move-wide/from16 v24, v22

    .line 2704
    .local v24, "time":J
    move-object/from16 v22, v2

    .end local v2    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .local v22, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    .line 2705
    .local v2, "pendingSend":Z
    move-wide/from16 v26, v3

    .end local v3    # "nextNonWakeupRTC":J
    .local v26, "nextNonWakeupRTC":J
    const-string v3, "    user:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 2706
    const-string v3, " pendingSend:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 2707
    const-string v3, " time:"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-wide/from16 v3, v24

    .end local v24    # "time":J
    .local v3, "time":J
    invoke-virtual {v10, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 2708
    const-wide/16 v16, 0x0

    cmp-long v23, v3, v16

    if-lez v23, :cond_335

    .line 2709
    move/from16 v23, v2

    .end local v2    # "pendingSend":Z
    .local v23, "pendingSend":Z
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2710
    const-string v2, " = "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v3, v4, v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    goto :goto_337

    .line 2708
    .end local v23    # "pendingSend":Z
    .restart local v2    # "pendingSend":Z
    :cond_335
    move/from16 v23, v2

    .line 2712
    .end local v2    # "pendingSend":Z
    .restart local v23    # "pendingSend":Z
    :goto_337
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2713
    .end local v3    # "time":J
    .end local v15    # "user":I
    .end local v22    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local v23    # "pendingSend":Z
    move-object/from16 v2, v21

    move-wide/from16 v3, v26

    goto :goto_2ca

    .line 2714
    .end local v26    # "nextNonWakeupRTC":J
    .local v3, "nextNonWakeupRTC":J
    :cond_33f
    move-wide/from16 v26, v3

    const-wide/16 v16, 0x0

    .end local v3    # "nextNonWakeupRTC":J
    .restart local v26    # "nextNonWakeupRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3af

    .line 2715
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2716
    const-string v2, "  Pending alarm batches: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2717
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2718
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_362
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    move-object v4, v2

    .line 2719
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const/16 v2, 0x3a

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(C)V

    .line 2720
    iget-object v3, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    const-string v21, "    "

    move-object/from16 v2, p1

    move-wide/from16 v22, v26

    .end local v26    # "nextNonWakeupRTC":J
    .local v22, "nextNonWakeupRTC":J
    move-object/from16 v24, v4

    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .local v24, "b":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v4, v21

    move-object/from16 v21, v14

    move-object/from16 v25, v15

    move-wide/from16 v14, v16

    move-wide/from16 v16, v5

    .end local v5    # "nextWakeupRTC":J
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v16, "nextWakeupRTC":J
    .local v21, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    move-wide v5, v12

    move-wide/from16 v26, v7

    .end local v7    # "nowRTC":J
    .local v26, "nowRTC":J
    move-object/from16 v28, v9

    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .local v28, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2721
    .end local v24    # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide/from16 v5, v16

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    move-wide/from16 v16, v14

    move-object/from16 v14, v21

    move-wide/from16 v26, v22

    move-object/from16 v15, v25

    goto :goto_362

    .line 2718
    .end local v16    # "nextWakeupRTC":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nextNonWakeupRTC":J
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v26, "nextNonWakeupRTC":J
    :cond_3a2
    move-object/from16 v28, v9

    move-object/from16 v21, v14

    move-wide/from16 v14, v16

    move-wide/from16 v22, v26

    move-wide/from16 v16, v5

    move-wide/from16 v26, v7

    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nowRTC":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16    # "nextWakeupRTC":J
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v22    # "nextNonWakeupRTC":J
    .local v26, "nowRTC":J
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    goto :goto_3bb

    .line 2714
    .end local v16    # "nextWakeupRTC":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nextNonWakeupRTC":J
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v5    # "nextWakeupRTC":J
    .restart local v7    # "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v26, "nextNonWakeupRTC":J
    :cond_3af
    move-object/from16 v28, v9

    move-object/from16 v21, v14

    move-wide/from16 v14, v16

    move-wide/from16 v22, v26

    move-wide/from16 v16, v5

    move-wide/from16 v26, v7

    .line 2723
    .end local v5    # "nextWakeupRTC":J
    .end local v7    # "nowRTC":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v14    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v16    # "nextWakeupRTC":J
    .restart local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v22    # "nextNonWakeupRTC":J
    .local v26, "nowRTC":J
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_3bb
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2724
    const-string v2, "  Pending user blocked background alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2725
    const/4 v2, 0x0

    .line 2726
    .local v2, "blocked":Z
    const/4 v3, 0x0

    move/from16 v24, v2

    move v9, v3

    .end local v2    # "blocked":Z
    .local v9, "i":I
    .local v24, "blocked":Z
    :goto_3c8
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_3fa

    .line 2727
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    move-object/from16 v25, v2

    .line 2728
    .local v25, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v25, :cond_3f5

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3f5

    .line 2729
    const/16 v24, 0x1

    .line 2730
    const-string v4, "    "

    move-object/from16 v2, p1

    move-object/from16 v3, v25

    move-wide v5, v12

    move-wide/from16 v7, v26

    move/from16 v29, v9

    .end local v9    # "i":I
    .local v29, "i":I
    move-object/from16 v9, v28

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_3f7

    .line 2728
    .end local v29    # "i":I
    .restart local v9    # "i":I
    :cond_3f5
    move/from16 v29, v9

    .line 2726
    .end local v9    # "i":I
    .end local v25    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v29    # "i":I
    :goto_3f7
    add-int/lit8 v9, v29, 0x1

    .end local v29    # "i":I
    .restart local v9    # "i":I
    goto :goto_3c8

    :cond_3fa
    move/from16 v29, v9

    .line 2733
    .end local v9    # "i":I
    if-nez v24, :cond_403

    .line 2734
    const-string v2, "    none"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    :cond_403
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2737
    const-string v2, "  Pending alarms per uid: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2738
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_40c
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_435

    .line 2739
    if-lez v2, :cond_41b

    .line 2740
    const-string v3, ", "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2742
    :cond_41b
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2743
    const-string v3, ":"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2744
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 2738
    add-int/lit8 v2, v2, 0x1

    goto :goto_40c

    .line 2746
    .end local v2    # "i":I
    :cond_435
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2747
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2749
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3, v12, v13}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 2751
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v2, :cond_450

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_48e

    .line 2752
    :cond_450
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2753
    const-string v2, "    Idle mode state:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2754
    const-string v2, "      Idling until: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2755
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_475

    .line 2756
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2757
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "        "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_47b

    .line 2759
    :cond_475
    const-string/jumbo v2, "null"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2761
    :goto_47b
    const-string v2, "      Pending alarms:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2762
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    const-string v4, "      "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2764
    :cond_48e
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_4ad

    .line 2765
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2766
    const-string v2, "  Next wake from idle: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2767
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-string v4, "    "

    move-object/from16 v3, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/AlarmManagerService$Alarm;->dump(Ljava/io/PrintWriter;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    .line 2770
    :cond_4ad
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2771
    const-string v2, "  Past-due non-wakeup alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2772
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4d5

    .line 2773
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2774
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    const-string v4, "    "

    move-object/from16 v2, p1

    move-wide v5, v12

    move-wide/from16 v7, v26

    move-object/from16 v9, v28

    invoke-static/range {v2 .. v9}, Lcom/android/server/AlarmManagerService;->dumpAlarmList(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;JJLjava/text/SimpleDateFormat;)V

    goto :goto_4da

    .line 2776
    :cond_4d5
    const-string v2, "(none)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2778
    :goto_4da
    const-string v2, "    Number of delayed alarms: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2779
    const-string v2, ", total delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2780
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2781
    const-string v2, "    Max delay time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2782
    const-string v2, ", max non-interactive time: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2783
    iget-wide v2, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2784
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2786
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2787
    const-string v2, "  Broadcast ref count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2788
    const-string v2, "  PendingIntent send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2789
    const-string v2, "  PendingIntent finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2790
    const-string v2, "  Listener send count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2791
    const-string v2, "  Listener finish count: "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 2792
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2794
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_572

    .line 2795
    const-string v2, "Outstanding deliveries:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2796
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_54e
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_56f

    .line 2797
    const-string v3, "   #"

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2798
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2796
    add-int/lit8 v2, v2, 0x1

    goto :goto_54e

    .line 2800
    .end local v2    # "i":I
    :cond_56f
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2803
    :cond_572
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    if-lez v2, :cond_5c5

    .line 2804
    const-string v2, "  Last allow while idle dispatch times:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2805
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_580
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5c5

    .line 2806
    const-string v3, "    UID "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2807
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 2808
    .local v3, "uid":I
    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2809
    const-string v4, ": "

    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2810
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 2811
    .local v4, "lastTime":J
    invoke-static {v4, v5, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2813
    invoke-direct {v1, v3}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    .line 2814
    .local v6, "minInterval":J
    const-string v8, "  Next allowed:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2815
    add-long v8, v4, v6

    invoke-static {v8, v9, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2816
    const-string v8, " ("

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2817
    invoke-static {v6, v7, v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2818
    const-string v8, ")"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2820
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2805
    .end local v3    # "uid":I
    .end local v4    # "lastTime":J
    .end local v6    # "minInterval":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_580

    .line 2824
    .end local v2    # "i":I
    :cond_5c5
    const-string v2, "  mUseAllowWhileIdleShortTime: ["

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_5cb
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_5ec

    .line 2826
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_5e9

    .line 2827
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-static {v10, v3}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2828
    const-string v3, " "

    invoke-virtual {v10, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2825
    :cond_5e9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5cb

    .line 2831
    .end local v2    # "i":I
    :cond_5ec
    const-string v2, "]"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2832
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2834
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-string v3, "  Recent problems"

    const-string v4, "    "

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/internal/util/LocalLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_603

    .line 2835
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2838
    :cond_603
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2839
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$5;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$5;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 2850
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 2852
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_60e
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_684

    .line 2853
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 2854
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_61f
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_67d

    .line 2855
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2856
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v9, 0x0

    .local v9, "is":I
    :goto_62c
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14}, Landroid/util/ArrayMap;->size()I

    move-result v14

    if-ge v9, v14, :cond_674

    .line 2857
    iget-object v14, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v14, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2858
    .local v14, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v15, 0x0

    if-lez v4, :cond_643

    .line 2859
    invoke-static {v2, v15, v4, v14, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v15

    :cond_643
    nop

    .line 2860
    .local v15, "pos":I
    if-gez v15, :cond_64c

    .line 2861
    move-object/from16 v25, v6

    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .local v25, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    neg-int v6, v15

    add-int/lit8 v15, v6, -0x1

    goto :goto_64e

    .line 2860
    .end local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_64c
    move-object/from16 v25, v6

    .line 2863
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :goto_64e
    array-length v6, v2

    if-ge v15, v6, :cond_669

    .line 2864
    array-length v6, v2

    sub-int/2addr v6, v15

    add-int/lit8 v6, v6, -0x1

    .line 2865
    .local v6, "copylen":I
    if-lez v6, :cond_65f

    .line 2866
    move-object/from16 v30, v8

    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v30, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    add-int/lit8 v8, v15, 0x1

    invoke-static {v2, v15, v2, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_661

    .line 2865
    .end local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_65f
    move-object/from16 v30, v8

    .line 2868
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :goto_661
    aput-object v14, v2, v15

    .line 2869
    array-length v8, v2

    if-ge v4, v8, :cond_66b

    .line 2870
    add-int/lit8 v4, v4, 0x1

    goto :goto_66b

    .line 2863
    .end local v6    # "copylen":I
    .end local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_669
    move-object/from16 v30, v8

    .line 2856
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v15    # "pos":I
    .restart local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_66b
    :goto_66b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v6, v25

    move-object/from16 v8, v30

    const-wide/16 v14, 0x0

    goto :goto_62c

    .end local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v30    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    :cond_674
    move-object/from16 v25, v6

    move-object/from16 v30, v8

    .line 2854
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "is":I
    .restart local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v14, 0x0

    goto :goto_61f

    .end local v25    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .restart local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    :cond_67d
    move-object/from16 v25, v6

    .line 2852
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    add-int/lit8 v5, v5, 0x1

    const-wide/16 v14, 0x0

    goto :goto_60e

    .line 2876
    .end local v5    # "iu":I
    :cond_684
    if-lez v4, :cond_6e2

    .line 2877
    const-string v5, "  Top Alarms:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2878
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_68c
    if-ge v5, v4, :cond_6e2

    .line 2879
    aget-object v6, v2, v5

    .line 2880
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v7, "    "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2881
    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v7, :cond_69e

    const-string v7, "*ACTIVE* "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2882
    :cond_69e
    iget-wide v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v7, v8, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2883
    const-string v7, " running, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2884
    const-string v7, " wakeups, "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 2885
    const-string v7, " alarms: "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v7}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2886
    const-string v7, ":"

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v7, v7, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2887
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2888
    const-string v7, "      "

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, v6, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2889
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2878
    .end local v6    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v5, v5, 0x1

    goto :goto_68c

    .line 2893
    .end local v5    # "i":I
    :cond_6e2
    const-string v5, " "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    const-string v5, "  Alarm Stats:"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2896
    .local v5, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v6, 0x0

    .local v6, "iu":I
    :goto_6f2
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_7cd

    .line 2897
    iget-object v7, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 2898
    .local v7, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v8, 0x0

    .local v8, "ip":I
    :goto_703
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_7c5

    .line 2899
    invoke-virtual {v7, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 2900
    .local v9, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-string v14, "  "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2901
    iget v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-lez v14, :cond_71d

    const-string v14, "*ACTIVE* "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2902
    :cond_71d
    iget v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    invoke-static {v10, v14}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 2903
    const-string v14, ":"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2904
    iget-object v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2905
    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->aggregateTime:J

    invoke-static {v14, v15, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2906
    const-string v14, " running, "

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v14, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2907
    const-string v14, " wakeups:"

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2908
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 2909
    const/4 v14, 0x0

    .local v14, "is":I
    :goto_749
    iget-object v15, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v15

    if-ge v14, v15, :cond_75f

    .line 2910
    iget-object v15, v9, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v5, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2909
    add-int/lit8 v14, v14, 0x1

    goto :goto_749

    .line 2912
    .end local v14    # "is":I
    :cond_75f
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2913
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_763
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v14, v15, :cond_7bd

    .line 2914
    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 2915
    .local v15, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v25, v2

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v25, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    const-string v2, "    "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2916
    iget v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->nesting:I

    if-lez v2, :cond_77f

    const-string v2, "*ACTIVE* "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2917
    :cond_77f
    move-object/from16 v30, v3

    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v30, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    iget-wide v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    invoke-static {v2, v3, v10}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 2918
    const-string v2, " "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->numWakeup:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2919
    const-string v2, " wakes "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->count:I

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 2920
    const-string v2, " alarms, last "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2921
    iget-wide v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->lastTime:J

    invoke-static {v2, v3, v12, v13, v10}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 2922
    const-string v2, ":"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    const-string v2, "      "

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2924
    iget-object v2, v15, Lcom/android/server/AlarmManagerService$FilterStats;->mTag:Ljava/lang/String;

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2925
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2913
    .end local v15    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, v25

    move-object/from16 v3, v30

    goto :goto_763

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_7bd
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    .line 2898
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v9    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v14    # "i":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_703

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_7c5
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    .line 2896
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v8    # "ip":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_6f2

    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_7cd
    move-object/from16 v25, v2

    move-object/from16 v30, v3

    .line 2929
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v6    # "iu":I
    .restart local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2930
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const-string v3, "  "

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/util/StatLogger;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2958
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v2, :cond_846

    .line 2959
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2960
    const-string v2, "  Recent Wakeup History:"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2961
    const-wide/16 v2, -0x1

    .line 2962
    .local v2, "last":J
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7ef
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_840

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 2963
    .local v7, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-string v8, "    "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/util/Date;

    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    invoke-direct {v8, v14, v15}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v9, v28

    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .local v9, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2964
    const/16 v8, 0x7c

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 2965
    const-wide/16 v14, 0x0

    cmp-long v28, v2, v14

    if-gez v28, :cond_821

    .line 2966
    const/16 v14, 0x30

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_827

    .line 2968
    :cond_821
    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    sub-long/2addr v14, v2

    invoke-virtual {v10, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 2970
    :goto_827
    iget-wide v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    move-wide v2, v14

    .line 2971
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    iget v14, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    invoke-virtual {v10, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 2972
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(C)V

    iget-object v8, v7, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2973
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 2974
    .end local v7    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    move-object/from16 v28, v9

    goto :goto_7ef

    .line 2975
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_840
    move-object/from16 v9, v28

    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_848

    .line 2958
    .end local v2    # "last":J
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v28    # "sdf":Ljava/text/SimpleDateFormat;
    :cond_846
    move-object/from16 v9, v28

    .line 2978
    .end local v28    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    :goto_848
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mGmsManager:Lcom/android/server/GmsAlarmManager;

    if-eqz v2, :cond_851

    .line 2979
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mGmsManager:Lcom/android/server/GmsAlarmManager;

    invoke-virtual {v2, v10}, Lcom/android/server/GmsAlarmManager;->doDump(Ljava/io/PrintWriter;)V

    .line 2983
    :cond_851
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v2, v10}, Lcom/android/server/SamsungAlarmManagerService;->dumpRecentAlarmClockInfo(Ljava/io/PrintWriter;)V

    .line 2986
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    const-string v3, ""

    invoke-virtual {v2, v10, v3}, Lcom/android/server/AppSyncWrapper;->doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2988
    .end local v4    # "len":I
    .end local v5    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "nowELAPSED":J
    .end local v16    # "nextWakeupRTC":J
    .end local v18    # "ssm":Lcom/android/server/SystemServiceManager;
    .end local v19    # "nowUPTIME":J
    .end local v21    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v22    # "nextNonWakeupRTC":J
    .end local v24    # "blocked":Z
    .end local v25    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v26    # "nowRTC":J
    .end local v30    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    monitor-exit v11

    .line 2989
    return-void

    .line 2628
    .local v2, "i":I
    .local v7, "nowRTC":J
    .restart local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .restart local v12    # "nowELAPSED":J
    .local v14, "nowUPTIME":J
    :cond_85f
    move-wide/from16 v26, v7

    move-wide/from16 v19, v14

    .end local v7    # "nowRTC":J
    .end local v14    # "nowUPTIME":J
    .restart local v19    # "nowUPTIME":J
    .restart local v26    # "nowRTC":J
    goto/16 :goto_fa

    .line 2988
    .end local v2    # "i":I
    .end local v9    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v12    # "nowELAPSED":J
    .end local v19    # "nowUPTIME":J
    .end local v26    # "nowRTC":J
    :catchall_865
    move-exception v0

    move-object v2, v0

    monitor-exit v11
    :try_end_868
    .catchall {:try_start_7 .. :try_end_868} :catchall_865

    throw v2
.end method

.method dumpProto(Ljava/io/FileDescriptor;)V
    .registers 30
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 2992
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v11, v0

    .line 2994
    .local v11, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v12, v1, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2995
    :try_start_d
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    move-wide v13, v3

    .line 2996
    .local v13, "nowRTC":J
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v3

    move-wide v9, v3

    .line 2997
    .local v9, "nowElapsed":J
    const-wide v3, 0x10300000001L

    invoke-virtual {v11, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2998
    const-wide v7, 0x10300000002L

    invoke-virtual {v11, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 2999
    iget-wide v3, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeClockTime:J

    const-wide v5, 0x10300000003L

    invoke-virtual {v11, v5, v6, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3001
    const-wide v3, 0x10300000004L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastTimeChangeRealtime:J

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3004
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    const-wide v3, 0x10b00000005L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AlarmManagerService$Constants;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3006
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    if-eqz v0, :cond_57

    .line 3007
    iget-object v0, v1, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v11, v3, v4}, Lcom/android/server/AppStateTracker;->dumpProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3010
    :cond_57
    const-wide v3, 0x10800000007L

    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3011
    iget-boolean v0, v1, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-nez v0, :cond_95

    .line 3013
    const-wide v3, 0x10300000008L

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3015
    const-wide v3, 0x10300000009L

    .line 3016
    invoke-virtual {v1, v9, v10}, Lcom/android/server/AlarmManagerService;->currentNonWakeupFuzzLocked(J)J

    move-result-wide v7

    .line 3015
    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3017
    const-wide v3, 0x1030000000aL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastAlarmDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3019
    const-wide v3, 0x1030000000bL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3023
    :cond_95
    const-wide v3, 0x1030000000cL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3025
    const-wide v3, 0x1030000000dL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    sub-long/2addr v7, v9

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3027
    const-wide v3, 0x1030000000eL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mLastWakeup:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3029
    const-wide v3, 0x1030000000fL

    iget-wide v7, v1, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    sub-long v7, v9, v7

    invoke-virtual {v11, v3, v4, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3031
    const-wide v3, 0x10300000010L

    iget v0, v1, Lcom/android/server/AlarmManagerService;->mNumTimeChanged:I

    invoke-virtual {v11, v3, v4, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3033
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 3034
    .local v0, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v7, v3

    .line 3035
    .local v7, "nextAlarmClockForUserSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_da
    if-ge v3, v7, :cond_ec

    .line 3036
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3035
    add-int/lit8 v3, v3, 0x1

    goto :goto_da

    .line 3038
    .end local v3    # "i":I
    :cond_ec
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    .line 3039
    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    move v8, v3

    .line 3040
    .local v8, "pendingSendNextAlarmClockChangedForUserSize":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_f4
    if-ge v3, v8, :cond_106

    .line 3041
    iget-object v4, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 3040
    add-int/lit8 v3, v3, 0x1

    goto :goto_f4

    .line 3043
    .end local v3    # "i":I
    :cond_106
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3044
    .local v4, "user":I
    iget-object v15, v1, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v15, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/AlarmManager$AlarmClockInfo;

    .line 3045
    .local v15, "next":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v15, :cond_129

    invoke-virtual {v15}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v21

    goto :goto_12b

    :cond_129
    const-wide/16 v21, 0x0

    :goto_12b
    move-wide/from16 v23, v21

    .line 3046
    .local v23, "time":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mPendingSendNextAlarmClockChangedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    .line 3047
    .local v5, "pendingSend":Z
    move-object v6, v3

    const-wide v2, 0x20b00000012L

    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 3048
    .local v2, "aToken":J
    move-object/from16 v25, v6

    move/from16 v16, v7

    const-wide v6, 0x10500000001L

    .end local v7    # "nextAlarmClockForUserSize":I
    .local v16, "nextAlarmClockForUserSize":I
    invoke-virtual {v11, v6, v7, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3049
    const-wide v6, 0x10800000002L

    invoke-virtual {v11, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 3050
    move-wide/from16 v17, v13

    move-wide/from16 v6, v23

    const-wide v13, 0x10300000003L

    .end local v13    # "nowRTC":J
    .end local v23    # "time":J
    .local v6, "time":J
    .local v17, "nowRTC":J
    invoke-virtual {v11, v13, v14, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3051
    invoke-virtual {v11, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3052
    .end local v2    # "aToken":J
    .end local v4    # "user":I
    .end local v5    # "pendingSend":Z
    .end local v6    # "time":J
    .end local v15    # "next":Landroid/app/AlarmManager$AlarmClockInfo;
    move-object/from16 v2, p1

    move-wide v5, v13

    move/from16 v7, v16

    move-wide/from16 v13, v17

    move-object/from16 v3, v25

    goto :goto_10a

    .line 3053
    .end local v16    # "nextAlarmClockForUserSize":I
    .end local v17    # "nowRTC":J
    .restart local v7    # "nextAlarmClockForUserSize":I
    .restart local v13    # "nowRTC":J
    :cond_16a
    move/from16 v16, v7

    move-wide/from16 v17, v13

    const-wide v6, 0x10500000001L

    const-wide v13, 0x10300000003L

    .end local v7    # "nextAlarmClockForUserSize":I
    .end local v13    # "nowRTC":J
    .restart local v16    # "nextAlarmClockForUserSize":I
    .restart local v17    # "nowRTC":J
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1ac

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Batch;

    .line 3054
    .local v3, "b":Lcom/android/server/AlarmManagerService$Batch;
    const-wide v21, 0x20b00000013L

    move-object v4, v11

    move-wide v13, v6

    move-wide/from16 v5, v21

    move/from16 v15, v16

    move/from16 v16, v8

    .end local v8    # "pendingSendNextAlarmClockChangedForUserSize":I
    .local v15, "nextAlarmClockForUserSize":I
    .local v16, "pendingSendNextAlarmClockChangedForUserSize":I
    move-wide v7, v9

    move-wide/from16 v19, v9

    .end local v9    # "nowElapsed":J
    .local v19, "nowElapsed":J
    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Batch;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3056
    .end local v3    # "b":Lcom/android/server/AlarmManagerService$Batch;
    move-wide v6, v13

    move/from16 v8, v16

    move-wide/from16 v9, v19

    const-wide v13, 0x10300000003L

    move/from16 v16, v15

    goto :goto_17e

    .line 3057
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v19    # "nowElapsed":J
    .restart local v8    # "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v9    # "nowElapsed":J
    .local v16, "nextAlarmClockForUserSize":I
    :cond_1ac
    move-wide v13, v6

    move-wide/from16 v19, v9

    move/from16 v15, v16

    move/from16 v16, v8

    .end local v8    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v9    # "nowElapsed":J
    .restart local v15    # "nextAlarmClockForUserSize":I
    .local v16, "pendingSendNextAlarmClockChangedForUserSize":I
    .restart local v19    # "nowElapsed":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b4
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e9

    .line 3058
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    move-object/from16 v21, v3

    .line 3059
    .local v21, "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v21, :cond_1e6

    .line 3060
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_1cc
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1e6

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3061
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000014L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3064
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_1cc

    .line 3057
    .end local v21    # "blockedAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_1e6
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b4

    .line 3067
    .end local v2    # "i":I
    :cond_1e9
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_1fc

    .line 3068
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000015L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3071
    :cond_1fc
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_202
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_21c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3072
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000016L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3074
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_202

    .line 3075
    :cond_21c
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_22f

    .line 3076
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const-wide v5, 0x10b00000017L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3080
    :cond_22f
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_235
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3081
    .restart local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    const-wide v5, 0x20b00000018L

    move-object v4, v11

    move-wide/from16 v7, v19

    move-wide/from16 v9, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/AlarmManagerService$Alarm;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 3083
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    goto :goto_235

    .line 3085
    :cond_24f
    const-wide v2, 0x10500000019L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mNumDelayedAlarms:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3086
    const-wide v2, 0x1030000001aL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3087
    const-wide v2, 0x1030000001bL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3088
    const-wide v2, 0x1030000001cL

    iget-wide v4, v1, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    invoke-virtual {v11, v2, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3091
    const-wide v2, 0x1050000001dL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3092
    const-wide v2, 0x1050000001eL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mSendCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3093
    const-wide v2, 0x1050000001fL

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mSendFinishCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3094
    const-wide v2, 0x10500000020L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mListenerCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3095
    const-wide v2, 0x10500000021L

    iget v4, v1, Lcom/android/server/AlarmManagerService;->mListenerFinishCount:I

    invoke-virtual {v11, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3097
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mInFlight:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2af
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$InFlight;

    .line 3098
    .local v3, "f":Lcom/android/server/AlarmManagerService$InFlight;
    const-wide v4, 0x20b00000022L

    invoke-virtual {v3, v11, v4, v5}, Lcom/android/server/AlarmManagerService$InFlight;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3099
    .end local v3    # "f":Lcom/android/server/AlarmManagerService$InFlight;
    goto :goto_2af

    .line 3101
    :cond_2c4
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2c5
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_307

    .line 3102
    const-wide v3, 0x20b00000024L

    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 3104
    .local v3, "token":J
    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v5

    .line 3105
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    .line 3107
    .local v6, "lastTime":J
    invoke-virtual {v11, v13, v14, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3108
    const-wide v8, 0x10300000002L

    invoke-virtual {v11, v8, v9, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3109
    nop

    .line 3110
    invoke-direct {v1, v5}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v21

    add-long v8, v6, v21

    .line 3109
    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3111
    invoke-virtual {v11, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3101
    .end local v3    # "token":J
    .end local v5    # "uid":I
    .end local v6    # "lastTime":J
    add-int/lit8 v2, v2, 0x1

    const-wide v13, 0x10500000001L

    goto :goto_2c5

    :cond_307
    const-wide v13, 0x10300000003L

    .line 3114
    .end local v2    # "i":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_30d
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_32e

    .line 3115
    iget-object v3, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v3

    if-eqz v3, :cond_32b

    .line 3116
    const-wide v3, 0x20500000023L

    iget-object v5, v1, Lcom/android/server/AlarmManagerService;->mUseAllowWhileIdleShortTime:Landroid/util/SparseBooleanArray;

    .line 3117
    invoke-virtual {v5, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 3116
    invoke-virtual {v11, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3114
    :cond_32b
    add-int/lit8 v2, v2, 0x1

    goto :goto_30d

    .line 3121
    .end local v2    # "i":I
    :cond_32e
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mLog:Lcom/android/internal/util/LocalLog;

    const-wide v3, 0x10b00000025L

    invoke-virtual {v2, v11, v3, v4}, Lcom/android/internal/util/LocalLog;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3123
    const/16 v2, 0xa

    new-array v2, v2, [Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3124
    .local v2, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    new-instance v3, Lcom/android/server/AlarmManagerService$6;

    invoke-direct {v3, v1}, Lcom/android/server/AlarmManagerService$6;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 3135
    .local v3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v4, 0x0

    .line 3137
    .local v4, "len":I
    const/4 v5, 0x0

    .local v5, "iu":I
    :goto_343
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3b9

    .line 3138
    iget-object v6, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/ArrayMap;

    .line 3139
    .local v6, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v7, 0x0

    .local v7, "ip":I
    :goto_354
    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v8

    if-ge v7, v8, :cond_3af

    .line 3140
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3141
    .local v8, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const/4 v9, 0x0

    .local v9, "is":I
    :goto_361
    iget-object v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_3a5

    .line 3142
    iget-object v10, v8, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3143
    .local v10, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    const/4 v13, 0x0

    if-lez v4, :cond_378

    .line 3144
    invoke-static {v2, v13, v4, v10, v3}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;IILjava/lang/Object;Ljava/util/Comparator;)I

    move-result v13

    :cond_378
    nop

    .line 3145
    .local v13, "pos":I
    if-gez v13, :cond_37e

    .line 3146
    neg-int v14, v13

    add-int/lit8 v13, v14, -0x1

    .line 3148
    :cond_37e
    array-length v14, v2

    if-ge v13, v14, :cond_399

    .line 3149
    array-length v14, v2

    sub-int/2addr v14, v13

    add-int/lit8 v14, v14, -0x1

    .line 3150
    .local v14, "copylen":I
    if-lez v14, :cond_38f

    .line 3151
    move-object/from16 v23, v0

    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .local v23, "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v13, 0x1

    invoke-static {v2, v13, v2, v0, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_391

    .line 3150
    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_38f
    move-object/from16 v23, v0

    .line 3153
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :goto_391
    aput-object v10, v2, v13

    .line 3154
    array-length v0, v2

    if-ge v4, v0, :cond_39b

    .line 3155
    add-int/lit8 v4, v4, 0x1

    goto :goto_39b

    .line 3148
    .end local v14    # "copylen":I
    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_399
    move-object/from16 v23, v0

    .line 3141
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v10    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v13    # "pos":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_39b
    :goto_39b
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v23

    const-wide v13, 0x10300000003L

    goto :goto_361

    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3a5
    move-object/from16 v23, v0

    .line 3139
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v8    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v9    # "is":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v13, 0x10300000003L

    goto :goto_354

    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3af
    move-object/from16 v23, v0

    .line 3137
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v6    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v7    # "ip":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    add-int/lit8 v5, v5, 0x1

    const-wide v13, 0x10300000003L

    goto :goto_343

    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .restart local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    :cond_3b9
    move-object/from16 v23, v0

    .line 3161
    .end local v0    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v5    # "iu":I
    .restart local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3bc
    const-wide v5, 0x10900000002L

    if-ge v0, v4, :cond_3ef

    .line 3162
    const-wide v7, 0x20b00000026L

    invoke-virtual {v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 3163
    .local v7, "token":J
    aget-object v9, v2, v0

    .line 3165
    .local v9, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    iget-object v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget v10, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->mUid:I

    const-wide v13, 0x10500000001L

    invoke-virtual {v11, v13, v14, v10}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3166
    iget-object v10, v9, Lcom/android/server/AlarmManagerService$FilterStats;->mBroadcastStats:Lcom/android/server/AlarmManagerService$BroadcastStats;

    iget-object v10, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v5, v6, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3168
    const-wide v5, 0x10b00000003L

    invoke-virtual {v9, v11, v5, v6}, Lcom/android/server/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3170
    invoke-virtual {v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3161
    .end local v7    # "token":J
    .end local v9    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    add-int/lit8 v0, v0, 0x1

    goto :goto_3bc

    .line 3173
    .end local v0    # "i":I
    :cond_3ef
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3174
    .local v0, "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const/4 v7, 0x0

    .local v7, "iu":I
    :goto_3f5
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_481

    .line 3175
    iget-object v8, v1, Lcom/android/server/AlarmManagerService;->mBroadcastStats:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/ArrayMap;

    .line 3176
    .local v8, "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    const/4 v9, 0x0

    .local v9, "ip":I
    :goto_406
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ge v9, v10, :cond_474

    .line 3177
    const-wide v13, 0x20b00000027L

    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 3179
    .local v13, "token":J
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/AlarmManagerService$BroadcastStats;

    .line 3180
    .local v10, "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    const-wide v5, 0x10b00000001L

    invoke-virtual {v10, v11, v5, v6}, Lcom/android/server/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3183
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3184
    const/4 v5, 0x0

    .local v5, "is":I
    :goto_427
    iget-object v6, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_43d

    .line 3185
    iget-object v6, v10, Lcom/android/server/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3184
    add-int/lit8 v5, v5, 0x1

    goto :goto_427

    .line 3187
    .end local v5    # "is":I
    :cond_43d
    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 3188
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_444
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_461

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$FilterStats;

    .line 3189
    .local v6, "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .local v26, "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .local v27, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    const-wide v2, 0x20b00000002L

    invoke-virtual {v6, v11, v2, v3}, Lcom/android/server/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 3190
    .end local v6    # "fs":Lcom/android/server/AlarmManagerService$FilterStats;
    move-object/from16 v2, v26

    move-object/from16 v3, v27

    goto :goto_444

    .line 3192
    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_461
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    invoke-virtual {v11, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3176
    .end local v10    # "bs":Lcom/android/server/AlarmManagerService$BroadcastStats;
    .end local v13    # "token":J
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    const-wide v5, 0x10900000002L

    goto :goto_406

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_474
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .line 3174
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v8    # "uidStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/AlarmManagerService$BroadcastStats;>;"
    .end local v9    # "ip":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    add-int/lit8 v7, v7, 0x1

    const-wide v5, 0x10900000002L

    goto/16 :goto_3f5

    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .restart local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_481
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .line 3214
    .end local v2    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v3    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v7    # "iu":I
    .restart local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .restart local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    sget-boolean v2, Lcom/android/server/AlarmManagerService;->WAKEUP_STATS:Z

    if-eqz v2, :cond_4c6

    .line 3215
    iget-object v2, v1, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_48f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4c6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$WakeupEvent;

    .line 3216
    .local v3, "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    const-wide v5, 0x20b00000029L

    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 3217
    .local v5, "token":J
    iget v7, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->uid:I

    const-wide v8, 0x10500000001L

    invoke-virtual {v11, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3218
    iget-object v7, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->action:Ljava/lang/String;

    const-wide v13, 0x10900000002L

    invoke-virtual {v11, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 3219
    iget-wide v8, v3, Lcom/android/server/AlarmManagerService$WakeupEvent;->when:J

    const-wide v13, 0x10300000003L

    invoke-virtual {v11, v13, v14, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 3220
    invoke-virtual {v11, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 3221
    .end local v3    # "event":Lcom/android/server/AlarmManagerService$WakeupEvent;
    .end local v5    # "token":J
    goto :goto_48f

    .line 3223
    .end local v0    # "tmpFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    .end local v4    # "len":I
    .end local v15    # "nextAlarmClockForUserSize":I
    .end local v16    # "pendingSendNextAlarmClockChangedForUserSize":I
    .end local v17    # "nowRTC":J
    .end local v19    # "nowElapsed":J
    .end local v23    # "users":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Integer;>;"
    .end local v26    # "topFilters":[Lcom/android/server/AlarmManagerService$FilterStats;
    .end local v27    # "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/server/AlarmManagerService$FilterStats;>;"
    :cond_4c6
    monitor-exit v12
    :try_end_4c7
    .catchall {:try_start_d .. :try_end_4c7} :catchall_4cb

    .line 3225
    invoke-virtual {v11}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 3226
    return-void

    .line 3223
    :catchall_4cb
    move-exception v0

    :try_start_4cc
    monitor-exit v12
    :try_end_4cd
    .catchall {:try_start_4cc .. :try_end_4cd} :catchall_4cb

    throw v0
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1825
    :try_start_0
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->close()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_a

    .line 1827
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1828
    nop

    .line 1829
    return-void

    .line 1827
    :catchall_a
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1828
    throw v0
.end method

.method public findAlarmLocked(I)Z
    .registers 8
    .param p1, "hashCode"    # I

    .line 1428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_34

    .line 1429
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 1430
    .local v1, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v2

    .line 1431
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_16
    if-ge v3, v2, :cond_31

    .line 1432
    invoke-virtual {v1, v3}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v4

    .line 1433
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    if-nez v4, :cond_1f

    goto :goto_2e

    .line 1435
    :cond_1f
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-nez v5, :cond_24

    goto :goto_2e

    .line 1436
    :cond_24
    iget-object v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5}, Landroid/app/PendingIntent;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_2e

    const/4 v5, 0x1

    return v5

    .line 1431
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2e
    :goto_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1428
    .end local v1    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v2    # "N":I
    .end local v3    # "j":I
    :cond_31
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1439
    .end local v0    # "i":I
    :cond_34
    const/4 v0, 0x0

    return v0
.end method

.method getAlarm(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .line 1457
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1458
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_60

    .line 1459
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 1460
    .local v2, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v3

    .line 1461
    .local v3, "N":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_19
    if-ge v4, v3, :cond_5d

    .line 1462
    invoke-virtual {v2, v4}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v5

    .line 1463
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    if-nez v5, :cond_22

    goto :goto_5a

    .line 1464
    :cond_22
    iget-object v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v6, :cond_5a

    iget-object v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    iget-object v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1465
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_5a

    iget-object v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    .line 1466
    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1467
    invoke-virtual {v2, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1468
    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_58

    .line 1469
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1471
    :cond_58
    monitor-exit v0

    return-object v5

    .line 1461
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_5a
    :goto_5a
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 1458
    .end local v2    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "N":I
    .end local v4    # "j":I
    :cond_5d
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1475
    .end local v1    # "i":I
    :cond_60
    monitor-exit v0

    .line 1476
    const/4 v0, 0x0

    return-object v0

    .line 1475
    :catchall_63
    move-exception v1

    monitor-exit v0
    :try_end_65
    .catchall {:try_start_4 .. :try_end_65} :catchall_63

    throw v1
.end method

.method getNextAlarmClockImpl(I)Landroid/app/AlarmManager$AlarmClockInfo;
    .registers 4
    .param p1, "userId"    # I

    .line 3288
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3289
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextAlarmClockForUser:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager$AlarmClockInfo;

    monitor-exit v0

    return-object v1

    .line 3290
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method getNextAlarmClocksImpl(I)Ljava/util/List;
    .registers 12
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/AlarmManager$AlarmClockInfo;",
            ">;"
        }
    .end annotation

    .line 3295
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3296
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3297
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3298
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_40

    .line 3299
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v4, v4, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 3300
    .local v4, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3302
    .local v5, "M":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_20
    if-ge v6, v5, :cond_3d

    .line 3303
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3304
    .local v7, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 3305
    .local v8, "alarmUserId":I
    if-eq v8, p1, :cond_31

    .line 3306
    goto :goto_3a

    .line 3308
    :cond_31
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v9, :cond_3a

    .line 3309
    iget-object v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3302
    .end local v7    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "alarmUserId":I
    :cond_3a
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    .line 3298
    .end local v4    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v5    # "M":I
    .end local v6    # "j":I
    :cond_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 3313
    .end local v3    # "i":I
    :cond_40
    monitor-exit v0

    return-object v1

    .line 3314
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AlarmManager$AlarmClockInfo;>;"
    .end local v2    # "N":I
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_3 .. :try_end_44} :catchall_42

    throw v1
.end method

.method getNextWakeFromIdleTimeImpl()J
    .registers 4

    .line 3276
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3277
    :try_start_3
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v1, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    goto :goto_11

    :cond_c
    const-wide v1, 0x7fffffffffffffffL

    :goto_11
    monitor-exit v0

    return-wide v1

    .line 3278
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method getQuotaForBucketLocked(I)I
    .registers 4
    .param p1, "bucket"    # I

    .line 2114
    const/16 v0, 0xa

    if-gt p1, v0, :cond_6

    .line 2115
    const/4 v0, 0x0

    .local v0, "index":I
    goto :goto_19

    .line 2116
    .end local v0    # "index":I
    :cond_6
    const/16 v0, 0x14

    if-gt p1, v0, :cond_c

    .line 2117
    const/4 v0, 0x1

    .restart local v0    # "index":I
    goto :goto_19

    .line 2118
    .end local v0    # "index":I
    :cond_c
    const/16 v0, 0x1e

    if-gt p1, v0, :cond_12

    .line 2119
    const/4 v0, 0x2

    .restart local v0    # "index":I
    goto :goto_19

    .line 2120
    .end local v0    # "index":I
    :cond_12
    const/16 v0, 0x32

    if-ge p1, v0, :cond_18

    .line 2121
    const/4 v0, 0x3

    .restart local v0    # "index":I
    goto :goto_19

    .line 2123
    .end local v0    # "index":I
    :cond_18
    const/4 v0, 0x4

    .line 2125
    .restart local v0    # "index":I
    :goto_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-object v1, v1, Lcom/android/server/AlarmManagerService$Constants;->APP_STANDBY_QUOTAS:[I

    aget v1, v1, v0

    return v1
.end method

.method haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;)Z"
        }
    .end annotation

    .line 1081
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 1082
    return v1

    .line 1084
    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1085
    .local v0, "batchSize":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_d
    if-ge v2, v0, :cond_20

    .line 1086
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    iget-object v3, v3, Lcom/android/server/AlarmManagerService$Alarm;->listener:Landroid/app/IAlarmListener;

    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    if-ne v3, v4, :cond_1d

    .line 1087
    const/4 v1, 0x1

    return v1

    .line 1085
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1090
    .end local v2    # "j":I
    :cond_20
    return v1
.end method

.method haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;)Z"
        }
    .end annotation

    .line 1094
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1095
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 1096
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    iget-object v2, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1097
    const/4 v2, 0x1

    return v2

    .line 1095
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1100
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method interactiveStateChangedLocked(Z)V
    .registers 8
    .param p1, "interactive"    # Z

    .line 3870
    iget-boolean v0, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    if-eq v0, p1, :cond_56

    .line 3871
    iput-boolean p1, p0, Lcom/android/server/AlarmManagerService;->mInteractive:Z

    .line 3872
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3873
    .local v0, "nowELAPSED":J
    if-eqz p1, :cond_54

    .line 3874
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    .line 3875
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mStartCurrentDelayTime:J

    sub-long v2, v0, v2

    .line 3876
    .local v2, "thisDelayTime":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/AlarmManagerService;->mTotalDelayTime:J

    .line 3877
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    cmp-long v4, v4, v2

    if-gez v4, :cond_27

    .line 3878
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mMaxDelayTime:J

    .line 3880
    :cond_27
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3881
    .local v4, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/AlarmManagerService;->deliverAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 3882
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3884
    .end local v2    # "thisDelayTime":J
    .end local v4    # "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_37
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_49

    .line 3885
    sub-long v2, v0, v2

    .line 3886
    .local v2, "dur":J
    iget-wide v4, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_49

    .line 3887
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveTime:J

    .line 3891
    .end local v2    # "dur":J
    :cond_49
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    new-instance v3, Lcom/android/server/-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk;

    invoke-direct {v3, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$gKXZ864LsHRTGbnNeLAgHKL2YPk;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$AlarmHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_56

    .line 3894
    :cond_54
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNonInteractiveStartTime:J

    .line 3897
    .end local v0    # "nowELAPSED":J
    :cond_56
    :goto_56
    return-void
.end method

.method public synthetic lambda$interactiveStateChangedLocked$5$AlarmManagerService()V
    .registers 4

    .line 3892
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public synthetic lambda$removeLocked$2$AlarmManagerService(Ljava/lang/String;Landroid/util/MutableBoolean;Lcom/android/server/AlarmManagerService$Alarm;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "removedNextWakeFromIdle"    # Landroid/util/MutableBoolean;
    .param p3, "a"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 3660
    invoke-virtual {p3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 3661
    .local v0, "didMatch":Z
    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne p3, v1, :cond_d

    .line 3662
    const/4 v1, 0x1

    iput-boolean v1, p2, Landroid/util/MutableBoolean;->value:Z

    .line 3664
    :cond_d
    return v0
.end method

.method lookForPackageLocked(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3900
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1c

    .line 3901
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Batch;

    .line 3902
    .local v1, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Batch;->hasPackage(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3903
    return v2

    .line 3900
    .end local v1    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3906
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_37

    .line 3907
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3908
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v1, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 3909
    return v2

    .line 3906
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 3912
    .end local v0    # "i":I
    :cond_37
    const/4 v0, 0x0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 6
    .param p1, "phase"    # I

    .line 1796
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_6e

    .line 1797
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1798
    :try_start_7
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/AlarmManagerService$Constants;->start(Landroid/content/ContentResolver;)V

    .line 1799
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "appops"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppOps:Landroid/app/AppOpsManager;

    .line 1800
    const-class v1, Lcom/android/server/DeviceIdleInternal;

    .line 1801
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/DeviceIdleInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mLocalDeviceIdleController:Lcom/android/server/DeviceIdleInternal;

    .line 1803
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mGmsManager:Lcom/android/server/GmsAlarmManager;

    if-eqz v1, :cond_35

    .line 1804
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mGmsManager:Lcom/android/server/GmsAlarmManager;

    invoke-virtual {v1}, Lcom/android/server/GmsAlarmManager;->updateSettings()V

    .line 1807
    :cond_35
    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1808
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mUsageStatsManagerInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1809
    const-class v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1810
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/AppStandbyInternal;

    .line 1811
    .local v1, "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    new-instance v2, Lcom/android/server/AlarmManagerService$AppStandbyTracker;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/AlarmManagerService$AppStandbyTracker;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-interface {v1, v2}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1813
    const-class v2, Lcom/android/server/AppStateTracker;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AppStateTracker;

    iput-object v2, p0, Lcom/android/server/AlarmManagerService;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    .line 1814
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mForceAppStandbyListener:Lcom/android/server/AppStateTracker$Listener;

    invoke-virtual {v2, v3}, Lcom/android/server/AppStateTracker;->addListener(Lcom/android/server/AppStateTracker$Listener;)V

    .line 1816
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 1817
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1818
    .end local v1    # "appStandbyInternal":Lcom/android/server/usage/AppStandbyInternal;
    monitor-exit v0

    goto :goto_6e

    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw v1

    .line 1820
    :cond_6e
    :goto_6e
    return-void
.end method

.method public onStart()V
    .registers 11

    .line 1672
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->init()V

    .line 1674
    new-instance v0, Lcom/android/server/AlarmManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$2;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1686
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1687
    :try_start_f
    new-instance v1, Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0}, Lcom/android/server/AlarmManagerService$AlarmHandler;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    .line 1688
    new-instance v1, Lcom/android/server/AlarmManagerService$Constants;

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/AlarmManagerService$Constants;-><init>(Lcom/android/server/AlarmManagerService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    .line 1689
    new-instance v1, Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    const-wide/32 v2, 0x36ee80

    invoke-direct {v1, v2, v3}, Lcom/android/server/AlarmManagerService$AppWakeupHistory;-><init>(J)V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mAppWakeupHistory:Lcom/android/server/AlarmManagerService$AppWakeupHistory;

    .line 1691
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    iput-wide v1, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 1695
    const-string/jumbo v1, "persist.sys.timezone"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->setTimeZoneImpl(Ljava/lang/String;)V

    .line 1700
    const-wide/16 v1, 0x3e8

    const-string/jumbo v3, "ro.build.date.utc"

    const-wide/16 v4, -0x1

    .line 1701
    invoke-static {v3, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    mul-long/2addr v3, v1

    .line 1702
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    sget-wide v5, Landroid/os/Build;->TIME:J

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    .line 1700
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v1

    .line 1703
    .local v1, "systemBuildTime":J
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-gez v3, :cond_8a

    .line 1704
    const-string v3, "AlarmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current time only "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", advancing to build time "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1706
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1710
    :cond_8a
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getSystemUiUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/AlarmManagerService;->mSystemUiUid:I

    .line 1711
    if-gtz v3, :cond_9b

    .line 1712
    const-string v3, "AlarmManager"

    const-string v4, "SysUI package not found!"

    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    :cond_9b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getAlarmWakeLock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1716
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.TIME_TICK"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x50200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickIntent:Landroid/content/Intent;

    .line 1721
    new-instance v3, Lcom/android/server/AlarmManagerService$3;

    invoke-direct {v3, p0}, Lcom/android/server/AlarmManagerService$3;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v3, p0, Lcom/android/server/AlarmManagerService;->mTimeTickTrigger:Landroid/app/IAlarmListener;

    .line 1746
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1747
    .local v3, "intent":Landroid/content/Intent;
    const/high16 v4, 0x20200000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x4000000

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-static {v4, v5, v3, v6, v7}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mDateChangeSender:Landroid/app/PendingIntent;

    .line 1752
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v4, p0}, Lcom/android/server/AlarmManagerService$Injector;->getClockReceiver(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    .line 1753
    new-instance v4, Lcom/android/server/AlarmManagerService$ChargingReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$ChargingReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1754
    new-instance v4, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$InteractiveStateReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1755
    new-instance v4, Lcom/android/server/AlarmManagerService$UninstallReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/AlarmManagerService$UninstallReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1758
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Common_SupportGmsAlarmManager"

    invoke-virtual {v4, v5}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1760
    .local v4, "iSGmsManagerEnable":Z
    if-eqz v4, :cond_105

    .line 1761
    new-instance v5, Lcom/android/server/GmsAlarmManager;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/server/GmsAlarmManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mGmsManager:Lcom/android/server/GmsAlarmManager;

    .line 1762
    invoke-virtual {v5, p0}, Lcom/android/server/GmsAlarmManager;->init(Lcom/android/server/AlarmManagerService;)V

    .line 1765
    :cond_105
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v5

    if-eqz v5, :cond_116

    .line 1766
    new-instance v5, Lcom/android/server/AlarmManagerService$AlarmThread;

    invoke-direct {v5, p0}, Lcom/android/server/AlarmManagerService$AlarmThread;-><init>(Lcom/android/server/AlarmManagerService;)V

    .line 1767
    .local v5, "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$AlarmThread;->start()V

    .line 1768
    .end local v5    # "waitThread":Lcom/android/server/AlarmManagerService$AlarmThread;
    goto :goto_11d

    .line 1769
    :cond_116
    const-string v5, "AlarmManager"

    const-string v6, "Failed to open alarm driver. Falling back to a handler."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11d
    .catchall {:try_start_f .. :try_end_11d} :catchall_15a

    .line 1773
    :goto_11d
    const/4 v5, 0x0

    :try_start_11e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v6

    new-instance v7, Lcom/android/server/AlarmManagerService$UidObserver;

    invoke-direct {v7, p0}, Lcom/android/server/AlarmManagerService$UidObserver;-><init>(Lcom/android/server/AlarmManagerService;)V

    const/16 v8, 0xe

    const/4 v9, -0x1

    invoke-interface {v6, v7, v8, v9, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_11e .. :try_end_12d} :catch_12e
    .catchall {:try_start_11e .. :try_end_12d} :catchall_15a

    .line 1779
    goto :goto_12f

    .line 1777
    :catch_12e
    move-exception v6

    .line 1780
    .end local v1    # "systemBuildTime":J
    .end local v3    # "intent":Landroid/content/Intent;
    .end local v4    # "iSGmsManagerEnable":Z
    :goto_12f
    :try_start_12f
    monitor-exit v0
    :try_end_130
    .catchall {:try_start_12f .. :try_end_130} :catchall_15a

    .line 1783
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 1784
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->EM_SUPPORTED:Z

    if-eqz v0, :cond_146

    .line 1785
    new-instance v0, Lcom/android/server/AlarmManagerService$EmergencyReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/AlarmManagerService$EmergencyReceiver;-><init>(Lcom/android/server/AlarmManagerService;)V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService;->mEmergencyReceiver:Lcom/android/server/AlarmManagerService$EmergencyReceiver;

    goto :goto_148

    .line 1787
    :cond_146
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    .line 1790
    :goto_148
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    new-instance v1, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-direct {v1, p0, v5}, Lcom/android/server/AlarmManagerService$LocalService;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$1;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/AlarmManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1791
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mService:Landroid/os/IBinder;

    const-string v1, "alarm"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/AlarmManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1792
    return-void

    .line 1780
    :catchall_15a
    move-exception v1

    :try_start_15b
    monitor-exit v0
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    throw v1
.end method

.method reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V
    .registers 16
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "nowElapsed"    # J
    .param p4, "doValidate"    # Z

    .line 1199
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->origWhen:J

    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 1200
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    iget v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v0

    .line 1202
    .local v0, "whenElapsed":J
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    const-wide/16 v9, 0x0

    cmp-long v2, v2, v9

    if-nez v2, :cond_16

    .line 1204
    move-wide v2, v0

    .local v2, "maxElapsed":J
    goto :goto_2d

    .line 1209
    .end local v2    # "maxElapsed":J
    :cond_16
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    cmp-long v2, v2, v9

    if-lez v2, :cond_24

    .line 1210
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Lcom/android/server/AlarmManagerService;->clampPositive(J)J

    move-result-wide v2

    goto :goto_2c

    .line 1211
    :cond_24
    iget-wide v7, p1, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    move-wide v3, p2

    move-wide v5, v0

    invoke-static/range {v3 .. v8}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v2

    :goto_2c
    nop

    .line 1214
    .restart local v2    # "maxElapsed":J
    :goto_2d
    iput-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1215
    iput-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1216
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v4, v4, p2

    if-gtz v4, :cond_60

    iget v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_60

    .line 1217
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v5, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 1218
    .local v4, "lastTime":J
    iget v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {p0, v6}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 1219
    .local v6, "minTime":J
    cmp-long v8, v4, v9

    if-ltz v8, :cond_60

    .line 1220
    cmp-long v8, p2, v6

    if-gez v8, :cond_58

    .line 1221
    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 1223
    :cond_58
    iget-wide v8, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v8, v8, v6

    if-gez v8, :cond_60

    .line 1224
    iput-wide v6, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 1228
    .end local v4    # "lastTime":J
    .end local v6    # "minTime":J
    :cond_60
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 1229
    iget-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v4, p1, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 1231
    const/4 v4, 0x1

    invoke-direct {p0, p1, v4, p4}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 1232
    return-void
.end method

.method rebatchAllAlarms()V
    .registers 3

    .line 1105
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1106
    const/4 v1, 0x1

    :try_start_4
    invoke-virtual {p0, v1}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 1107
    monitor-exit v0

    .line 1108
    return-void

    .line 1107
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method

.method rebatchAllAlarmsLocked(Z)V
    .registers 19
    .param p1, "doValidate"    # Z

    .line 1112
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v1}, Lcom/android/server/SamsungAlarmManagerService;->notifyRebatchStarted()V

    .line 1114
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v1}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v1

    .line 1115
    .local v1, "start":J
    iget-object v3, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1116
    invoke-static {v3}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v3

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v4

    add-int/2addr v3, v4

    .line 1117
    .local v3, "oldCount":I
    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_2d

    iget-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1118
    invoke-virtual {v0, v4}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v4, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v4, 0x1

    .line 1120
    .local v4, "oldHasTick":Z
    :goto_2e
    iget-object v7, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1121
    .local v7, "oldSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1122
    iget-object v8, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 1123
    .local v8, "oldPendingIdleUntil":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v9, v0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v9}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v9

    .line 1124
    .local v9, "nowElapsed":J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1125
    .local v11, "oldBatches":I
    const/4 v12, 0x0

    .local v12, "batchNum":I
    :goto_48
    if-ge v12, v11, :cond_68

    .line 1126
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 1127
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v14

    .line 1128
    .local v14, "N":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_55
    if-ge v15, v14, :cond_63

    .line 1129
    invoke-virtual {v13, v15}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v6

    move/from16 v5, p1

    invoke-virtual {v0, v6, v9, v10, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1128
    add-int/lit8 v15, v15, 0x1

    goto :goto_55

    :cond_63
    move/from16 v5, p1

    .line 1125
    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v14    # "N":I
    .end local v15    # "i":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_48

    :cond_68
    move/from16 v5, p1

    .line 1132
    .end local v12    # "batchNum":I
    const-string v6, " to "

    const-string v12, "AlarmManager"

    if-eqz v8, :cond_97

    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eq v8, v13, :cond_97

    .line 1133
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Rebatching: idle until changed from "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-nez v13, :cond_97

    .line 1137
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 1140
    :cond_97
    iget-object v13, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    .line 1141
    invoke-static {v13}, Lcom/android/server/AlarmManagerService;->getAlarmCount(Ljava/util/ArrayList;)I

    move-result v13

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-static {v14}, Lcom/android/internal/util/ArrayUtils;->size(Ljava/util/Collection;)I

    move-result v14

    add-int/2addr v13, v14

    .line 1142
    .local v13, "newCount":I
    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-nez v14, :cond_b8

    iget-object v14, v0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1143
    invoke-virtual {v0, v14}, Lcom/android/server/AlarmManagerService;->haveAlarmsTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v14

    if-eqz v14, :cond_b5

    goto :goto_b8

    :cond_b5
    const/16 v16, 0x0

    goto :goto_ba

    :cond_b8
    :goto_b8
    const/16 v16, 0x1

    :goto_ba
    move/from16 v14, v16

    .line 1145
    .local v14, "newHasTick":Z
    if-eq v3, v13, :cond_d8

    .line 1146
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rebatching: total count changed from "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    :cond_d8
    if-eq v4, v14, :cond_f4

    .line 1149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rebatching: hasTick changed from "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_f4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1153
    invoke-direct/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1154
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1156
    iget-object v5, v0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v5}, Lcom/android/server/SamsungAlarmManagerService;->notifyRebatchFinished()V

    .line 1158
    return-void
.end method

.method recordWakeupAlarms(Ljava/util/ArrayList;JJ)V
    .registers 14
    .param p2, "nowELAPSED"    # J
    .param p4, "nowRTC"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Batch;",
            ">;JJ)V"
        }
    .end annotation

    .line 4368
    .local p1, "batches":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Batch;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4369
    .local v0, "numBatches":I
    const/4 v1, 0x0

    .local v1, "nextBatch":I
    :goto_5
    if-ge v1, v0, :cond_3d

    .line 4370
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/AlarmManagerService$Batch;

    .line 4371
    .local v2, "b":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v3, v2, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v3, v3, p2

    if-lez v3, :cond_14

    .line 4372
    goto :goto_3d

    .line 4375
    :cond_14
    iget-object v3, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4376
    .local v3, "numAlarms":I
    const/4 v4, 0x0

    .local v4, "nextAlarm":I
    :goto_1b
    if-ge v4, v3, :cond_3a

    .line 4377
    iget-object v5, v2, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 4378
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2e

    iget v6, v5, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v6, :cond_37

    .line 4380
    :cond_2e
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mRecentWakeups:Ljava/util/LinkedList;

    invoke-virtual {v5, p4, p5}, Lcom/android/server/AlarmManagerService$Alarm;->makeWakeupEvent(J)Lcom/android/server/AlarmManagerService$WakeupEvent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4376
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 4369
    .end local v2    # "b":Lcom/android/server/AlarmManagerService$Batch;
    .end local v3    # "numAlarms":I
    .end local v4    # "nextAlarm":I
    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 4384
    .end local v1    # "nextBatch":I
    :cond_3d
    :goto_3d
    return-void
.end method

.method removeForStoppedLocked(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 3737
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 3739
    return-void

    .line 3741
    :cond_5
    const/4 v0, 0x0

    .line 3742
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$lzZOWJB2te9UTLsLWoZ6M8xouQQ;-><init>(I)V

    .line 3751
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_31

    .line 3752
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3753
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3754
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2e

    .line 3755
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3751
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3758
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_38
    if-ltz v2, :cond_51

    .line 3759
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3760
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_4e

    .line 3762
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3763
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3758
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 3766
    .end local v2    # "i":I
    :cond_51
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_58
    if-ltz v2, :cond_7b

    .line 3767
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v4, p1, :cond_78

    .line 3768
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3769
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_73

    .line 3770
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3772
    :cond_73
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3766
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_78
    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    .line 3777
    .end local v2    # "i":I
    :cond_7b
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_82
    if-ltz v2, :cond_a5

    .line 3778
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-ne v4, p1, :cond_a2

    .line 3779
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3780
    .restart local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_9d

    .line 3781
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3783
    :cond_9d
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3777
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_a2
    add-int/lit8 v2, v2, -0x1

    goto :goto_82

    .line 3788
    .end local v2    # "i":I
    :cond_a5
    if-eqz v0, :cond_b5

    .line 3790
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/AppSyncWrapper;->removeRepeatingAlarm(IZ)V

    .line 3795
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3796
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3797
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3799
    :cond_b5
    return-void
.end method

.method removeImpl(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 5
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "listener"    # Landroid/app/IAlarmListener;

    .line 1901
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1902
    :try_start_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService;->removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 1903
    monitor-exit v0

    .line 1904
    return-void

    .line 1903
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method removeLocked(I)V
    .registers 9
    .param p1, "uid"    # I

    .line 3576
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 3578
    return-void

    .line 3580
    :cond_5
    const/4 v0, 0x0

    .line 3581
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$qehVSjTLWvtJYPGgKh2mkJ6ePnk;-><init>(I)V

    .line 3582
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_31

    .line 3583
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3584
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3585
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2e

    .line 3586
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3582
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 3589
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_38
    if-ltz v2, :cond_51

    .line 3590
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3591
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v5, p1, :cond_4e

    .line 3593
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3594
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3589
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4e
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 3597
    .end local v2    # "i":I
    :cond_51
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_58
    if-ltz v2, :cond_8a

    .line 3598
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3599
    .local v4, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .local v5, "j":I
    :goto_67
    if-ltz v5, :cond_7c

    .line 3600
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v6, p1, :cond_79

    .line 3601
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3602
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3599
    :cond_79
    add-int/lit8 v5, v5, -0x1

    goto :goto_67

    .line 3605
    .end local v5    # "j":I
    :cond_7c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_87

    .line 3606
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3597
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_87
    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    .line 3611
    .end local v2    # "i":I
    :cond_8a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_91
    if-ltz v2, :cond_c3

    .line 3612
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3613
    .restart local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v3

    .restart local v5    # "j":I
    :goto_a0
    if-ltz v5, :cond_b5

    .line 3614
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v6, p1, :cond_b2

    .line 3615
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3616
    invoke-direct {p0, p1, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3613
    :cond_b2
    add-int/lit8 v5, v5, -0x1

    goto :goto_a0

    .line 3619
    .end local v5    # "j":I
    :cond_b5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_c0

    .line 3620
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3611
    .end local v4    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_c0
    add-int/lit8 v2, v2, -0x1

    goto :goto_91

    .line 3627
    .end local v2    # "i":I
    :cond_c3
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-eqz v2, :cond_ce

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_ce

    .line 3628
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3630
    :cond_ce
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v2, :cond_f3

    iget v2, v2, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    if-ne v2, p1, :cond_f3

    .line 3632
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed app uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " set idle-until alarm!"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "AlarmManager"

    invoke-static {v5, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    iput-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3635
    :cond_f3
    if-eqz v0, :cond_103

    .line 3640
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/AppSyncWrapper;->removeRepeatingAlarm(IZ)V

    .line 3642
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3643
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3644
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3646
    :cond_103
    return-void
.end method

.method removeLocked(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 11
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "directReceiver"    # Landroid/app/IAlarmListener;

    .line 3479
    if-nez p1, :cond_5

    if-nez p2, :cond_5

    .line 3484
    return-void

    .line 3487
    :cond_5
    const/4 v0, 0x0

    if-eqz p2, :cond_29

    .line 3489
    :try_start_8
    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_11} :catch_12

    .line 3492
    goto :goto_29

    .line 3490
    :catch_12
    move-exception v1

    .line 3491
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to unlink death recipient on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlarmManager"

    invoke-static {v3, v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3495
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_29
    :goto_29
    const/4 v1, 0x0

    .line 3496
    .local v1, "didRemove":Z
    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;

    .local v2, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v2, p1, p2}, Lcom/android/server/-$$Lambda$AlarmManagerService$ZVedZIeWdB3G6AGM0_-9P_GEO24;-><init>(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3497
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_37
    if-ltz v3, :cond_54

    .line 3498
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3499
    .local v5, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5, v2, v0}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v6

    or-int/2addr v1, v6

    .line 3500
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_51

    .line 3501
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3497
    .end local v5    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_51
    add-int/lit8 v3, v3, -0x1

    goto :goto_37

    .line 3504
    .end local v3    # "i":I
    :cond_54
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .local v0, "i":I
    :goto_5b
    if-ltz v0, :cond_78

    .line 3505
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3506
    .local v3, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 3508
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3509
    iget v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3504
    .end local v3    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_75
    add-int/lit8 v0, v0, -0x1

    goto :goto_5b

    .line 3512
    .end local v0    # "i":I
    :cond_78
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_7f
    if-ltz v0, :cond_b5

    .line 3513
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3514
    .local v3, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .local v5, "j":I
    :goto_8e
    if-ltz v5, :cond_a7

    .line 3515
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3516
    .local v6, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v6, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v7

    if-eqz v7, :cond_a4

    .line 3518
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3519
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v7, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3514
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_a4
    add-int/lit8 v5, v5, -0x1

    goto :goto_8e

    .line 3522
    .end local v5    # "j":I
    :cond_a7
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_b2

    .line 3523
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3512
    .end local v3    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_b2
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    .line 3528
    .end local v0    # "i":I
    :cond_b5
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_bc
    if-ltz v0, :cond_f2

    .line 3529
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3530
    .restart local v3    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    .restart local v5    # "j":I
    :goto_cb
    if-ltz v5, :cond_e4

    .line 3531
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3532
    .restart local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v6, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v7

    if-eqz v7, :cond_e1

    .line 3534
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3535
    iget v7, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v7, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3530
    .end local v6    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_e1
    add-int/lit8 v5, v5, -0x1

    goto :goto_cb

    .line 3538
    .end local v5    # "j":I
    :cond_e4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_ef

    .line 3539
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3528
    .end local v3    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_ef
    add-int/lit8 v0, v0, -0x1

    goto :goto_bc

    .line 3544
    .end local v0    # "i":I
    :cond_f2
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    .restart local v0    # "i":I
    :goto_f9
    if-ltz v0, :cond_116

    .line 3545
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3546
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 3548
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3549
    iget v5, v3, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3544
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_113
    add-int/lit8 v0, v0, -0x1

    goto :goto_f9

    .line 3552
    .end local v0    # "i":I
    :cond_116
    if-eqz v1, :cond_143

    .line 3554
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/AppSyncWrapper;->removeRepeatingAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V

    .line 3559
    const/4 v0, 0x0

    .line 3560
    .local v0, "restorePending":Z
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v5, 0x0

    if-eqz v3, :cond_12c

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_12c

    .line 3561
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3562
    const/4 v0, 0x1

    .line 3564
    :cond_12c
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v3, :cond_138

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 3565
    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3567
    :cond_138
    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3568
    if-eqz v0, :cond_140

    .line 3569
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 3571
    :cond_140
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3573
    .end local v0    # "restorePending":Z
    :cond_143
    return-void
.end method

.method removeLocked(Ljava/lang/String;)V
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .line 3649
    if-nez p1, :cond_3

    .line 3654
    return-void

    .line 3657
    :cond_3
    const/4 v0, 0x0

    .line 3658
    .local v0, "didRemove":Z
    new-instance v1, Landroid/util/MutableBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 3659
    .local v1, "removedNextWakeFromIdle":Landroid/util/MutableBoolean;
    new-instance v3, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;

    .local v3, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v3, p0, p1, v1}, Lcom/android/server/-$$Lambda$AlarmManagerService$Kswc8z2_RnUW_V0bP_uNErDNN_4;-><init>(Lcom/android/server/AlarmManagerService;Ljava/lang/String;Landroid/util/MutableBoolean;)V

    .line 3666
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v4}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v4

    .line 3667
    .local v4, "oldHasTick":Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    .local v5, "i":I
    :goto_1d
    if-ltz v5, :cond_3a

    .line 3668
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Batch;

    .line 3669
    .local v7, "b":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v7, v3, v2}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v8

    or-int/2addr v0, v8

    .line 3670
    invoke-virtual {v7}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v8

    if-nez v8, :cond_37

    .line 3671
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3667
    .end local v7    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_37
    add-int/lit8 v5, v5, -0x1

    goto :goto_1d

    .line 3674
    .end local v5    # "i":I
    :cond_3a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/android/server/AlarmManagerService;->haveBatchesTimeTickAlarm(Ljava/util/ArrayList;)Z

    move-result v2

    .line 3675
    .local v2, "newHasTick":Z
    if-eq v4, v2, :cond_61

    .line 3676
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "removeLocked: hasTick changed from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "AlarmManager"

    invoke-static {v7, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3679
    :cond_61
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .restart local v5    # "i":I
    :goto_68
    if-ltz v5, :cond_85

    .line 3680
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3681
    .local v7, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v7, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 3683
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3684
    iget v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3679
    .end local v7    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_82
    add-int/lit8 v5, v5, -0x1

    goto :goto_68

    .line 3687
    .end local v5    # "i":I
    :cond_85
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .restart local v5    # "i":I
    :goto_8c
    if-ltz v5, :cond_c2

    .line 3688
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3689
    .local v7, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "j":I
    :goto_9b
    if-ltz v8, :cond_b4

    .line 3690
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3691
    .local v9, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v9, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b1

    .line 3692
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3693
    iget v10, v9, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v10, v6}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3689
    .end local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_b1
    add-int/lit8 v8, v8, -0x1

    goto :goto_9b

    .line 3696
    .end local v8    # "j":I
    :cond_b4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_bf

    .line 3697
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3687
    .end local v7    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_bf
    add-int/lit8 v5, v5, -0x1

    goto :goto_8c

    .line 3702
    .end local v5    # "i":I
    :cond_c2
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    sub-int/2addr v5, v6

    .restart local v5    # "i":I
    :goto_c9
    if-ltz v5, :cond_ff

    .line 3703
    iget-object v7, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 3704
    .restart local v7    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .restart local v8    # "j":I
    :goto_d8
    if-ltz v8, :cond_f1

    .line 3705
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3706
    .restart local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v9, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_ee

    .line 3707
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3708
    iget v10, v9, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v10, v6}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3704
    .end local v9    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_ee
    add-int/lit8 v8, v8, -0x1

    goto :goto_d8

    .line 3711
    .end local v8    # "j":I
    :cond_f1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_fc

    .line 3712
    iget-object v8, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3702
    .end local v7    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_fc
    add-int/lit8 v5, v5, -0x1

    goto :goto_c9

    .line 3719
    .end local v5    # "i":I
    :cond_ff
    iget-boolean v5, v1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v5, :cond_106

    .line 3720
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 3722
    :cond_106
    if-eqz v0, :cond_116

    .line 3724
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v5, p1}, Lcom/android/server/AppSyncWrapper;->removeRepeatingAlarm(Ljava/lang/String;)V

    .line 3729
    invoke-virtual {p0, v6}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3730
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3731
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3733
    :cond_116
    return-void
.end method

.method removeUserLocked(I)V
    .registers 9
    .param p1, "userHandle"    # I

    .line 3802
    if-nez p1, :cond_3

    .line 3804
    return-void

    .line 3806
    :cond_3
    const/4 v0, 0x0

    .line 3807
    .local v0, "didRemove":Z
    new-instance v1, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;

    .local v1, "whichAlarms":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-direct {v1, p1}, Lcom/android/server/-$$Lambda$AlarmManagerService$nhEd_CDoc7mzdNLRwGUhwl9TaGk;-><init>(I)V

    .line 3809
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_11
    if-ltz v2, :cond_2f

    .line 3810
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Batch;

    .line 3811
    .local v4, "b":Lcom/android/server/AlarmManagerService$Batch;
    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lcom/android/server/AlarmManagerService$Batch;->remove(Ljava/util/function/Predicate;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 3812
    invoke-virtual {v4}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v5

    if-nez v5, :cond_2c

    .line 3813
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3809
    .end local v4    # "b":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2c
    add-int/lit8 v2, v2, -0x1

    goto :goto_11

    .line 3816
    .end local v2    # "i":I
    :cond_2f
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_36
    if-ltz v2, :cond_58

    .line 3817
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    iget v4, v4, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_55

    .line 3820
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 3821
    .local v4, "removed":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v4, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v5, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3816
    .end local v4    # "removed":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_55
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 3824
    .end local v2    # "i":I
    :cond_58
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_5f
    if-ltz v2, :cond_94

    .line 3825
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_91

    .line 3826
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3827
    .local v4, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_8c

    .line 3828
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_78
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_8c

    .line 3829
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3828
    add-int/lit8 v5, v5, 0x1

    goto :goto_78

    .line 3832
    .end local v5    # "j":I
    :cond_8c
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3824
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_91
    add-int/lit8 v2, v2, -0x1

    goto :goto_5f

    .line 3837
    .end local v2    # "i":I
    :cond_94
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_9b
    if-ltz v2, :cond_d0

    .line 3838
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_cd

    .line 3839
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3840
    .restart local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v4, :cond_c8

    .line 3841
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_b4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_c8

    .line 3842
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/AlarmManagerService$Alarm;

    iget v6, v6, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    invoke-direct {p0, v6, v3}, Lcom/android/server/AlarmManagerService;->decrementAlarmCount(II)V

    .line 3841
    add-int/lit8 v5, v5, 0x1

    goto :goto_b4

    .line 3845
    .end local v5    # "j":I
    :cond_c8
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 3837
    .end local v4    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_cd
    add-int/lit8 v2, v2, -0x1

    goto :goto_9b

    .line 3850
    .end local v2    # "i":I
    :cond_d0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v2}, Landroid/util/SparseLongArray;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_d7
    if-ltz v2, :cond_ed

    .line 3851
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p1, :cond_ea

    .line 3852
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 3850
    :cond_ea
    add-int/lit8 v2, v2, -0x1

    goto :goto_d7

    .line 3856
    .end local v2    # "i":I
    :cond_ed
    if-eqz v0, :cond_fd

    .line 3858
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v2, p1}, Lcom/android/server/AppSyncWrapper;->removeRepeatingAlarm(I)V

    .line 3863
    invoke-virtual {p0, v3}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 3864
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 3865
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 3867
    :cond_fd
    return-void
.end method

.method reorderAlarmsBasedOnStandbyBuckets(Landroid/util/ArraySet;)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)Z"
        }
    .end annotation

    .line 1168
    .local p1, "targetPackages":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v0}, Lcom/android/internal/util/StatLogger;->getTime()J

    move-result-wide v0

    .line 1169
    .local v0, "start":J
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1171
    .local v2, "rescheduledAlarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "batchIndex":I
    :goto_13
    if-ltz v3, :cond_5e

    .line 1172
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 1173
    .local v5, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    sub-int/2addr v6, v4

    .local v6, "alarmIndex":I
    :goto_22
    if-ltz v6, :cond_50

    .line 1174
    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v7

    .line 1175
    .local v7, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v8, v7, Lcom/android/server/AlarmManagerService$Alarm;->sourcePackage:Ljava/lang/String;

    iget v9, v7, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    .line 1176
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v8

    .line 1177
    .local v8, "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_41

    invoke-virtual {p1, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_41

    .line 1178
    goto :goto_4d

    .line 1180
    :cond_41
    invoke-direct {p0, v7}, Lcom/android/server/AlarmManagerService;->adjustDeliveryTimeBasedOnBucketLocked(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v9

    if-eqz v9, :cond_4d

    .line 1181
    invoke-virtual {v5, v7}, Lcom/android/server/AlarmManagerService$Batch;->remove(Lcom/android/server/AlarmManagerService$Alarm;)Z

    .line 1182
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1173
    .end local v7    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v8    # "packageUser":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4d
    :goto_4d
    add-int/lit8 v6, v6, -0x1

    goto :goto_22

    .line 1185
    .end local v6    # "alarmIndex":I
    :cond_50
    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v6

    if-nez v6, :cond_5b

    .line 1186
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1171
    .end local v5    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_5b
    add-int/lit8 v3, v3, -0x1

    goto :goto_13

    .line 1189
    .end local v3    # "batchIndex":I
    :cond_5e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5f
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_71

    .line 1190
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1191
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct {p0, v5}, Lcom/android/server/AlarmManagerService;->insertAndBatchAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 1189
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5f

    .line 1194
    .end local v3    # "i":I
    :cond_71
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mStatLogger:Lcom/android/internal/util/StatLogger;

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/util/StatLogger;->logDurationStat(IJ)J

    .line 1195
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_7d

    goto :goto_7e

    :cond_7d
    const/4 v4, 0x0

    :goto_7e
    return v4
.end method

.method rescheduleKernelAlarmsLocked()V
    .registers 10

    .line 3449
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 3450
    .local v0, "nowElapsed":J
    const-wide/16 v2, 0x0

    .line 3451
    .local v2, "nextNonWakeup":J
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2f

    .line 3452
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->findFirstWakeupBatchLocked()Lcom/android/server/AlarmManagerService$Batch;

    move-result-object v4

    .line 3453
    .local v4, "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    iget-object v5, p0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/AlarmManagerService$Batch;

    .line 3454
    .local v5, "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    if-eqz v4, :cond_2b

    .line 3455
    iget-wide v6, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    iput-wide v6, p0, Lcom/android/server/AlarmManagerService;->mNextWakeup:J

    .line 3456
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextWakeUpSetAt:J

    .line 3457
    const/4 v6, 0x2

    iget-wide v7, v4, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-direct {p0, v6, v7, v8}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3459
    :cond_2b
    if-eq v5, v4, :cond_2f

    .line 3460
    iget-wide v2, v5, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 3463
    .end local v4    # "firstWakeup":Lcom/android/server/AlarmManagerService$Batch;
    .end local v5    # "firstBatch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_2f
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mPendingNonWakeupAlarms:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x0

    if-lez v4, :cond_65

    .line 3464
    cmp-long v4, v2, v5

    if-eqz v4, :cond_43

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    cmp-long v4, v7, v2

    if-gez v4, :cond_65

    .line 3466
    :cond_43
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Set nextNonWakeup as mNextNonWakeupDeliveryTime="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " , orig nextNonWakeup="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AlarmManager"

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3468
    iget-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeupDeliveryTime:J

    .line 3471
    :cond_65
    cmp-long v4, v2, v5

    if-eqz v4, :cond_71

    .line 3472
    iput-wide v2, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeup:J

    .line 3473
    iput-wide v0, p0, Lcom/android/server/AlarmManagerService;->mNextNonWakeUpSetAt:J

    .line 3474
    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Lcom/android/server/AlarmManagerService;->setLocked(IJ)V

    .line 3476
    :cond_71
    return-void
.end method

.method restorePendingWhileIdleAlarmsLocked()V
    .registers 7

    .line 1409
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 1410
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1411
    .local v0, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingWhileIdleAlarms:Ljava/util/ArrayList;

    .line 1412
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    .line 1413
    .local v1, "nowElapsed":J
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_1d
    if-ltz v3, :cond_2c

    .line 1414
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1415
    .local v4, "a":Lcom/android/server/AlarmManagerService$Alarm;
    const/4 v5, 0x0

    invoke-virtual {p0, v4, v1, v2, v5}, Lcom/android/server/AlarmManagerService;->reAddAlarmLocked(Lcom/android/server/AlarmManagerService$Alarm;JZ)V

    .line 1413
    .end local v4    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    add-int/lit8 v3, v3, -0x1

    goto :goto_1d

    .line 1420
    .end local v0    # "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v1    # "nowElapsed":J
    .end local v3    # "i":I
    :cond_2c
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->rescheduleKernelAlarmsLocked()V

    .line 1421
    invoke-direct {p0}, Lcom/android/server/AlarmManagerService;->updateNextAlarmClockLocked()V

    .line 1423
    return-void
.end method

.method public rollbackAlarmLocked(Lcom/android/server/AlarmManagerServiceExt$AlarmExt;ZZ)V
    .registers 36
    .param p1, "aExt"    # Lcom/android/server/AlarmManagerServiceExt$AlarmExt;
    .param p2, "isStandalone"    # Z
    .param p3, "doValidate"    # Z

    .line 1443
    move-object/from16 v0, p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1444
    .local v7, "nNowElapsed":J
    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    move-object/from16 v15, p0

    invoke-direct {v15, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v30

    .line 1445
    .local v30, "nWhenElapsed":J
    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1d

    .line 1446
    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    add-long v1, v30, v1

    goto :goto_26

    :cond_1d
    iget-wide v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    move-wide v1, v7

    move-wide/from16 v3, v30

    invoke-static/range {v1 .. v6}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v1

    :goto_26
    move-wide/from16 v17, v1

    .line 1448
    .local v17, "nMaxElapsed":J
    iget v10, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->type:I

    iget-wide v11, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->when:J

    iget-wide v1, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->windowLength:J

    iget-wide v3, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->repeatIntervalOriginal:J

    iget-object v5, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->operation:Landroid/app/PendingIntent;

    iget-object v6, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listener:Landroid/app/IAlarmListener;

    iget-object v13, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->listenerTag:Ljava/lang/String;

    .line 1450
    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->workSource:Landroid/os/WorkSource;

    move-object/from16 v26, v9

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v27, v9

    iget v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->uid:I

    move/from16 v28, v9

    iget-object v9, v0, Lcom/android/server/AlarmManagerServiceExt$AlarmExt;->packageName:Ljava/lang/String;

    move-object/from16 v29, v9

    .line 1448
    move-object/from16 v9, p0

    move-object/from16 v23, v13

    move-wide/from16 v13, v30

    move-wide v15, v1

    move-wide/from16 v19, v3

    move-object/from16 v21, v5

    move-object/from16 v22, v6

    move/from16 v24, p2

    move/from16 v25, p3

    invoke-direct/range {v9 .. v29}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v1

    .line 1452
    .local v1, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    return-void
.end method

.method sendAllUnrestrictedPendingBackgroundAlarmsLocked()V
    .registers 4

    .line 1311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1313
    .local v0, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;

    invoke-direct {v2, p0}, Lcom/android/server/-$$Lambda$AlarmManagerService$nSJw2tKfoL3YIrKDtszoL44jcSM;-><init>(Lcom/android/server/AlarmManagerService;)V

    invoke-static {v1, v0, v2}, Lcom/android/server/AlarmManagerService;->findAllUnrestrictedPendingBackgroundAlarmsLockedInner(Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/util/function/Predicate;)V

    .line 1316
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1317
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1319
    :cond_1e
    return-void
.end method

.method sendPendingBackgroundAlarmsLocked(ILjava/lang/String;)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 1246
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1247
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto :goto_54

    .line 1251
    :cond_11
    if-eqz p2, :cond_44

    .line 1255
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1256
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1e
    if-ltz v2, :cond_38

    .line 1257
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1258
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p2}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1259
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_35
    add-int/lit8 v2, v2, -0x1

    goto :goto_1e

    .line 1262
    .end local v2    # "i":I
    :cond_38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4a

    .line 1263
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_4a

    .line 1269
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_44
    move-object v1, v0

    .line 1270
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1272
    :cond_4a
    :goto_4a
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1273
    return-void

    .line 1248
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_54
    :goto_54
    return-void
.end method

.method sendPendingMARsRestrictedAlarmsLocked(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1277
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1278
    .local v0, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-eqz v0, :cond_85

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_12

    goto/16 :goto_85

    .line 1282
    :cond_12
    const-string v1, "Sending alarms blocked by MARsFreecess for uid "

    const-string v2, "AlarmManager"

    if-eqz p1, :cond_63

    .line 1283
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1285
    .local v1, "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_3d
    if-ltz v2, :cond_57

    .line 1286
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/AlarmManagerService$Alarm;

    .line 1287
    .local v3, "a":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-virtual {v3, p1}, Lcom/android/server/AlarmManagerService$Alarm;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 1288
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/AlarmManagerService$Alarm;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1285
    .end local v3    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_54
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 1291
    .end local v2    # "i":I
    :cond_57
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_7b

    .line 1292
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_7b

    .line 1295
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    move-object v1, v0

    .line 1297
    .restart local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 1299
    :cond_7b
    :goto_7b
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/AlarmManagerService;->deliverPendingBackgroundAlarmsLocked(Ljava/util/ArrayList;J)V

    .line 1300
    return-void

    .line 1279
    .end local v1    # "alarmsToDeliver":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_85
    :goto_85
    return-void
.end method

.method setImpl(IJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;ILandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V
    .registers 66
    .param p1, "type"    # I
    .param p2, "triggerAtTime"    # J
    .param p4, "windowLength"    # J
    .param p6, "interval"    # J
    .param p8, "operation"    # Landroid/app/PendingIntent;
    .param p9, "directReceiver"    # Landroid/app/IAlarmListener;
    .param p10, "listenerTag"    # Ljava/lang/String;
    .param p11, "flags"    # I
    .param p12, "workSource"    # Landroid/os/WorkSource;
    .param p13, "alarmClock"    # Landroid/app/AlarmManager$AlarmClockInfo;
    .param p14, "callingUid"    # I
    .param p15, "callingPackage"    # Ljava/lang/String;

    .line 1911
    move-object/from16 v15, p0

    move/from16 v14, p1

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    move-wide/from16 v5, p6

    move/from16 v13, p14

    if-nez p8, :cond_10

    if-eqz p9, :cond_14

    :cond_10
    if-eqz p8, :cond_1c

    if-eqz p9, :cond_1c

    .line 1913
    :cond_14
    const-string v0, "AlarmManager"

    const-string v7, "Alarms must either supply a PendingIntent or an AlarmReceiver"

    invoke-static {v0, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1916
    return-void

    .line 1919
    :cond_1c
    const/4 v0, 0x0

    if-eqz p9, :cond_45

    .line 1921
    :try_start_1f
    invoke-interface/range {p9 .. p9}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget-object v8, v15, Lcom/android/server/AlarmManagerService;->mListenerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v7, v8, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_28} :catch_2b

    .line 1925
    move-object/from16 v11, p10

    goto :goto_47

    .line 1922
    :catch_2b
    move-exception v0

    .line 1923
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dropping unreachable alarm listener "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p10

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1924
    return-void

    .line 1919
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_45
    move-object/from16 v11, p10

    .line 1930
    :goto_47
    const-wide/32 v7, 0x2932e00

    cmp-long v7, v3, v7

    if-lez v7, :cond_6d

    .line 1931
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Window length "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "ms suspiciously long; limiting to 1 hour"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AlarmManager"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    const-wide/32 v3, 0x36ee80

    .line 1939
    .end local p4    # "windowLength":J
    .local v3, "windowLength":J
    :cond_6d
    iget-object v7, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v9, v7, Lcom/android/server/AlarmManagerService$Constants;->MIN_INTERVAL:J

    .line 1940
    .local v9, "minInterval":J
    const-wide/16 v7, 0x0

    cmp-long v12, v5, v7

    const-wide/16 v16, 0x3e8

    if-lez v12, :cond_a6

    cmp-long v12, v5, v9

    if-gez v12, :cond_a6

    .line 1941
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Suspiciously short interval "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " millis; expanding to "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-long v7, v9, v16

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " seconds"

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AlarmManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    move-wide v5, v9

    move-wide/from16 v36, v5

    .end local p6    # "interval":J
    .local v5, "interval":J
    goto :goto_d2

    .line 1945
    .end local v5    # "interval":J
    .restart local p6    # "interval":J
    :cond_a6
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v7, v0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    cmp-long v0, v5, v7

    if-lez v0, :cond_d0

    .line 1946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suspiciously long interval "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " millis; clamping"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AlarmManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v5, v0, Lcom/android/server/AlarmManagerService$Constants;->MAX_INTERVAL:J

    move-wide/from16 v36, v5

    .end local p6    # "interval":J
    .restart local v5    # "interval":J
    goto :goto_d2

    .line 1945
    .end local v5    # "interval":J
    .restart local p6    # "interval":J
    :cond_d0
    move-wide/from16 v36, v5

    .line 1951
    .end local p6    # "interval":J
    .local v36, "interval":J
    :goto_d2
    if-ltz v14, :cond_28c

    const/4 v0, 0x3

    if-gt v14, v0, :cond_28c

    .line 1955
    const-wide/16 v5, 0x0

    cmp-long v0, v1, v5

    if-gez v0, :cond_10c

    .line 1956
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    int-to-long v5, v0

    .line 1957
    .local v5, "what":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid alarm trigger time! "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " from uid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AlarmManager"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1959
    const-wide/16 v0, 0x0

    move-wide v7, v0

    .end local p2    # "triggerAtTime":J
    .local v0, "triggerAtTime":J
    goto :goto_10d

    .line 1955
    .end local v0    # "triggerAtTime":J
    .end local v5    # "what":J
    .restart local p2    # "triggerAtTime":J
    :cond_10c
    move-wide v7, v1

    .line 1962
    .end local p2    # "triggerAtTime":J
    .local v7, "triggerAtTime":J
    :goto_10d
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->getElapsedRealtime()J

    move-result-wide v38

    .line 1963
    .local v38, "nowElapsed":J
    invoke-direct {v15, v7, v8, v14}, Lcom/android/server/AlarmManagerService;->convertToElapsed(JI)J

    move-result-wide v40

    .line 1966
    .local v40, "nominalTrigger":J
    nop

    .line 1967
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v0

    if-eqz v0, :cond_11f

    goto :goto_125

    :cond_11f
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget-wide v0, v0, Lcom/android/server/AlarmManagerService$Constants;->MIN_FUTURITY:J

    move-wide/from16 v16, v0

    :goto_125
    add-long v42, v38, v16

    .line 1969
    .local v42, "minTrigger":J
    cmp-long v0, v40, v42

    if-lez v0, :cond_12e

    move-wide/from16 v0, v40

    goto :goto_130

    :cond_12e
    move-wide/from16 v0, v42

    :goto_130
    move-wide/from16 v44, v0

    .line 1972
    .local v44, "triggerElapsed":J
    const-wide/16 v0, 0x0

    cmp-long v2, v3, v0

    if-nez v2, :cond_13f

    .line 1973
    move-wide/from16 v0, v44

    move-wide/from16 v46, v0

    move-wide/from16 v48, v3

    .local v0, "maxElapsed":J
    goto :goto_15a

    .line 1974
    .end local v0    # "maxElapsed":J
    :cond_13f
    cmp-long v0, v3, v0

    if-gez v0, :cond_154

    .line 1975
    move-wide/from16 v18, v38

    move-wide/from16 v20, v44

    move-wide/from16 v22, v36

    invoke-static/range {v18 .. v23}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v0

    .line 1977
    .restart local v0    # "maxElapsed":J
    sub-long v3, v0, v44

    move-wide/from16 v46, v0

    move-wide/from16 v48, v3

    goto :goto_15a

    .line 1979
    .end local v0    # "maxElapsed":J
    :cond_154
    add-long v0, v44, v3

    move-wide/from16 v46, v0

    move-wide/from16 v48, v3

    .line 1982
    .end local v3    # "windowLength":J
    .local v46, "maxElapsed":J
    .local v48, "windowLength":J
    :goto_15a
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v1, 0x1

    if-eqz v0, :cond_1f8

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_1f8

    .line 1983
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_1f8

    .line 1984
    if-eqz p8, :cond_174

    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_176

    :cond_174
    move-object/from16 v0, p15

    :goto_176
    move-object v2, v0

    .line 1985
    .local v2, "targetPkg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1986
    .local v3, "ident":J
    const/4 v5, 0x0

    .line 1988
    .local v5, "action":Ljava/lang/String;
    if-eqz p8, :cond_18c

    :try_start_17e
    invoke-virtual/range {p8 .. p8}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0
    :try_end_186
    .catchall {:try_start_17e .. :try_end_186} :catchall_187

    goto :goto_18d

    .line 1990
    :catchall_187
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    throw v0

    .line 1988
    :cond_18c
    const/4 v0, 0x0

    .line 1990
    .end local v5    # "action":Ljava/lang/String;
    .local v0, "action":Ljava/lang/String;
    :goto_18d
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1991
    nop

    .line 1992
    iget-object v5, v15, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    const/4 v6, 0x4

    invoke-virtual {v5, v2, v0, v6}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->checkValidPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_1f8

    .line 1993
    new-instance v5, Lcom/android/server/AlarmManagerService$Alarm;

    move-object/from16 v16, v5

    move/from16 v17, p1

    move-wide/from16 v18, v7

    move-wide/from16 v20, v44

    move-wide/from16 v22, v48

    move-wide/from16 v24, v46

    move-wide/from16 v26, v36

    move-object/from16 v28, p8

    move-object/from16 v29, p9

    move-object/from16 v30, p10

    move-object/from16 v31, p12

    move/from16 v32, p11

    move-object/from16 v33, p13

    move/from16 v34, p14

    move-object/from16 v35, p15

    invoke-direct/range {v16 .. v35}, Lcom/android/server/AlarmManagerService$Alarm;-><init>(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)V

    .line 1994
    .local v5, "a":Lcom/android/server/AlarmManagerService$Alarm;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip rejected app(Screen["

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v15, Lcom/android/server/AlarmManagerService;->mEmergencyMgr:Lcom/samsung/android/emergencymode/SemEmergencyManager;

    invoke-virtual {v12}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isScreenOn()Z

    move-result v12

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, "]) : pkg="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " act="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v12, "AlarmManager"

    invoke-static {v12, v6}, Lcom/samsung/android/emergencymode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    new-instance v6, Lcom/android/server/AlarmManagerService$PrevAlarm;

    and-int/lit8 v12, p11, 0x1

    if-eqz v12, :cond_1f0

    goto :goto_1f1

    :cond_1f0
    const/4 v1, 0x0

    :goto_1f1
    invoke-direct {v6, v15, v5, v1}, Lcom/android/server/AlarmManagerService$PrevAlarm;-><init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;Z)V

    invoke-direct {v15, v6}, Lcom/android/server/AlarmManagerService;->addPendingAlarmList(Lcom/android/server/AlarmManagerService$PrevAlarm;)V

    .line 1997
    return-void

    .line 2002
    .end local v0    # "action":Ljava/lang/String;
    .end local v2    # "targetPkg":Ljava/lang/String;
    .end local v3    # "ident":J
    .end local v5    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1f8
    iget-object v12, v15, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2004
    :try_start_1fb
    sput-boolean v1, Lcom/android/server/AlarmManagerService;->APP_SYNC_NewAlarm:Z

    .line 2012
    iget-object v0, v15, Lcom/android/server/AlarmManagerService;->mAlarmsPerUid:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I
    :try_end_208
    .catchall {:try_start_1fb .. :try_end_208} :catchall_281

    if-lt v0, v1, :cond_255

    .line 2013
    :try_start_20a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Maximum limit of concurrent alarms "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v15, Lcom/android/server/AlarmManagerService;->mConstants:Lcom/android/server/AlarmManagerService$Constants;

    iget v1, v1, Lcom/android/server/AlarmManagerService$Constants;->MAX_ALARMS_PER_UID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reached for uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2015
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", callingPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_22c
    .catchall {:try_start_20a .. :try_end_22c} :catchall_24b

    move-object/from16 v5, p15

    :try_start_22e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, "errorMsg":Ljava/lang/String;
    const-string v1, "AlarmManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2018
    invoke-static/range {p14 .. p14}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 2019
    invoke-direct {v15, v13}, Lcom/android/server/AlarmManagerService;->logAllAlarmsForUidLocked(I)V

    .line 2021
    :cond_243
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7    # "triggerAtTime":J
    .end local v9    # "minInterval":J
    .end local v36    # "interval":J
    .end local v38    # "nowElapsed":J
    .end local v40    # "nominalTrigger":J
    .end local v42    # "minTrigger":J
    .end local v44    # "triggerElapsed":J
    .end local v46    # "maxElapsed":J
    .end local v48    # "windowLength":J
    .end local p0    # "this":Lcom/android/server/AlarmManagerService;
    .end local p1    # "type":I
    .end local p8    # "operation":Landroid/app/PendingIntent;
    .end local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .end local p10    # "listenerTag":Ljava/lang/String;
    .end local p11    # "flags":I
    .end local p12    # "workSource":Landroid/os/WorkSource;
    .end local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .end local p14    # "callingUid":I
    .end local p15    # "callingPackage":Ljava/lang/String;
    throw v1
    :try_end_249
    .catchall {:try_start_22e .. :try_end_249} :catchall_249

    .line 2026
    .end local v0    # "errorMsg":Ljava/lang/String;
    .restart local v7    # "triggerAtTime":J
    .restart local v9    # "minInterval":J
    .restart local v36    # "interval":J
    .restart local v38    # "nowElapsed":J
    .restart local v40    # "nominalTrigger":J
    .restart local v42    # "minTrigger":J
    .restart local v44    # "triggerElapsed":J
    .restart local v46    # "maxElapsed":J
    .restart local v48    # "windowLength":J
    .restart local p0    # "this":Lcom/android/server/AlarmManagerService;
    .restart local p1    # "type":I
    .restart local p8    # "operation":Landroid/app/PendingIntent;
    .restart local p9    # "directReceiver":Landroid/app/IAlarmListener;
    .restart local p10    # "listenerTag":Ljava/lang/String;
    .restart local p11    # "flags":I
    .restart local p12    # "workSource":Landroid/os/WorkSource;
    .restart local p13    # "alarmClock":Landroid/app/AlarmManager$AlarmClockInfo;
    .restart local p14    # "callingUid":I
    .restart local p15    # "callingPackage":Ljava/lang/String;
    :catchall_249
    move-exception v0

    goto :goto_24e

    :catchall_24b
    move-exception v0

    move-object/from16 v5, p15

    :goto_24e
    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    move-object/from16 v26, v12

    goto :goto_288

    .line 2023
    :cond_255
    move-object/from16 v5, p15

    const/16 v17, 0x1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-wide v3, v7

    move-wide/from16 v5, v44

    move-wide/from16 v22, v7

    .end local v7    # "triggerAtTime":J
    .local v22, "triggerAtTime":J
    move-wide/from16 v7, v48

    move-wide/from16 v24, v9

    .end local v9    # "minInterval":J
    .local v24, "minInterval":J
    move-wide/from16 v9, v46

    move-object/from16 v26, v12

    move-wide/from16 v11, v36

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    move-object/from16 v15, p10

    move/from16 v16, p11

    move-object/from16 v18, p12

    move-object/from16 v19, p13

    move/from16 v20, p14

    move-object/from16 v21, p15

    :try_start_27c
    invoke-direct/range {v1 .. v21}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    .line 2026
    monitor-exit v26

    .line 2027
    return-void

    .line 2026
    .end local v22    # "triggerAtTime":J
    .end local v24    # "minInterval":J
    .restart local v7    # "triggerAtTime":J
    .restart local v9    # "minInterval":J
    :catchall_281
    move-exception v0

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    move-object/from16 v26, v12

    .end local v7    # "triggerAtTime":J
    .end local v9    # "minInterval":J
    .restart local v22    # "triggerAtTime":J
    .restart local v24    # "minInterval":J
    :goto_288
    monitor-exit v26
    :try_end_289
    .catchall {:try_start_27c .. :try_end_289} :catchall_28a

    throw v0

    :catchall_28a
    move-exception v0

    goto :goto_288

    .line 1951
    .end local v22    # "triggerAtTime":J
    .end local v24    # "minInterval":J
    .end local v38    # "nowElapsed":J
    .end local v40    # "nominalTrigger":J
    .end local v42    # "minTrigger":J
    .end local v44    # "triggerElapsed":J
    .end local v46    # "maxElapsed":J
    .end local v48    # "windowLength":J
    .local v3, "windowLength":J
    .restart local v9    # "minInterval":J
    .restart local p2    # "triggerAtTime":J
    :cond_28c
    move-wide/from16 v24, v9

    .line 1952
    .end local v9    # "minInterval":J
    .restart local v24    # "minInterval":J
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid alarm type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setTimeImpl(J)Z
    .registers 11
    .param p1, "millis"    # J

    .line 1832
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v0}, Lcom/android/server/AlarmManagerService$Injector;->isAlarmDriverPresent()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1833
    const-string v0, "AlarmManager"

    const-string v1, "Not setting time since no alarm driver is available."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const/4 v0, 0x0

    return v0

    .line 1838
    :cond_11
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/SamsungAlarmManagerService;->notifySetTime(J)V

    .line 1841
    iget-object v0, p0, Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1842
    :try_start_19
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v1}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v1

    .line 1843
    .local v1, "currentTimeMillis":J
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTime(J)V

    .line 1844
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    .line 1845
    .local v3, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v3, v1, v2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v4

    .line 1846
    .local v4, "currentTzOffset":I
    invoke-virtual {v3, p1, p2}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .line 1847
    .local v5, "newTzOffset":I
    if-eq v4, v5, :cond_44

    .line 1848
    const-string v6, "AlarmManager"

    const-string v7, "Timezone offset has changed, updating kernel timezone"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1849
    iget-object v6, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v7, 0xea60

    div-int v7, v5, v7

    neg-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1854
    :cond_44
    const/4 v6, 0x1

    monitor-exit v0

    return v6

    .line 1855
    .end local v1    # "currentTimeMillis":J
    .end local v3    # "timeZone":Ljava/util/TimeZone;
    .end local v4    # "currentTzOffset":I
    .end local v5    # "newTzOffset":I
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_19 .. :try_end_49} :catchall_47

    throw v1
.end method

.method setTimeZoneImpl(Ljava/lang/String;)V
    .registers 8
    .param p1, "tz"    # Ljava/lang/String;

    .line 1859
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1860
    return-void

    .line 1863
    :cond_7
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    .line 1866
    .local v0, "zone":Ljava/util/TimeZone;
    const/4 v1, 0x0

    .line 1867
    .local v1, "timeZoneWasChanged":Z
    monitor-enter p0

    .line 1868
    :try_start_d
    const-string/jumbo v2, "persist.sys.timezone"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1869
    .local v2, "current":Ljava/lang/String;
    if-eqz v2, :cond_20

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1873
    :cond_20
    const/4 v1, 0x1

    .line 1874
    const-string/jumbo v3, "persist.sys.timezone"

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    :cond_2b
    iget-object v3, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/AlarmManagerService$Injector;->getCurrentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1880
    .local v3, "gmtOffset":I
    iget-object v4, p0, Lcom/android/server/AlarmManagerService;->mInjector:Lcom/android/server/AlarmManagerService$Injector;

    const v5, 0xea60

    div-int v5, v3, v5

    neg-int v5, v5

    invoke-virtual {v4, v5}, Lcom/android/server/AlarmManagerService$Injector;->setKernelTimezone(I)V

    .line 1881
    .end local v2    # "current":Ljava/lang/String;
    .end local v3    # "gmtOffset":I
    monitor-exit p0
    :try_end_41
    .catchall {:try_start_d .. :try_end_41} :catchall_6c

    .line 1883
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 1885
    if-eqz v1, :cond_6b

    .line 1887
    iget-object v2, p0, Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;

    invoke-virtual {v2}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleDateChangedEvent()V

    .line 1890
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1891
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x25200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1895
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "time-zone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1896
    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1898
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6b
    return-void

    .line 1881
    :catchall_6c
    move-exception v2

    :try_start_6d
    monitor-exit p0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6c

    throw v2
.end method

.method setWakelockWorkSource(Landroid/os/WorkSource;ILjava/lang/String;Z)V
    .registers 8
    .param p1, "ws"    # Landroid/os/WorkSource;
    .param p2, "knownUid"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "first"    # Z

    .line 4771
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p4, :cond_7

    move-object v2, p3

    goto :goto_8

    :cond_7
    move-object v2, v0

    :goto_8
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setHistoryTag(Ljava/lang/String;)V

    .line 4773
    if-eqz p1, :cond_13

    .line 4774
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4775
    return-void

    .line 4778
    :cond_13
    if-ltz p2, :cond_20

    .line 4779
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    .line 4780
    return-void

    .line 4783
    :cond_20
    goto :goto_22

    .line 4782
    :catch_21
    move-exception v1

    .line 4786
    :goto_22
    iget-object v1, p0, Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 4787
    return-void
.end method

.method triggerAlarmsLocked(Ljava/util/ArrayList;J)Z
    .registers 35
    .param p2, "nowELAPSED"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;J)Z"
        }
    .end annotation

    .line 4036
    .local p1, "triggerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    move-object/from16 v0, p0

    move-object/from16 v15, p1

    const/4 v1, 0x0

    .line 4040
    .local v1, "hasWakeup":Z
    :goto_5
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v14, 0x1

    if-lez v2, :cond_1bd

    .line 4041
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/android/server/AlarmManagerService$Batch;

    .line 4042
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v2, v13, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, p2

    if-lez v2, :cond_22

    .line 4044
    move-object v2, v0

    move v3, v14

    goto/16 :goto_1bf

    .line 4049
    :cond_22
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mAlarmBatches:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4051
    invoke-virtual {v13}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v10

    .line 4052
    .local v10, "N":I
    const/4 v2, 0x0

    move/from16 v21, v1

    move v11, v2

    .end local v1    # "hasWakeup":Z
    .local v11, "i":I
    .local v21, "hasWakeup":Z
    :goto_2f
    if-ge v11, v10, :cond_1b0

    .line 4053
    invoke-virtual {v13, v11}, Lcom/android/server/AlarmManagerService$Batch;->get(I)Lcom/android/server/AlarmManagerService$Alarm;

    move-result-object v8

    .line 4055
    .local v8, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x4

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_6a

    .line 4058
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mLastAllowWhileIdleDispatch:Landroid/util/SparseLongArray;

    iget v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    const-wide/16 v5, -0x1

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v4

    .line 4059
    .local v4, "lastTime":J
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-direct {v0, v1}, Lcom/android/server/AlarmManagerService;->getWhileIdleMinIntervalLocked(I)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 4060
    .local v6, "minTime":J
    cmp-long v1, v4, v2

    if-ltz v1, :cond_6a

    cmp-long v1, p2, v6

    if-gez v1, :cond_6a

    .line 4064
    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    .line 4065
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    cmp-long v1, v1, v6

    if-gez v1, :cond_62

    .line 4066
    iput-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    .line 4068
    :cond_62
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->maxWhenElapsed:J

    iput-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedMaxWhenElapsed:J

    .line 4079
    invoke-direct {v0, v8, v14, v12}, Lcom/android/server/AlarmManagerService;->setImplLocked(Lcom/android/server/AlarmManagerService$Alarm;ZZ)V

    .line 4080
    goto :goto_d5

    .line 4083
    .end local v4    # "lastTime":J
    .end local v6    # "minTime":J
    :cond_6a
    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->isBackgroundRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 4088
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4089
    .local v1, "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v1, :cond_89

    .line 4090
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 4091
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingBackgroundAlarms:Landroid/util/SparseArray;

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4093
    :cond_89
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4094
    goto :goto_d5

    .line 4099
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_8d
    invoke-direct {v0, v8}, Lcom/android/server/AlarmManagerService;->isMARsRestricted(Lcom/android/server/AlarmManagerService$Alarm;)Z

    move-result v1

    if-eqz v1, :cond_e1

    .line 4101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deferring alarm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " due to freecess. [uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AlarmManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4102
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    iget v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 4103
    .restart local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    if-nez v1, :cond_d1

    .line 4104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 4105
    iget-object v2, v0, Lcom/android/server/AlarmManagerService;->mPendingMARsRestrictedAlarms:Landroid/util/SparseArray;

    iget v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->creatorUid:I

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4107
    :cond_d1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4108
    nop

    .line 4052
    .end local v1    # "alarmsForUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_d5
    move-object v2, v0

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v29, v12

    move-object/from16 v28, v13

    move v3, v14

    goto/16 :goto_1a2

    .line 4113
    .restart local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_e1
    iput v14, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 4114
    invoke-virtual {v15, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4115
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_f8

    .line 4116
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    if-eqz v1, :cond_f2

    move v1, v14

    goto :goto_f3

    :cond_f2
    move v1, v12

    :goto_f3
    iget-object v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->statsTag:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/android/server/EventLogTags;->writeDeviceIdleWakeFromIdle(ILjava/lang/String;)V

    .line 4119
    :cond_f8
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    const/4 v4, 0x0

    if-ne v1, v8, :cond_105

    .line 4120
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mPendingIdleUntil:Lcom/android/server/AlarmManagerService$Alarm;

    .line 4121
    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 4122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/AlarmManagerService;->restorePendingWhileIdleAlarmsLocked()V

    .line 4124
    :cond_105
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    if-ne v1, v8, :cond_10e

    .line 4125
    iput-object v4, v0, Lcom/android/server/AlarmManagerService;->mNextWakeFromIdle:Lcom/android/server/AlarmManagerService$Alarm;

    .line 4126
    invoke-virtual {v0, v12}, Lcom/android/server/AlarmManagerService;->rebatchAllAlarmsLocked(Z)V

    .line 4131
    :cond_10e
    iget-wide v4, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    cmp-long v1, v4, v2

    if-lez v1, :cond_17b

    .line 4133
    iget-object v1, v0, Lcom/android/server/AlarmManagerService;->mAppSync:Lcom/android/server/AppSyncWrapper;

    invoke-virtual {v1, v8}, Lcom/android/server/AppSyncWrapper;->rescheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V

    .line 4137
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    sub-long v3, p2, v3

    iget-wide v5, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    div-long/2addr v3, v5

    add-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    .line 4139
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    int-to-long v1, v1

    iget-wide v3, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    mul-long v22, v1, v3

    .line 4140
    .local v22, "delta":J
    iget-wide v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->expectedWhenElapsed:J

    add-long v24, v1, v22

    .local v24, "nextElapsed":J
    move-wide/from16 v4, v24

    .line 4141
    iget v1, v8, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    iget-wide v2, v8, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    add-long v2, v2, v22

    iget-wide v6, v8, Lcom/android/server/AlarmManagerService$Alarm;->windowLength:J

    move-object/from16 v17, v13

    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v17, "batch":Lcom/android/server/AlarmManagerService$Batch;
    iget-wide v12, v8, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    .line 4142
    move-object v14, v8

    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v14, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-wide/from16 v8, p2

    move/from16 v26, v10

    move/from16 v27, v11

    .end local v10    # "N":I
    .end local v11    # "i":I
    .local v26, "N":I
    .local v27, "i":I
    move-wide/from16 v10, v24

    move-object/from16 v28, v17

    const/16 v29, 0x0

    .end local v17    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .local v28, "batch":Lcom/android/server/AlarmManagerService$Batch;
    invoke-static/range {v8 .. v13}, Lcom/android/server/AlarmManagerService;->maxTriggerTime(JJJ)J

    move-result-wide v8

    iget-wide v10, v14, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    iget-object v12, v14, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object v13, v14

    .end local v14    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v13, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    move-object/from16 v14, v16

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->flags:I

    move v15, v14

    const/16 v16, 0x1

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->workSource:Landroid/os/WorkSource;

    move-object/from16 v17, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move-object/from16 v18, v14

    iget v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->uid:I

    move/from16 v19, v14

    iget-object v14, v13, Lcom/android/server/AlarmManagerService$Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v20, v14

    .line 4141
    move-object v14, v0

    move-object/from16 v0, p0

    move-object/from16 v30, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    .end local v13    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v30, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    invoke-direct/range {v0 .. v20}, Lcom/android/server/AlarmManagerService;->setImplLocked(IJJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;IZLandroid/os/WorkSource;Landroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;)Lcom/android/server/AlarmManagerService$Alarm;

    goto :goto_185

    .line 4131
    .end local v22    # "delta":J
    .end local v24    # "nextElapsed":J
    .end local v26    # "N":I
    .end local v27    # "i":I
    .end local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .end local v30    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v10    # "N":I
    .restart local v11    # "i":I
    .local v13, "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_17b
    move-object/from16 v30, v8

    move/from16 v26, v10

    move/from16 v27, v11

    move/from16 v29, v12

    move-object/from16 v28, v13

    .line 4147
    .end local v8    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v10    # "N":I
    .end local v11    # "i":I
    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v26    # "N":I
    .restart local v27    # "i":I
    .restart local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v30    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_185
    move-object/from16 v0, v30

    .end local v30    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-boolean v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->wakeup:Z

    if-eqz v1, :cond_18d

    .line 4148
    const/16 v21, 0x1

    .line 4152
    :cond_18d
    iget-object v1, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_19f

    .line 4154
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/android/server/AlarmManagerService;->mSamsungAlarmManagerService:Lcom/android/server/SamsungAlarmManagerService;

    const-string/jumbo v3, "trigger"

    invoke-virtual {v1, v0, v3}, Lcom/android/server/SamsungAlarmManagerService;->notifyAlarmClockChanged(Lcom/android/server/AlarmManagerService$Alarm;Ljava/lang/String;)V

    .line 4156
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z

    goto :goto_1a2

    .line 4152
    :cond_19f
    const/4 v3, 0x1

    move-object/from16 v2, p0

    .line 4052
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1a2
    add-int/lit8 v11, v27, 0x1

    move-object/from16 v15, p1

    move-object v0, v2

    move v14, v3

    move/from16 v10, v26

    move-object/from16 v13, v28

    move/from16 v12, v29

    .end local v27    # "i":I
    .restart local v11    # "i":I
    goto/16 :goto_2f

    .end local v26    # "N":I
    .end local v28    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    .restart local v10    # "N":I
    .restart local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    :cond_1b0
    move-object v2, v0

    move/from16 v26, v10

    move/from16 v27, v11

    move-object/from16 v28, v13

    .line 4159
    .end local v10    # "N":I
    .end local v11    # "i":I
    .end local v13    # "batch":Lcom/android/server/AlarmManagerService$Batch;
    move-object/from16 v15, p1

    move/from16 v1, v21

    goto/16 :goto_5

    .line 4040
    .end local v21    # "hasWakeup":Z
    .local v1, "hasWakeup":Z
    :cond_1bd
    move-object v2, v0

    move v3, v14

    .line 4163
    :goto_1bf
    iget v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    add-int/2addr v0, v3

    iput v0, v2, Lcom/android/server/AlarmManagerService;->mCurrentSeq:I

    .line 4164
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/AlarmManagerService;->calculateDeliveryPriorities(Ljava/util/ArrayList;)V

    .line 4165
    iget-object v0, v2, Lcom/android/server/AlarmManagerService;->mAlarmDispatchComparator:Ljava/util/Comparator;

    move-object/from16 v3, p1

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4173
    return v1
.end method
