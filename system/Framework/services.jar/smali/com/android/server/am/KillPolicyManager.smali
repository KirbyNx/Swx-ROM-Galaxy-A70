.class public Lcom/android/server/am/KillPolicyManager;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;,
        Lcom/android/server/am/KillPolicyManager$SwappinessController;,
        Lcom/android/server/am/KillPolicyManager$PsiFile;,
        Lcom/android/server/am/KillPolicyManager$PsiDataType;,
        Lcom/android/server/am/KillPolicyManager$PsiFileType;,
        Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;,
        Lcom/android/server/am/KillPolicyManager$LmkdCounter;,
        Lcom/android/server/am/KillPolicyManager$LmkdCountReader;,
        Lcom/android/server/am/KillPolicyManager$KpmRaw;,
        Lcom/android/server/am/KillPolicyManager$SCPMReceiver;,
        Lcom/android/server/am/KillPolicyManager$KpmClassLazy;,
        Lcom/android/server/am/KillPolicyManager$KpmState;
    }
.end annotation


# static fields
.field private static final ACTION_DAILY_RANDOM_SAMPLE_REPORT:Ljava/lang/String; = "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

.field public static final ACTION_SCPM_UPDATE_BROADCAST:Ljava/lang/String; = "sec.app.policy.UPDATE.kpm"

.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final DATA1:Ljava/lang/String; = "data1"

.field static DEBUG_SCPM:Z = false

.field private static final DEFAULT_CYCLE_APP_COUNT:I = 0x32

.field private static final DEFAULT_KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z = true

.field private static final HQM_ENABLE:Z = true

.field private static final ITEM:Ljava/lang/String; = "item"

.field static KPM_BTIME_ENABLE:Z = false

.field private static final KPM_CATEGORY:Ljava/lang/String; = "kpmParams"

.field private static final KPM_CATEGORY_ITEM:Ljava/lang/String; = "kpmEnable"

.field static KPM_DEBUG:Z = false

.field public static final KPM_MEMORY_CRITICAL_LOW_SEND:Ljava/lang/String; = "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

.field private static KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z = false

.field static KPM_POLICY_ENABLE:Z = false

.field public static final KPM_STATE_SEND:Ljava/lang/String; = "com.samsung.KPM_STATE_CHANGED"

.field private static final KPM_SWITCH_CATEGORY:Ljava/lang/String; = "switch"

.field public static final KPM_VERSION:Ljava/lang/String; = "2.5"

.field private static final LOGGING_VERSION:Ljava/lang/String; = "1.1"

.field private static final MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ:I = 0x2bc

.field private static MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I = 0x0

.field private static MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I = 0x0

.field private static MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z = false

.field private static final ONE_DAY_MS:J = 0x5265c00L

.field private static final ONE_MINUTE_MS:J = 0xea60L

.field static final REPORT_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

.field static final REPORT_TYPE_CHANGE_STATE:I = 0x0

.field static final REPORT_TYPE_SAMPLE_A_DAY:I = 0x1

.field private static final SCPM_AUTHORITY:Ljava/lang/String; = "com.samsung.android.sm.policy"

.field private static final SCPM_POLICY_NAME:Ljava/lang/String; = "kpm"

