.class public Lcom/android/server/wm/ActivityManagerPerformance;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;,
        Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;
    }
.end annotation


# static fields
.field public static AMP_ENABLE:Z = false

.field public static AMP_PERF_ENABLE:Z = false

.field public static AMP_RELAUNCH_RESUME_ON:Z = false

.field public static DEBUG:Z = false

.field public static DEBUG_TRACE:Z = false

.field private static final MSG_CFMS_EXEC_ACTIVITY:I = 0x5

.field private static final MSG_CFMS_HINT_AMS_HOME:I = 0x7

.field private static final MSG_CFMS_HINT_AMS_SWITCH:I = 0x6

.field private static final MSG_DISABLE_ACT_RESUME:I = 0x3

.field private static final MSG_DISABLE_ACT_START:I = 0x2

.field private static final MSG_DISABLE_APP_SWITCH:I = 0x1

.field private static final MSG_ENABLE_ACT_RESUME_TAIL:I = 0x4

.field private static final MSG_ENABLE_APP_SWITCH:I = 0x8

.field private static final MSG_OLAF_FREEZE_CLEAR:I = 0xa

.field private static final MSG_OLAF_FREEZE_ON_OFF:I = 0x9

.field private static final MSG_PERF_RESERVE_ON_OFF:I = 0xb

.field private static final MSG_PERF_TASK_BOOST:I = 0xc

.field public static NOT_USER_BINARY:Z = false

.field private static SCHED_GROUP_FG:I = 0x0

.field private static final SPEG_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.speg"

.field static final TAG:Ljava/lang/String; = "ActivityManagerPerformance"

.field private static final TAG_SPEG:Ljava/lang/String; = "SPEG"

.field private static TIMEOUT_ACT_RESUME:I = 0x0

.field private static TIMEOUT_ACT_START:I = 0x0

.field private static TIMEOUT_APP_SWITCH:I = 0x0

.field private static TIMEOUT_PREV_RESUME:I = 0x0

.field static final TOP_STATE_APP:I = 0x4

.field static final TOP_STATE_HOME:I = 0x2

.field static final TOP_STATE_INIT:I = 0x0

.field static final TOP_STATE_IS_CREATING:I = 0x1

.field static final TOP_STATE_RECENTS_APP:I = 0x3

.field private static booster:Lcom/android/server/wm/ActivityManagerPerformance;

.field static curTopAct:Lcom/android/server/wm/ActivityRecord;

.field static curTopState:I

.field private static final gHotLaunchBoosterPkgs:[Ljava/lang/String;

.field private static isChinaModel:Z

.field static isPerfReserveSupport:Z

.field private static lastMultiWindowWorkTime:J

.field private static final mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

.field private static final mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

.field private static final mLockinit:Ljava/lang/Object;

.field private static mSchedPolicyUpdated:Z

.field private static mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

.field private static final sLowPerformancePkgList:[Ljava/lang/String;

.field private static sLowPerformancePkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isMultiWindowResume:Z

.field private lastHomeBoostedTime:J

.field private lastHomePressedTime:J

.field private mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

.field private mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsScreenOn:Z

.field private mLockActResume:Ljava/lang/Object;

.field private mLockActStart:Ljava/lang/Object;

.field private mLockAppLaunch:Ljava/lang/Object;

.field private mLockAppSwitch:Ljava/lang/Object;

.field private mLockHome:Ljava/lang/Object;

.field private mLockRelaunchResume:Ljava/lang/Object;

.field private mLockTail:Ljava/lang/Object;

.field private mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

.field private final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private needSkipResume:Z

.field private rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

.field private rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

.field private rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

.field private rLastActHome:Lcom/android/server/wm/ActivityRecord;

.field private rLastActTail:Lcom/android/server/wm/ActivityRecord;

.field private rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 42
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "false"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string/jumbo v4, "true"

    if-eqz v0, :cond_22

    const-string/jumbo v0, "ro.product_ship"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_22

    :cond_20
    move v0, v3

    goto :goto_23

    :cond_22
    :goto_22
    move v0, v2

    :goto_23
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    .line 43
    if-nez v0, :cond_37

    const-string/jumbo v0, "sys.config.amp_debug"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_37

    :cond_35
    move v0, v3

    goto :goto_38

    :cond_37
    :goto_37
    move v0, v2

    :goto_38
    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 44
    const-string/jumbo v0, "sys.config.amp_debug_trace"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 45
    const-string/jumbo v0, "sys.config.amp_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 46
    const-string/jumbo v0, "sys.config.amp_perf_enable"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 47
    const-string/jumbo v0, "sys.config.amp_relaunch_resume"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 48
    const-string/jumbo v0, "sys.config.amp_to_act_resume"

    const-string v1, "1000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 49
    const-string/jumbo v0, "sys.config.amp_to_act_start"

    const-string v1, "2000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 50
    const-string/jumbo v0, "sys.config.amp_to_app_switch"

    const-string v1, "3000"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 51
    const-string/jumbo v0, "sys.config.amp_to_prev_resume"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 52
    const-string/jumbo v0, "ro.csc.country_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "China"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    .line 53
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/16 v4, 0x1c

    new-array v5, v4, [I

    fill-array-data v5, :array_1b4

    .line 54
    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    const/16 v5, 0x12

    new-array v6, v5, [I

    fill-array-data v6, :array_1f0

    .line 58
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    .line 63
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    new-array v6, v4, [I

    fill-array-data v6, :array_218

    .line 64
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v3

    const/16 v6, 0x15

    new-array v6, v6, [I

    fill-array-data v6, :array_254

    .line 67
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    new-array v6, v4, [I

    fill-array-data v6, :array_282

    .line 70
    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v0

    const/4 v0, 0x3

    const/16 v6, 0x13

    new-array v7, v6, [I

    fill-array-data v7, :array_2be

    .line 73
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const/4 v0, 0x4

    new-array v7, v4, [I

    fill-array-data v7, :array_2e8

    .line 75
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const/4 v0, 0x5

    const/16 v7, 0x19

    new-array v8, v7, [I

    fill-array-data v8, :array_324

    .line 78
    invoke-static {v8}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v1, v0

    const/4 v0, 0x6

    new-array v7, v7, [I

    fill-array-data v7, :array_35a

    .line 81
    invoke-static {v7}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v0

    const/4 v0, 0x7

    new-array v4, v4, [I

    fill-array-data v4, :array_390

    .line 84
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/16 v0, 0x8

    new-array v4, v6, [I

    fill-array-data v4, :array_3cc

    .line 87
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/16 v0, 0x9

    const/16 v4, 0xe

    new-array v4, v4, [I

    fill-array-data v4, :array_3f6

    .line 89
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/16 v0, 0xa

    new-array v4, v5, [I

    fill-array-data v4, :array_416

    .line 91
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    const/16 v0, 0xb

    new-array v4, v6, [I

    fill-array-data v4, :array_43e

    .line 93
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v0

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    .line 98
    new-array v0, v2, [Ljava/lang/String;

    const/16 v1, 0x1a

    new-array v4, v1, [I

    fill-array-data v4, :array_468

    .line 99
    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    .line 105
    new-array v0, v2, [Ljava/lang/String;

    new-array v1, v1, [I

    fill-array-data v1, :array_4a0

    .line 106
    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->x([I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->gHotLaunchBoosterPkgs:[Ljava/lang/String;

    .line 141
    sput-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 150
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    .line 164
    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    const/4 v1, -0x1

    const-string v4, ""

    invoke-direct {v0, v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    .line 165
    sput v2, Lcom/android/server/wm/ActivityManagerPerformance;->SCHED_GROUP_FG:I

    .line 166
    sput-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->mSchedPolicyUpdated:Z

    .line 185
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    return-void

    nop

    :array_1b4
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_1f0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x19
        0x12
        0x8
        0x15
        0x17
        0x1f
    .end array-data

    :array_218
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x9
        0x18
        0x8
        0x15
        0xd
        0x9
        0x1f
        0x8
    .end array-data

    :array_254
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x17
    .end array-data

    :array_282
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1f
        0x17
        0x1b
        0x13
        0x16
        0x54
        0xf
        0x13
    .end array-data

    :array_2be
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x1f
        0x14
        0x1e
        0x13
        0x14
        0x1d
    .end array-data

    :array_2e8
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1f
        0xc
        0x1f
        0x8
        0x1d
        0x16
        0x1b
        0x1e
        0x1f
        0x9
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_324
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1b
        0x17
        0x9
        0xf
        0x14
        0x1d
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0xc
        0x13
        0x1e
        0x1f
        0x15
    .end array-data

    :array_35a
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1d
        0x1b
        0x16
        0x16
        0x1f
        0x8
        0x3
        0x49
        0x1e
    .end array-data

    :array_390
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x1d
        0x15
        0x15
        0x1d
        0x16
        0x1f
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x54
        0x17
        0x1b
        0xa
        0x9
    .end array-data

    :array_3cc
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x1b
        0xa
        0xa
        0x9
        0x1f
        0x1b
        0x8
        0x19
        0x12
    .end array-data

    :array_3f6
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x13
        0x14
        0x1b
        0x54
        0xd
        0x1f
        0x13
        0x18
        0x15
    .end array-data

    :array_416
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x18
        0x1b
        0x13
        0x1e
        0xf
        0x54
        0x38
        0x1b
        0x13
        0x1e
        0xf
        0x37
        0x1b
        0xa
    .end array-data

    :array_43e
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0xe
        0xd
        0x13
        0xe
        0xe
        0x1f
        0x8
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
    .end array-data

    :array_468
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x19
        0x1b
        0x17
        0x1f
        0x8
        0x1b
    .end array-data

    :array_4a0
    .array-data 4
        0x19
        0x15
        0x17
        0x54
        0x9
        0x1f
        0x19
        0x54
        0x1b
        0x14
        0x1e
        0x8
        0x15
        0x13
        0x1e
        0x54
        0x1b
        0xa
        0xa
        0x54
        0x19
        0x1b
        0x17
        0x1f
        0x8
        0x1b
    .end array-data
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V
    .registers 7
    .param p1, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    .line 459
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    .line 460
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    .line 461
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    .line 462
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    .line 463
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    .line 464
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    .line 1312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 1325
    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityManagerPerformance$1;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 171
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4a
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgList:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_59

    .line 175
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    aget-object v1, v1, v0

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_4a

    .line 177
    .end local v0    # "i":I
    :cond_59
    new-instance v0, Lcom/android/server/ServiceThread;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "AmpHandlerThread"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 179
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 180
    new-instance v0, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;-><init>(Lcom/android/server/wm/ActivityManagerPerformance;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    .line 181
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/perf_reserve"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    .line 182
    invoke-direct {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->registerReceiver()V

    .line 183
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ActivityManagerPerformance;ZLcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/server/wm/ActivityRecord;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ActivityManagerPerformance;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->olafFreezer(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wm/ActivityManagerPerformance;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->perfReserveControl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wm/ActivityManagerPerformance;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # I

    .line 38
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->taskBoostAcq(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/wm/ActivityManagerPerformance;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/server/wm/ActivityManagerPerformance;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/ActivityManagerPerformance;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    return p1
.end method

.method private checkBoostDisabledByFold()Z
    .registers 2

    .line 343
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-nez v0, :cond_6

    .line 344
    const/4 v0, 0x0

    return v0

    .line 346
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isFolded()Z

    move-result v0

    return v0
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 1344
    if-eqz p0, :cond_198

    if-nez p1, :cond_6

    goto/16 :goto_198

    .line 1346
    :cond_6
    const/4 v0, 0x0

    .line 1347
    .local v0, "value":Ljava/lang/String;
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 1348
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1349
    :cond_1a
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->NOT_USER_BINARY:Z

    const-string/jumbo v2, "true"

    if-eqz v1, :cond_14a

    .line 1350
    const-string v1, "_perf_enable="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 1351
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1352
    .local v1, "enable":Z
    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    .line 1353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP perf enable change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    return-void

    .line 1355
    .end local v1    # "enable":Z
    :cond_44
    const-string v1, "_enable="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1356
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1357
    .restart local v1    # "enable":Z
    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    .line 1358
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP enable change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v2, :cond_73

    .line 1360
    if-eqz v1, :cond_70

    .line 1361
    invoke-direct {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->registerReceiver()V

    goto :goto_73

    .line 1363
    :cond_70
    invoke-direct {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->unregisterReceiver()V

    .line 1365
    :cond_73
    :goto_73
    return-void

    .line 1366
    .end local v1    # "enable":Z
    :cond_74
    const-string v1, "_relaunch_resume="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 1367
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1368
    .restart local v1    # "enable":Z
    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    .line 1369
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP relaunch_resume change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    return-void

    .line 1371
    .end local v1    # "enable":Z
    :cond_97
    const-string v1, "_to_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14a

    .line 1372
    const/4 v1, -0x1

    .line 1374
    .local v1, "time":I
    :try_start_a0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_a4
    .catch Ljava/lang/NumberFormatException; {:try_start_a0 .. :try_end_a4} :catch_12c

    move v1, v3

    .line 1378
    nop

    .line 1379
    const/16 v3, 0x64

    if-ge v1, v3, :cond_b0

    .line 1380
    const-string v2, "-- AMP time cannot be under 100ms"

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1381
    return-void

    .line 1383
    :cond_b0
    const-string v3, "_app_switch="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cf

    .line 1384
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_APP_SWITCH change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1386
    return-void

    .line 1387
    :cond_cf
    const-string v3, "_act_start="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_ee

    .line 1388
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_ACT_START change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1390
    return-void

    .line 1391
    :cond_ee
    const-string v3, "_act_resume="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_10d

    .line 1392
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 1393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_ACT_RESUME change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1394
    return-void

    .line 1395
    :cond_10d
    const-string v3, "_prev_resume="

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_14a

    .line 1396
    sput v1, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP TIMEOUT_PREV_RESUME change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1398
    return-void

    .line 1375
    :catch_12c
    move-exception v2

    .line 1376
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-- AMP cannot change time. value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1377
    return-void

    .line 1402
    .end local v1    # "time":I
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_14a
    const-string v1, "_debug="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16d

    .line 1403
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1404
    .local v1, "debug":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP debug change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1405
    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    .line 1406
    return-void

    .line 1407
    .end local v1    # "debug":Z
    :cond_16d
    const-string v1, "_debug_trace="

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_190

    .line 1408
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1409
    .restart local v1    # "debug":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-- AMP debug_trace change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1410
    sput-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    .line 1411
    return-void

    .line 1413
    .end local v1    # "debug":Z
    :cond_190
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v1, :cond_197

    .line 1414
    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->dump(Ljava/io/PrintWriter;)V

    .line 1415
    :cond_197
    return-void

    .line 1345
    .end local v0    # "value":Ljava/lang/String;
    :cond_198
    :goto_198
    return-void
.end method

.method private static getAppLaunchHintIdByPkg(Ljava/lang/String;)I
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;

    .line 113
    if-nez p0, :cond_5

    .line 114
    const/16 v0, -0x3e7

    return v0

    .line 116
    :cond_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutM:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_1a

    aget-object v4, v0, v3

    .line 117
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 118
    const/16 v0, 0x1b

    return v0

    .line 116
    .end local v4    # "s":Ljava/lang/String;
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 121
    :cond_1a
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mAppLaunchPackagesTimeOutLM:[Ljava/lang/String;

    array-length v1, v0

    :goto_1d
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 122
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 123
    const/16 v0, 0x1c

    return v0

    .line 121
    .end local v3    # "s":Ljava/lang/String;
    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 126
    :cond_2d
    const/16 v0, 0x20

    return v0
.end method

.method public static getBooster()Lcom/android/server/wm/ActivityManagerPerformance;
    .registers 1

    .line 198
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_7

    .line 199
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    return-object v0

    .line 200
    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getBooster(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)Lcom/android/server/wm/ActivityManagerPerformance;
    .registers 4
    .param p0, "service"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p1, "context"    # Landroid/content/Context;

    .line 188
    if-eqz p0, :cond_24

    if-nez p1, :cond_5

    goto :goto_24

    .line 190
    :cond_5
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockinit:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_8
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_1b

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v1, :cond_1b

    if-eqz p0, :cond_1b

    if-eqz p1, :cond_1b

    .line 192
    new-instance v1, Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    .line 193
    :cond_1b
    invoke-static {}, Lcom/android/server/wm/ActivityManagerPerformance;->getBooster()Lcom/android/server/wm/ActivityManagerPerformance;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 194
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_21

    throw v1

    .line 189
    :cond_24
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private static isHotLaunchBoosterPkg(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkg"    # Ljava/lang/String;

    .line 130
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 131
    return v0

    .line 133
    :cond_4
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->gHotLaunchBoosterPkgs:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_8
    if-ge v3, v2, :cond_17

    aget-object v4, v1, v3

    .line 134
    .local v4, "s":Ljava/lang/String;
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 135
    const/4 v0, 0x1

    return v0

    .line 133
    .end local v4    # "s":Ljava/lang/String;
    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 138
    :cond_17
    return v0
.end method

.method private isMultiWindowScenario(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "prevAct"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "curAct"    # Lcom/android/server/wm/ActivityRecord;

    .line 1457
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1458
    .local v0, "now":J
    if-eqz p1, :cond_d

    iget-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eqz v2, :cond_d

    .line 1459
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    goto :goto_39

    .line 1460
    :cond_d
    if-eqz p2, :cond_16

    iget-boolean v2, p2, Lcom/android/server/wm/ActivityRecord;->mLastReportedMultiWindowMode:Z

    if-eqz v2, :cond_16

    .line 1461
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    goto :goto_39

    .line 1462
    :cond_16
    const-string v2, "appsedge"

    if-eqz p1, :cond_29

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v3, :cond_29

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1463
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    goto :goto_39

    .line 1464
    :cond_29
    if-eqz p2, :cond_39

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    if-eqz v3, :cond_39

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 1465
    sput-wide v0, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    .line 1466
    :cond_39
    :goto_39
    sget-wide v2, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-gez v2, :cond_45

    const/4 v2, 0x1

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    return v2
.end method

.method private isSpeg(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "launchedFromPackage"    # Ljava/lang/String;

    .line 353
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DISABLE_SPEG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 354
    :cond_6
    const-string v0, "com.samsung.speg"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping boost of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SPEG"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/4 v0, 0x1

    return v0

    .line 358
    :cond_26
    return v1
.end method

.method static declared-synchronized notifyCurTopAct(Lcom/android/server/wm/ActivityRecord;)V
    .registers 12
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    const-class v0, Lcom/android/server/wm/ActivityManagerPerformance;

    monitor-enter v0

    .line 369
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_185

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_d

    goto/16 :goto_185

    .line 371
    :cond_d
    const-string/jumbo v1, "notifyCurTopAct()"

    .line 372
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-nez p0, :cond_18

    move v6, v5

    goto :goto_29

    .line 373
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_20

    move v6, v3

    goto :goto_29

    .line 374
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v6

    if-eqz v6, :cond_28

    move v6, v2

    goto :goto_29

    :cond_28
    move v6, v4

    :goto_29
    nop

    .line 375
    .local v6, "topState":I
    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_e5

    .line 376
    const-string/jumbo v7, "notifyCurTopAct() activity changed"

    .line 377
    .local v7, "log":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[Activity] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 378
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_d4

    .line 379
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[Process] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    if-eqz v9, :cond_6b

    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_6c

    :cond_6b
    move-object v9, v10

    :goto_6c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_79

    iget-object v9, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_7a

    :cond_79
    move-object v9, v10

    :goto_7a
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 380
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[Package] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v9, :cond_98

    sget-object v9, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    iget-object v9, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_99

    :cond_98
    move-object v9, v10

    :goto_99
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_a5

    iget-object v10, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :cond_a5
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n[TOP_STATE] prev: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v9}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", cur: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 383
    :cond_d4
    const-string v8, "ActivityManagerPerformance"

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_e5

    .line 385
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 387
    .end local v7    # "log":Ljava/lang/String;
    :cond_e5
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 388
    sget v7, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-eq v7, v6, :cond_168

    .line 389
    sget v7, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 390
    .local v7, "lastTopState":I
    sput v6, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    .line 391
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v8, :cond_168

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v8, :cond_168

    sget-object v8, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean v8, v8, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-eqz v8, :cond_168

    .line 392
    const/4 v8, 0x0

    if-ne v6, v3, :cond_113

    .line 393
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_10c

    .line 394
    const-string v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "notifyCurTopAct() call setBoosterHome()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_10c
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {v2, v5, v8, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V
    :try_end_111
    .catchall {:try_start_3 .. :try_end_111} :catchall_187

    .line 396
    monitor-exit v0

    return-void

    .line 398
    :cond_113
    if-ne v7, v2, :cond_168

    if-eq v6, v4, :cond_119

    if-ne v6, v5, :cond_168

    .line 400
    :cond_119
    :try_start_119
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v2, v2, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 401
    .local v2, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_12f

    if-eq v2, p0, :cond_12e

    if-eqz p0, :cond_12f

    iget-object v3, p0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12e

    goto :goto_12f

    .line 419
    .end local v2    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_12e
    goto :goto_168

    .line 403
    .restart local v2    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_12f
    :goto_12f
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-boolean v3, v3, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    if-eqz v3, :cond_14b

    sget v3, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne v3, v4, :cond_14b

    .line 404
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v8, v3, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 405
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_149

    .line 406
    const-string v3, "ActivityManagerPerformance"

    const-string/jumbo v4, "notifyCurTopAct() skipped. isMultiWindowResume: true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_149
    .catch Ljava/lang/NullPointerException; {:try_start_119 .. :try_end_149} :catch_15e
    .catchall {:try_start_119 .. :try_end_149} :catchall_187

    .line 407
    :cond_149
    monitor-exit v0

    return-void

    .line 409
    :cond_14b
    :try_start_14b
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_157

    .line 410
    const-string v3, "ActivityManagerPerformance"

    const-string/jumbo v4, "notifyCurTopAct() call setBoosterAppSwitch()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    :cond_157
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    invoke-direct {v3, v5, p0}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V
    :try_end_15c
    .catch Ljava/lang/NullPointerException; {:try_start_14b .. :try_end_15c} :catch_15e
    .catchall {:try_start_14b .. :try_end_15c} :catchall_187

    .line 413
    monitor-exit v0

    return-void

    .line 415
    .end local v2    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :catch_15e
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_15f
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 417
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    iput-boolean v8, v3, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z
    :try_end_166
    .catchall {:try_start_15f .. :try_end_166} :catchall_187

    .line 418
    monitor-exit v0

    return-void

    .line 424
    .end local v2    # "e":Ljava/lang/NullPointerException;
    .end local v7    # "lastTopState":I
    :cond_168
    :goto_168
    :try_start_168
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v2, :cond_183

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_183

    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    if-eqz v2, :cond_183

    .line 425
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->booster:Lcom/android/server/wm/ActivityManagerPerformance;

    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->sLowPerformancePkgSet:Ljava/util/HashSet;

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    invoke-direct {v2, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->setLowPower(Z)V
    :try_end_183
    .catchall {:try_start_168 .. :try_end_183} :catchall_187

    .line 427
    :cond_183
    monitor-exit v0

    return-void

    .line 370
    .end local v1    # "method":Ljava/lang/String;
    .end local v6    # "topState":I
    :cond_185
    :goto_185
    monitor-exit v0

    return-void

    .line 368
    .end local p0    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_187
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized notifyMultiWindowChanged(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    const-class v0, Lcom/android/server/wm/ActivityManagerPerformance;

    monitor-enter v0

    .line 326
    :try_start_3
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v1, :cond_50

    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-ne v1, p0, :cond_c

    goto :goto_50

    .line 328
    :cond_c
    const-string/jumbo v1, "notifyMultiWindowChanged()"

    .line 329
    .local v1, "method":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v2, :cond_46

    .line 330
    const-string/jumbo v2, "notifyMultiWindowChanged() focus changed"

    .line 331
    .local v2, "log":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n[Activity] prev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", cur: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 332
    const-string v3, "ActivityManagerPerformance"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v3, :cond_46

    .line 334
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 336
    .end local v2    # "log":Ljava/lang/String;
    :cond_46
    sput-object p0, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    .line 338
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/wm/ActivityManagerPerformance;->lastMultiWindowWorkTime:J
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_52

    .line 340
    monitor-exit v0

    return-void

    .line 327
    .end local v1    # "method":Ljava/lang/String;
    :cond_50
    :goto_50
    monitor-exit v0

    return-void

    .line 325
    .end local p0    # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_52
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private olafFreezer(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 975
    const-string v0, ""

    invoke-static {p1}, Landroid/os/Process;->doSomethingOlaf(Z)V

    .line 978
    const/4 v1, -0x1

    :try_start_6
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iget v2, v2, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    if-eq v2, v1, :cond_3e

    .line 979
    sget-object v2, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iget v2, v2, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    invoke-static {v2}, Landroid/os/Process;->getProcessGroup(I)I

    move-result v2

    .line 981
    .local v2, "schedGroup":I
    const/4 v3, 0x0

    if-eqz p1, :cond_26

    .line 982
    sget v4, Lcom/android/server/wm/ActivityManagerPerformance;->SCHED_GROUP_FG:I

    if-ne v2, v4, :cond_3e

    .line 983
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iget v4, v4, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    invoke-static {v4, v3}, Landroid/os/Process;->setProcessGroup(II)V

    .line 984
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->mSchedPolicyUpdated:Z

    goto :goto_3e

    .line 987
    :cond_26
    if-nez v2, :cond_3c

    .line 988
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->mSchedPolicyUpdated:Z

    if-eqz v4, :cond_34

    .line 989
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iget v4, v4, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    invoke-static {v4, v1}, Landroid/os/Process;->setProcessGroup(II)V

    goto :goto_3c

    .line 991
    :cond_34
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput v1, v4, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    .line 992
    sget-object v4, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput-object v0, v4, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->packageName:Ljava/lang/String;

    .line 995
    :cond_3c
    :goto_3c
    sput-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->mSchedPolicyUpdated:Z
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_3e} :catch_3f

    .line 1002
    .end local v2    # "schedGroup":I
    :cond_3e
    :goto_3e
    goto :goto_4f

    .line 998
    :catch_3f
    move-exception v2

    .line 999
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManagerPerformance"

    const-string v4, "Wallpaper information will be initialized"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    sget-object v3, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput v1, v3, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    .line 1001
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->packageName:Ljava/lang/String;

    .line 1004
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4f
    return-void
.end method

.method private perfReserveControl(Ljava/lang/String;)V
    .registers 3
    .param p1, "nice_value"    # Ljava/lang/String;

    .line 1008
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz v0, :cond_9

    .line 1009
    const-string v0, "/proc/perf_reserve"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->writeSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    :cond_9
    return-void
.end method

.method private final registerReceiver()V
    .registers 4

    .line 1315
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1316
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1317
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1318
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1319
    return-void
.end method

.method private setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 12
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 470
    const-string/jumbo v0, "setBoosterActResume()"

    .line 471
    .local v0, "method":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p2, :cond_9

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    .line 472
    .local v2, "pkgName":Ljava/lang/String;
    :goto_a
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_89

    .line 473
    if-eqz p2, :cond_13

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v3, v1

    .line 474
    .local v3, "procName":Ljava/lang/String;
    :goto_14
    const/4 v4, 0x0

    .line 476
    .local v4, "curBoostProcName":Ljava/lang/String;
    :try_start_15
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 477
    .local v5, "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1f

    goto :goto_1d

    :cond_1c
    move-object v6, v1

    :goto_1d
    move-object v4, v6

    .line 481
    .end local v5    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    goto :goto_24

    .line 478
    :catch_1f
    move-exception v5

    .line 479
    .local v5, "e":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    .line 480
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 482
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterActResume() onoff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), curBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManagerPerformance"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_89

    .line 484
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterActResume() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManagerPerformance"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    .end local v3    # "procName":Ljava/lang/String;
    .end local v4    # "curBoostProcName":Ljava/lang/String;
    :cond_89
    if-eqz p1, :cond_a5

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9b

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    .line 489
    :cond_9b
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 491
    :cond_a5
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_b5

    .line 492
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const/16 v4, 0x15

    const-string v5, "AMS_ACT_RESUME"

    invoke-static {v3, v5, v4}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 493
    :cond_b5
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 494
    .local v3, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v3, :cond_c2

    .line 495
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v4, "setBoosterActResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    return-void

    .line 499
    :cond_c2
    const/4 v4, 0x3

    if-eqz p1, :cond_13e

    .line 500
    if-eqz p2, :cond_d0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5

    if-eqz v5, :cond_d0

    const/16 v5, 0x1f4

    goto :goto_d2

    :cond_d0
    sget v5, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    .line 501
    .local v5, "boostMaxTime":I
    :goto_d2
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 503
    :try_start_d7
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v6
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d7 .. :try_end_da} :catch_f8

    .line 504
    :try_start_da
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 505
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 506
    monitor-exit v6
    :try_end_e0
    .catchall {:try_start_da .. :try_end_e0} :catchall_f5

    .line 507
    :try_start_e0
    const-string v6, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() ACT_RESUME"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v6, v4, p2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 509
    .local v4, "nmsg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v7, v5

    invoke-virtual {v6, v4, v7, v8}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_f3} :catch_f8

    .line 517
    nop

    .end local v4    # "nmsg":Landroid/os/Message;
    goto :goto_13d

    .line 506
    :catchall_f5
    move-exception v4

    :try_start_f6
    monitor-exit v6
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    .end local v0    # "method":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local v5    # "boostMaxTime":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "onoff":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_f7
    throw v4
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_f8} :catch_f8

    .line 510
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local v5    # "boostMaxTime":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "onoff":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_f8
    move-exception v4

    .line 511
    .local v4, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_ff

    iget-object v1, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 512
    .local v1, "curBoostProcName":Ljava/lang/String;
    :cond_ff
    const-string v6, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() ACT_RESUME failed. stop boosting"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_134

    .line 514
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AMP_acquire() ACT_RESUME failed["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "] e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManagerPerformance"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_134
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v6, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 516
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 518
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "boostMaxTime":I
    :goto_13d
    goto :goto_18e

    .line 520
    :cond_13e
    :try_start_13e
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v5
    :try_end_141
    .catch Ljava/lang/Exception; {:try_start_13e .. :try_end_141} :catch_15d

    .line 521
    :try_start_141
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_147

    .line 522
    monitor-exit v5

    return-void

    .line 523
    :cond_147
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 524
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 525
    monitor-exit v5
    :try_end_14d
    .catchall {:try_start_141 .. :try_end_14d} :catchall_15a

    .line 526
    :try_start_14d
    const-string v1, "ActivityManagerPerformance"

    const-string v5, "AMP_release() ACT_RESUME"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_14d .. :try_end_159} :catch_15d

    .line 533
    goto :goto_18e

    .line 525
    :catchall_15a
    move-exception v1

    :try_start_15b
    monitor-exit v5
    :try_end_15c
    .catchall {:try_start_15b .. :try_end_15c} :catchall_15a

    .end local v0    # "method":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "onoff":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_15c
    throw v1
    :try_end_15d
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_15d} :catch_15d

    .line 528
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "onoff":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_15d
    move-exception v1

    .line 529
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_release() ACT_RESUME failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_18b

    .line 531
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMP_release() ACT_RESUME failed. e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManagerPerformance"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_18b
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 535
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18e
    return-void
.end method

.method private setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 538
    const-string/jumbo v0, "setBoosterActStart()"

    .line 539
    .local v0, "method":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p2, :cond_9

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    .line 540
    .local v2, "pkgName":Ljava/lang/String;
    :goto_a
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_89

    .line 541
    if-eqz p2, :cond_13

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_14

    :cond_13
    move-object v3, v1

    .line 542
    .local v3, "procName":Ljava/lang/String;
    :goto_14
    const/4 v4, 0x0

    .line 544
    .local v4, "curBoostProcName":Ljava/lang/String;
    :try_start_15
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 545
    .local v5, "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_1c

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_1b} :catch_1f

    goto :goto_1d

    :cond_1c
    move-object v6, v1

    :goto_1d
    move-object v4, v6

    .line 549
    .end local v5    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    goto :goto_24

    .line 546
    :catch_1f
    move-exception v5

    .line 547
    .local v5, "e":Ljava/lang/NullPointerException;
    const/4 v4, 0x0

    .line 548
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 550
    .end local v5    # "e":Ljava/lang/NullPointerException;
    :goto_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterActStart() onoff: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", r: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "), curBoost: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManagerPerformance"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v5, :cond_89

    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setBoosterActStart() Trace\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManagerPerformance"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 556
    .end local v3    # "procName":Ljava/lang/String;
    .end local v4    # "curBoostProcName":Ljava/lang/String;
    :cond_89
    invoke-direct {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v3

    if-eqz v3, :cond_9c

    .line 557
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_9b

    .line 558
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterActStart() skipped. Device folded : true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_9b
    return-void

    .line 561
    :cond_9c
    if-eqz p1, :cond_b8

    const-string v3, "com.sec.android.app.camera"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b8

    .line 562
    :cond_ae
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/4 v4, 0x5

    invoke-virtual {v3, v4, v2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 564
    :cond_b8
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->isChinaModel:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_133

    if-eqz p2, :cond_133

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_133

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_133

    iget-object v3, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v5, "LuckyMoneyReceiveUI"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_133

    .line 565
    if-eqz p1, :cond_132

    .line 566
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_12b

    .line 567
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const/16 v3, 0xc

    const-string v5, "LuckyMoneyBooster"

    invoke-static {v1, v5, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    .line 568
    if-eqz v1, :cond_111

    .line 569
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequency()[I

    move-result-object v1

    .line 570
    .local v1, "supportedCPUFreqTable":[I
    if-eqz v1, :cond_f7

    .line 571
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    .line 576
    .end local v1    # "supportedCPUFreqTable":[I
    goto :goto_12b

    .line 573
    .restart local v1    # "supportedCPUFreqTable":[I
    :cond_f7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterActStart() skipped. Hongbao getSupportedFrequency() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerPerformance"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    return-void

    .line 577
    .end local v1    # "supportedCPUFreqTable":[I
    :cond_111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterActStart() skipped. Hongbao SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManagerPerformance"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    return-void

    .line 581
    :cond_12b
    :goto_12b
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLuckyMoneyBooster:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v3, 0x1388

    invoke-virtual {v1, v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    .line 583
    :cond_132
    return-void

    .line 586
    :cond_133
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/16 v5, 0x15

    if-eqz v3, :cond_148

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_148

    .line 587
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v6, "AMS_ACT_START"

    invoke-static {v3, v6, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_15a

    .line 588
    :cond_148
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v3, :cond_15a

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v3, :cond_15a

    .line 589
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v6, "AMS_RESUME"

    invoke-static {v3, v6, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 590
    :cond_15a
    :goto_15a
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v3, :cond_161

    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    goto :goto_163

    :cond_161
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterPrevResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 591
    .local v3, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :goto_163
    if-nez v3, :cond_17f

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterActStart() skipped. SemDvfsManager.createInstance() failed. AMP_PERF_ENABLE: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "ActivityManagerPerformance"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    return-void

    .line 596
    :cond_17f
    const/4 v5, 0x2

    if-eqz p1, :cond_201

    .line 597
    if-eqz p2, :cond_18d

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_18d

    const/16 v6, 0x1f4

    goto :goto_196

    :cond_18d
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v6, :cond_194

    sget v6, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    goto :goto_196

    :cond_194
    sget v6, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    .line 598
    .local v6, "boostMaxTime":I
    :goto_196
    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 600
    :try_start_19b
    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v7
    :try_end_19e
    .catch Ljava/lang/Exception; {:try_start_19b .. :try_end_19e} :catch_1bc

    .line 601
    :try_start_19e
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 602
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 603
    monitor-exit v7
    :try_end_1a4
    .catchall {:try_start_19e .. :try_end_1a4} :catchall_1b9

    .line 604
    :try_start_1a4
    const-string v7, "ActivityManagerPerformance"

    const-string v8, "AMP_acquire() ACT_START"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v7, v5, p2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 606
    .local v5, "nmsg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v8, v6

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_1a4 .. :try_end_1b7} :catch_1bc

    .line 614
    nop

    .end local v5    # "nmsg":Landroid/os/Message;
    goto :goto_200

    .line 603
    :catchall_1b9
    move-exception v5

    :try_start_1ba
    monitor-exit v7
    :try_end_1bb
    .catchall {:try_start_1ba .. :try_end_1bb} :catchall_1b9

    .end local v0    # "method":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local v6    # "boostMaxTime":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "onoff":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_1bb
    throw v5
    :try_end_1bc
    .catch Ljava/lang/Exception; {:try_start_1bb .. :try_end_1bc} :catch_1bc

    .line 607
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local v6    # "boostMaxTime":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "onoff":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_1bc
    move-exception v5

    .line 608
    .local v5, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_1c3

    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 609
    .local v1, "curBoostProcName":Ljava/lang/String;
    :cond_1c3
    const-string v7, "ActivityManagerPerformance"

    const-string v8, "AMP_acquire() ACT_START failed. stop boosting"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    sget-boolean v7, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v7, :cond_1f8

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AMP_acquire() ACT_START failed. ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "] e: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ActivityManagerPerformance"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :cond_1f8
    iget-object v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {p0, v4, v7}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 613
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 615
    .end local v1    # "curBoostProcName":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/Exception;
    .end local v6    # "boostMaxTime":I
    :goto_200
    goto :goto_254

    .line 616
    :cond_201
    invoke-direct {p0, v4, p2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 618
    :try_start_204
    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v4
    :try_end_207
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_207} :catch_223

    .line 619
    :try_start_207
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v6, :cond_20d

    .line 620
    monitor-exit v4

    return-void

    .line 621
    :cond_20d
    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 622
    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 623
    monitor-exit v4
    :try_end_213
    .catchall {:try_start_207 .. :try_end_213} :catchall_220

    .line 624
    :try_start_213
    const-string v1, "ActivityManagerPerformance"

    const-string v4, "AMP_release() ACT_START"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_213 .. :try_end_21f} :catch_223

    .line 631
    goto :goto_254

    .line 623
    :catchall_220
    move-exception v1

    :try_start_221
    monitor-exit v4
    :try_end_222
    .catchall {:try_start_221 .. :try_end_222} :catchall_220

    .end local v0    # "method":Ljava/lang/String;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "onoff":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_222
    throw v1
    :try_end_223
    .catch Ljava/lang/Exception; {:try_start_222 .. :try_end_223} :catch_223

    .line 626
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "onoff":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_223
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_release() ACT_START failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_251

    .line 629
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMP_release() ACT_START failed. e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManagerPerformance"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :cond_251
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 633
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_254
    return-void
.end method

.method private setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 19
    .param p1, "onoff"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 636
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string/jumbo v4, "setBoosterAppSwitch()"

    .line 637
    .local v4, "method":Ljava/lang/String;
    if-eqz v3, :cond_e

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    move-object v6, v0

    .line 638
    .local v6, "pkgName":Ljava/lang/String;
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_91

    .line 639
    if-eqz v3, :cond_19

    iget-object v0, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    move-object v7, v0

    .line 640
    .local v7, "procName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 642
    .local v8, "curBoostProcName":Ljava/lang/String;
    :try_start_1c
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 643
    .local v0, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_23

    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_22} :catch_26

    goto :goto_24

    :cond_23
    const/4 v9, 0x0

    :goto_24
    move-object v0, v9

    .line 647
    .end local v8    # "curBoostProcName":Ljava/lang/String;
    .local v0, "curBoostProcName":Ljava/lang/String;
    goto :goto_2c

    .line 644
    .end local v0    # "curBoostProcName":Ljava/lang/String;
    .restart local v8    # "curBoostProcName":Ljava/lang/String;
    :catch_26
    move-exception v0

    .line 645
    .local v0, "e":Ljava/lang/NullPointerException;
    const/4 v8, 0x0

    .line 646
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v0, v8

    .line 648
    .end local v8    # "curBoostProcName":Ljava/lang/String;
    .local v0, "curBoostProcName":Ljava/lang/String;
    :goto_2c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterAppSwitch() onoff: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", r: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "), curBoost: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManagerPerformance"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v8, :cond_91

    .line 650
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setBoosterAppSwitch() Trace\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManagerPerformance"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 654
    .end local v0    # "curBoostProcName":Ljava/lang/String;
    .end local v7    # "procName":Ljava/lang/String;
    :cond_91
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 655
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_a3

    .line 656
    const-string v0, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterAppSwitch() skipped. Device folded : true"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_a3
    return-void

    .line 659
    :cond_a4
    if-eqz v2, :cond_c0

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b6

    const-string v0, "com.android.server.telecom"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c0

    .line 660
    :cond_b6
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/4 v7, 0x5

    invoke-virtual {v0, v7, v6}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 662
    :cond_c0
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v0, :cond_d0

    .line 663
    iget-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const/16 v7, 0x15

    const-string v8, "AMS_APP_SWITCH"

    invoke-static {v0, v8, v7}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 664
    :cond_d0
    iget-object v7, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppSwitch:Lcom/samsung/android/os/SemDvfsManager;

    .line 665
    .local v7, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v7, :cond_dd

    .line 666
    const-string v0, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterAppSwitch() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    return-void

    .line 670
    :cond_dd
    const/16 v0, 0xb

    const/4 v10, 0x1

    if-eqz v2, :cond_1c1

    .line 671
    if-eqz v3, :cond_ed

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v11

    if-eqz v11, :cond_ed

    const/16 v11, 0x1f4

    goto :goto_ef

    :cond_ed
    sget v11, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    .line 672
    .local v11, "boostMaxTime":I
    :goto_ef
    iget-object v12, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v12, v10}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 674
    :try_start_f4
    iget-object v12, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v12
    :try_end_f7
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_f7} :catch_178

    .line 675
    :try_start_f7
    invoke-virtual {v7}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 676
    iput-object v3, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 677
    monitor-exit v12
    :try_end_fd
    .catchall {:try_start_f7 .. :try_end_fd} :catchall_175

    .line 678
    :try_start_fd
    const-string v12, "ActivityManagerPerformance"

    const-string v13, "AMP_acquire() APP_SWITCH"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    iget-object v12, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v12, v10, v3}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    .line 680
    .local v12, "nmsg":Landroid/os/Message;
    iget-object v13, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    int-to-long v14, v11

    invoke-virtual {v13, v12, v14, v15}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 681
    iget-object v13, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v14, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/4 v15, 0x6

    invoke-virtual {v14, v15, v6}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 689
    const/16 v13, 0xdac

    .line 690
    .local v13, "olafClearTime":I
    iget-object v14, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 691
    iget-object v14, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v5, v15}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v8, 0xdac

    invoke-virtual {v14, v5, v8, v9}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 693
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v5

    if-eqz v5, :cond_151

    .line 695
    sget-object v5, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    invoke-direct {v1, v5, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowScenario(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_151

    .line 697
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v6, v8}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;I)V

    .line 700
    :cond_151
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 703
    nop

    .end local v13    # "olafClearTime":I
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz v5, :cond_174

    .line 704
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string v9, "120"

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_fd .. :try_end_174} :catch_178

    .line 713
    .end local v12    # "nmsg":Landroid/os/Message;
    :cond_174
    goto :goto_1bf

    .line 677
    :catchall_175
    move-exception v0

    :try_start_176
    monitor-exit v12
    :try_end_177
    .catchall {:try_start_176 .. :try_end_177} :catchall_175

    .end local v4    # "method":Ljava/lang/String;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local v11    # "boostMaxTime":I
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "onoff":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_177
    throw v0
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_177 .. :try_end_178} :catch_178

    .line 706
    .restart local v4    # "method":Ljava/lang/String;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local v11    # "boostMaxTime":I
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "onoff":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_178
    move-exception v0

    .line 707
    .local v0, "e":Ljava/lang/Exception;
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_180

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_181

    :cond_180
    const/4 v5, 0x0

    .line 708
    .local v5, "curBoostProcName":Ljava/lang/String;
    :goto_181
    const-string v8, "ActivityManagerPerformance"

    const-string v9, "AMP_acquire() APP_SWITCH failed. stop boosting"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    sget-boolean v8, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v8, :cond_1b6

    .line 710
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AMP_acquire() APP_SWITCH failed. ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] e: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "ActivityManagerPerformance"

    invoke-static {v9, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    :cond_1b6
    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    const/4 v9, 0x0

    invoke-direct {v1, v9, v8}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 712
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 714
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "curBoostProcName":Ljava/lang/String;
    .end local v11    # "boostMaxTime":I
    :goto_1bf
    goto/16 :goto_24a

    .line 715
    :cond_1c1
    invoke-direct {v1, v10, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V

    .line 717
    :try_start_1c4
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppSwitch:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c7
    .catch Ljava/lang/Exception; {:try_start_1c4 .. :try_end_1c7} :catch_218

    .line 718
    :try_start_1c7
    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-nez v8, :cond_1cd

    .line 719
    monitor-exit v5

    return-void

    .line 720
    :cond_1cd
    invoke-virtual {v7}, Lcom/samsung/android/os/SemDvfsManager;->release()V

    .line 721
    const/4 v8, 0x0

    iput-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 722
    monitor-exit v5
    :try_end_1d4
    .catchall {:try_start_1c7 .. :try_end_1d4} :catchall_215

    .line 723
    :try_start_1d4
    const-string v5, "ActivityManagerPerformance"

    const-string v8, "AMP_release() APP_SWITCH"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    invoke-virtual {v5, v10}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->removeMessages(I)V

    .line 728
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v5

    if-eqz v5, :cond_1f1

    .line 729
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    .line 731
    :cond_1f1
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v10, 0x9

    invoke-virtual {v8, v10, v9}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 734
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->isPerfReserveSupport:Z

    if-eqz v5, :cond_214

    .line 735
    iget-object v5, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    iget-object v8, v1, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const-string v9, "0"

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_214
    .catch Ljava/lang/Exception; {:try_start_1d4 .. :try_end_214} :catch_218

    .line 742
    :cond_214
    goto :goto_24a

    .line 722
    :catchall_215
    move-exception v0

    :try_start_216
    monitor-exit v5
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_215

    .end local v4    # "method":Ljava/lang/String;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "onoff":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_217
    throw v0
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_217 .. :try_end_218} :catch_218

    .line 737
    .restart local v4    # "method":Ljava/lang/String;
    .restart local v6    # "pkgName":Ljava/lang/String;
    .restart local v7    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "onoff":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_218
    move-exception v0

    .line 738
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v5, "ActivityManagerPerformance"

    const-string v8, "AMP_release() APP_SWITCH failed"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_247

    .line 740
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBoosterAppSwitch() AMP_release failed. e: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\n"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "ActivityManagerPerformance"

    invoke-static {v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    :cond_247
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24a
    return-void
.end method

.method private setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "fastBoost"    # Z
    .param p2, "startAct"    # Z
    .param p3, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 805
    const-string/jumbo v0, "setBoosterHome()"

    .line 806
    .local v0, "method":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p3, :cond_9

    iget-object v2, p3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_a

    :cond_9
    move-object v2, v1

    .line 807
    .local v2, "pkgName":Ljava/lang/String;
    :goto_a
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_7e

    .line 808
    if-eqz p3, :cond_12

    iget-object v1, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 809
    .local v1, "procName":Ljava/lang/String;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterHome() fastBoost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", startAct: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", curTopState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v4}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), pkgName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerPerformance"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v3, :cond_7e

    .line 811
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setBoosterHome() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerPerformance"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    .end local v1    # "procName":Ljava/lang/String;
    :cond_7e
    sget v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-nez v1, :cond_8b

    .line 816
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterHome() skipped. Method is called by non-system_server"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    return-void

    .line 819
    :cond_8b
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_9c

    .line 820
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_9b

    .line 821
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterHome() skipped. mIsScreenOn: false"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :cond_9b
    return-void

    .line 824
    :cond_9c
    invoke-direct {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v1

    if-eqz v1, :cond_af

    .line 825
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_ae

    .line 826
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterHome() skipped. Device folded : true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    :cond_ae
    return-void

    .line 829
    :cond_af
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 830
    .local v3, "now":J
    const/4 v1, 0x2

    const-wide/16 v5, 0xc8

    if-eqz p1, :cond_10b

    .line 831
    if-nez p3, :cond_bd

    .line 832
    iput-wide v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    goto :goto_ce

    .line 833
    :cond_bd
    iget-wide v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_f6

    iget-wide v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v7, v3, v7

    cmp-long v5, v7, v5

    if-gez v5, :cond_ce

    goto :goto_f6

    .line 840
    :cond_ce
    :goto_ce
    if-nez p3, :cond_1c0

    sget v5, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne v5, v1, :cond_1c0

    .line 841
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_f5

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBoosterHome() skipped. Home key was pressed, but curTopState is already "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v5}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityManagerPerformance"

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_f5
    return-void

    .line 834
    :cond_f6
    :goto_f6
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, p3, :cond_fe

    if-eqz p3, :cond_fe

    .line 835
    iput-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 836
    :cond_fe
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_10a

    .line 837
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_10a
    return-void

    .line 846
    :cond_10b
    iget-wide v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomePressedTime:J

    sub-long v7, v3, v7

    cmp-long v7, v7, v5

    if-ltz v7, :cond_225

    iget-wide v7, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    sub-long v7, v3, v7

    cmp-long v5, v7, v5

    if-gez v5, :cond_11d

    goto/16 :goto_225

    .line 853
    :cond_11d
    sget v5, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    if-ne v5, v1, :cond_1c0

    .line 855
    :try_start_121
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .local v1, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 856
    .local v5, "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    if-eqz p3, :cond_161

    if-eq v1, p3, :cond_143

    if-eq v5, p3, :cond_143

    if-eqz v1, :cond_137

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 857
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_143

    :cond_137
    if-eqz v5, :cond_161

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 858
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_161

    .line 859
    :cond_143
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_160

    .line 860
    const-string v6, "ActivityManagerPerformance"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_160
    .catch Ljava/lang/NullPointerException; {:try_start_121 .. :try_end_160} :catch_1bb

    .line 861
    :cond_160
    return-void

    .line 866
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_161
    nop

    .line 867
    const/4 v1, 0x1

    if-eqz p2, :cond_175

    .line 868
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_171

    .line 869
    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() call setBoosterActStart()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    :cond_171
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1b5

    .line 873
    :cond_175
    :try_start_175
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 874
    .local v5, "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    if-eqz p3, :cond_1a5

    if-eq v5, p3, :cond_187

    if-eqz v5, :cond_1a5

    iget-object v6, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a5

    .line 875
    :cond_187
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_1a4

    .line 876
    const-string v1, "ActivityManagerPerformance"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBoosterHome() skipped. already boosted "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a4
    .catch Ljava/lang/NullPointerException; {:try_start_175 .. :try_end_1a4} :catch_1b6

    .line 877
    :cond_1a4
    return-void

    .line 882
    .end local v5    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    :cond_1a5
    nop

    .line 883
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_1b2

    .line 884
    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() call setBoosterActResume()"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_1b2
    invoke-direct {p0, v1, p3}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 887
    :goto_1b5
    return-void

    .line 879
    :catch_1b6
    move-exception v1

    .line 880
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 881
    return-void

    .line 863
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1bb
    move-exception v1

    .line 864
    .restart local v1    # "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 865
    return-void

    .line 891
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1c0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_1d0

    .line 892
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const/16 v5, 0x15

    const-string v6, "AMS_APP_HOME"

    invoke-static {v1, v6, v5}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 893
    :cond_1d0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterHome:Lcom/samsung/android/os/SemDvfsManager;

    .line 894
    .local v1, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v1, :cond_1dd

    .line 895
    const-string v5, "ActivityManagerPerformance"

    const-string/jumbo v6, "setBoosterHome() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    return-void

    .line 898
    :cond_1dd
    iput-wide v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->lastHomeBoostedTime:J

    .line 900
    :try_start_1df
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockHome:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1e2
    .catch Ljava/lang/Exception; {:try_start_1df .. :try_end_1e2} :catch_1f3

    .line 901
    :try_start_1e2
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 902
    iput-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 903
    monitor-exit v5
    :try_end_1e8
    .catchall {:try_start_1e2 .. :try_end_1e8} :catchall_1f0

    .line 904
    :try_start_1e8
    const-string v5, "ActivityManagerPerformance"

    const-string v6, "AMP_acquire() HOME"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ef
    .catch Ljava/lang/Exception; {:try_start_1e8 .. :try_end_1ef} :catch_1f3

    .line 910
    goto :goto_224

    .line 903
    :catchall_1f0
    move-exception v6

    :try_start_1f1
    monitor-exit v5
    :try_end_1f2
    .catchall {:try_start_1f1 .. :try_end_1f2} :catchall_1f0

    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "now":J
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "fastBoost":Z
    .end local p2    # "startAct":Z
    .end local p3    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_1f2
    throw v6
    :try_end_1f3
    .catch Ljava/lang/Exception; {:try_start_1f2 .. :try_end_1f3} :catch_1f3

    .line 905
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local v2    # "pkgName":Ljava/lang/String;
    .restart local v3    # "now":J
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "fastBoost":Z
    .restart local p2    # "startAct":Z
    .restart local p3    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_1f3
    move-exception v5

    .line 906
    .local v5, "e":Ljava/lang/Exception;
    const-string v6, "ActivityManagerPerformance"

    const-string v7, "AMP_acquire() HOME failed"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    sget-boolean v6, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v6, :cond_221

    .line 908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AMP_acquire() HOME failed. e: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManagerPerformance"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_221
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 911
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_224
    return-void

    .line 847
    .end local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    :cond_225
    :goto_225
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eq v1, p3, :cond_22d

    if-eqz p3, :cond_22d

    .line 848
    iput-object p3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    .line 849
    :cond_22d
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_239

    .line 850
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v5, "setBoosterHome() skipped. uninterrupted boosting"

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_239
    return-void
.end method

.method private setBoosterRelaunchResume(Lcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 915
    const-string/jumbo v0, "setBoosterRelaunchResume()"

    .line 916
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_58

    .line 917
    if-eqz p1, :cond_c

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 918
    .local v1, "procName":Ljava/lang/String;
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterRelaunchResume() r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerPerformance"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_58

    .line 920
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterRelaunchResume() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerPerformance"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 925
    .end local v1    # "procName":Ljava/lang/String;
    :cond_58
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_68

    .line 926
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const/16 v2, 0x15

    const-string v3, "AMS_RELAUNCH_RESUME"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 927
    :cond_68
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterRelaunchResume:Lcom/samsung/android/os/SemDvfsManager;

    .line 928
    .local v1, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v1, :cond_75

    .line 929
    const-string v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterRelaunchResume() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    return-void

    .line 934
    :cond_75
    :try_start_75
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockRelaunchResume:Ljava/lang/Object;

    monitor-enter v2
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_78} :catch_89

    .line 935
    :try_start_78
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 936
    iput-object p1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    .line 937
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_78 .. :try_end_7e} :catchall_86

    .line 938
    :try_start_7e
    const-string v2, "ActivityManagerPerformance"

    const-string v3, "AMP_acquire() RELAUNCH_RESUME"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_85} :catch_89

    .line 944
    goto :goto_ba

    .line 937
    :catchall_86
    move-exception v3

    :try_start_87
    monitor-exit v2
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_88
    throw v3
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_89} :catch_89

    .line 939
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_89
    move-exception v2

    .line 940
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() RELAUNCH_RESUME failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_b7

    .line 942
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AMP_acquire() RELAUNCH_RESUME failed. e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManagerPerformance"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    :cond_b7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 945
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_ba
    return-void
.end method

.method private setBoosterTail(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "fromAppSwitch"    # Z
    .param p2, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 747
    const-string/jumbo v0, "setBoosterTail()"

    .line 748
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_67

    .line 749
    if-eqz p2, :cond_c

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    .line 750
    .local v1, "procName":Ljava/lang/String;
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterTail() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1d

    const-string v3, "AppSwitch"

    goto :goto_1f

    :cond_1d
    const-string v3, "ActStart"

    :goto_1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", r: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerPerformance"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_67

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBoosterTail() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManagerPerformance"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 756
    .end local v1    # "procName":Ljava/lang/String;
    :cond_67
    invoke-direct {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->checkBoostDisabledByFold()Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 757
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_79

    .line 758
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "setBoosterTail() skipped. Device folded : true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_79
    return-void

    .line 761
    :cond_7a
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_8b

    .line 762
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_8a

    .line 763
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "setBoosterTail() skipped. mIsScreenOn: false"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_8a
    return-void

    .line 766
    :cond_8b
    if-eqz p1, :cond_91

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_97

    :cond_91
    if-nez p1, :cond_bf

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_bf

    .line 767
    :cond_97
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_be

    .line 768
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBoosterTail() skipped. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_ab

    const-string v2, "AppSwitch"

    goto :goto_ad

    :cond_ab
    const-string v2, "ActStart"

    :goto_ad
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is not finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerPerformance"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    :cond_be
    return-void

    .line 772
    :cond_bf
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x15

    if-nez v1, :cond_cf

    .line 773
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_RESUME_TAIL"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 774
    :cond_cf
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_dd

    .line 775
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v3, "AMS_ACT_LAZY"

    invoke-static {v1, v3, v2}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    .line 777
    :cond_dd
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    .line 778
    .local v1, "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v1, :cond_ea

    .line 779
    const-string v2, "ActivityManagerPerformance"

    const-string/jumbo v3, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    return-void

    .line 783
    :cond_ea
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterLazy:Lcom/samsung/android/os/SemDvfsManager;

    .line 784
    .local v2, "dvfsLazyManager":Lcom/samsung/android/os/SemDvfsManager;
    if-nez v2, :cond_f7

    .line 785
    const-string v3, "ActivityManagerPerformance"

    const-string/jumbo v4, "setBoosterTail() skipped. SemDvfsManager.createInstance() failed"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    return-void

    .line 790
    :cond_f7
    :try_start_f7
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v3
    :try_end_fa
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_fa} :catch_10e

    .line 791
    :try_start_fa
    invoke-virtual {v1}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 792
    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 793
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    .line 794
    monitor-exit v3
    :try_end_103
    .catchall {:try_start_fa .. :try_end_103} :catchall_10b

    .line 795
    :try_start_103
    const-string v3, "ActivityManagerPerformance"

    const-string v4, "AMP_acquire() TAIL"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_10a} :catch_10e

    .line 801
    goto :goto_13f

    .line 794
    :catchall_10b
    move-exception v4

    :try_start_10c
    monitor-exit v3
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    .end local v0    # "method":Ljava/lang/String;
    .end local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local v2    # "dvfsLazyManager":Lcom/samsung/android/os/SemDvfsManager;
    .end local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .end local p1    # "fromAppSwitch":Z
    .end local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :try_start_10d
    throw v4
    :try_end_10e
    .catch Ljava/lang/Exception; {:try_start_10d .. :try_end_10e} :catch_10e

    .line 796
    .restart local v0    # "method":Ljava/lang/String;
    .restart local v1    # "dvfsManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local v2    # "dvfsLazyManager":Lcom/samsung/android/os/SemDvfsManager;
    .restart local p0    # "this":Lcom/android/server/wm/ActivityManagerPerformance;
    .restart local p1    # "fromAppSwitch":Z
    .restart local p2    # "r":Lcom/android/server/wm/ActivityRecord;
    :catch_10e
    move-exception v3

    .line 797
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "ActivityManagerPerformance"

    const-string v5, "AMP_acquire() TAIL failed"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_13c

    .line 799
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AMP_acquire() TAIL failed. e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManagerPerformance"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_13c
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 802
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_13f
    return-void
.end method

.method private setLowPower(Z)V
    .registers 5
    .param p1, "enable"    # Z

    .line 1426
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActStart:Ljava/lang/Object;

    monitor-enter v0

    .line 1427
    :try_start_3
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_17

    .line 1428
    if-eqz p1, :cond_11

    .line 1429
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x1d

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_17

    .line 1431
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActStart:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1434
    :cond_17
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_4f

    .line 1435
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockActResume:Ljava/lang/Object;

    monitor-enter v1

    .line 1436
    :try_start_1b
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v0, :cond_2f

    .line 1437
    if-eqz p1, :cond_29

    .line 1438
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x1e

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_2f

    .line 1440
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterActResume:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1443
    :cond_2f
    :goto_2f
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_1b .. :try_end_30} :catchall_4c

    .line 1444
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockTail:Ljava/lang/Object;

    monitor-enter v0

    .line 1445
    :try_start_33
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_47

    .line 1446
    if-eqz p1, :cond_41

    .line 1447
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    goto :goto_47

    .line 1449
    :cond_41
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterTail:Lcom/samsung/android/os/SemDvfsManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1452
    :cond_47
    :goto_47
    monitor-exit v0

    .line 1453
    return-void

    .line 1452
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_33 .. :try_end_4b} :catchall_49

    throw v1

    .line 1443
    :catchall_4c
    move-exception v0

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v0

    .line 1434
    :catchall_4f
    move-exception v1

    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method private taskBoostAcq(I)V
    .registers 7
    .param p1, "pid"    # I

    .line 1037
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    .line 1038
    .local v0, "taskBoost":Landroid/util/BoostFramework;
    nop

    .line 1039
    const/16 v1, 0x7d0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/high16 v4, 0x40c80000    # 6.25f

    aput v4, v2, v3

    const/4 v3, 0x1

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 1043
    return-void
.end method

.method static topStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 312
    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NO_STATE_NUM_OF_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_20
    const-string v0, "TOP_STATE_APP"

    return-object v0

    .line 316
    :cond_23
    const-string v0, "TOP_STATE_RECENTS_APP"

    return-object v0

    .line 315
    :cond_26
    const-string v0, "TOP_STATE_HOME"

    return-object v0

    .line 314
    :cond_29
    const-string v0, "TOP_STATE_IS_CREATING"

    return-object v0

    .line 313
    :cond_2c
    const-string v0, "TOP_STATE_INIT"

    return-object v0
.end method

.method private final unregisterReceiver()V
    .registers 3

    .line 1321
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    .line 1323
    return-void
.end method

.method private static x([I)Ljava/lang/String;
    .registers 4
    .param p0, "e"    # [I

    .line 1471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1472
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 1473
    aget v2, p0, v1

    xor-int/lit8 v2, v2, 0x7a

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1472
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1475
    .end local v1    # "i":I
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1418
    if-nez p1, :cond_3

    .line 1419
    return-void

    .line 1420
    :cond_3
    const-string v0, "ACTIVITY MANAGER AMP (dumpsys activity amp)\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1423
    return-void
.end method

.method getCurBoostInfoStr()Ljava/lang/String;
    .registers 7

    .line 438
    const-string v0, "===== ActivityManagerPerformance, getCurBoostInfoStr info ====="

    .line 439
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nAMP_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", AMP_PERF_ENABLE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsScreenOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 440
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-eqz v1, :cond_5b

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nTIMEOUT_ACT_RESUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_RESUME:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TIMEOUT_ACT_START: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_ACT_START:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", TIMEOUT_APP_SWITCH: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_APP_SWITCH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_71

    .line 443
    :cond_5b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nTIMEOUT_PREV_RESUME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->TIMEOUT_PREV_RESUME:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 444
    :goto_71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[curTopState] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/wm/ActivityManagerPerformance;->curTopState:I

    invoke-static {v2}, Lcom/android/server/wm/ActivityManagerPerformance;->topStateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n[rCurBoostAppSwitch] procName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_b1

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_b2

    :cond_b1
    move-object v2, v3

    :goto_b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 447
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[rCurBoostActStart] procName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_dc

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_dd

    :cond_dc
    move-object v5, v3

    :goto_dd
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 448
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[rCurBoostActResume] procName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_103

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_104

    :cond_103
    move-object v5, v3

    :goto_104
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[rLastActTail] procName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_12a

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_12b

    :cond_12a
    move-object v5, v3

    :goto_12b
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActTail:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[rLastActHome] procName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_151

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_152

    :cond_151
    move-object v5, v3

    :goto_152
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastActHome:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n[rLastRelaunchResume] procName: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v5, :cond_177

    iget-object v3, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    :cond_177
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rLastRelaunchResume:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n===== ActivityManagerPerformance, getCurBoostInfoStr end  ====="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    return-object v0
.end method

.method public isHomeKeyPressed()V
    .registers 5

    .line 1268
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_34

    .line 1269
    const-string/jumbo v0, "isHomeKeyPressed()"

    .line 1270
    .local v0, "method":Ljava/lang/String;
    const-string v1, "ActivityManagerPerformance"

    const-string/jumbo v2, "isHomeKeyPressed() called"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    sget-boolean v2, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v2, :cond_34

    .line 1272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isHomeKeyPressed() Trace\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1276
    .end local v0    # "method":Ljava/lang/String;
    :cond_34
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-eqz v0, :cond_44

    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    if-nez v0, :cond_3d

    goto :goto_44

    .line 1278
    :cond_3d
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V

    .line 1279
    return-void

    .line 1277
    :cond_44
    :goto_44
    return-void
.end method

.method public notifyPidOfWallpaper(ZILjava/lang/String;)V
    .registers 6
    .param p1, "enable"    # Z
    .param p2, "pid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .line 1284
    const-string v0, "com.android.systemui"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string v0, "com.samsung.desktopsystemui"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_3e

    .line 1289
    :cond_11
    const/4 v0, -0x1

    if-eqz p1, :cond_33

    .line 1290
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iget-object v1, v1, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->packageName:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 1292
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput p2, v0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    .line 1293
    return-void

    .line 1296
    :cond_23
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iget v1, v1, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    if-eq v1, v0, :cond_2a

    .line 1298
    return-void

    .line 1301
    :cond_2a
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput p2, v0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    .line 1302
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput-object p3, v0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->packageName:Ljava/lang/String;

    goto :goto_3d

    .line 1304
    :cond_33
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    iput v0, v1, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    .line 1305
    sget-object v0, Lcom/android/server/wm/ActivityManagerPerformance;->mWallpaper:Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;

    const-string v1, ""

    iput-object v1, v0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->packageName:Ljava/lang/String;

    .line 1308
    :goto_3d
    return-void

    .line 1286
    :cond_3e
    :goto_3e
    return-void
.end method

.method public notifyTaskBoost(I)V
    .registers 5
    .param p1, "pid"    # I

    .line 363
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->QC_TASK_BOOST_ENABLE:Z

    if-eqz v0, :cond_13

    .line 364
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v1, 0xc

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 366
    :cond_13
    return-void
.end method

.method public onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 8
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "andResume"    # Z

    .line 1225
    const-string/jumbo v0, "onActivityRelaunchLocked()"

    .line 1226
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_59

    .line 1227
    if-eqz p1, :cond_e

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    .line 1228
    .local v1, "procName":Ljava/lang/String;
    :goto_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() r: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "), andResume: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v3, :cond_59

    .line 1230
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onActivityRelaunchLocked() Trace\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1235
    .end local v1    # "procName":Ljava/lang/String;
    :cond_59
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_RELAUNCH_RESUME_ON:Z

    if-nez v1, :cond_5e

    .line 1236
    return-void

    .line 1237
    :cond_5e
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_6d

    .line 1238
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_6c

    .line 1239
    const-string/jumbo v1, "onActivityRelaunchLocked() skipped. mIsScreenOn: false"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    :cond_6c
    return-void

    .line 1242
    :cond_6d
    if-eqz p2, :cond_72

    .line 1243
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterRelaunchResume(Lcom/android/server/wm/ActivityRecord;)V

    .line 1244
    :cond_72
    return-void
.end method

.method onActivityResumeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1113
    const-string/jumbo v0, "onActivityResumeLocked()"

    .line 1114
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_52

    .line 1115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() r: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_52

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityResumeLocked() Trace\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1121
    :cond_52
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_57

    .line 1122
    return-void

    .line 1123
    :cond_57
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1124
    return-void

    .line 1126
    :cond_62
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    .line 1127
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1128
    :cond_69
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_78

    .line 1129
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_77

    .line 1130
    const-string/jumbo v1, "onActivityResumeLocked() skipped. mIsScreenOn: false"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    :cond_77
    return-void

    .line 1133
    :cond_78
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_89

    .line 1134
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_86

    .line 1135
    const-string/jumbo v1, "onActivityResumeLocked() skipped. needSkipResume is true"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    :cond_86
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 1137
    return-void

    .line 1139
    :cond_89
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const-string/jumbo v4, "onActivityResumeLocked() skipped. already boosted "

    const/4 v5, 0x1

    if-nez v1, :cond_c6

    .line 1141
    :try_start_91
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1142
    .local v1, "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    if-eq v1, p1, :cond_a8

    if-eqz v1, :cond_a2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_9f
    .catch Ljava/lang/NullPointerException; {:try_start_91 .. :try_end_9f} :catch_c1

    if-eqz v3, :cond_a2

    goto :goto_a8

    .line 1150
    .end local v1    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_a2
    nop

    .line 1151
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_1d8

    .line 1143
    .restart local v1    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_a8
    :goto_a8
    :try_start_a8
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_c0

    .line 1144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Ljava/lang/NullPointerException; {:try_start_a8 .. :try_end_c0} :catch_c1

    .line 1145
    :cond_c0
    return-void

    .line 1147
    .end local v1    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :catch_c1
    move-exception v1

    .line 1148
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1149
    return-void

    .line 1153
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_c6
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_d0

    .line 1154
    invoke-direct {p0, v3, v3, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V

    .line 1155
    return-void

    .line 1157
    :cond_d0
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_11a

    .line 1159
    :try_start_d6
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .local v1, "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1160
    .local v3, "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    if-eq v3, p1, :cond_fc

    if-eq v1, p1, :cond_fc

    if-eqz v3, :cond_ea

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1161
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fc

    :cond_ea
    if-eqz v1, :cond_f7

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1162
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_f4
    .catch Ljava/lang/NullPointerException; {:try_start_d6 .. :try_end_f4} :catch_115

    if-eqz v6, :cond_f7

    goto :goto_fc

    .line 1170
    .end local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_f7
    nop

    .line 1171
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1172
    return-void

    .line 1163
    .restart local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_fc
    :goto_fc
    :try_start_fc
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_114

    .line 1164
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_114
    .catch Ljava/lang/NullPointerException; {:try_start_fc .. :try_end_114} :catch_115

    .line 1165
    :cond_114
    return-void

    .line 1167
    .end local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :catch_115
    move-exception v1

    .line 1168
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1169
    return-void

    .line 1174
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_11a
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_17d

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17d

    .line 1176
    :try_start_128
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .local v1, "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .restart local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    iget-object v6, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 1177
    .local v6, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    if-eq v6, p1, :cond_15f

    if-eq v3, p1, :cond_15f

    if-eq v1, p1, :cond_15f

    if-eqz v6, :cond_140

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1178
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15f

    :cond_140
    if-eqz v3, :cond_14c

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1179
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15f

    :cond_14c
    if-eqz v1, :cond_159

    iget-object v7, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1180
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_156
    .catch Ljava/lang/NullPointerException; {:try_start_128 .. :try_end_156} :catch_178

    if-eqz v7, :cond_159

    goto :goto_15f

    .line 1188
    .end local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_159
    nop

    .line 1189
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    goto/16 :goto_1d8

    .line 1181
    .restart local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    .restart local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    .restart local v6    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_15f
    :goto_15f
    :try_start_15f
    sget-boolean v5, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v5, :cond_177

    .line 1182
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_177
    .catch Ljava/lang/NullPointerException; {:try_start_15f .. :try_end_177} :catch_178

    .line 1183
    :cond_177
    return-void

    .line 1185
    .end local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    .end local v3    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    .end local v6    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :catch_178
    move-exception v1

    .line 1186
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1187
    return-void

    .line 1191
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_17d
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1bb

    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1bb

    .line 1193
    :try_start_185
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    .line 1194
    .local v1, "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    if-eq v1, p1, :cond_19d

    if-eqz v1, :cond_196

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_193
    .catch Ljava/lang/NullPointerException; {:try_start_185 .. :try_end_193} :catch_1b6

    if-eqz v3, :cond_196

    goto :goto_19d

    .line 1202
    .end local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    :cond_196
    nop

    .line 1203
    iput-boolean v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1204
    invoke-direct {p0, v5, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1d8

    .line 1195
    .restart local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    :cond_19d
    :goto_19d
    :try_start_19d
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_1b5

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b5
    .catch Ljava/lang/NullPointerException; {:try_start_19d .. :try_end_1b5} :catch_1b6

    .line 1197
    :cond_1b5
    return-void

    .line 1199
    .end local v1    # "localCurBoostActResume":Lcom/android/server/wm/ActivityRecord;
    :catch_1b6
    move-exception v1

    .line 1200
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1201
    return-void

    .line 1207
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1bb
    :try_start_1bb
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 1208
    .local v1, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    if-eq v1, p1, :cond_1d9

    if-eqz v1, :cond_1cc

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1c9
    .catch Ljava/lang/NullPointerException; {:try_start_1bb .. :try_end_1c9} :catch_1f2

    if-eqz v3, :cond_1cc

    goto :goto_1d9

    .line 1216
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_1cc
    nop

    .line 1217
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1221
    :goto_1d8
    return-void

    .line 1209
    .restart local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_1d9
    :goto_1d9
    :try_start_1d9
    sget-boolean v3, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v3, :cond_1f1

    .line 1210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f1
    .catch Ljava/lang/NullPointerException; {:try_start_1d9 .. :try_end_1f1} :catch_1f2

    .line 1211
    :cond_1f1
    return-void

    .line 1213
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :catch_1f2
    move-exception v1

    .line 1214
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1215
    return-void
.end method

.method onActivityStartLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1046
    const-string/jumbo v0, "onActivityStartLocked()"

    .line 1047
    .local v0, "method":Ljava/lang/String;
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    const-string v2, "ActivityManagerPerformance"

    if-eqz v1, :cond_52

    .line 1048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() r: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1049
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_52

    .line 1050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityStartLocked() Trace\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1054
    :cond_52
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v1, :cond_57

    .line 1055
    return-void

    .line 1056
    :cond_57
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 1057
    return-void

    .line 1059
    :cond_62
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_69

    .line 1060
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1061
    :cond_69
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mIsScreenOn:Z

    if-nez v1, :cond_78

    .line 1062
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v1, :cond_77

    .line 1063
    const-string/jumbo v1, "onActivityStartLocked() skipped. mIsScreenOn: false"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_77
    return-void

    .line 1066
    :cond_78
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    if-eqz v1, :cond_7e

    .line 1067
    iput-boolean v3, p0, Lcom/android/server/wm/ActivityManagerPerformance;->needSkipResume:Z

    .line 1068
    :cond_7e
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_PERF_ENABLE:Z

    const/4 v4, 0x1

    if-nez v1, :cond_87

    .line 1069
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1070
    return-void

    .line 1072
    :cond_87
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v1

    if-eqz v1, :cond_91

    .line 1073
    invoke-direct {p0, v3, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterHome(ZZLcom/android/server/wm/ActivityRecord;)V

    .line 1074
    return-void

    .line 1076
    :cond_91
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 1077
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1078
    return-void

    .line 1080
    :cond_9b
    sget-object v1, Lcom/android/server/wm/ActivityManagerPerformance;->curTopAct:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v3, "onActivityStartLocked() skipped. already boosted "

    if-eqz v1, :cond_f0

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 1082
    :try_start_ac
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .local v1, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    iget-object v5, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    .line 1083
    .local v5, "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    if-eq v1, p1, :cond_d2

    if-eq v5, p1, :cond_d2

    if-eqz v1, :cond_c0

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1084
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_d2

    :cond_c0
    if-eqz v5, :cond_cd

    iget-object v6, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    .line 1085
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_ca
    .catch Ljava/lang/NullPointerException; {:try_start_ac .. :try_end_ca} :catch_eb

    if-eqz v6, :cond_cd

    goto :goto_d2

    .line 1093
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_cd
    nop

    .line 1094
    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_10d

    .line 1086
    .restart local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    .restart local v5    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :cond_d2
    :goto_d2
    :try_start_d2
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_ea

    .line 1087
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ea
    .catch Ljava/lang/NullPointerException; {:try_start_d2 .. :try_end_ea} :catch_eb

    .line 1088
    :cond_ea
    return-void

    .line 1090
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    .end local v5    # "localCurBoostActStart":Lcom/android/server/wm/ActivityRecord;
    :catch_eb
    move-exception v1

    .line 1091
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1092
    return-void

    .line 1097
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_f0
    :try_start_f0
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    .line 1098
    .local v1, "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    if-eq v1, p1, :cond_10e

    if-eqz v1, :cond_101

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_fe
    .catch Ljava/lang/NullPointerException; {:try_start_f0 .. :try_end_fe} :catch_127

    if-eqz v4, :cond_101

    goto :goto_10e

    .line 1106
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_101
    nop

    .line 1107
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mHandler:Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityManagerPerformance$MainHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1110
    :goto_10d
    return-void

    .line 1099
    .restart local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :cond_10e
    :goto_10e
    :try_start_10e
    sget-boolean v4, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v4, :cond_126

    .line 1100
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_126
    .catch Ljava/lang/NullPointerException; {:try_start_10e .. :try_end_126} :catch_127

    .line 1101
    :cond_126
    return-void

    .line 1103
    .end local v1    # "localCurBoostAppSwitch":Lcom/android/server/wm/ActivityRecord;
    :catch_127
    move-exception v1

    .line 1104
    .local v1, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1105
    return-void
.end method

.method onActivityVisibleLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 1247
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG:Z

    if-eqz v0, :cond_52

    .line 1248
    const-string/jumbo v0, "onActivityVisibleLocked()"

    .line 1249
    .local v0, "method":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onActivityVisibleLocked() r: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManagerPerformance"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    sget-boolean v1, Lcom/android/server/wm/ActivityManagerPerformance;->DEBUG_TRACE:Z

    if-eqz v1, :cond_52

    .line 1251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onActivityVisibleLocked() Trace\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityManagerPerformance;->getCurBoostInfoStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1255
    .end local v0    # "method":Ljava/lang/String;
    :cond_52
    sget-boolean v0, Lcom/android/server/wm/ActivityManagerPerformance;->AMP_ENABLE:Z

    if-nez v0, :cond_57

    .line 1256
    return-void

    .line 1257
    :cond_57
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    .line 1258
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->isMultiWindowResume:Z

    .line 1259
    :cond_5e
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActResume:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_65

    .line 1260
    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActResume(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1261
    :cond_65
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostActStart:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_6c

    .line 1262
    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterActStart(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1263
    :cond_6c
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->rCurBoostAppSwitch:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_73

    .line 1264
    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/ActivityManagerPerformance;->setBoosterAppSwitch(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1265
    :cond_73
    return-void
.end method

.method onAppLaunch(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 7
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p2, "isHotLaunch"    # Z

    .line 1014
    if-nez p1, :cond_3

    .line 1015
    return-void

    .line 1017
    :cond_3
    if-eqz p2, :cond_e

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/ActivityManagerPerformance;->isHotLaunchBoosterPkg(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 1018
    return-void

    .line 1020
    :cond_e
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/ActivityManagerPerformance;->isSpeg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1021
    return-void

    .line 1023
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mLockAppLaunch:Ljava/lang/Object;

    monitor-enter v0

    .line 1024
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-nez v1, :cond_2c

    .line 1025
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mContext:Landroid/content/Context;

    const-string v2, "AMS_APP_LAUNCH"

    const/16 v3, 0x15

    invoke-static {v1, v2, v3}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    .line 1027
    :cond_2c
    iget-object v1, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    if-eqz v1, :cond_40

    .line 1028
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/wm/ActivityManagerPerformance;->getAppLaunchHintIdByPkg(Ljava/lang/String;)I

    move-result v1

    .line 1029
    .local v1, "appLaunchHintId":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2, v1}, Lcom/samsung/android/os/SemDvfsManager;->setHint(I)V

    .line 1030
    iget-object v2, p0, Lcom/android/server/wm/ActivityManagerPerformance;->mBoosterAppLaunch:Lcom/samsung/android/os/SemDvfsManager;

    invoke-virtual {v2}, Lcom/samsung/android/os/SemDvfsManager;->acquire()V

    .line 1032
    .end local v1    # "appLaunchHintId":I
    :cond_40
    monitor-exit v0

    .line 1033
    return-void

    .line 1032
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_1c .. :try_end_44} :catchall_42

    throw v1
.end method

.method writeSysfs(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 949
    const-string v0, "e = "

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    const-string v3, "ActivityManagerPerformance"

    if-eqz v2, :cond_8f

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    if-eqz v2, :cond_8f

    if-nez p2, :cond_19

    goto/16 :goto_8f

    .line 955
    :cond_19
    const/4 v2, 0x0

    .line 957
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1a
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 958
    const-string v4, "UTF-8"

    invoke-virtual {p2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 959
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2c} :catch_4b
    .catchall {:try_start_1a .. :try_end_2c} :catchall_49

    .line 963
    nop

    .line 965
    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    .line 968
    :goto_30
    goto :goto_70

    .line 966
    :catch_31
    move-exception v4

    .line 967
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_37
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_30

    .line 963
    :catchall_49
    move-exception v4

    goto :goto_71

    .line 960
    :catch_4b
    move-exception v4

    .line 961
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_4c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_62
    .catchall {:try_start_4c .. :try_end_62} :catchall_49

    .line 963
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_70

    .line 965
    :try_start_65
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69

    goto :goto_30

    .line 966
    :catch_69
    move-exception v4

    .line 967
    .restart local v4    # "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_37

    .line 971
    .end local v4    # "e":Ljava/io/IOException;
    :cond_70
    :goto_70
    return-void

    .line 963
    :goto_71
    if-eqz v2, :cond_8e

    .line 965
    :try_start_73
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_77

    .line 968
    goto :goto_8e

    .line 966
    :catch_77
    move-exception v5

    .line 967
    .local v5, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .end local v5    # "e":Ljava/io/IOException;
    :cond_8e
    :goto_8e
    throw v4

    .line 951
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_8f
    :goto_8f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeSysfs:: path() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exist() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " canWrite() : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    return-void
.end method