.field private static final SWAPPINESS:[I

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_KPM:Ljava/lang/String; = "ActivityManager_KPM"

.field static resumeSkipPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static sPolicyTrigger:I

.field static sWarmUpCycles:I

.field static sWarmUpTrigger:I


# instance fields
.field private final DAILY_USER_TREND_RANDOM_SAMPLE_HOUR:I

.field private final KPM_RAW_MAX_LEN:I

.field private final MAX_KPM_STATE:I

.field public final SCPM_URI_KPM:Landroid/net/Uri;

.field public final SCPM_URI_POLICY:Landroid/net/Uri;

.field launchedInCycleKilledPkgMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAm:Lcom/android/server/am/ActivityManagerService;

.field mCachedActCount:I

.field private mCachedClientKillCount:I

.field mCachedCount:I

.field private mCachedEmptyKillCount:I

.field private mCachedNormalKillCount:I

.field private mContext:Landroid/content/Context;

.field private mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field private mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

.field private mDeviceMemType:I

.field private mDisplaySizeStr:Ljava/lang/String;

.field private mHasPsiCpuPermission:Z

.field private mHasPsiIoPermission:Z

.field private mHasPsiMemoryPermission:Z

.field private final mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field private mKpmStartTime:J

.field private mLaunchCold:I

.field private mLaunchHot:I

.field private mLaunchHotRatio:I

.field private mLaunchWarm:I

.field private final mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

.field private final mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

.field private final mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

.field private mNumberOfStay:J

.field private mPickedActCount:I

.field mPickedCount:I

.field private mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field private mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

.field private mProcMemDump:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field private mRecentChimeraData:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

.field private mSCPMReceiver:Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

.field mSeedbedCount:I

.field private final mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

.field private mTrigger:I

.field private mavgIndex:I

.field private mavgMetric:I

.field private mavlMem:I

.field private mcurKillCount:I

.field private mkillCount:I

.field private mlkmdMed:J

.field private mlmkCount:J

.field private mlmkdCount:J

.field private mlmkdCric:J

.field private mprevKillCount:I

.field private mprevLmkCount:J

.field private mprevLmkdCount:J

.field private mprevLmkdCric:J

.field private mprevLmkdMed:J

.field private mprevProcess:Ljava/lang/String;

.field private mscenario:I

.field private mtotalMem:I

.field private mtotalSwap:I


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 84
    const-string/jumbo v0, "native"

    const-string/jumbo v1, "sys"

    const-string/jumbo v2, "pers"

    const-string/jumbo v3, "persvc"

    const-string/jumbo v4, "fore"

    const-string/jumbo v5, "vis"

    const-string/jumbo v6, "percept"

    const-string/jumbo v7, "perceptl"

    const-string/jumbo v8, "heavy"

    const-string v9, "backup"

    const-string/jumbo v10, "servicea"

    const-string/jumbo v11, "home"

    const-string/jumbo v12, "prev"

    const-string/jumbo v13, "serviceb"

    const-string/jumbo v14, "picked"

    const-string/jumbo v15, "seedbed"

    const-string v16, "cached"

    filled-new-array/range {v0 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->REPORT_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    .line 97
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_b4

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    .line 111
    nop

    .line 112
    const-string/jumbo v0, "ro.slmk.kpm_policy_enable"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    .line 113
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 114
    const-string/jumbo v0, "ro.slmk.kpm_warm_up_trigger"

    const-string v2, "20"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    .line 115
    nop

    .line 116
    const/16 v0, 0x32

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ro.slmk.kpm_policy_trigger"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    .line 117
    const-string/jumbo v0, "ro.slmk.kpm_warm_up_cycles"

    const-string v2, "3"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    .line 119
    const-string/jumbo v0, "ro.slmk.kpm_boot_enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_BTIME_ENABLE:Z

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 121
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    .line 125
    nop

    .line 126
    const-string/jumbo v2, "ro.slmk.kpm_use_cri_pkg_ratio"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 125
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    .line 130
    const/16 v1, 0x64

    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 132
    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 141
    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

    return-void

    nop

    :array_b4
    .array-data 4
        0x64
        0x64
        0x82
        0x82
        0x91
    .end array-data
.end method

.method constructor <init>()V
    .registers 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/kpm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    .line 134
    const-string v0, "content://com.samsung.android.sm.policy/policy_item/policy_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    .line 135
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    .line 136
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 137
    new-instance v0, Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    .line 138
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->MAX_KPM_STATE:I

    .line 139
    const/16 v0, 0x17

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->DAILY_USER_TREND_RANDOM_SAMPLE_HOUR:I

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    .line 148
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->KPM_RAW_MAX_LEN:I

    .line 149
    new-array v0, v0, [Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 169
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDump:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 186
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 203
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 204
    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 206
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    .line 208
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-direct {v0}, Lcom/android/server/am/KillPolicyManager$SwappinessController;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/KillPolicyManager;J)Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # J

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager;->getCycleInOneDay(J)Lcom/android/server/am/KillPolicyManager$KpmRaw;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedNormalKillCount:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedEmptyKillCount:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedClientKillCount:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/am/KillPolicyManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # I

    .line 73
    iput p1, p0, Lcom/android/server/am/KillPolicyManager;->mprevKillCount:I

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mkillCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mlmkCount:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkCount:J

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCric:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdCric:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mlkmdMed:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdMed:J

    return-wide v0
.end method

.method static synthetic access$2100(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/am/KillPolicyManager;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    return-wide v0
.end method

.method static synthetic access$2300()I
    .registers 1

    .line 73
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    return v0
.end method

.method static synthetic access$2400()Z
    .registers 1

    .line 73
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/am/KillPolicyManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/am/KillPolicyManager;->isCriticalKilledManyPakages(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/am/KillPolicyManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/am/KillPolicyManager;->reportMemCriticalLow(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mPickedActCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$LmkdCounter;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/am/KillPolicyManager;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/am/KillPolicyManager;->calcKilledPackageRatio(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/am/KillPolicyManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/am/KillPolicyManager;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/KillPolicyManager;->markKilledPackage(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/KillPolicyManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mavlMem:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/KillPolicyManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;

    .line 73
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->getLaunchedPackageCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/KillPolicyManager;I)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager;
    .param p1, "x1"    # I

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/am/KillPolicyManager;->getKilledPackageCountOfAdj(I)I

    move-result v0

    return v0
.end method

.method private addLaunchedPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 505
    if-eqz p1, :cond_3d

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 506
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_3d

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add addLaunchedPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cur count : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    .line 509
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_3d
    return-void
.end method

.method private calcKilledPackageRatio(I)I
    .registers 5
    .param p1, "adj"    # I

    .line 585
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->getLaunchedPackageCount()I

    move-result v0

    .line 586
    .local v0, "launchedPkg_count":I
    invoke-direct {p0, p1}, Lcom/android/server/am/KillPolicyManager;->getKilledPackageCountOfAdj(I)I

    move-result v1

    .line 587
    .local v1, "killedPkg_count":I
    if-lez v0, :cond_e

    .line 588
    mul-int/lit8 v2, v1, 0x64

    div-int/2addr v2, v0

    .line 589
    .local v2, "killPkgRatio":I
    return v2

    .line 591
    .end local v2    # "killPkgRatio":I
    :cond_e
    const/4 v2, 0x0

    return v2
.end method

.method public static getCriticalLowPackageKillRatioTH()I
    .registers 1

    .line 234
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    return v0
.end method

.method public static getCriticalLowProcessKillRatioTH()I
    .registers 1

    .line 230
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    return v0
.end method

.method private getCycleInOneDay(J)Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .registers 23
    .param p1, "currentTimeMs"    # J

    .line 1017
    move-object/from16 v0, p0

    const/16 v1, 0x96

    .line 1018
    .local v1, "cycle_limit":I
    iget v2, v0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    const/16 v3, 0x96

    if-ge v2, v3, :cond_b

    goto :goto_c

    :cond_b
    move v2, v3

    :goto_c
    move v1, v2

    .line 1019
    iget v2, v0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    .line 1020
    .local v2, "i":I
    const/4 v3, 0x0

    .line 1021
    .local v3, "j":I
    const-wide/16 v4, 0x0

    .line 1022
    .local v4, "timeDiffMS":J
    const/4 v6, 0x0

    .line 1024
    .local v6, "rPickedCycle":Lcom/android/server/am/KillPolicyManager$KpmRaw;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1025
    .local v7, "oneDayCycles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/KillPolicyManager$KpmRaw;>;"
    :goto_18
    const-string/jumbo v8, "m"

    const/4 v9, 0x0

    const-string v14, "ActivityManager_KPM"

    if-ge v3, v1, :cond_10c

    .line 1026
    iget-object v15, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v15, v15, v2

    iget v15, v15, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget v10, v0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    if-ne v15, v10, :cond_ff

    .line 1027
    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v10, v10, v2

    .line 1028
    .local v10, "curCycle":Lcom/android/server/am/KillPolicyManager$KpmRaw;
    iget-boolean v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    const-string/jumbo v15, "getCycleInOneDay() cycleNum : "

    if-eqz v11, :cond_53

    .line 1030
    sget-boolean v8, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v8, :cond_52

    .line 1031
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " this cycle was state changed"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_52
    return-object v9

    .line 1035
    :cond_53
    iget-boolean v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v11, :cond_bc

    iget-object v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    if-eqz v11, :cond_bc

    iget-object v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_bc

    .line 1036
    iget-wide v12, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    sub-long v4, p1, v12

    .line 1037
    const-wide/32 v11, 0x5265c00

    cmp-long v11, v4, v11

    if-gtz v11, :cond_10c

    .line 1038
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    sget-boolean v9, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v9, :cond_ff

    .line 1040
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", time_interval - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x3e8

    div-long v18, v4, v11

    const-wide/16 v15, 0x3c

    div-long v11, v18, v15

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "m, current_time - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v11, 0x3e8

    div-long v17, p1, v11

    div-long v11, v17, v15

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "m, cycle_time - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    const-wide/16 v17, 0x3e8

    div-long v11, v11, v17

    div-long/2addr v11, v15

    invoke-virtual {v9, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .line 1048
    :cond_bc
    sget-boolean v8, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v8, :cond_ff

    .line 1049
    iget-object v8, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    if-eqz v8, :cond_cb

    iget-object v8, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    goto :goto_cc

    :cond_cb
    const/4 v8, 0x0

    .line 1050
    .local v8, "dumpPssSize":I
    :goto_cc
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getCycleInOneDay() not selected cycleNum : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", isWarmUp="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", isStateChange="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v10, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", dumpSize="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v14, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    .end local v8    # "dumpPssSize":I
    .end local v10    # "curCycle":Lcom/android/server/am/KillPolicyManager$KpmRaw;
    :cond_ff
    :goto_ff
    add-int/lit8 v2, v2, -0x1

    .line 1058
    if-gez v2, :cond_106

    const/16 v8, 0x95

    goto :goto_107

    :cond_106
    move v8, v2

    :goto_107
    move v2, v8

    .line 1059
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_18

    .line 1062
    :cond_10c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_15c

    .line 1063
    new-instance v9, Ljava/util/Random;

    invoke-direct {v9}, Ljava/util/Random;-><init>()V

    .line 1064
    .local v9, "rand":Ljava/util/Random;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    .line 1065
    .local v10, "randIdx":I
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v6, v11

    check-cast v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1066
    if-eqz v6, :cond_15b

    .line 1067
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "picked Cycle - idx:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", cycleNum:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cycleNum:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", lastUpdateTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v6, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lastUpdateTime:J

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    const-wide/16 v15, 0x3c

    div-long/2addr v12, v15

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    :cond_15b
    return-object v6

    .line 1073
    .end local v9    # "rand":Ljava/util/Random;
    .end local v10    # "randIdx":I
    :cond_15c
    const-string v8, "The cycle within oneday was not exist"

    invoke-static {v14, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    return-object v9
.end method

.method public static getInstance()Lcom/android/server/am/KillPolicyManager;
    .registers 1

    .line 226
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->INSTANCE:Lcom/android/server/am/KillPolicyManager;

    return-object v0
.end method

.method private getKilledPackageCountOfAdj(I)I
    .registers 6
    .param p1, "findAdj"    # I

    .line 574
    const/4 v0, 0x0

    .line 575
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 576
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, p1, :cond_27

    .line 577
    add-int/lit8 v0, v0, 0x1

    .line 579
    .end local v2    # "key":Ljava/lang/String;
    :cond_27
    goto :goto_b

    .line 580
    :cond_28
    return v0
.end method

.method private getLaunchedPackageCount()I
    .registers 2

    .line 570
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public static getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;
    .registers 9
    .param p0, "type"    # Lcom/android/server/am/KillPolicyManager$PsiFileType;
    .param p1, "dataType"    # Lcom/android/server/am/KillPolicyManager$PsiDataType;

    .line 1955
    const-string v0, "Exception"

    const-string v1, "ActivityManager"

    const-string v2, ""

    .line 1956
    .local v2, "merged":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1958
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_7
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$PsiFileType;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 1959
    const/4 v4, 0x0

    .line 1961
    .local v4, "line":Ljava/lang/String;
    :goto_17
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1b} :catch_54
    .catchall {:try_start_7 .. :try_end_1b} :catchall_52

    move-object v4, v5

    .line 1962
    if-nez v4, :cond_3c

    .line 1963
    nop

    .line 1970
    .end local v4    # "line":Ljava/lang/String;
    nop

    .line 1972
    :try_start_20
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_24

    .line 1975
    :goto_23
    goto :goto_7c

    .line 1973
    :catch_24
    move-exception v4

    .line 1974
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    goto :goto_23

    .line 1965
    .local v4, "line":Ljava/lang/String;
    :cond_3c
    :try_start_3c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_50} :catch_54
    .catchall {:try_start_3c .. :try_end_50} :catchall_52

    move-object v2, v5

    goto :goto_17

    .line 1970
    .end local v4    # "line":Ljava/lang/String;
    :catchall_52
    move-exception v4

    goto :goto_82

    .line 1967
    :catch_54
    move-exception v4

    .line 1968
    .local v4, "e":Ljava/lang/Exception;
    :try_start_55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPsiFile Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6e
    .catchall {:try_start_55 .. :try_end_6e} :catchall_52

    .line 1970
    nop

    .end local v4    # "e":Ljava/lang/Exception;
    if-eqz v3, :cond_7c

    .line 1972
    :try_start_71
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_23

    .line 1973
    :catch_75
    move-exception v4

    .line 1974
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2a

    .line 1979
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_7c
    :goto_7c
    new-instance v0, Lcom/android/server/am/KillPolicyManager$PsiFile;

    invoke-direct {v0, v2, p1}, Lcom/android/server/am/KillPolicyManager$PsiFile;-><init>(Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$PsiDataType;)V

    return-object v0

    .line 1970
    :goto_82
    if-eqz v3, :cond_9f

    .line 1972
    :try_start_84
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_87} :catch_88

    .line 1975
    goto :goto_9f

    .line 1973
    :catch_88
    move-exception v5

    .line 1974
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1977
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_9f
    :goto_9f
    throw v4
.end method

.method private getSCPMPolicyItemFromDB()V
    .registers 12

    .line 325
    const/4 v0, 0x0

    .line 326
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 327
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 328
    .local v1, "scpmpkg":Ljava/lang/String;
    const-string v2, "ActivityManager_KPM"

    const-string/jumbo v3, "getSCPMPolicyItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :try_start_15
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    move-object v0, v3

    .line 334
    goto :goto_42

    .line 331
    :catch_26
    move-exception v3

    .line 332
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_42
    if-eqz v0, :cond_cb

    .line 336
    :cond_44
    :goto_44
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c7

    .line 337
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 338
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 339
    .local v4, "item":Ljava/lang/String;
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 340
    .local v7, "category":Ljava/lang/String;
    const/4 v8, 0x2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 341
    .local v8, "data1":Ljava/lang/String;
    if-eqz v4, :cond_c5

    if-eqz v7, :cond_c5

    if-eqz v8, :cond_c5

    .line 342
    const-string/jumbo v9, "kpmEnable"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    const-string/jumbo v9, "switch"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c5

    .line 343
    const-string v9, "FALSE"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    const-string/jumbo v10, "persist.sys.kpm_onoff"

    if-eqz v9, :cond_8a

    .line 344
    sput-boolean v3, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    .line 345
    const-string v3, "false"

    invoke-static {v10, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    .line 346
    :cond_8a
    const-string v3, "TRUE"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 347
    sput-boolean v5, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    .line 348
    const-string/jumbo v3, "true"

    invoke-static {v10, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_9a
    :goto_9a
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    if-eqz v3, :cond_c5

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSCPMPolicyItemFromDB: CATEGORY = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SCPM PKG: data1 = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", KPM ENABLE = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/ActivityManagerService;->sPmmEnabledBySpcm:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v4    # "item":Ljava/lang/String;
    .end local v7    # "category":Ljava/lang/String;
    .end local v8    # "data1":Ljava/lang/String;
    :cond_c5
    goto/16 :goto_44

    .line 359
    :cond_c7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_d1

    .line 361
    :cond_cb
    const-string/jumbo v3, "getSCPMPolicyItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :goto_d1
    return-void
.end method

.method private hasValidItemFromDB()Z
    .registers 11

    .line 294
    const/4 v0, 0x0

    .line 295
    .local v0, "cursor":Landroid/database/Cursor;
    const-string/jumbo v1, "item"

    const-string v2, "category"

    const-string v3, "data1"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 296
    .local v6, "projection":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 297
    .local v1, "hasValidItem":Z
    const-string v2, "ActivityManager_KPM"

    const-string/jumbo v3, "hasValidItemFromDB!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_15
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_KPM:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_24} :catch_26

    move-object v0, v3

    .line 303
    goto :goto_42

    .line 300
    :catch_26
    move-exception v3

    .line 301
    .local v3, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception with contentResolver : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_42
    if-eqz v0, :cond_78

    .line 305
    :cond_44
    :goto_44
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 306
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_44

    .line 307
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    .local v2, "item":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 309
    .local v3, "category":Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "data1":Ljava/lang/String;
    const-string/jumbo v5, "switch"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_73

    const-string/jumbo v5, "kpmParams"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_72

    goto :goto_73

    .line 314
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "data1":Ljava/lang/String;
    :cond_72
    goto :goto_44

    .line 311
    .restart local v2    # "item":Ljava/lang/String;
    .restart local v3    # "category":Ljava/lang/String;
    .restart local v4    # "data1":Ljava/lang/String;
    :cond_73
    :goto_73
    const/4 v1, 0x1

    .line 316
    .end local v2    # "item":Ljava/lang/String;
    .end local v3    # "category":Ljava/lang/String;
    .end local v4    # "data1":Ljava/lang/String;
    :cond_74
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_7e

    .line 318
    :cond_78
    const-string/jumbo v3, "hasValidItemFromDB error, no database!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_7e
    return v1
.end method

.method private initCriticalLowKillRatioTH()V
    .registers 2

    .line 554
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mtotalMem:I

    if-lez v0, :cond_d

    .line 555
    invoke-direct {p0, v0}, Lcom/android/server/am/KillPolicyManager;->setCriticalKillThreshold(I)V

    .line 556
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mtotalMem:I

    invoke-direct {p0, v0}, Lcom/android/server/am/KillPolicyManager;->setPackageKillThreshold(I)V

    goto :goto_13

    .line 558
    :cond_d
    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 559
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 561
    :goto_13
    return-void
.end method

.method private initSkipPackage()V
    .registers 3

    .line 491
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v1, "com.google.android.permissioncontroller"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    sget-object v0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.MtpApplication"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method private isCriticalKilledManyPakages(I)Z
    .registers 3
    .param p1, "killedPackageRatio"    # I

    .line 566
    sget v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public static isDetectCritcialLowEnabled()Z
    .registers 2

    .line 219
    nop

    .line 220
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.kpm_cri_mem_detect"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_MEM_CRITICAL_LOW_DETECT_ENABLE:Z

    .line 222
    return v0
.end method

.method public static isKPMEnabled()Z
    .registers 1

    .line 215
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->isPmmEnabled()Z

    move-result v0

    return v0
.end method

.method private isNeedUpdateSCPMPolicy()Z
    .registers 11

    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, "cursorPolicy":Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 268
    .local v1, "isNeedUpdate":Z
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string v3, "ActivityManager_KPM"

    if-eqz v2, :cond_e

    .line 269
    const-string/jumbo v2, "isNeedUpdateSCPMPolicy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->SCPM_URI_POLICY:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_20

    move-object v0, v2

    .line 275
    goto :goto_27

    .line 273
    :catch_20
    move-exception v2

    .line 274
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "policy list is null"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_27
    if-eqz v0, :cond_71

    .line 277
    :goto_29
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 278
    const-string/jumbo v2, "policyName"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 279
    .local v2, "policyName":Ljava/lang/String;
    const-string/jumbo v4, "policyVersion"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 280
    .local v4, "policyVersion":Ljava/lang/String;
    const-string/jumbo v5, "kpm"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 281
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isNeedUpdateSCPMPolicy: policyName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyVersion="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v1, 0x1

    .line 284
    goto :goto_6e

    .line 286
    .end local v2    # "policyName":Ljava/lang/String;
    .end local v4    # "policyVersion":Ljava/lang/String;
    :cond_6d
    goto :goto_29

    .line 287
    :cond_6e
    :goto_6e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 289
    :cond_71
    return v1
.end method

.method private isSCPMAvailable()Z
    .registers 4

    .line 258
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    if-eqz v0, :cond_c

    .line 259
    const-string v0, "ActivityManager_KPM"

    const-string/jumbo v1, "isSCPMAvailable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.sm.policy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method private markKilledPackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "killedAdj"    # I

    .line 515
    if-eqz p1, :cond_52

    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    .line 517
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, p2, :cond_52

    .line 518
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_52

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markKilledPackage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adj "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", killed adj : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    .line 521
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 520
    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :cond_52
    return-void
.end method

.method private reportMemCriticalLow(I)V
    .registers 6
    .param p1, "result"    # I

    .line 596
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 597
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.KPM_CRITICAL_MEMORY_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string/jumbo v1, "res"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 599
    nop

    .line 600
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 599
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "memory Critical Low intent RESULT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager_KPM"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    return-void
.end method

.method private resetLaunchStateCounts()V
    .registers 2

    .line 682
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    .line 683
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    .line 684
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    .line 685
    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHotRatio:I

    .line 686
    return-void
.end method

.method private scheduleDailyUserTrendRandomSample()V
    .registers 20

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_7

    .line 419
    return-void

    .line 425
    :cond_7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 426
    .local v1, "cal":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 429
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 430
    .local v2, "nowTime":J
    const-wide/32 v4, 0x5265c00

    .line 433
    .local v4, "triggerTimeInterval":J
    sget-boolean v6, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    const/4 v7, 0x5

    const/16 v8, 0xc

    const/4 v9, 0x0

    if-eqz v6, :cond_28

    .line 434
    invoke-virtual {v1, v8, v7}, Ljava/util/Calendar;->add(II)V

    .line 435
    const-wide/32 v4, 0x493e0

    goto :goto_35

    .line 437
    :cond_28
    const/16 v6, 0xb

    const/16 v10, 0x17

    invoke-virtual {v1, v6, v10}, Ljava/util/Calendar;->set(II)V

    .line 438
    invoke-virtual {v1, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 439
    const-wide/32 v4, 0x5265c00

    .line 441
    :goto_35
    const/16 v6, 0xd

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 442
    const/16 v6, 0xe

    invoke-virtual {v1, v6, v9}, Ljava/util/Calendar;->set(II)V

    .line 444
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    .line 446
    .local v14, "triggerTime":J
    cmp-long v6, v2, v14

    if-lez v6, :cond_4f

    .line 447
    sget-boolean v6, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-nez v6, :cond_4f

    .line 448
    const/4 v6, 0x1

    invoke-virtual {v1, v7, v6}, Ljava/util/Calendar;->add(II)V

    .line 453
    :cond_4f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Schedule the sample, next trigger time : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 457
    .local v6, "intent":Landroid/content/Intent;
    const-string v7, "com.samsung.KPM_USER_TREND_DAILY_SAMPLING"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 458
    iget-object v8, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-static {v8, v9, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 459
    .local v8, "alarmIntent":Landroid/app/PendingIntent;
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v10, "alarm"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AlarmManager;

    .line 461
    .local v9, "alarmMgr":Landroid/app/AlarmManager;
    if-nez v9, :cond_8a

    .line 462
    const-string v7, "ActivityManager_KPM"

    const-string/jumbo v10, "schedule regist failed \'Alarm get failed\'"

    invoke-static {v7, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 466
    :cond_8a
    new-instance v10, Lcom/android/server/am/KillPolicyManager$1;

    invoke-direct {v10, v0, v14, v15}, Lcom/android/server/am/KillPolicyManager$1;-><init>(Lcom/android/server/am/KillPolicyManager;J)V

    iput-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    .line 481
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    move-object v12, v10

    .line 482
    .local v12, "filter":Landroid/content/IntentFilter;
    invoke-virtual {v12, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    iget-object v10, v0, Lcom/android/server/am/KillPolicyManager;->mDailyRandomSampleReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v10, v12}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 486
    const/4 v11, 0x1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v16

    move-object v10, v9

    move-object v7, v12

    .end local v12    # "filter":Landroid/content/IntentFilter;
    .local v7, "filter":Landroid/content/IntentFilter;
    move-wide/from16 v12, v16

    move-wide/from16 v17, v14

    .end local v14    # "triggerTime":J
    .local v17, "triggerTime":J
    move-wide v14, v4

    move-object/from16 v16, v8

    invoke-virtual/range {v10 .. v16}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 487
    return-void
.end method

.method private setCriticalKillThreshold(I)V
    .registers 4
    .param p1, "deviceRAM_GB"    # I

    .line 528
    const-string/jumbo v0, "ro.slmk.kpm_crikill_rate_th"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 529
    .local v0, "setCriticalKillRatio":I
    if-lez v0, :cond_16

    const/16 v1, 0x64

    if-ge v0, v1, :cond_16

    .line 530
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    goto :goto_1b

    .line 533
    :cond_16
    const/16 v1, 0x32

    div-int/2addr v1, p1

    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH:I

    .line 535
    :goto_1b
    return-void
.end method

.method private setPackageKillThreshold(I)V
    .registers 4
    .param p1, "deviceRAM_GB"    # I

    .line 538
    const-string/jumbo v0, "ro.slmk.kpm_pkgkill_rate_th"

    const-string v1, "-1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 539
    .local v0, "setPackageKillRatio":I
    if-lez v0, :cond_16

    const/16 v1, 0x64

    if-ge v0, v1, :cond_16

    .line 540
    sput v0, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_2b

    .line 542
    :cond_16
    const/4 v1, 0x4

    if-gt p1, v1, :cond_1e

    .line 543
    const/16 v1, 0x32

    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_2b

    .line 544
    :cond_1e
    const/16 v1, 0x8

    if-gt p1, v1, :cond_27

    .line 545
    const/16 v1, 0x19

    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    goto :goto_2b

    .line 547
    :cond_27
    const/16 v1, 0xd

    sput v1, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH:I

    .line 550
    :goto_2b
    return-void
.end method


# virtual methods
.method protected applyPolicy()V
    .registers 7

    .line 912
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_86

    .line 913
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    add-int/lit8 v0, v0, -0x1

    rem-int/lit16 v0, v0, 0x96

    aget-object v0, v2, v0

    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    add-int/lit8 v3, v3, -0x2

    rem-int/lit16 v3, v3, 0x96

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 914
    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    add-int/lit8 v3, v3, -0x3

    rem-int/lit16 v3, v3, 0x96

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 915
    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    sub-int/2addr v3, v1

    rem-int/lit16 v3, v3, 0x96

    aget-object v1, v2, v3

    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 916
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    .line 917
    .local v0, "evalPolicy":F
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->getInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$300(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->onPolicyScoreUpdated(F)V

    .line 919
    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v1

    float-to-double v2, v0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    aget-object v1, v1, v2

    .line 921
    .local v1, "policyState":Lcom/android/server/am/KillPolicyManager$KpmState;
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_7f

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", eval policy : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager_KPM"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    :cond_7f
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v2, v1, :cond_86

    .line 926
    invoke-virtual {p0, v1}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 929
    .end local v0    # "evalPolicy":F
    .end local v1    # "policyState":Lcom/android/server/am/KillPolicyManager$KpmState;
    :cond_86
    return-void
.end method

.method public calculateKpmStats(Ljava/lang/String;)V
    .registers 6
    .param p1, "callingProcess"    # Ljava/lang/String;

    .line 846
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    .line 847
    const v2, 0x7fffffff

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    .line 848
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$LmkdCountReader;->readLmkdKillCount()V

    .line 849
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->computeAdjCount()V

    .line 850
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/KillPolicyManager;->addLaunchedPackage(Ljava/lang/String;)V

    .line 851
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    if-ne v0, v1, :cond_2f

    .line 852
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    rem-int/lit16 v2, v0, 0x96

    iput v2, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    .line 853
    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    .line 854
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    new-instance v3, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    invoke-direct {v3, p0, v0}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    aput-object v3, v1, v2

    .line 856
    :cond_2f
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCurrentLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;Z)V

    .line 857
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmMemData()V

    .line 858
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updatePsiData()V

    .line 859
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_44

    .line 860
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->debugKpmLaunchStateCountData()V

    .line 862
    :cond_44
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmCycleData()V

    .line 863
    invoke-virtual {p0, p1}, Lcom/android/server/am/KillPolicyManager;->setPrevProcess(Ljava/lang/String;)V

    .line 864
    return-void
.end method

.method public changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V
    .registers 5
    .param p1, "policyState"    # Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 932
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1f

    .line 933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Policy ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :cond_1f
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 937
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    sget-object v1, Lcom/android/server/am/KillPolicyManager;->SWAPPINESS:[I

    invoke-virtual {p1}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->setValue(I)V

    .line 938
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->sendKpmStateChangeIntent()V

    .line 939
    return-void
.end method

.method public changeState(Lcom/android/server/am/KillPolicyManager$KpmRaw;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 8
    .param p1, "kpmData"    # Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 888
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->previousKill:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_b

    .line 889
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .local v0, "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    goto :goto_29

    .line 890
    .end local v0    # "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    :cond_b
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedMinKill:J

    iget-wide v4, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->bServiceKill:J

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    .line 891
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .restart local v0    # "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    goto :goto_29

    .line 892
    .end local v0    # "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    :cond_17
    iget-wide v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedKill:J

    iget-wide v4, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedKill:J

    add-long/2addr v0, v4

    iget v4, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedNormalKillCount:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_27

    .line 893
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .restart local v0    # "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    goto :goto_29

    .line 895
    .end local v0    # "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    :cond_27
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 898
    .restart local v0    # "newState":Lcom/android/server/am/KillPolicyManager$KpmState;
    :goto_29
    return-object v0
.end method

.method public computeAdjCount()V
    .registers 7

    .line 802
    const-string v0, "ActivityManager_KPM"

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    .line 803
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mPickedActCount:I

    .line 804
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mCachedCount:I

    .line 805
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mPickedCount:I

    .line 806
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mSeedbedCount:I

    .line 808
    const/4 v1, 0x0

    .line 809
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    :try_start_f
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_19} :catch_89

    add-int/lit8 v3, v3, -0x1

    if-gt v2, v3, :cond_88

    .line 811
    :try_start_1d
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v3, v3, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    move-object v1, v3

    .line 812
    if-eqz v1, :cond_7b

    .line 813
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v4, 0x384

    if-lt v3, v4, :cond_3e

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v4, 0x3e7

    if-gt v3, v4, :cond_3e

    .line 814
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mCachedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mCachedCount:I

    .line 816
    :cond_3e
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v4, 0x352

    if-ne v3, v4, :cond_4a

    .line 817
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPickedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mPickedCount:I

    .line 819
    :cond_4a
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v5, 0x35c

    if-ne v3, v5, :cond_56

    .line 820
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mSeedbedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mSeedbedCount:I

    .line 823
    :cond_56
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 824
    goto :goto_85

    .line 827
    :cond_5d
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    const/16 v5, 0x10

    if-ne v3, v5, :cond_6b

    .line 828
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    .line 830
    :cond_6b
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v3

    if-ne v3, v5, :cond_7b

    iget v3, v1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    if-ne v3, v4, :cond_7b

    .line 832
    iget v3, p0, Lcom/android/server/am/KillPolicyManager;->mPickedActCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mPickedActCount:I
    :try_end_7b
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1d .. :try_end_7b} :catch_7c
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_7b} :catch_89

    .line 838
    :cond_7b
    goto :goto_85

    .line 835
    :catch_7c
    move-exception v3

    .line 836
    .local v3, "ie":Ljava/lang/IndexOutOfBoundsException;
    :try_start_7d
    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_84} :catch_89

    .line 837
    nop

    .line 809
    .end local v3    # "ie":Ljava/lang/IndexOutOfBoundsException;
    :goto_85
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 842
    .end local v1    # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "i":I
    :cond_88
    goto :goto_91

    .line 840
    :catch_89
    move-exception v1

    .line 841
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_91
    return-void
.end method

.method public debugKpmLaunchStateCountData()V
    .registers 4

    .line 759
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    add-int/2addr v0, v1

    .line 760
    .local v0, "launchTotal":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "debugKpmLaunchStateCountData() launch (total - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / H - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / W - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / C - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager_KPM"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    return-void
.end method

.method public dumpKpmStats(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 966
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    const/4 v1, 0x1

    const-string v2, " "

    if-lt v0, v1, :cond_44

    .line 967
    const-string v0, " KPM Stats:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    const-string v0, " [idx,avg_mem,mem_avl,avg_swap,hotCnt,prKillCnt,svKillCnt,PkgCnt,PkgKillCnt,lmkdTotal,lmkdPrev,lmkdService,lmkdPicked,lmkdSeed,lmkdCri,lmk,cachedkill,emptykill,cur_state,next_state,policy_state,psi_cpu_avg,psi_mem_avg,psi_io_avg,psi_cpu_max,psi_mem_max,psi_io_max,reset_status,time]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    const/16 v1, 0x96

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 974
    .local v0, "array_limit":I
    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    .line 975
    .local v1, "i":I
    const/4 v3, 0x0

    .line 976
    .local v3, "j":I
    :goto_1c
    if-ge v3, v0, :cond_44

    .line 977
    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v5, 0x80

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 978
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    aget-object v5, v5, v1

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getKpmData()Ljava/lang/StringBuilder;

    move-result-object v4

    .line 980
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 981
    add-int/lit8 v1, v1, -0x1

    .line 982
    if-gez v1, :cond_3e

    const/16 v5, 0x95

    goto :goto_3f

    :cond_3e
    move v5, v1

    :goto_3f
    move v1, v5

    .line 983
    nop

    .end local v4    # "sb":Ljava/lang/StringBuilder;
    add-int/lit8 v3, v3, 0x1

    .line 984
    goto :goto_1c

    .line 986
    .end local v0    # "array_limit":I
    .end local v1    # "i":I
    .end local v3    # "j":I
    :cond_44
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    const-string v0, " KPM Tunable Parameters:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_DEBUG_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_CURRENT_STATE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_WARM_UP_TRIGGER_TUNABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_TRIGGER_TUNABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_WARM_UP_CYCLES_TUNABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_MEM_CRITICAL_LOW_DETECT_ENABLE: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->isDetectCritcialLowEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    const-string v0, " MEMORY_CRITICAL_LOW_KILL_DETECT_ADJ : 700"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " MEMORY_CRITICAL_LOW_PROCESS_KILL_RATIO_TH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getCriticalLowProcessKillRatioTH()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->MEMORY_CRITICAL_LOW_USE_PACKAGE_RATIO:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " MEMORY_CRITICAL_LOW_PROCESS_KILL_PACKAGE_RATIO_TH : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/KillPolicyManager;->getCriticalLowPackageKillRatioTH()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_SWAPPINESS_DEFAULT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getDefaultValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " KPM_POLICY_SWAPPINESS_CURRENT : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1002
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1004
    invoke-static {}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->getInstance()Lcom/android/server/am/kpm/ComponentCallCounterDefault;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/kpm/ComponentCallCounterDefault;->dump(Ljava/io/PrintWriter;)V

    .line 1006
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->getInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->access$300(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->dump(Ljava/io/PrintWriter;)V

    .line 1007
    return-void
.end method

.method fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "kpm"    # Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .param p2, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1079
    iget-object v0, p1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mChimeraDataInfo:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    .line 1081
    .local v0, "chimeraDataInfo":Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    if-eqz v0, :cond_e1

    .line 1082
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getLruWight()F

    move-result v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 1083
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getStdBktWeight()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-double v4, v2

    add-double/2addr v4, v6

    double-to-int v2, v4

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 1084
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getMemWeight()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v2, v6

    double-to-int v2, v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 1086
    .local v1, "weight":Lorg/json/JSONArray;
    const-string v2, "CHWT"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1087
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object v2

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "CHTC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1088
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object v2

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "CLTC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1089
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getTriggerCntSrc()[I

    move-result-object v2

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "CBTC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1090
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object v2

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "CHAC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1091
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object v2

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "CLAC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1092
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getActionCntSrc()[I

    move-result-object v2

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "CBAC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1093
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getKillCnt()I

    move-result v2

    const-string v3, "CKLC"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1095
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 1096
    .local v2, "killByAdj":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "c":I
    :goto_ab
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getAdjKillCnt()[I

    move-result-object v4

    array-length v4, v4

    if-ge v3, v4, :cond_be

    .line 1097
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getAdjKillCnt()[I

    move-result-object v4

    aget v4, v4, v3

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1096
    add-int/lit8 v3, v3, 0x1

    goto :goto_ab

    .line 1100
    .end local v3    # "c":I
    :cond_be
    const-string v3, "CKAI"

    invoke-virtual {p2, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1102
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1103
    .local v3, "killByGroup":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "c":I
    :goto_c9
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getGroupKillCnt()[I

    move-result-object v5

    array-length v5, v5

    if-ge v4, v5, :cond_dc

    .line 1104
    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getGroupKillCnt()[I

    move-result-object v5

    aget v5, v5, v4

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1103
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 1107
    .end local v4    # "c":I
    :cond_dc
    const-string v4, "CKGI"

    invoke-virtual {p2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1109
    .end local v1    # "weight":Lorg/json/JSONArray;
    .end local v2    # "killByAdj":Lorg/json/JSONArray;
    .end local v3    # "killByGroup":Lorg/json/JSONArray;
    :cond_e1
    return-void
.end method

.method public forceChangeState(Ljava/lang/String;)V
    .registers 6
    .param p1, "forceState"    # Ljava/lang/String;

    .line 867
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x5cfe9861

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2a

    const v1, 0x416f8a7

    if-eq v0, v1, :cond_20

    const v1, 0x4513cf6

    if-eq v0, v1, :cond_16

    :cond_15
    goto :goto_34

    :cond_16
    const-string v0, "LIGHT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_35

    :cond_20
    const-string v0, "HEAVY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    goto :goto_35

    :cond_2a
    const-string v0, "CRITICAL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_35

    :goto_34
    const/4 v0, -0x1

    :goto_35
    if-eqz v0, :cond_4a

    if-eq v0, v3, :cond_45

    if-eq v0, v2, :cond_40

    .line 878
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    goto :goto_4f

    .line 875
    :cond_40
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 876
    goto :goto_4f

    .line 872
    :cond_45
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 873
    goto :goto_4f

    .line 869
    :cond_4a
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 870
    nop

    .line 881
    :goto_4f
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {p0, v0}, Lcom/android/server/am/KillPolicyManager;->changePolicy(Lcom/android/server/am/KillPolicyManager$KpmState;)V

    .line 882
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 883
    return-void
.end method

.method getKpmState()Ljava/lang/String;
    .registers 3

    .line 1011
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/-$$Lambda$WMKZ0rHVTFdM1Mj-hc4KIW1iIvs;->INSTANCE:Lcom/android/server/am/-$$Lambda$WMKZ0rHVTFdM1Mj-hc4KIW1iIvs;

    .line 1012
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1013
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1011
    return-object v0
.end method

.method getPrevState()Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 2

    .line 1255
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object v0
.end method

.method public initKillPolicyManager(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ActivityManagerConstants;)V
    .registers 11
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "constants"    # Lcom/android/server/am/ActivityManagerConstants;

    .line 367
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    if-nez v0, :cond_89

    .line 368
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 369
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 370
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 371
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    nop

    .line 372
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 373
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v1

    const-wide/16 v3, 0x400

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mtotalSwap:I

    .line 374
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getRAMsizeGB()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mtotalMem:I

    .line 375
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->initCriticalLowKillRatioTH()V

    .line 377
    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mtotalMem:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_2d

    move v1, v3

    goto :goto_2e

    :cond_2d
    move v1, v4

    :goto_2e
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mDeviceMemType:I

    .line 378
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    .line 379
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    .line 380
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    .line 381
    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    .line 382
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mavlMem:I

    .line 383
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mkillCount:I

    .line 384
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mprevKillCount:I

    .line 385
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mcurKillCount:I

    .line 386
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHotRatio:I

    .line 387
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    .line 388
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    .line 389
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    .line 390
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    .line 391
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mCachedCount:I

    .line 392
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mPickedCount:I

    .line 393
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mSeedbedCount:I

    .line 394
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 395
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 396
    sget-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 397
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCount:J

    .line 398
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCric:J

    .line 399
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mlkmdMed:J

    .line 400
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mlmkCount:J

    .line 401
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdCount:J

    .line 402
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdCric:J

    .line 403
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdMed:J

    .line 404
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkCount:J

    .line 405
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mPickedActCount:I

    .line 406
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/KillPolicyManager;->mKpmStartTime:J

    .line 407
    iput-wide v1, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 408
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->initSkipPackage()V

    .line 409
    sput-boolean v3, Lcom/android/server/am/KillPolicyManager$KpmClassLazy;->isinitKpmClass:Z

    .line 410
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mCachedNormalKillCount:I

    .line 411
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mCachedEmptyKillCount:I

    .line 412
    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mCachedClientKillCount:I

    .line 414
    .end local v0    # "minfo":Lcom/android/internal/util/MemInfoReader;
    :cond_89
    return-void
.end method

.method public initScpm()V
    .registers 4

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "initScpm() called. Context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v0, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/am/KillPolicyManager$SCPMReceiver;-><init>(Lcom/android/server/am/KillPolicyManager;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mSCPMReceiver:Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initScpm() completed."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mSCPMReceiver:Lcom/android/server/am/KillPolicyManager$SCPMReceiver;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public isKpmKill(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 943
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-nez v0, :cond_45

    .line 944
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_45

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x3e7

    if-gt v0, v1, :cond_45

    .line 945
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3f

    .line 946
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_21

    goto :goto_3f

    .line 948
    :cond_21
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_30

    .line 949
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedClientKillCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedClientKillCount:I

    goto :goto_45

    .line 950
    :cond_30
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_45

    .line 951
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedEmptyKillCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedEmptyKillCount:I

    goto :goto_45

    .line 947
    :cond_3f
    :goto_3f
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedNormalKillCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mCachedNormalKillCount:I

    .line 956
    :cond_45
    :goto_45
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_9f

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Killed Process Scenario:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , App PID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , App Name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , App ADJ:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , App AdjType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->adjType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , Current CCH-ACT Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , Proc State:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 957
    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_9f
    return-void
.end method

.method public isKpmSafe(Ljava/lang/String;)Z
    .registers 6
    .param p1, "callingProcess"    # Ljava/lang/String;

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "isSkip":Z
    move-object v1, p1

    .line 790
    .local v1, "curProcess":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_16

    .line 791
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    move v0, v2

    goto :goto_17

    .line 793
    :cond_16
    const/4 v0, 0x1

    .line 795
    :goto_17
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_3c

    .line 796
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isKpmSafe() callingProcess : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mprevProcess : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager_KPM"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_3c
    return v0
.end method

.method public isSkipPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "callingPackage"    # Ljava/lang/String;

    .line 499
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->currentLauncherName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1d

    const-string v0, "android"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lcom/android/server/am/KillPolicyManager;->resumeSkipPackage:Ljava/util/ArrayList;

    .line 500
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 v0, 0x1

    .line 499
    :goto_1e
    return v0
.end method

.method reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 27
    .param p1, "type"    # I
    .param p2, "ref"    # Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1115
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    const-string v3, "HqmManagerService"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/os/SemHqmManager;

    .line 1117
    .local v13, "hqm":Landroid/os/SemHqmManager;
    const-string v14, "ActivityManager_KPM"

    if-nez v13, :cond_1d

    .line 1118
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1c

    const-string v0, "HQM services is not working"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :cond_1c
    return-void

    .line 1122
    :cond_1d
    const/4 v15, 0x0

    .line 1123
    .local v15, "isSendSuccessful":Z
    const/4 v3, 0x0

    .line 1125
    .local v3, "basicCustom":Ljava/lang/String;
    if-nez v2, :cond_27

    .line 1126
    const-string v0, "data is null"

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1127
    return-void

    .line 1128
    :cond_27
    iget v0, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    if-nez v0, :cond_32

    .line 1129
    const-string/jumbo v0, "it has \'zero\' samples."

    invoke-static {v14, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    return-void

    .line 1134
    :cond_32
    :try_start_32
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1136
    .local v0, "data":Lorg/json/JSONObject;
    const-string v4, "TYPE"

    move/from16 v12, p1

    invoke-virtual {v0, v4, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1139
    const-string v4, "CRST"

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->curKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1140
    const-string v4, "NXST"

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1141
    const-string v4, "PLST"

    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPolicyState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$KpmState;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1145
    const-string v4, "DRAM"

    iget v5, v1, Lcom/android/server/am/KillPolicyManager;->mtotalMem:I

    mul-int/lit16 v5, v5, 0x400

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1146
    const-string v4, "SWPT"

    iget v5, v1, Lcom/android/server/am/KillPolicyManager;->mtotalSwap:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1148
    const-string v4, "FCMA"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accMem:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1150
    const-string v4, "AVMA"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->avlMem:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1151
    const-string v4, "SWUA"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->accSwap:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1154
    const-string v4, "DISP"

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1157
    const-string v4, "PCKC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedTotalCnt:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1158
    const-string v4, "PCKA"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedActCnt:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1160
    const-string v4, "SDBC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedTotalCnt:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1162
    const-string v4, "CCHC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedTotalCnt:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1163
    const-string v4, "CCHA"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedActCnt:I

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    div-int/2addr v5, v6

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1165
    const-string v4, "LNCT"

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->hotCount:I

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->warmCount:I

    .line 1166
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    iget v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->coldCount:I

    .line 1167
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v5

    .line 1165
    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1169
    const-string v4, "LPKC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->launchedPackageCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1170
    const-string v4, "PKPC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->prKilledAppCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1171
    const-string v4, "SKSC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->svKilledAppCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1172
    const-string v4, "SKPC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->killedPackageCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1174
    const-string v4, "VFAK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->visToFgKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1175
    const-string v4, "HPAK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->homeToPercKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1176
    const-string v4, "PRAK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->previousKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1177
    const-string v4, "SRVK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->bServiceKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1178
    const-string v4, "PCKK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->pickedKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1179
    const-string v4, "SBAK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->seedbedKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1180
    const-string v4, "CHMK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->cachedMinKill:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1182
    const-string v4, "CHEK"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedEmptyKillCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1183
    const-string v4, "CHNK"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedNormalKillCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1184
    const-string v4, "CACK"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mCachedClientKillCount:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1187
    const-string v4, "APPC"

    iget v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1189
    const-string v4, "MEDK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdMed:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1190
    const-string v4, "CRIK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkdCric:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1191
    const-string v4, "LMKK"

    iget-wide v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->lmkCnt:J

    invoke-virtual {v0, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1193
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z
    :try_end_15f
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_15f} :catch_259

    if-eqz v4, :cond_170

    .line 1194
    :try_start_161
    const-string v4, "SWPN"

    iget-object v5, v1, Lcom/android/server/am/KillPolicyManager;->mSwappinessController:Lcom/android/server/am/KillPolicyManager$SwappinessController;

    invoke-virtual {v5}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getValue()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_16c
    .catch Lorg/json/JSONException; {:try_start_161 .. :try_end_16c} :catch_16d

    goto :goto_170

    .line 1235
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_16d
    move-exception v0

    goto/16 :goto_25b

    .line 1197
    .restart local v0    # "data":Lorg/json/JSONObject;
    :cond_170
    :goto_170
    :try_start_170
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1199
    .local v4, "procsPssStats":Lorg/json/JSONArray;
    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;
    :try_end_177
    .catch Lorg/json/JSONException; {:try_start_170 .. :try_end_177} :catch_259

    const/4 v6, 0x1

    if-eqz v5, :cond_1c7

    .line 1200
    :try_start_17a
    sget-object v5, Lcom/android/server/am/KillPolicyManager;->REPORT_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_17f
    if-ge v9, v7, :cond_1c7

    aget-object v10, v5, v9

    .line 1201
    .local v10, "label":Ljava/lang/String;
    const-wide/16 v16, 0x0

    .line 1202
    .local v16, "pss":J
    const-wide/16 v18, 0x0

    .line 1203
    .local v18, "count":J
    iget-object v11, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b0

    .line 1204
    iget-object v11, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [J

    .line 1205
    .local v11, "dump":[J
    aget-wide v20, v11, v8

    aget-wide v22, v11, v6

    add-long v20, v20, v22

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    move-wide/from16 v16, v20

    .line 1206
    const/16 v20, 0x2

    aget-wide v20, v11, v20

    move-wide/from16 v18, v20

    move/from16 v20, v7

    move-wide/from16 v6, v16

    move-wide/from16 v11, v18

    goto :goto_1b6

    .line 1203
    .end local v11    # "dump":[J
    :cond_1b0
    move/from16 v20, v7

    move-wide/from16 v6, v16

    move-wide/from16 v11, v18

    .line 1208
    .end local v16    # "pss":J
    .end local v18    # "count":J
    .local v6, "pss":J
    .local v11, "count":J
    :goto_1b6
    invoke-virtual {v4, v6, v7}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8, v11, v12}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;
    :try_end_1bd
    .catch Lorg/json/JSONException; {:try_start_17a .. :try_end_1bd} :catch_16d

    .line 1200
    nop

    .end local v6    # "pss":J
    .end local v10    # "label":Ljava/lang/String;
    .end local v11    # "count":J
    add-int/lit8 v9, v9, 0x1

    move/from16 v12, p1

    move/from16 v7, v20

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto :goto_17f

    .line 1212
    :cond_1c7
    :try_start_1c7
    const-string v5, "PRST"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1214
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1215
    .local v5, "psiStats":Lorg/json/JSONArray;
    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuSum:D

    iget v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v6, v6

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v6

    iget-wide v10, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemorySum:D

    iget v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I
    :try_end_1e3
    .catch Lorg/json/JSONException; {:try_start_1c7 .. :try_end_1e3} :catch_259

    move-object v12, v3

    move-object/from16 v17, v4

    .end local v3    # "basicCustom":Ljava/lang/String;
    .end local v4    # "procsPssStats":Lorg/json/JSONArray;
    .local v12, "basicCustom":Ljava/lang/String;
    .local v17, "procsPssStats":Lorg/json/JSONArray;
    int-to-double v3, v7

    div-double/2addr v10, v3

    add-double/2addr v10, v8

    double-to-int v3, v10

    .line 1216
    :try_start_1ea
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoSum:D

    iget v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    int-to-double v10, v4

    div-double/2addr v6, v10

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 1217
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiCpuMax:D

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 1218
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiMemoryMax:D

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 1219
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object v3

    iget-wide v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mPsiIoMax:D

    add-double/2addr v6, v8

    double-to-int v4, v6

    .line 1220
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1222
    const-string v3, "PSIS"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1224
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->fillChimeraDataIfExist(Lcom/android/server/am/KillPolicyManager$KpmRaw;Lorg/json/JSONObject;)V

    .line 1227
    const-string v3, "STAY"

    iget-wide v6, v1, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1228
    const-string v3, "ELAP"

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->getElapsedTimeMin()J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1229
    const-string v3, "UPTM"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-virtual {v0, v3, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1230
    const-string v3, "RSTF"

    iget v4, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->resetStatus:I

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1231
    const-string v3, "KVER"

    const-string v4, "2.5"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1233
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_24a
    .catch Lorg/json/JSONException; {:try_start_1ea .. :try_end_24a} :catch_256

    .line 1234
    .end local v12    # "basicCustom":Ljava/lang/String;
    .restart local v3    # "basicCustom":Ljava/lang/String;
    :try_start_24a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4
    :try_end_254
    .catch Lorg/json/JSONException; {:try_start_24a .. :try_end_254} :catch_16d

    move-object v0, v4

    .line 1237
    .end local v3    # "basicCustom":Ljava/lang/String;
    .end local v5    # "psiStats":Lorg/json/JSONArray;
    .end local v17    # "procsPssStats":Lorg/json/JSONArray;
    .local v0, "basicCustom":Ljava/lang/String;
    goto :goto_261

    .line 1235
    .end local v0    # "basicCustom":Ljava/lang/String;
    .restart local v12    # "basicCustom":Ljava/lang/String;
    :catch_256
    move-exception v0

    move-object v3, v12

    goto :goto_25b

    .end local v12    # "basicCustom":Ljava/lang/String;
    .restart local v3    # "basicCustom":Ljava/lang/String;
    :catch_259
    move-exception v0

    move-object v12, v3

    .line 1236
    .local v0, "except":Lorg/json/JSONException;
    :goto_25b
    const-string v4, "failed to create the KPUT"

    invoke-static {v14, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 1239
    .end local v3    # "basicCustom":Ljava/lang/String;
    .local v0, "basicCustom":Ljava/lang/String;
    :goto_261
    if-eqz v13, :cond_29f

    if-eqz v0, :cond_29f

    .line 1240
    nop

    .line 1241
    sget-boolean v4, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 1240
    const-string v5, "Sluggish"

    const-string v6, "KPUT"

    const-string/jumbo v7, "ph"

    const-string v8, "1.1"

    const-string/jumbo v9, "sec"

    const-string v10, ""

    const-string v12, ""

    move-object v3, v13

    move-object v11, v0

    invoke-virtual/range {v3 .. v12}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v15

    .line 1242
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v3, :cond_2a8

    .line 1243
    if-eqz v15, :cond_299

    .line 1244
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Success to report \'KPUT\' : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a8

    .line 1246
    :cond_299
    const-string v3, "failed to send to server"

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a8

    .line 1250
    :cond_29f
    sget-boolean v3, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v3, :cond_2a8

    const-string v3, "failed to send to server."

    invoke-static {v14, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_2a8
    :goto_2a8
    return-void
.end method

.method public sendKpmStateChangeIntent()V
    .registers 4

    .line 902
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 903
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 904
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v1

    const-string/jumbo v2, "kpm_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 905
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v1

    const-string/jumbo v2, "kpm_prev_level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 906
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcast sent: prev state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 907
    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cur state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 906
    const-string v2, "ActivityManager_KPM"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 909
    return-void
.end method

.method public setPrevProcess(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingProcess"    # Ljava/lang/String;

    .line 780
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    .line 781
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_1f

    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPrevProcess() mprevProcess : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mprevProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    :cond_1f
    return-void
.end method

.method public updateDisplaySize(II)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 755
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%dx%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager;->mDisplaySizeStr:Ljava/lang/String;

    .line 756
    return-void
.end method

.method public updateKpmCycleData()V
    .registers 9

    .line 608
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mscenario:I

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    sget v2, Lcom/android/server/am/KillPolicyManager;->sWarmUpCycles:I

    mul-int/2addr v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_d

    move v0, v3

    goto :goto_e

    :cond_d
    move v0, v2

    .line 609
    .local v0, "isWarmUpCycle":Z
    :goto_e
    if-eqz v0, :cond_13

    sget v1, Lcom/android/server/am/KillPolicyManager;->sWarmUpTrigger:I

    goto :goto_15

    :cond_13
    sget v1, Lcom/android/server/am/KillPolicyManager;->sPolicyTrigger:I

    :goto_15
    iput v1, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    .line 611
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    aget-object v1, v1, v4

    iget v1, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->appCnt:I

    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mTrigger:I

    if-ne v1, v4, :cond_ff

    .line 612
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    aget-object v1, v1, v4

    .line 613
    .local v1, "curCycle":Lcom/android/server/am/KillPolicyManager$KpmRaw;
    if-eqz v0, :cond_2d

    .line 614
    iput-boolean v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    .line 616
    :cond_2d
    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdReader:Lcom/android/server/am/KillPolicyManager$LmkdCountReader;

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->getCurrentLmkdKillCountByADJ(Lcom/android/server/am/KillPolicyManager$LmkdCountReader;Z)V

    .line 617
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->updateKpmKillData()V

    .line 618
    invoke-virtual {v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateCycleInfo()V

    .line 620
    # invokes: Lcom/android/server/am/KillPolicyManager$KpmRaw;->checkMemCriticalLowTH()V
    invoke-static {v1}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->access$100(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 621
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mlmkCount:J

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkCount:J

    .line 622
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCric:J

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdCric:J

    .line 623
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mlkmdMed:J

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mprevLmkdMed:J

    .line 624
    iget-object v4, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->nextKpmState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 625
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-ne v4, v5, :cond_58

    .line 626
    iget-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 628
    :cond_58
    iput v2, p0, Lcom/android/server/am/KillPolicyManager;->mCachedNormalKillCount:I

    .line 629
    iput v2, p0, Lcom/android/server/am/KillPolicyManager;->mCachedEmptyKillCount:I

    .line 630
    iput v2, p0, Lcom/android/server/am/KillPolicyManager;->mCachedClientKillCount:I

    .line 632
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    if-eq v2, v4, :cond_9b

    invoke-virtual {v2}, Lcom/android/server/am/KillPolicyManager$KpmState;->ordinal()I

    move-result v2

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$KpmState;->values()[Lcom/android/server/am/KillPolicyManager$KpmState;

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_9b

    .line 633
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_95

    .line 634
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " KPM State Change. New State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " Previous State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ActivityManager_KPM"

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_95
    iput-boolean v3, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 639
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mCurrentState:Lcom/android/server/am/KillPolicyManager$KpmState;

    iput-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mPrevState:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 642
    :cond_9b
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_POLICY_ENABLE:Z

    if-eqz v2, :cond_a2

    .line 643
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager;->applyPolicy()V

    .line 646
    :cond_a2
    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    if-eqz v2, :cond_aa

    .line 647
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/KillPolicyManager;->mNumberOfStay:J

    .line 650
    :cond_aa
    iget-boolean v2, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isWarmUpCycle:Z

    if-nez v2, :cond_b3

    .line 651
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDump:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    invoke-virtual {v2, v1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 654
    :cond_b3
    nop

    .line 655
    const-string v2, "PkgPredictorService"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/PkgPredictorService;

    .line 657
    .local v2, "predictor":Lcom/android/server/ipm/PkgPredictorService;
    if-eqz v2, :cond_ce

    .line 658
    invoke-virtual {v2}, Lcom/android/server/ipm/PkgPredictorService;->getChimeraStat()Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    move-result-object v4

    .line 660
    .local v4, "chimeraDataInfo":Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    if-eqz v4, :cond_ce

    .line 661
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    invoke-static {v4, v5}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->getDiff(Lcom/android/server/ipm/chimera/ChimeraDataInfo;Lcom/android/server/ipm/chimera/ChimeraDataInfo;)Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/am/KillPolicyManager$KpmRaw;->mChimeraDataInfo:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    .line 662
    iput-object v4, p0, Lcom/android/server/am/KillPolicyManager;->mRecentChimeraData:Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    .line 667
    .end local v4    # "chimeraDataInfo":Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    :cond_ce
    const/4 v1, 0x0

    .line 668
    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    rem-int/lit16 v5, v4, 0x96

    iput v5, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    .line 669
    add-int/2addr v4, v3

    iput v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    .line 670
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->resetLaunchStateCounts()V

    .line 671
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInApps:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->resetLmkdKillCount()V

    .line 672
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mLmkdCoutInCycle:Lcom/android/server/am/KillPolicyManager$LmkdCounter;

    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager$LmkdCounter;->resetLmkdKillCount()V

    .line 673
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->launchedInCycleKilledPkgMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 674
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mProcMemDump:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    # invokes: Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->clearAdjPss()V
    invoke-static {v3}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->access$200(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 676
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    new-instance v5, Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v6, p0, Lcom/android/server/am/KillPolicyManager;->mavgMetric:I

    invoke-direct {v5, p0, v6}, Lcom/android/server/am/KillPolicyManager$KpmRaw;-><init>(Lcom/android/server/am/KillPolicyManager;I)V

    aput-object v5, v3, v4

    .line 677
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->scheduleDailyUserTrendRandomSample()V

    .line 679
    .end local v1    # "curCycle":Lcom/android/server/am/KillPolicyManager$KpmRaw;
    .end local v2    # "predictor":Lcom/android/server/ipm/PkgPredictorService;
    :cond_ff
    return-void
.end method

.method public updateKpmKillData()V
    .registers 5

    .line 746
    sget-boolean v0, Lcom/android/server/am/DynamicHiddenApp;->LMK_ENABLE_USERSPACE_LMK:Z

    if-eqz v0, :cond_15

    .line 747
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getLMKDCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCount:J

    .line 748
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getLMKDCricCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCric:J

    .line 749
    iget-wide v2, p0, Lcom/android/server/am/KillPolicyManager;->mlmkdCount:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/KillPolicyManager;->mlkmdMed:J

    .line 751
    :cond_15
    invoke-static {}, Lcom/android/server/am/DynamicHiddenApp;->getLMKCountInfo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager;->mlmkCount:J

    .line 752
    return-void
.end method

.method public updateKpmLaunchState(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "launchPkg"    # Ljava/lang/String;
    .param p2, "launchType"    # Ljava/lang/String;

    .line 766
    const-string v0, "HOT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 767
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchHot:I

    goto :goto_2c

    .line 768
    :cond_f
    const-string v0, "WARM"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 769
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchWarm:I

    goto :goto_2c

    .line 770
    :cond_1e
    const-string v0, "COLD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 771
    iget v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager;->mLaunchCold:I

    .line 774
    :cond_2c
    :goto_2c
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v0, :cond_4f

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateKpmLaunchStateData() add pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager_KPM"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_4f
    return-void
.end method

.method public updateKpmMemData()V
    .registers 12

    .line 690
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 691
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    nop

    .line 692
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readLightMemInfo()V

    .line 693
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    long-to-int v1, v1

    .line 694
    .local v1, "freeMem":I
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeLegacy()J

    move-result-wide v5

    div-long/2addr v5, v3

    long-to-int v2, v5

    .line 695
    .local v2, "cached":I
    add-int v5, v1, v2

    .line 696
    .local v5, "availMem":I
    iget v6, p0, Lcom/android/server/am/KillPolicyManager;->mtotalSwap:I

    const-wide/16 v7, 0x400

    if-gtz v6, :cond_28

    .line 697
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v9

    div-long/2addr v9, v7

    long-to-int v6, v9

    iput v6, p0, Lcom/android/server/am/KillPolicyManager;->mtotalSwap:I

    .line 699
    :cond_28
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v9

    div-long/2addr v9, v7

    long-to-int v6, v9

    .line 700
    .local v6, "freeSwap":I
    iget v7, p0, Lcom/android/server/am/KillPolicyManager;->mtotalSwap:I

    sub-int/2addr v7, v6

    .line 701
    .local v7, "usedSwap":I
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getAvailableSize()J

    move-result-wide v8

    div-long/2addr v8, v3

    long-to-int v3, v8

    iput v3, p0, Lcom/android/server/am/KillPolicyManager;->mavlMem:I

    .line 702
    iget-object v3, p0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    aget-object v3, v3, v4

    iget v4, p0, Lcom/android/server/am/KillPolicyManager;->mCachedActCount:I

    invoke-virtual {v3, v5, v7, v4}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updateScenarioInfo(III)V

    .line 704
    .end local v1    # "freeMem":I
    .end local v2    # "cached":I
    .end local v5    # "availMem":I
    .end local v6    # "freeSwap":I
    .end local v7    # "usedSwap":I
    return-void
.end method

.method public updatePsiData()V
    .registers 18

    .line 707
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .local v1, "cpu":D
    const-wide/16 v3, 0x0

    .local v3, "mem":D
    const-wide/16 v5, 0x0

    .line 709
    .local v5, "io":D
    iget-boolean v7, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    const-string v8, "ActivityManager"

    const/4 v9, 0x0

    if-eqz v7, :cond_29

    .line 710
    sget-object v7, Lcom/android/server/am/KillPolicyManager$PsiFileType;->CPU:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v10, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v7, v10}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v7

    .line 711
    .local v7, "psi":Lcom/android/server/am/KillPolicyManager$PsiFile;
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_25

    .line 712
    iput-boolean v9, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiCpuPermission:Z

    .line 714
    const-string v10, "No permission - psi cpu"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    .line 716
    :cond_25
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v1

    .line 720
    .end local v7    # "psi":Lcom/android/server/am/KillPolicyManager$PsiFile;
    :cond_29
    :goto_29
    iget-boolean v7, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    if-eqz v7, :cond_47

    .line 721
    sget-object v7, Lcom/android/server/am/KillPolicyManager$PsiFileType;->MEMORY:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v10, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v7, v10}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v7

    .line 722
    .restart local v7    # "psi":Lcom/android/server/am/KillPolicyManager$PsiFile;
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_43

    .line 723
    iput-boolean v9, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiMemoryPermission:Z

    .line 725
    const-string v10, "No permission - psi memory"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_47

    .line 727
    :cond_43
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v3

    .line 731
    .end local v7    # "psi":Lcom/android/server/am/KillPolicyManager$PsiFile;
    :cond_47
    :goto_47
    iget-boolean v7, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    if-eqz v7, :cond_65

    .line 732
    sget-object v7, Lcom/android/server/am/KillPolicyManager$PsiFileType;->IO:Lcom/android/server/am/KillPolicyManager$PsiFileType;

    sget-object v10, Lcom/android/server/am/KillPolicyManager$PsiDataType;->AVG10:Lcom/android/server/am/KillPolicyManager$PsiDataType;

    invoke-static {v7, v10}, Lcom/android/server/am/KillPolicyManager;->getPsiFile(Lcom/android/server/am/KillPolicyManager$PsiFileType;Lcom/android/server/am/KillPolicyManager$PsiDataType;)Lcom/android/server/am/KillPolicyManager$PsiFile;

    move-result-object v7

    .line 733
    .restart local v7    # "psi":Lcom/android/server/am/KillPolicyManager$PsiFile;
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_61

    .line 734
    iput-boolean v9, v0, Lcom/android/server/am/KillPolicyManager;->mHasPsiIoPermission:Z

    .line 736
    const-string v9, "No permission - psi io"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_65

    .line 738
    :cond_61
    invoke-virtual {v7}, Lcom/android/server/am/KillPolicyManager$PsiFile;->getSomeAvg10()D

    move-result-wide v5

    .line 742
    .end local v7    # "psi":Lcom/android/server/am/KillPolicyManager$PsiFile;
    :cond_65
    :goto_65
    iget-object v7, v0, Lcom/android/server/am/KillPolicyManager;->mKpmRaws:[Lcom/android/server/am/KillPolicyManager$KpmRaw;

    iget v8, v0, Lcom/android/server/am/KillPolicyManager;->mavgIndex:I

    aget-object v10, v7, v8

    move-wide v11, v1

    move-wide v13, v3

    move-wide v15, v5

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/am/KillPolicyManager$KpmRaw;->updatePsiInfo(DDD)V

    .line 743
    return-void
.end method

.method public updateSCPMParametersFromDB()V
    .registers 3

    .line 244
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->DEBUG_SCPM:Z

    const-string v1, "ActivityManager_KPM"

    if-eqz v0, :cond_c

    .line 245
    const-string/jumbo v0, "updateSCPMParametersFromDB"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_c
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->isSCPMAvailable()Z

    move-result v0

    if-nez v0, :cond_13

    .line 248
    return-void

    .line 250
    :cond_13
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->isNeedUpdateSCPMPolicy()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->hasValidItemFromDB()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 251
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager;->getSCPMPolicyItemFromDB()V

    goto :goto_29

    .line 253
    :cond_23
    const-string/jumbo v0, "scpm doesn\'t find the Policy name for kpm"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_29
    return-void
.end method
