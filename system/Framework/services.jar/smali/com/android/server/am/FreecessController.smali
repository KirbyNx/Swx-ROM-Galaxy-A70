.class public Lcom/android/server/am/FreecessController;
.super Ljava/lang/Object;
.source "FreecessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreecessController$FreecessControllerHolder;
    }
.end annotation


# static fields
.field private static final CALM_MODE_REASON_APP_RESTART:Ljava/lang/String; = "CalmMode for restart"

.field private static final CALM_MODE_REASON_FIRST_TRIGGER:Ljava/lang/String; = "CalmMode First trigger"

.field public static final DEFAULT_FREEZE_TYPE:I = 0x0

.field private static final DEV_PATH_FREEZE:Ljava/lang/String; = "/dev/freezer/frozen/cgroup.procs"

.field private static final DEV_PATH_UNFREEZE:Ljava/lang/String; = "/dev/freezer/thaw/cgroup.procs"

.field static ENABLE_PROCESS_FREEZE:Z = false

.field static final ENABLE_TYPE_BUGREPORT:I = 0x1

.field static final ENABLE_TYPE_SMARTSWITCH:I = 0x2

.field private static final FREECESS_SINGAL_FREEZE:I = 0x1

.field private static final FREECESS_SINGAL_UNFREEZE:I = 0x2

.field public static final FREECESS_STATE_DEFAULT:I = 0x1

.field public static final FREECESS_STATE_FREEZEABLE:I = 0x2

.field public static final FREECESS_STATE_FROZEN:I = 0x3

.field static IS_MINOR_PROJECT:Z = false

.field static IS_PILOT_PROJECT:Z = false

.field static IS_READ_ACCT_FILE_ERROR_PREVENTION:Z = false

.field static IS_SUPPORT_CALM_MODE:Z = false

.field public static final LCD_OFF_FREEZE_TYPE:I = 0x2

.field private static final LCD_OFF_PRIORITY:I = 0x2

.field public static final LCD_ON_FREEZE_TYPE:I = 0x3

.field private static final LCD_ON_PRIORITY:I = 0x4

.field public static final OLAF_FREEZE_TYPE:I = 0x1

.field private static final OLAF_PRIORITY:I = 0x1

.field private static final PROTECTED_PACKAGES_LIMIT_OLAF:I = 0x2

.field static final REASON_NOT_FROZEN_ALREADY_DIED:I = 0x1

.field static final REASON_NOT_FROZEN_EXECUTING_SERVICE:I = 0x2

.field static final REASON_NOT_FROZEN_FOREGROUND_ADJ:I = 0x6

.field static final REASON_NOT_FROZEN_LAUNCHING_PROVIDER:I = 0x4

.field static final REASON_NOT_FROZEN_NONE:I = 0x0

.field static final REASON_NOT_FROZEN_RUNNING_INTENT:I = 0x3

.field static final REASON_NOT_FROZEN_RUNNING_LOGCAT:I = 0x7

.field static final REASON_NOT_FROZEN_START_PROCESS:I = 0x5

.field public static TAG:Ljava/lang/String; = null

.field private static final mCountry:Ljava/lang/String;

.field private static final mCscFeatureValue:I

.field private static final mPath:Ljava/lang/String; = "/data/system/ssrm_local_freecess"


# instance fields
.field private final FREECESS_CHECK_FROZEN_BINDER_TRANSACTION:I

.field private FREECESS_ENHANCEMENT:Z

.field private FREECESS_LRS_ENABLED:Z

.field private final FREECESS_PACKET_ADD_UID_TRANSACTION:I

.field private final FREECESS_PACKET_CLEAN_UIDS_TRANSACTION:I

.field private final FREECESS_PACKET_DELETE_UID_TRANSACTION:I

.field private calmModeFilterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cntFailFreeze:I

.field private cntFailUnfreeze:I

.field private cntFailUnfreezePilot:I

.field private filterList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field lastUpdateTimeProcessAllowList:J

.field private mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field private mAngryBird:I

.field private mAngryBirdLevel:I

.field private mBTAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBTTargetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBroadcastRecords:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/BroadcastRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/FreecessPkgMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCalmModeDefaultAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCalmModeEnabled:Z

.field private mCarModeOn:Z

.field mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mDetectBadBehaviorInterval:J

.field private mDetectBadBehaviorUnfreezedCount:I

.field private mEmergencyModeOn:Z

.field private mEnableOLAFwithoutBGFreeze:Z

.field private mFGServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/FreecessPkgMap<",
            "Lcom/android/server/am/FreecessPkgStatus;",
            ">;"
        }
    .end annotation
.end field

.field public mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/FreecessPkgMap<",
            "Lcom/android/server/am/FreecessPkgStatus;",
            ">;"
        }
    .end annotation
.end field

.field private mFrozenPidList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGPSAllowList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInputManagerService:Lcom/android/server/input/InputManagerService;

.field private mIsCharging:Z

.field private mIsDumpstateWorking:Z

.field private mIsFreecessEnable:Z

.field private mIsFreecessSkipTimeEnabled:Z

.field mIsOLAFEnabled:Z

.field private mIsScreenOnFreecessEnabled:Z

.field mIsSkipFreezeTopFocusedActivity:Z

.field private mIsSmartSwitchWorking:Z

.field private mJobScheduler:Landroid/app/job/IJobScheduler;

.field private mLatestUsedPackagesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private mLocationManager:Landroid/location/ILocationManager;

.field private mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMapFrozenUidPidList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMonitorFreezedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNMs:Landroid/os/INetworkManagementService;

.field private mOLAFAllowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOLAFAllowListForDebug:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOLAFBlockList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOLAFOn:Z

.field private mPendingBlocklistForGPS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPidUnfreezeEnabled:Z

.field private mProcessAllowListContains:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAllowListEndsWith:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAllowListEquals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessAllowListStartsWith:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mReceivers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningJobList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private final mSetUidsNeedToReleaseRestriction:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipTriggerLcdOnFreeze:Z

.field private mSsrmAllowList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTopUidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUidIdleCheck:Z

.field private mUidIdleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private olafUfzList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private olafUnfreezeEstimatedTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 82
    const-class v0, Lcom/android/server/am/FreecessController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    .line 132
    const-string/jumbo v0, "sys.config.mars_pilot_project"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    .line 139
    const-string/jumbo v0, "ro.product.model"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "roProductModel":Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 141
    const-string v2, "SM-G98"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_36

    const-string v2, "SM-G99"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    const-string v2, "SM-N98"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 142
    sput-boolean v3, Lcom/android/server/am/FreecessController;->IS_MINOR_PROJECT:Z

    .line 143
    :cond_36
    const-string v2, "SM-A32"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_40

    .line 144
    sput-boolean v3, Lcom/android/server/am/FreecessController;->IS_READ_ACCT_FILE_ERROR_PREVENTION:Z

    .line 145
    :cond_40
    const-string v2, "SM-A225"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 146
    sput-boolean v3, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    .line 147
    :cond_4a
    const-string v2, "SM-M52"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 148
    sput-boolean v3, Lcom/android/server/am/FreecessController;->IS_SUPPORT_CALM_MODE:Z

    .line 167
    .end local v0    # "roProductModel":Ljava/lang/String;
    :cond_54
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const/4 v2, 0x2

    const-string v3, "CscFeature_Framework_ConfigPoliyForFreezeBackgroundApp"

    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/feature/SemCscFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    .line 184
    sput-boolean v1, Lcom/android/server/am/FreecessController;->ENABLE_PROCESS_FREEZE:Z

    .line 244
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 28

    .line 250
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/16 v1, 0x2520

    iput v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_ADD_UID_TRANSACTION:I

    .line 105
    const/16 v1, 0x2521

    iput v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_DELETE_UID_TRANSACTION:I

    .line 106
    const/16 v1, 0x2522

    iput v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_PACKET_CLEAN_UIDS_TRANSACTION:I

    .line 107
    const/16 v1, 0x2523

    iput v1, v0, Lcom/android/server/am/FreecessController;->FREECESS_CHECK_FROZEN_BINDER_TRANSACTION:I

    .line 118
    new-instance v1, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 120
    new-instance v1, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v1}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    .line 126
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 128
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    .line 154
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 155
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    .line 156
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    .line 159
    const-string/jumbo v2, "sys.config.mars_freecess_lrs"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 161
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, v0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    .line 169
    sget v2, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    if-nez v2, :cond_64

    move v2, v3

    goto :goto_65

    :cond_64
    move v2, v1

    :goto_65
    iput-boolean v2, v0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    .line 170
    const-string/jumbo v2, "sys.config.mars_freecess_enhance"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 172
    const-string v2, "3"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/FreecessController;->mAngryBird:I

    .line 173
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 174
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 175
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 176
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsCharging:Z

    .line 177
    iput-boolean v3, v0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 178
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 179
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 180
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 181
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 183
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 185
    const-wide/32 v3, 0x493e0

    iput-wide v3, v0, Lcom/android/server/am/FreecessController;->mDetectBadBehaviorInterval:J

    .line 186
    const/4 v3, 0x2

    iput v3, v0, Lcom/android/server/am/FreecessController;->mDetectBadBehaviorUnfreezedCount:I

    .line 193
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    .line 194
    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 197
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    .line 198
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    .line 199
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    .line 201
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mBTAllowList:Ljava/util/List;

    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mBTTargetList:Ljava/util/List;

    .line 204
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.sec.android.app.clockpackage"

    const-string v5, "com.ih.app.btsdlsvc"

    const-string v6, "com.sds.mysinglesquare"

    const-string v7, "com.sds.sso.agent"

    const-string v8, "com.samsung.android.oneconnect"

    const-string v9, "com.samsung.android.app.networkstoragemanager"

    const-string v10, "com.sec.android.app.myfiles"

    const-string v11, "com.sec.android.easyMover"

    const-string v12, "com.samsung.systemui.notilus"

    const-string v13, "com.samsung.android.app.clockface"

    const-string v14, "com.samsung.android.soundassistant"

    const-string v15, "com.samsung.android.app.spage"

    const-string v16, "com.samsung.android.dynamiclock"

    const-string v17, "com.android.chrome"

    const-string v18, "com.samsung.android.service.tagservice"

    const-string v19, "com.google.android.apps.googlevoice"

    const-string v20, "com.dropbox.android"

    const-string v21, "com.samsung.android.sidegesturepad"

    const-string v22, "com.android.samsung.icebox"

    const-string v23, "com.teslamotors.tesla"

    const-string v24, "com.sec.android.app.sbrowser"

    const-string v25, "com.nhn.android.calendar"

    const-string v26, "com.samsung.android.visionintelligence"

    filled-new-array/range {v4 .. v26}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    .line 213
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.visionintelligence"

    const-string v5, "com.samsung.android.app.cocktailbarservice"

    const-string v6, "com.sec.android.easyonehand"

    const-string v7, "com.samsung.android.sidegesturepad"

    const-string v8, "com.samsung.android.authfw"

    const-string v9, "com.samsung.android.samsungpass"

    const-string v10, "com.sec.android.app.clockpackage"

    const-string v11, "com.google.android.providers.media.module"

    const-string v12, "com.samsung.android.service.aircommand"

    const-string v13, "com.samsung.android.app.smartcapture"

    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowList:Ljava/util/ArrayList;

    .line 217
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    .line 218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    .line 219
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    .line 220
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    .line 221
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    .line 222
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    .line 224
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    .line 227
    new-instance v3, Ljava/util/ArrayList;

    const-string/jumbo v4, "screenOn"

    const-string v5, "AppLockerKill"

    const-string v6, "CancelPolicy"

    const-string v7, "RegException"

    const-string v8, "activity"

    const-string v9, "backup"

    const-string v10, "AutoRunKill"

    const-string v11, "UidActive"

    const-string v12, "charging"

    const-string v13, "FGActivity"

    const-string v14, "DeviceIdleOFF"

    const-string v15, "SmartSwitch"

    filled-new-array/range {v4 .. v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/ArrayList;

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "FGActivity"

    const-string v5, "Binder(0)"

    const-string v6, "Signal"

    const-string v7, "activity"

    const-string v8, "broadcast"

    const-string v9, "bindService"

    const-string/jumbo v10, "startService"

    const-string/jumbo v11, "provider"

    const-string v12, "MediaKeyEvent"

    const-string v13, "DisableFC"

    const-string v14, "FBException"

    const-string v15, "charging"

    const-string v16, "Watchdog"

    const-string v17, "Watchdog_HALF"

    const-string v18, "CancelPolicy"

    const-string v19, "PkgRemoved"

    const-string v20, "BugReport"

    const-string v21, "SmartSwitch"

    filled-new-array/range {v4 .. v21}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/ArrayList;

    .line 233
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "CancelPolicy"

    const-string v5, "activity"

    const-string v6, "Binder(0)"

    const-string v7, "Binder(1)-"

    const-string v8, "Cfb"

    const-string v9, "FGActivity"

    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/ArrayList;

    .line 234
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mIsSkipFreezeTopFocusedActivity:Z

    .line 247
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/android/server/am/FreecessController;->mAngryBirdLevel:I

    .line 2561
    iput-boolean v1, v0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2562
    new-instance v1, Ljava/util/ArrayList;

    const-string v2, "com.samsung.android.game.gos"

    const-string v3, "com.samsung.android.game.gametools"

    const-string v4, "com.samsung.android.app.smartcapture"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/List;

    .line 2565
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 2981
    new-instance v1, Lcom/android/server/am/FreecessController$1;

    invoke-direct {v1, v0}, Lcom/android/server/am/FreecessController$1;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 3034
    new-instance v1, Lcom/android/server/am/FreecessController$2;

    invoke-direct {v1, v0}, Lcom/android/server/am/FreecessController$2;-><init>(Lcom/android/server/am/FreecessController;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    .line 3722
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    .line 3723
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, v0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    .line 250
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/FreecessController$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/FreecessController$1;

    .line 81
    invoke-direct {p0}, Lcom/android/server/am/FreecessController;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/am/FreecessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/FreecessController;)Lcom/android/server/am/FreecessPkgMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/FreecessController;)Ljava/util/HashSet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/FreecessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/FreecessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/FreecessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsCharging:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/FreecessController;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;
    .param p1, "x1"    # I

    .line 81
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/FreecessController;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/FreecessController;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/FreecessController;

    .line 81
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private checkImportantPackage(Lcom/android/server/am/FreecessPkgStatus;)Z
    .registers 9
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;

    .line 1402
    const/4 v0, 0x0

    .line 1403
    .local v0, "filterType":I
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1404
    const/16 v0, 0xe

    goto :goto_b

    .line 1406
    :cond_a
    const/4 v0, 0x4

    .line 1409
    :goto_b
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1410
    if-eqz p1, :cond_56

    .line 1411
    const/4 v2, 0x0

    :try_start_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1a

    .line 1412
    monitor-exit v1

    return v3

    .line 1413
    :cond_1a
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v0, v4, v5, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v2

    .line 1414
    .local v2, "impValue":I
    if-eqz v2, :cond_56

    .line 1415
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") is important["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    monitor-exit v1

    return v3

    .line 1419
    .end local v2    # "impValue":I
    :cond_56
    monitor-exit v1

    .line 1420
    const/4 v1, 0x0

    return v1

    .line 1419
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_11 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method private cleanPacketMonitoredUids()V
    .registers 4

    .line 1676
    const/16 v0, 0x2522

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/FreecessController;->freecessPacketTransaction(II)I

    move-result v0

    .line 1677
    .local v0, "ret":I
    if-nez v0, :cond_1a

    .line 1678
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1679
    :try_start_c
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_15

    .line 1680
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1682
    :cond_15
    monitor-exit v1

    goto :goto_21

    :catchall_17
    move-exception v2

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_17

    throw v2

    .line 1684
    :cond_1a
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v2, "cleanPacketMonitoredUid Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    :goto_21
    return-void
.end method

.method private covertLcdOnFreezedState(I)Ljava/lang/String;
    .registers 4
    .param p1, "state"    # I

    .line 3165
    const-string v0, "Unknown"

    .line 3166
    .local v0, "strState":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_12

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x3

    if-eq p1, v1, :cond_c

    goto :goto_15

    .line 3176
    :cond_c
    const-string v0, "Frozen"

    goto :goto_15

    .line 3172
    :cond_f
    const-string v0, "Freezeable"

    .line 3173
    goto :goto_15

    .line 3168
    :cond_12
    const-string v0, "Initial"

    .line 3169
    nop

    .line 3180
    :goto_15
    return-object v0
.end method

.method private dumpPendingBroadcast(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3908
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3909
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_65

    .line 3910
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3911
    .local v2, "action":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3912
    .local v3, "broadcastRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3913
    .local v4, "receivers":Ljava/util/ArrayList;
    if-eqz v3, :cond_62

    .line 3914
    const-string v5, "---- pending broadcast infos ----"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_62

    .line 3916
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/BroadcastRecord;

    .line 3917
    .local v6, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3918
    if-eqz v4, :cond_5f

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_44

    .line 3919
    goto :goto_5f

    .line 3920
    :cond_44
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_45
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_5a

    .line 3921
    const-string v8, "--"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3922
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3920
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 3924
    .end local v7    # "k":I
    :cond_5a
    const-string v7, ""

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3915
    .end local v6    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_5f
    :goto_5f
    add-int/lit8 v5, v5, 0x1

    goto :goto_2c

    .line 3909
    .end local v2    # "action":Ljava/lang/String;
    .end local v3    # "broadcastRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v4    # "receivers":Ljava/util/ArrayList;
    .end local v5    # "j":I
    :cond_62
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3928
    .end local v1    # "i":I
    :cond_65
    monitor-exit v0

    .line 3929
    return-void

    .line 3928
    :catchall_67
    move-exception v1

    monitor-exit v0
    :try_end_69
    .catchall {:try_start_4 .. :try_end_69} :catchall_67

    throw v1
.end method

.method private enterOLAF(Ljava/lang/String;II)V
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mills"    # I

    .line 2203
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_5

    .line 2204
    return-void

    .line 2206
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v0, :cond_81

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    if-nez v0, :cond_81

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    if-eqz v0, :cond_16

    goto :goto_81

    .line 2209
    :cond_16
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_1b

    return-void

    .line 2211
    :cond_1b
    if-eqz p3, :cond_4c

    .line 2213
    const/16 v0, 0x64

    if-ge p3, v0, :cond_22

    .line 2214
    return-void

    .line 2216
    :cond_22
    const/16 v0, 0x1388

    if-le p3, v0, :cond_2a

    .line 2217
    const/16 p3, 0x1388

    move v0, p3

    goto :goto_2b

    .line 2216
    :cond_2a
    move v0, p3

    .line 2218
    .end local p3    # "mills":I
    .local v0, "mills":I
    :goto_2b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    .line 2219
    .local v1, "unfreezeEstimatedTime":J
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v3

    .line 2220
    :try_start_34
    iget-object p3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p3, v1, v4

    if-gtz p3, :cond_40

    .line 2221
    monitor-exit v3

    return-void

    .line 2222
    :cond_40
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 2223
    monitor-exit v3

    move p3, v0

    goto :goto_4c

    :catchall_49
    move-exception p3

    monitor-exit v3
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_49

    throw p3

    .line 2226
    .end local v0    # "mills":I
    .end local v1    # "unfreezeEstimatedTime":J
    .restart local p3    # "mills":I
    :cond_4c
    :goto_4c
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_76

    .line 2227
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter OLAF! pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mills: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    :cond_76
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    .line 2232
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ZLjava/lang/String;I)V

    .line 2233
    return-void

    .line 2207
    :cond_81
    :goto_81
    return-void
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .registers 6
    .param p1, "dateTime"    # J

    .line 3640
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    const-string v1, "%23s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3641
    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3642
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3643
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private freecessPacketTransaction(II)I
    .registers 11
    .param p1, "code"    # I
    .param p2, "uid"    # I

    .line 1605
    const/4 v0, 0x0

    .line 1606
    .local v0, "mFreecessPacketBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 1608
    .local v1, "count":I
    :goto_2
    const-string/jumbo v2, "freecess.packet.IFreecessPacket"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1609
    const-string v3, "MARs-FreecessPacket"

    if-eqz v0, :cond_73

    .line 1610
    nop

    .line 1623
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1624
    .local v4, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1625
    .local v5, "reply":Landroid/os/Parcel;
    const/4 v6, -0x1

    .line 1628
    .local v6, "result":I
    :try_start_17
    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1629
    const/16 v2, 0x2520

    if-eq p1, v2, :cond_23

    const/16 v2, 0x2521

    if-eq p1, v2, :cond_23

    goto :goto_26

    .line 1632
    :cond_23
    invoke-virtual {v4, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1635
    :goto_26
    const/4 v2, 0x0

    invoke-interface {v0, p1, v4, v5, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1636
    invoke-virtual {v5}, Landroid/os/Parcel;->readException()V

    .line 1637
    invoke-virtual {v5}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v6, v2

    .line 1638
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v2, :cond_58

    .line 1639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "native->FW--(result:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",code:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_58} :catch_5b
    .catchall {:try_start_17 .. :try_end_58} :catchall_59

    .line 1643
    :cond_58
    goto :goto_64

    :catchall_59
    move-exception v2

    goto :goto_6c

    .line 1640
    :catch_5b
    move-exception v2

    .line 1641
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_5c
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v7, "failed to config monitored packages.."

    invoke-static {v3, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_63
    .catchall {:try_start_5c .. :try_end_63} :catchall_59

    .line 1643
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_64
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1645
    nop

    .line 1646
    return v6

    .line 1643
    :goto_6c
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw v2

    .line 1611
    .end local v4    # "data":Landroid/os/Parcel;
    .end local v5    # "reply":Landroid/os/Parcel;
    .end local v6    # "result":I
    :cond_73
    const-string v2, "FreecessPacket is waiting..."

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v2, 0x2

    if-ne v1, v2, :cond_7d

    .line 1614
    const/4 v2, -0x1

    return v2

    .line 1616
    :cond_7d
    const-wide/16 v2, 0x1f4

    :try_start_7f
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_82} :catch_86

    .line 1617
    add-int/lit8 v1, v1, 0x1

    .line 1620
    goto/16 :goto_2

    .line 1618
    :catch_86
    move-exception v2

    .line 1619
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "thread sleep error.."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    .end local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method private freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z
    .registers 30
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "freeze_type"    # I
    .param p4, "monitorPacketFlag"    # Z
    .param p5, "restrictNetworkFlag"    # Z

    .line 2021
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2022
    :try_start_f
    iget-object v0, v7, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    const/4 v13, 0x0

    if-eqz v0, :cond_28

    iget-object v0, v7, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x40

    if-le v0, v2, :cond_28

    .line 2023
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "monitored size exception(64)..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2024
    monitor-exit v1

    return v13

    .line 2026
    :cond_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_f .. :try_end_29} :catchall_165

    .line 2027
    const/4 v0, 0x3

    const/4 v14, 0x1

    if-ne v10, v0, :cond_2f

    move v0, v14

    goto :goto_30

    :cond_2f
    move v0, v13

    .line 2028
    .local v0, "isLcdOnTrigger":Z
    :goto_30
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z

    move-result v1

    .line 2030
    .local v1, "isFreezed":Z
    if-eqz v1, :cond_c5

    .line 2031
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    .line 2032
    iput-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedReason:Ljava/lang/String;

    .line 2033
    iput-boolean v14, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2034
    iput-boolean v14, v8, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 2035
    iput v10, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2036
    iput-boolean v11, v8, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 2037
    iput-boolean v12, v8, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 2039
    invoke-direct {v7, v8, v14}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 2041
    iget-object v2, v7, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_68

    .line 2042
    iget-object v2, v7, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    :cond_68
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FZ : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "), reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    iget-object v2, v7, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v2, :cond_a5

    .line 2048
    iget v2, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-direct {v7, v2}, Lcom/android/server/am/FreecessController;->isInBTTargetList(I)Z

    move-result v2

    if-eqz v2, :cond_a5

    .line 2049
    iget-object v2, v7, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->onFreeze(I)V

    .line 2053
    :cond_a5
    if-eqz v12, :cond_af

    .line 2054
    iget v2, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-direct {v7, v2, v13}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 2055
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 2058
    :cond_af
    iget-object v2, v7, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_121

    .line 2059
    iget-object v2, v7, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v8}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_121

    .line 2061
    :cond_c5
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FZ error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2062
    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, v8, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v7, v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v2

    .line 2063
    .local v2, "isUnfreezed":Z
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UFZ : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") because failed to freeze, success : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2066
    .end local v2    # "isUnfreezed":Z
    :cond_121
    :goto_121
    if-eqz v1, :cond_164

    .line 2067
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v15

    iget-object v2, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v4, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    .line 2068
    const/4 v5, -0x1

    if-nez v0, :cond_133

    move/from16 v19, v14

    goto :goto_135

    :cond_133
    move/from16 v19, v5

    .line 2069
    :goto_135
    if-eqz v11, :cond_13a

    move/from16 v20, v14

    goto :goto_13c

    :cond_13a
    move/from16 v20, v5

    .line 2070
    :goto_13c
    if-eqz v1, :cond_141

    move/from16 v21, v14

    goto :goto_143

    :cond_141
    move/from16 v21, v5

    :goto_143
    const/16 v22, 0x1

    .line 2067
    move-object/from16 v16, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v23, v0

    invoke-virtual/range {v15 .. v23}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIIZZ)V

    .line 2074
    iget-boolean v2, v7, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    if-eqz v2, :cond_164

    .line 2075
    iget v2, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const-string v3, "LRs"

    invoke-virtual {v7, v2, v3}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(ILjava/lang/String;)V

    .line 2076
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget v3, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v14, v3}, Lcom/android/server/am/FreecessHandler;->sendLRsMsg(ZI)V

    .line 2080
    :cond_164
    return v1

    .line 2026
    .end local v0    # "isLcdOnTrigger":Z
    .end local v1    # "isFreezed":Z
    :catchall_165
    move-exception v0

    :try_start_166
    monitor-exit v1
    :try_end_167
    .catchall {:try_start_166 .. :try_end_167} :catchall_165

    throw v0
.end method

.method private freezeForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .registers 10
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2491
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    if-nez v0, :cond_c

    .line 2492
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    goto :goto_11

    .line 2494
    :cond_c
    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2498
    :goto_11
    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z

    move-result v0

    .line 2500
    .local v0, "isFreezed":Z
    if-eqz v0, :cond_5a

    .line 2501
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    .line 2502
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedReason:Ljava/lang/String;

    .line 2503
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2505
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_64

    .line 2506
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OLAF FZ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_64

    .line 2508
    :cond_5a
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    .line 2511
    :cond_64
    :goto_64
    return v0
.end method

.method private freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "actionUids"    # Ljava/lang/StringBuilder;

    .line 2475
    if-eqz p1, :cond_41

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v0, :cond_7

    goto :goto_41

    .line 2478
    :cond_7
    const-string v0, "OLAF"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/FreecessController;->freezeForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 2479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2480
    const/4 v0, 0x1

    iput v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2481
    iput-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2486
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3f

    .line 2487
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2488
    :cond_3f
    return-void

    .line 2483
    :cond_40
    return-void

    .line 2476
    :cond_41
    :goto_41
    return-void
.end method

.method private freezePackageForProc(IILjava/lang/String;I)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "freeze_type"    # I

    .line 1926
    const/4 v0, 0x0

    return v0
.end method

.method private freezePackageForProc(Ljava/lang/String;IILjava/lang/String;I)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "freeze_type"    # I

    .line 1922
    const/4 v0, 0x0

    return v0
.end method

.method private getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "isFreeze"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/acct/uid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 822
    .local v0, "dirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 823
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v2, "runningPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_57

    .line 826
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, "filelist":[Ljava/lang/String;
    if-eqz v3, :cond_57

    .line 828
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    array-length v5, v3

    if-ge v4, v5, :cond_57

    .line 829
    aget-object v5, v3, v4

    const-string/jumbo v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 830
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/cgroup.procs"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, "path":Ljava/lang/String;
    invoke-direct {p0, v5, v2, p3}, Lcom/android/server/am/FreecessController;->readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;Z)V

    .line 828
    .end local v5    # "path":Ljava/lang/String;
    :cond_54
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 837
    .end local v3    # "filelist":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_57
    return-object v2
.end method

.method private getCalmModeAllowList(Ljava/util/ArrayList;)Lcom/android/server/am/FreecessPkgMap;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/am/FreecessPkgMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2616
    .local p1, "allowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/am/FreecessPkgMap;

    invoke-direct {v0}, Lcom/android/server/am/FreecessPkgMap;-><init>()V

    .line 2618
    .local v0, "list":Lcom/android/server/am/FreecessPkgMap;, "Lcom/android/server/am/FreecessPkgMap<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2619
    .local v2, "str":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2620
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getUserId()I

    move-result v4

    .line 2622
    .local v4, "userId":I
    const-string v5, ", "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2623
    .local v5, "appInfo":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v6, v7, :cond_3e

    .line 2624
    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 2626
    :try_start_2a
    aget-object v6, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_34} :catch_36

    move v4, v6

    .line 2629
    goto :goto_3e

    .line 2627
    :catch_36
    move-exception v6

    .line 2628
    .local v6, "e":Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v9, "CalmMode parseInt error!"

    invoke-static {v7, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_3e
    :goto_3e
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v3, v6}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2632
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "userId":I
    .end local v5    # "appInfo":[Ljava/lang/String;
    goto :goto_9

    .line 2633
    :cond_46
    return-object v0
.end method

.method private getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 5
    .param p1, "uid"    # I

    .line 680
    const/4 v0, 0x0

    .line 681
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 682
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 683
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    move-object v0, v2

    .line 685
    :cond_19
    monitor-exit v1

    .line 686
    return-object v0

    .line 685
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 672
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v2, :cond_19

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v2

    if-lez v2, :cond_19

    .line 673
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    move-object v0, v2

    .line 675
    :cond_19
    monitor-exit v1

    .line 676
    return-object v0

    .line 675
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method private getFrozenPidsFromPath()Ljava/util/ArrayList;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1516
    const-string v0, "Error occured while getFrozenPidsFromPath(close): "

    const-string v1, "/dev/freezer/frozen/cgroup.procs"

    .line 1518
    .local v1, "path":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1519
    .local v2, "fr":Ljava/io/FileReader;
    const/4 v3, 0x0

    .line 1520
    .local v3, "br":Ljava/io/BufferedReader;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v4, "procsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_b
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v5

    .line 1524
    nop

    .line 1525
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v5

    .line 1527
    nop

    .line 1528
    :goto_19
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .local v6, "readline":Ljava/lang/String;
    if-eqz v5, :cond_37

    .line 1529
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 1530
    .local v5, "proc":I
    nop

    .line 1531
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_36

    .line 1532
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_36} :catch_5b
    .catchall {:try_start_b .. :try_end_36} :catchall_59

    .line 1535
    .end local v5    # "proc":I
    :cond_36
    goto :goto_19

    .line 1542
    .end local v6    # "readline":Ljava/lang/String;
    :cond_37
    if-eqz v3, :cond_3f

    .line 1543
    :try_start_39
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_3f

    .line 1546
    :catch_3d
    move-exception v5

    goto :goto_44

    .line 1544
    :cond_3f
    :goto_3f
    nop

    .line 1545
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_43} :catch_3d

    .line 1548
    :cond_43
    :goto_43
    goto :goto_88

    .line 1547
    .local v5, "e":Ljava/io/IOException;
    :goto_44
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_4b
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_88

    .line 1541
    :catchall_59
    move-exception v5

    goto :goto_89

    .line 1538
    :catch_5b
    move-exception v5

    .line 1539
    .restart local v5    # "e":Ljava/io/IOException;
    :try_start_5c
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occured while getFrozenPidsFromPath: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_72
    .catchall {:try_start_5c .. :try_end_72} :catchall_59

    .line 1542
    .end local v5    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_7a

    .line 1543
    :try_start_74
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_7a

    .line 1546
    :catch_78
    move-exception v5

    goto :goto_80

    .line 1544
    :cond_7a
    :goto_7a
    if-eqz v2, :cond_43

    .line 1545
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_7f} :catch_78

    goto :goto_43

    .line 1547
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_80
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_4b

    .line 1550
    .end local v5    # "e":Ljava/io/IOException;
    :goto_88
    return-object v4

    .line 1542
    :goto_89
    if-eqz v3, :cond_91

    .line 1543
    :try_start_8b
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    goto :goto_91

    .line 1546
    :catch_8f
    move-exception v6

    goto :goto_97

    .line 1544
    :cond_91
    :goto_91
    if-eqz v2, :cond_ac

    .line 1545
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_96
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_96} :catch_8f

    goto :goto_ac

    .line 1547
    .local v6, "e":Ljava/io/IOException;
    :goto_97
    sget-object v7, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad

    .line 1548
    .end local v6    # "e":Ljava/io/IOException;
    :cond_ac
    :goto_ac
    nop

    .line 1549
    :goto_ad
    throw v5
.end method

.method public static getInstance()Lcom/android/server/am/FreecessController;
    .registers 1

    .line 257
    # getter for: Lcom/android/server/am/FreecessController$FreecessControllerHolder;->INSTANCE:Lcom/android/server/am/FreecessController;
    invoke-static {}, Lcom/android/server/am/FreecessController$FreecessControllerHolder;->access$100()Lcom/android/server/am/FreecessController;

    move-result-object v0

    return-object v0
.end method

.method private getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 9
    .param p1, "uid"    # I

    .line 722
    const/4 v0, 0x0

    .line 723
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 724
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->size()I

    move-result v2

    if-lez v2, :cond_21

    .line 725
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    move-object v0, v2

    .line 726
    if-eqz v0, :cond_21

    iget v2, v0, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v2, p1, :cond_21

    .line 727
    monitor-exit v1

    return-object v0

    .line 730
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_79

    .line 732
    if-nez v0, :cond_78

    .line 734
    :try_start_24
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, "uidPackages":[Ljava/lang/String;
    if-eqz v1, :cond_5f

    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5f

    .line 736
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 737
    .local v2, "packageName":Ljava/lang/String;
    const/16 v3, 0x100f

    .line 740
    .local v3, "flags":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-interface {v4, v2, v3, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 741
    .local v4, "pi":Landroid/content/pm/PackageInfo;
    new-instance v5, Lcom/android/server/am/FreecessPkgStatus;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-direct {v5, v2, p1, v6}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;II)V

    move-object v0, v5

    .line 742
    if-eqz v4, :cond_57

    iget-object v5, v4, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v5, :cond_57

    .line 743
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 745
    :cond_57
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v5, p1, v2, v0}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_5f} :catch_60

    .line 750
    .end local v1    # "uidPackages":[Ljava/lang/String;
    .end local v2    # "packageName":Ljava/lang/String;
    .end local v3    # "flags":I
    .end local v4    # "pi":Landroid/content/pm/PackageInfo;
    :cond_5f
    goto :goto_78

    .line 748
    :catch_60
    move-exception v1

    .line 749
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getPackageStatus() failed to create ps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_78
    :goto_78
    return-object v0

    .line 730
    :catchall_79
    move-exception v2

    :try_start_7a
    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v2
.end method

.method private getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 692
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v2

    if-lez v2, :cond_19

    .line 693
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/FreecessPkgStatus;

    move-object v0, v2

    .line 694
    if-eqz v0, :cond_19

    .line 695
    monitor-exit v1

    return-object v0

    .line 698
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_4 .. :try_end_1a} :catchall_60

    .line 700
    if-nez v0, :cond_5f

    .line 701
    const/16 v1, 0x100f

    .line 706
    .local v1, "flags":I
    :try_start_1e
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 707
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_46

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_46

    .line 708
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 709
    .local v3, "uid":I
    new-instance v4, Lcom/android/server/am/FreecessPkgStatus;

    invoke-direct {v4, p1, v3, p2}, Lcom/android/server/am/FreecessPkgStatus;-><init>(Ljava/lang/String;II)V

    move-object v0, v4

    .line 710
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v4, :cond_3e

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    iput-object v4, v0, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    .line 711
    :cond_3e
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4, v3, p1, v0}, Lcom/android/server/am/FreecessPkgMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_46} :catch_47

    .line 716
    .end local v2    # "pi":Landroid/content/pm/PackageInfo;
    .end local v3    # "uid":I
    :cond_46
    goto :goto_5f

    .line 714
    :catch_47
    move-exception v2

    .line 715
    .local v2, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPackageStatus() failed to create ps "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    .end local v1    # "flags":I
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_5f
    :goto_5f
    return-object v0

    .line 698
    :catchall_60
    move-exception v2

    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v2
.end method

.method private isInBTAllowList(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 1281
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1282
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mBTAllowList:Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1283
    const/4 v1, 0x1

    return v1

    .line 1285
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private isInBTTargetList(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 1289
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1290
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mBTTargetList:Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1291
    const/4 v1, 0x1

    return v1

    .line 1293
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method private isReceivingTouchEvent(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 1780
    const/4 v0, 0x0

    .line 1781
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    if-eqz v1, :cond_9

    .line 1782
    invoke-virtual {v1, p1}, Lcom/android/server/input/InputManagerService;->isUidTouched(I)Z

    move-result v0

    .line 1784
    :cond_9
    return v0
.end method

.method private readAcctFile(Ljava/lang/String;Ljava/util/ArrayList;Z)V
    .registers 11
    .param p1, "path"    # Ljava/lang/String;
    .param p3, "isFreeze"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;Z)V"
        }
    .end annotation

    .line 778
    .local p2, "pidsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 779
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 780
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 782
    .local v2, "added":Z
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 783
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 784
    :goto_14
    if-eqz v1, :cond_30

    .line 785
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 786
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 787
    if-nez v2, :cond_2a

    .line 788
    const/4 v2, 0x1

    .line 790
    :cond_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_14

    .line 792
    :cond_30
    sget-boolean v3, Lcom/android/server/am/FreecessController;->IS_READ_ACCT_FILE_ERROR_PREVENTION:Z

    if-eqz v3, :cond_82

    if-nez p3, :cond_82

    .line 793
    if-nez v2, :cond_82

    .line 794
    const-string/jumbo v3, "pid_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 795
    .local v3, "pid":I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_82

    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_82

    .line 796
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot get pid from uid. but bring it in a different way. pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_82} :catch_b8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_82} :catch_8e
    .catchall {:try_start_4 .. :try_end_82} :catchall_8c

    .line 806
    .end local v3    # "pid":I
    :cond_82
    nop

    .line 808
    :try_start_83
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    .line 811
    :goto_86
    goto :goto_dd

    .line 809
    :catch_87
    move-exception v3

    .line 810
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_86

    .line 806
    :catchall_8c
    move-exception v3

    goto :goto_de

    .line 803
    :catch_8e
    move-exception v3

    .line 804
    .local v3, "e2":Ljava/lang/Exception;
    :try_start_8f
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred when reading "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b1
    .catchall {:try_start_8f .. :try_end_b1} :catchall_8c

    .line 806
    nop

    .end local v3    # "e2":Ljava/lang/Exception;
    if-eqz v0, :cond_dd

    .line 808
    :try_start_b4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_87

    goto :goto_86

    .line 801
    :catch_b8
    move-exception v3

    .line 802
    .local v3, "e":Ljava/io/IOException;
    :try_start_b9
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d6
    .catchall {:try_start_b9 .. :try_end_d6} :catchall_8c

    .line 806
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_dd

    .line 808
    :try_start_d9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d9 .. :try_end_dc} :catch_87

    goto :goto_86

    .line 814
    :cond_dd
    :goto_dd
    return-void

    .line 806
    :goto_de
    if-eqz v0, :cond_e8

    .line 808
    :try_start_e0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_e3
    .catch Ljava/io/IOException; {:try_start_e0 .. :try_end_e3} :catch_e4

    .line 811
    goto :goto_e8

    .line 809
    :catch_e4
    move-exception v4

    .line 810
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 813
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e8
    :goto_e8
    throw v3
.end method

.method private resetFreecessStateForLcdOnFreeze()V
    .registers 6

    .line 3252
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_27

    .line 3253
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3254
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    .line 3255
    .local v1, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_22

    .line 3256
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    .line 3257
    .local v3, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v3, :cond_1f

    .line 3258
    const/4 v4, 0x1

    iput v4, v3, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3255
    .end local v3    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 3261
    .end local v1    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v2    # "i":I
    :cond_22
    monitor-exit v0

    goto :goto_27

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_7 .. :try_end_26} :catchall_24

    throw v1

    .line 3263
    :cond_27
    :goto_27
    return-void
.end method

.method private sendFreecessSignal(II)Z
    .registers 5
    .param p1, "signal"    # I
    .param p2, "pid"    # I

    .line 1199
    const/4 v0, 0x0

    .line 1201
    .local v0, "isSucceed":Z
    const/4 v1, 0x1

    if-eq p1, v1, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    goto :goto_15

    .line 1203
    :cond_8
    const-string v1, "/dev/freezer/thaw/cgroup.procs"

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;I)Z

    move-result v0

    .line 1204
    goto :goto_15

    .line 1206
    :cond_f
    const-string v1, "/dev/freezer/frozen/cgroup.procs"

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;I)Z

    move-result v0

    .line 1209
    :goto_15
    return v0
.end method

.method private sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p4, "signal"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)Z"
        }
    .end annotation

    .line 1180
    .local p3, "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z

    move-result v0

    return v0
.end method

.method private sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;IZ)Z
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p4, "signal"    # I
    .param p5, "isLcdOnTrigger"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;IZ)Z"
        }
    .end annotation

    .line 1184
    .local p3, "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1186
    .local v0, "isSucceed":Z
    const/4 v1, 0x1

    if-eq p4, v1, :cond_17

    const/4 v1, 0x2

    if-eq p4, v1, :cond_8

    goto :goto_22

    .line 1188
    :cond_8
    const-string v6, "/dev/freezer/thaw/cgroup.procs"

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Z)Z

    move-result v0

    .line 1189
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->releaseRestriction(I)V

    .line 1190
    goto :goto_22

    .line 1192
    :cond_17
    const-string v5, "/dev/freezer/frozen/cgroup.procs"

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Z)Z

    move-result v0

    .line 1195
    :goto_22
    return v0
.end method

.method private setFirewallChainEnabled(IZ)V
    .registers 9
    .param p1, "chain"    # I
    .param p2, "enable"    # Z

    .line 1483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1484
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    .line 1485
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1488
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_40

    .line 1490
    :try_start_19
    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setFirewallChainEnabled(IZ)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_23
    .catchall {:try_start_19 .. :try_end_1c} :catchall_21

    .line 1494
    nop

    :goto_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1495
    goto :goto_40

    .line 1494
    :catchall_21
    move-exception v2

    goto :goto_3c

    .line 1491
    :catch_23
    move-exception v2

    .line 1492
    .local v2, "e":Ljava/lang/Exception;
    :try_start_24
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while setFirewallChainEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_21

    .line 1494
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1d

    :goto_3c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1495
    throw v2

    .line 1497
    :cond_40
    :goto_40
    return-void
.end method

.method private stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V
    .registers 10
    .param p1, "preState"    # I
    .param p2, "curState"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "ps"    # Lcom/android/server/am/FreecessPkgStatus;

    .line 3184
    if-eq p1, p2, :cond_3a

    .line 3185
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "(state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->covertLcdOnFreezedState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/server/am/FreecessController;->covertLcdOnFreezedState(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3186
    :cond_3a
    const/4 v0, 0x1

    if-eq p2, v0, :cond_5c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_50

    const/4 v0, 0x3

    if-eq p2, v0, :cond_44

    goto :goto_7b

    .line 3200
    :cond_44
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessHandler;->sendLcdOnFreezeTriggerMsg(Ljava/lang/String;I)V

    goto :goto_7b

    .line 3197
    :cond_50
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFrozenMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 3198
    goto :goto_7b

    .line 3188
    :cond_5c
    invoke-direct {p0, p4}, Lcom/android/server/am/FreecessController;->checkImportantPackage(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v1

    .line 3189
    .local v1, "isImportant":Z
    if-eqz v1, :cond_6e

    .line 3191
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3, v4, v0, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V

    goto :goto_7b

    .line 3193
    :cond_6e
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v2, p4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p3}, Lcom/android/server/am/FreecessHandler;->sendChangeToFreezeableMsg(Ljava/lang/String;IZLjava/lang/String;)V

    .line 3195
    nop

    .line 3203
    .end local v1    # "isImportant":Z
    :goto_7b
    return-void
.end method

.method private unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z
    .registers 26
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "olafPending"    # Z

    .line 2084
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "Packet"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v9, v0

    .line 2085
    .local v9, "needMonitorPacket":Z
    const/4 v0, 0x0

    .line 2087
    .local v0, "isUnfreezed":Z
    if-eqz v7, :cond_1c6

    iget-boolean v1, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v1, :cond_1c6

    .line 2089
    iget-boolean v1, v6, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    const/4 v10, 0x1

    if-eqz v1, :cond_51

    iget-boolean v1, v6, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-eqz v1, :cond_51

    .line 2090
    iget-object v1, v6, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/ArrayList;

    if-eqz v1, :cond_40

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    iget-boolean v1, v7, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v1, :cond_40

    .line 2091
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OLAF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v7, v1}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    .line 2093
    return v0

    .line 2094
    :cond_40
    if-eqz p3, :cond_51

    iget-object v1, v6, Lcom/android/server/am/FreecessController;->olafUfzList:Ljava/util/ArrayList;

    if-eqz v1, :cond_51

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_51

    .line 2095
    iput-boolean v10, v7, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    .line 2098
    iput-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 2100
    return v0

    .line 2106
    :cond_51
    iget-object v1, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, v7, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v11, 0x2

    invoke-direct {v6, v1, v2, v3, v11}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v12

    .line 2108
    .end local v0    # "isUnfreezed":Z
    .local v12, "isUnfreezed":Z
    const-string v0, "("

    if-eqz v12, :cond_181

    .line 2109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2110
    iput-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 2111
    const/4 v13, 0x0

    iput-boolean v13, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2112
    iput v10, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2114
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-wide v4, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UFZ"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    const-string v1, "Watchdog_HALF"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "UFZ : "

    if-nez v1, :cond_de

    const-string v1, "Watchdog"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    goto :goto_de

    .line 2119
    :cond_b7
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), reason: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10e

    .line 2117
    :cond_de
    :goto_de
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), FZ-time:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " reason: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2122
    :goto_10e
    iget-object v1, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v3, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-boolean v4, v7, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v5, v7, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/FreecessController;->onUnfreeze(Ljava/lang/String;IIZZ)V

    .line 2124
    iput-boolean v13, v7, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    .line 2125
    iput-boolean v13, v7, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    .line 2128
    iget-boolean v0, v6, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v0, :cond_13f

    .line 2129
    iput-boolean v13, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2130
    iput v11, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2131
    iget-object v0, v6, Lcom/android/server/am/FreecessController;->calmModeFilterList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15d

    .line 2132
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v3, "CalmMode"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_15d

    .line 2134
    :cond_13f
    iget-boolean v0, v7, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-eqz v0, :cond_15b

    iget-object v0, v6, Lcom/android/server/am/FreecessController;->filterList:Ljava/util/ArrayList;

    if-eqz v0, :cond_15b

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15b

    .line 2135
    iget v0, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2136
    .local v0, "preState":I
    iput v11, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2139
    iget-boolean v1, v6, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-eqz v1, :cond_15a

    .line 2140
    iget v1, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-direct {v6, v0, v1, v8, v7}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 2141
    .end local v0    # "preState":I
    :cond_15a
    goto :goto_15d

    .line 2142
    :cond_15b
    iput v10, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2145
    :cond_15d
    :goto_15d
    invoke-direct {v6, v7, v13}, Lcom/android/server/am/FreecessController;->updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V

    .line 2148
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v1, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessHandler;->sendPendingBroadcastMsg(Ljava/lang/String;I)V

    .line 2150
    iget-object v0, v6, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v2, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1c5

    .line 2151
    iget-object v0, v6, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v1, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v2, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    goto :goto_1c5

    .line 2155
    :cond_181
    if-eqz v9, :cond_1a0

    iget-boolean v1, v7, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz v1, :cond_1a0

    .line 2156
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v13

    iget-object v14, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v1, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v17, -0x1

    const/16 v18, 0x1

    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v16, v1

    invoke-virtual/range {v13 .. v21}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIIZZ)V

    .line 2163
    :cond_1a0
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UFZ error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    :cond_1c5
    :goto_1c5
    move v0, v12

    .end local v12    # "isUnfreezed":Z
    .local v0, "isUnfreezed":Z
    :cond_1c6
    return v0
.end method

.method private unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;I)V
    .registers 6
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "pid"    # I

    .line 2170
    if-eqz p1, :cond_13

    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v0, :cond_13

    .line 2171
    const/4 v0, 0x2

    invoke-direct {p0, v0, p3}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(II)Z

    move-result v0

    .line 2173
    .local v0, "isUnfreezed":Z
    if-eqz v0, :cond_13

    .line 2174
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isUidFreezed:Z

    .line 2175
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isPidFreezed:Z

    .line 2180
    .end local v0    # "isUnfreezed":Z
    :cond_13
    return-void
.end method

.method private unFreezePackageForProc(Ljava/lang/String;IILjava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "pid"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 1982
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1983
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 1984
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v2, :cond_f

    .line 1985
    invoke-direct {p0, v1, p4, p3}, Lcom/android/server/am/FreecessController;->unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;I)V

    goto :goto_13

    .line 1987
    :cond_f
    const/4 v2, 0x0

    invoke-direct {p0, v1, p4, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 1988
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :goto_13
    monitor-exit v0

    .line 1989
    return-void

    .line 1988
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method private unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .registers 16
    .param p1, "freezedPackage"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2784
    const-string v0, "Packet"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2786
    .local v0, "needMonitorPacket":Z
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v1

    .line 2788
    .local v1, "isUnfreezed":Z
    const-string v2, "("

    if-eqz v1, :cond_b1

    .line 2789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2790
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 2791
    const/4 v3, 0x0

    iput-boolean v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2792
    iput-boolean v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2794
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OLAF:P-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    iget-wide v6, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UFZ"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    iget-object v7, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v9, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-boolean v10, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    iget-boolean v11, p1, Lcom/android/server/am/FreecessPkgStatus;->restrictNetworkFlag:Z

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/FreecessController;->onUnfreeze(Ljava/lang/String;IIZZ)V

    .line 2798
    const/4 v3, 0x1

    iput v3, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2800
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_84

    .line 2801
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2803
    :cond_84
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v3, :cond_ee

    .line 2804
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OLAF Pending UFZ : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "), reason: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 2808
    :cond_b1
    if-eqz v0, :cond_c9

    iget-boolean v3, p1, Lcom/android/server/am/FreecessPkgStatus;->monitorPacketFlag:Z

    if-eqz v3, :cond_c9

    .line 2809
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/4 v8, -0x1

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIIZZ)V

    .line 2816
    :cond_c9
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UFZ error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2818
    :cond_ee
    :goto_ee
    return-void
.end method

.method private updateFreezedStatusByFreezeType(Lcom/android/server/am/FreecessPkgStatus;Z)V
    .registers 5
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "isFreezed"    # Z

    .line 1500
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_15

    .line 1508
    :cond_c
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    .line 1509
    goto :goto_15

    .line 1505
    :cond_f
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOffFreezed:Z

    .line 1506
    goto :goto_15

    .line 1502
    :cond_12
    iput-boolean p2, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 1503
    nop

    .line 1513
    :goto_15
    return-void
.end method

.method private updateFreezedUidFirewall(IZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 1425
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1427
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    .line 1428
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1431
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_49

    .line 1433
    const/4 v3, 0x4

    if-eqz p2, :cond_21

    .line 1434
    const/4 v4, 0x1

    :try_start_1d
    invoke-interface {v2, v3, p1, v4}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V

    goto :goto_25

    .line 1436
    :cond_21
    const/4 v4, 0x2

    invoke-interface {v2, v3, p1, v4}, Landroid/os/INetworkManagementService;->setFirewallUidRule(III)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_2c
    .catchall {:try_start_1d .. :try_end_25} :catchall_2a

    .line 1441
    :goto_25
    nop

    :goto_26
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    goto :goto_49

    .line 1441
    :catchall_2a
    move-exception v2

    goto :goto_45

    .line 1438
    :catch_2c
    move-exception v2

    .line 1439
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2d
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while updateFreezedUidFirewall: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_2a

    .line 1441
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_26

    :goto_45
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1442
    throw v2

    .line 1444
    :cond_49
    :goto_49
    return-void
.end method

.method private writeDevFile(Ljava/lang/String;I)Z
    .registers 12
    .param p1, "devPath"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 1133
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1135
    .local v0, "file":Ljava/io/File;
    const/4 v1, -0x1

    .line 1136
    .local v1, "isSucceed":I
    const/4 v2, 0x0

    .line 1138
    .local v2, "isFreeze":Z
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_82

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_82

    .line 1143
    :cond_15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 1144
    .local v3, "pidInteger":Ljava/lang/Integer;
    const-string v5, "/dev/freezer/thaw/cgroup.procs"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 1145
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v5

    .line 1146
    :try_start_24
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 1147
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1149
    :cond_31
    monitor-exit v5

    goto :goto_55

    :catchall_33
    move-exception v4

    monitor-exit v5
    :try_end_35
    .catchall {:try_start_24 .. :try_end_35} :catchall_33

    throw v4

    .line 1150
    :cond_36
    const-string v5, "/dev/freezer/frozen/cgroup.procs"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 1151
    const/4 v5, 0x1

    .line 1152
    .end local v2    # "isFreeze":Z
    .local v5, "isFreeze":Z
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v6

    .line 1153
    :try_start_42
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4f

    .line 1154
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1156
    :cond_4f
    monitor-exit v6

    move v2, v5

    goto :goto_55

    :catchall_52
    move-exception v2

    monitor-exit v6
    :try_end_54
    .catchall {:try_start_42 .. :try_end_54} :catchall_52

    throw v2

    .line 1159
    .end local v5    # "isFreeze":Z
    .restart local v2    # "isFreeze":Z
    :cond_55
    :goto_55
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 1162
    .local v5, "token":J
    :try_start_59
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v7, :cond_69

    .line 1163
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v8, "CustomFrequencyManagerService"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/CustomFrequencyManager;

    iput-object v7, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1165
    :cond_69
    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v8, "freeze"

    invoke-virtual {v7, p2, v2, v8}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v7
    :try_end_72
    .catchall {:try_start_59 .. :try_end_72} :catchall_7d

    move v1, v7

    .line 1167
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    nop

    .line 1170
    const/4 v7, -0x1

    if-ne v1, v7, :cond_7b

    goto :goto_7c

    :cond_7b
    const/4 v4, 0x1

    :goto_7c
    return v4

    .line 1167
    :catchall_7d
    move-exception v4

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1168
    throw v4

    .line 1139
    .end local v3    # "pidInteger":Ljava/lang/Integer;
    .end local v5    # "token":J
    :cond_82
    :goto_82
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "writeDevFile error: file doesn\'t exist or can\'t write"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return v4
.end method

.method private writeDevFile(Ljava/lang/String;ILjava/util/ArrayList;Ljava/lang/String;Z)Z
    .registers 28
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p4, "devPath"    # Ljava/lang/String;
    .param p5, "isLcdOnTrigger"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .line 862
    .local p3, "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    const/4 v5, -0x1

    .line 863
    .local v5, "isSucceed":I
    const/4 v0, 0x0

    .line 864
    .local v0, "isFreeze":Z
    const-string v6, "/dev/freezer/frozen/cgroup.procs"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_16

    const/4 v0, 0x1

    move v6, v0

    goto :goto_1f

    .line 865
    :cond_16
    const-string v6, "/dev/freezer/thaw/cgroup.procs"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_555

    move v6, v0

    .line 869
    .end local v0    # "isFreeze":Z
    .local v6, "isFreeze":Z
    :goto_1f
    invoke-direct {v1, v2, v3, v6}, Lcom/android/server/am/FreecessController;->getAllRunningPackagePids(Ljava/lang/String;IZ)Ljava/util/ArrayList;

    move-result-object v8

    .line 872
    .local v8, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p3, :cond_39

    .line 873
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_29
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 874
    .local v9, "pid":Ljava/lang/Integer;
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 875
    .end local v9    # "pid":Ljava/lang/Integer;
    goto :goto_29

    .line 878
    :cond_39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 881
    .local v9, "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_88

    if-nez v6, :cond_88

    .line 882
    iget-object v10, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v10

    .line 883
    :try_start_48
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_83

    .line 884
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 885
    .local v0, "listPidByUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_64
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7a

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 886
    .local v12, "cachedPID":Ljava/lang/Integer;
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_79

    .line 887
    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 886
    .end local v12    # "cachedPID":Ljava/lang/Integer;
    :cond_79
    goto :goto_64

    .line 888
    :cond_7a
    iget-object v11, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    .end local v0    # "listPidByUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_83
    monitor-exit v10

    goto :goto_88

    :catchall_85
    move-exception v0

    monitor-exit v10
    :try_end_87
    .catchall {:try_start_48 .. :try_end_87} :catchall_85

    throw v0

    .line 894
    :cond_88
    :goto_88
    const/4 v0, 0x0

    .line 895
    .local v0, "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v6, :cond_db

    .line 896
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v10

    .line 897
    iget-object v10, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v10, v8, v0}, Lcom/android/server/am/ActivityManagerService;->checkProcDiedOrComponentExecutingForFreeze(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v10

    .line 898
    .local v10, "checkResult":I
    if-eqz v10, :cond_d9

    .line 899
    sget-boolean v11, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v11, :cond_d8

    .line 900
    packed-switch v10, :pswitch_data_558

    goto :goto_d8

    .line 923
    :pswitch_a1
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is RL"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d8

    .line 920
    :pswitch_a9
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is FG"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    goto :goto_d8

    .line 915
    :pswitch_b1
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is SP"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    goto :goto_d8

    .line 911
    :pswitch_b9
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is LP"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    goto :goto_d8

    .line 908
    :pswitch_c1
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is RI"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    goto :goto_d8

    .line 905
    :pswitch_c9
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is ES"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    goto :goto_d8

    .line 902
    :pswitch_d1
    sget-object v11, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v12, "Skip freeze : freeze target is AD"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_d8
    :goto_d8
    return v7

    .line 898
    :cond_d9
    move-object v10, v0

    goto :goto_dc

    .line 895
    .end local v10    # "checkResult":I
    :cond_db
    move-object v10, v0

    .line 931
    .end local v0    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v10, "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_dc
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 932
    .local v11, "now":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 935
    .local v13, "token":J
    :try_start_e4
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15
    :try_end_e8
    .catchall {:try_start_e4 .. :try_end_e8} :catchall_54c

    :goto_e8
    :try_start_e8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_ec
    .catchall {:try_start_e8 .. :try_end_ec} :catchall_544

    if-eqz v0, :cond_24b

    :try_start_ee
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_f8
    .catchall {:try_start_ee .. :try_end_f8} :catchall_242

    move/from16 v17, v0

    .line 937
    .local v17, "pid":I
    :try_start_fa
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_fe} :catch_234
    .catchall {:try_start_fa .. :try_end_fe} :catchall_242

    move-object/from16 v18, v0

    .line 938
    .local v18, "pidInteger":Ljava/lang/Integer;
    if-nez v6, :cond_17e

    .line 939
    :try_start_102
    iget-boolean v0, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_135

    .line 940
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UFZ : "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_11a
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_11a} :catch_175
    .catchall {:try_start_102 .. :try_end_11a} :catchall_242

    move/from16 v4, v17

    .end local v17    # "pid":I
    .local v4, "pid":I
    :try_start_11c
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_11f
    .catch Ljava/lang/Exception; {:try_start_11c .. :try_end_11f} :catch_12e
    .catchall {:try_start_11c .. :try_end_11f} :catchall_242

    move/from16 v17, v5

    .end local v5    # "isSucceed":I
    .local v17, "isSucceed":I
    :try_start_121
    const-string v5, "), cached_pid: Y"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 963
    .end local v17    # "isSucceed":I
    .end local v18    # "pidInteger":Ljava/lang/Integer;
    .restart local v5    # "isSucceed":I
    :catch_12e
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v19, v15

    .end local v5    # "isSucceed":I
    .restart local v17    # "isSucceed":I
    goto/16 :goto_23b

    .line 939
    .end local v4    # "pid":I
    .restart local v5    # "isSucceed":I
    .local v17, "pid":I
    .restart local v18    # "pidInteger":Ljava/lang/Integer;
    :cond_135
    move/from16 v4, v17

    move/from16 v17, v5

    .line 941
    .end local v5    # "isSucceed":I
    .restart local v4    # "pid":I
    .local v17, "isSucceed":I
    :goto_139
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_121 .. :try_end_13c} :catch_22e
    .catchall {:try_start_121 .. :try_end_13c} :catchall_25c

    .line 942
    :try_start_13c
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;
    :try_end_13e
    .catchall {:try_start_13c .. :try_end_13e} :catchall_170

    move-object/from16 v7, v18

    .end local v18    # "pidInteger":Ljava/lang/Integer;
    .local v7, "pidInteger":Ljava/lang/Integer;
    :try_start_140
    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 943
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 945
    :cond_14b
    monitor-exit v5
    :try_end_14c
    .catchall {:try_start_140 .. :try_end_14c} :catchall_16e

    .line 946
    :try_start_14c
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 947
    .local v0, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_16b

    .line 948
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 949
    iput-wide v11, v0, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 950
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v18, v0

    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    .local v18, "pr":Lcom/android/server/am/ProcessRecord;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_14c .. :try_end_16a} :catch_22e
    .catchall {:try_start_14c .. :try_end_16a} :catchall_25c

    goto :goto_184

    .line 947
    .end local v18    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_16b
    move-object/from16 v18, v0

    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    .restart local v18    # "pr":Lcom/android/server/am/ProcessRecord;
    goto :goto_184

    .line 945
    .end local v18    # "pr":Lcom/android/server/am/ProcessRecord;
    :catchall_16e
    move-exception v0

    goto :goto_173

    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .local v18, "pidInteger":Ljava/lang/Integer;
    :catchall_170
    move-exception v0

    move-object/from16 v7, v18

    .end local v18    # "pidInteger":Ljava/lang/Integer;
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    :goto_173
    :try_start_173
    monitor-exit v5
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_16e

    .end local v4    # "pid":I
    .end local v6    # "isFreeze":Z
    .end local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v11    # "now":J
    .end local v13    # "token":J
    .end local v17    # "isSucceed":I
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p4    # "devPath":Ljava/lang/String;
    .end local p5    # "isLcdOnTrigger":Z
    :try_start_174
    throw v0

    .line 963
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v5    # "isSucceed":I
    .restart local v6    # "isFreeze":Z
    .restart local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v11    # "now":J
    .restart local v13    # "token":J
    .local v17, "pid":I
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p4    # "devPath":Ljava/lang/String;
    .restart local p5    # "isLcdOnTrigger":Z
    :catch_175
    move-exception v0

    move/from16 v4, v17

    move/from16 v17, v5

    move-object/from16 v19, v15

    goto/16 :goto_23b

    .line 938
    .restart local v18    # "pidInteger":Ljava/lang/Integer;
    :cond_17e
    move/from16 v4, v17

    move-object/from16 v7, v18

    move/from16 v17, v5

    .line 953
    .end local v5    # "isSucceed":I
    .end local v18    # "pidInteger":Ljava/lang/Integer;
    .restart local v4    # "pid":I
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    .local v17, "isSucceed":I
    :goto_184
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_194

    .line 954
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 956
    :cond_194
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v5, "freeze"

    invoke-virtual {v0, v4, v6, v5}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v0
    :try_end_19d
    .catch Ljava/lang/Exception; {:try_start_174 .. :try_end_19d} :catch_22e
    .catchall {:try_start_174 .. :try_end_19d} :catchall_25c

    move v5, v0

    .line 957
    .end local v17    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_225

    .line 958
    :try_start_1a1
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;
    :try_end_1a3
    .catch Ljava/lang/Exception; {:try_start_1a1 .. :try_end_1a3} :catch_21f
    .catchall {:try_start_1a1 .. :try_end_1a3} :catchall_216

    move/from16 v16, v5

    .end local v5    # "isSucceed":I
    .local v16, "isSucceed":I
    :try_start_1a5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v18    # "pidInteger":Ljava/lang/Integer;
    const-string v7, "Fail to set Freeze. uid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pid="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", isFreeze="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", cached_pid: Y"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget v0, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    const/4 v5, 0x1

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    .line 960
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    const-string v5, "DEV"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1a5 .. :try_end_1e1} :catch_210
    .catchall {:try_start_1a5 .. :try_end_1e1} :catchall_207

    move-object/from16 v19, v15

    :try_start_1e3
    const-string v15, "cntFailUnfreezePilot="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", uid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, ", fpid="

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_204
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_204} :catch_205
    .catchall {:try_start_1e3 .. :try_end_204} :catchall_207

    goto :goto_22b

    .line 963
    .end local v18    # "pidInteger":Ljava/lang/Integer;
    :catch_205
    move-exception v0

    goto :goto_213

    .line 1034
    .end local v4    # "pid":I
    :catchall_207
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v5, v16

    goto/16 :goto_551

    .line 963
    .restart local v4    # "pid":I
    :catch_210
    move-exception v0

    move-object/from16 v19, v15

    :goto_213
    move/from16 v5, v16

    goto :goto_23b

    .line 1034
    .end local v4    # "pid":I
    .end local v16    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    :catchall_216
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v5    # "isSucceed":I
    .restart local v16    # "isSucceed":I
    goto/16 :goto_551

    .line 963
    .end local v16    # "isSucceed":I
    .restart local v4    # "pid":I
    .restart local v5    # "isSucceed":I
    :catch_21f
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v19, v15

    .end local v5    # "isSucceed":I
    .restart local v16    # "isSucceed":I
    goto :goto_23b

    .line 957
    .end local v16    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    :cond_225
    move/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v19, v15

    .line 964
    .end local v5    # "isSucceed":I
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v16    # "isSucceed":I
    :goto_22b
    move/from16 v5, v16

    goto :goto_23b

    .line 963
    .end local v16    # "isSucceed":I
    .restart local v17    # "isSucceed":I
    :catch_22e
    move-exception v0

    move-object/from16 v19, v15

    move/from16 v5, v17

    goto :goto_23b

    .end local v4    # "pid":I
    .restart local v5    # "isSucceed":I
    .local v17, "pid":I
    :catch_234
    move-exception v0

    move-object/from16 v19, v15

    move/from16 v4, v17

    move/from16 v17, v5

    .line 965
    .end local v17    # "pid":I
    :goto_23b
    move-object/from16 v4, p4

    move-object/from16 v15, v19

    const/4 v7, 0x0

    goto/16 :goto_e8

    .line 1034
    :catchall_242
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v5    # "isSucceed":I
    .local v17, "isSucceed":I
    goto/16 :goto_551

    .line 966
    .end local v17    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    :cond_24b
    move/from16 v17, v5

    .end local v5    # "isSucceed":I
    .restart local v17    # "isSucceed":I
    :try_start_24d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_251
    .catchall {:try_start_24d .. :try_end_251} :catchall_53c

    if-nez v0, :cond_265

    :try_start_253
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_257
    .catchall {:try_start_253 .. :try_end_257} :catchall_25c

    if-eqz v0, :cond_265

    .line 967
    const/4 v0, 0x0

    move v5, v0

    .end local v17    # "isSucceed":I
    .local v0, "isSucceed":I
    goto :goto_267

    .line 1034
    .end local v0    # "isSucceed":I
    .restart local v17    # "isSucceed":I
    :catchall_25c
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v5, v17

    goto/16 :goto_551

    .line 969
    :cond_265
    move/from16 v5, v17

    .end local v17    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    :goto_267
    :try_start_267
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_26b
    .catchall {:try_start_267 .. :try_end_26b} :catchall_54c

    :goto_26b
    :try_start_26b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4ee

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 970
    .restart local v4    # "pid":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 971
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    if-eqz v6, :cond_347

    .line 972
    iget-boolean v15, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z
    :try_end_283
    .catchall {:try_start_26b .. :try_end_283} :catchall_534

    if-nez v15, :cond_2bf

    .line 973
    :try_start_285
    sget-object v15, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    move-object/from16 v17, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_28e
    .catchall {:try_start_285 .. :try_end_28e} :catchall_2b6

    move/from16 v18, v5

    .end local v5    # "isSucceed":I
    .local v18, "isSucceed":I
    :try_start_290
    const-string v5, "FZ : "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ac
    .catchall {:try_start_290 .. :try_end_2ac} :catchall_2ad

    goto :goto_2c3

    .line 1034
    .end local v4    # "pid":I
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    :catchall_2ad
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v5, v18

    goto/16 :goto_551

    .end local v18    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    :catchall_2b6
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v5    # "isSucceed":I
    .restart local v18    # "isSucceed":I
    goto/16 :goto_551

    .line 972
    .end local v18    # "isSucceed":I
    .restart local v4    # "pid":I
    .restart local v5    # "isSucceed":I
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    :cond_2bf
    move-object/from16 v17, v0

    move/from16 v18, v5

    .line 974
    .end local v5    # "isSucceed":I
    .restart local v18    # "isSucceed":I
    :goto_2c3
    :try_start_2c3
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_2c6
    .catchall {:try_start_2c3 .. :try_end_2c6} :catchall_33e

    .line 975
    :try_start_2c6
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2cc
    .catchall {:try_start_2c6 .. :try_end_2cc} :catchall_335

    if-nez v0, :cond_2da

    .line 976
    :try_start_2ce
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2d3
    .catchall {:try_start_2ce .. :try_end_2d3} :catchall_2d4

    goto :goto_2da

    .line 987
    :catchall_2d4
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    goto :goto_33a

    .line 978
    :cond_2da
    :goto_2da
    :try_start_2da
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_32e

    .line 979
    iget-object v15, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    monitor-enter v15
    :try_end_2e1
    .catchall {:try_start_2da .. :try_end_2e1} :catchall_335

    .line 980
    :try_start_2e1
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;
    :try_end_2e3
    .catchall {:try_start_2e1 .. :try_end_2e3} :catchall_325

    move-object/from16 v20, v9

    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v20, "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_2e5
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_300

    .line 981
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9
    :try_end_2f5
    .catchall {:try_start_2e5 .. :try_end_2f5} :catchall_321

    move-object/from16 v21, v10

    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v21, "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :try_start_2f7
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_302

    .line 980
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_300
    move-object/from16 v21, v10

    .line 982
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_302
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenUidPidList:Ljava/util/HashMap;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 983
    .local v0, "listPidByUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_31f

    .line 984
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    .end local v0    # "listPidByUid":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_31f
    monitor-exit v15

    goto :goto_332

    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_321
    move-exception v0

    move-object/from16 v21, v10

    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_32a

    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_325
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_32a
    monitor-exit v15
    :try_end_32b
    .catchall {:try_start_2f7 .. :try_end_32b} :catchall_32c

    .end local v4    # "pid":I
    .end local v6    # "isFreeze":Z
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .end local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "now":J
    .end local v13    # "token":J
    .end local v18    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p4    # "devPath":Ljava/lang/String;
    .end local p5    # "isLcdOnTrigger":Z
    :try_start_32b
    throw v0

    .restart local v4    # "pid":I
    .restart local v6    # "isFreeze":Z
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "now":J
    .restart local v13    # "token":J
    .restart local v18    # "isSucceed":I
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p4    # "devPath":Ljava/lang/String;
    .restart local p5    # "isLcdOnTrigger":Z
    :catchall_32c
    move-exception v0

    goto :goto_32a

    .line 978
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_32e
    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 987
    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_332
    monitor-exit v5

    goto/16 :goto_3a3

    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_335
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_33a
    monitor-exit v5
    :try_end_33b
    .catchall {:try_start_32b .. :try_end_33b} :catchall_33c

    .end local v6    # "isFreeze":Z
    .end local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "now":J
    .end local v13    # "token":J
    .end local v18    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p4    # "devPath":Ljava/lang/String;
    .end local p5    # "isLcdOnTrigger":Z
    :try_start_33b
    throw v0

    .restart local v6    # "isFreeze":Z
    .restart local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "now":J
    .restart local v13    # "token":J
    .restart local v18    # "isSucceed":I
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p4    # "devPath":Ljava/lang/String;
    .restart local p5    # "isLcdOnTrigger":Z
    :catchall_33c
    move-exception v0

    goto :goto_33a

    .line 1034
    .end local v4    # "pid":I
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_33e
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v5, v18

    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto/16 :goto_551

    .line 989
    .end local v18    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v4    # "pid":I
    .restart local v5    # "isSucceed":I
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_347
    move-object/from16 v17, v0

    move/from16 v18, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v5    # "isSucceed":I
    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v18    # "isSucceed":I
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-boolean v0, v1, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_376

    .line 990
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UFZ : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 991
    :cond_376
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v5
    :try_end_379
    .catchall {:try_start_33b .. :try_end_379} :catchall_4e9

    .line 992
    :try_start_379
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_386

    .line 993
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v0, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 995
    :cond_386
    monitor-exit v5
    :try_end_387
    .catchall {:try_start_379 .. :try_end_387} :catchall_4e6

    .line 996
    :try_start_387
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 997
    .local v0, "pr":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_3a3

    .line 998
    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 999
    iput-wide v11, v0, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1000
    iget-object v5, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1003
    .end local v0    # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_3a3
    :goto_3a3
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_3b3

    .line 1004
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1006
    :cond_3b3
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const-string/jumbo v5, "freeze"

    invoke-virtual {v0, v4, v6, v5}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v0
    :try_end_3bc
    .catchall {:try_start_387 .. :try_end_3bc} :catchall_4e9

    move v5, v0

    .line 1007
    .end local v18    # "isSucceed":I
    .restart local v5    # "isSucceed":I
    const/4 v0, -0x1

    if-ne v5, v0, :cond_4dc

    .line 1008
    :try_start_3c0
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to set Freeze. uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", isFreeze="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    if-eqz v6, :cond_462

    .line 1010
    iget v0, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    const/4 v9, 0x1

    add-int/2addr v0, v9

    iput v0, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    .line 1011
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cntFailFreeze="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", uid="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", fpid="

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " (spid"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1012
    .local v0, "logText":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_41a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_445

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1013
    .local v10, "subpid":I
    if-ne v4, v10, :cond_42d

    .line 1014
    goto :goto_445

    .line 1015
    :cond_42d
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1016
    .end local v10    # "subpid":I
    move-object/from16 v2, p1

    goto :goto_41a

    .line 1017
    :cond_445
    :goto_445
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1018
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string v9, "DEV"

    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    .end local v0    # "logText":Ljava/lang/String;
    goto/16 :goto_4f4

    .line 1020
    :cond_462
    iget v0, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cntFailUnfreeze="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fpid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (spid"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .restart local v0    # "logText":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_494
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4bd

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1023
    .local v9, "subpid":I
    if-ne v4, v9, :cond_4a7

    .line 1024
    goto :goto_4bd

    .line 1025
    :cond_4a7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object v0, v10

    .line 1026
    .end local v9    # "subpid":I
    goto :goto_494

    .line 1027
    :cond_4bd
    :goto_4bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1028
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    const-string v9, "DEV"

    invoke-virtual {v2, v9, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d8
    .catchall {:try_start_3c0 .. :try_end_4d8} :catchall_4d9

    .line 1030
    .end local v0    # "logText":Ljava/lang/String;
    goto :goto_4f4

    .line 1034
    .end local v4    # "pid":I
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    :catchall_4d9
    move-exception v0

    goto/16 :goto_551

    .line 1032
    :cond_4dc
    move-object/from16 v2, p1

    move-object/from16 v0, v17

    move-object/from16 v9, v20

    move-object/from16 v10, v21

    goto/16 :goto_26b

    .line 995
    .end local v5    # "isSucceed":I
    .restart local v4    # "pid":I
    .restart local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v18    # "isSucceed":I
    :catchall_4e6
    move-exception v0

    :try_start_4e7
    monitor-exit v5
    :try_end_4e8
    .catchall {:try_start_4e7 .. :try_end_4e8} :catchall_4e6

    .end local v6    # "isFreeze":Z
    .end local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "now":J
    .end local v13    # "token":J
    .end local v18    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "uid":I
    .end local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p4    # "devPath":Ljava/lang/String;
    .end local p5    # "isLcdOnTrigger":Z
    :try_start_4e8
    throw v0
    :try_end_4e9
    .catchall {:try_start_4e8 .. :try_end_4e9} :catchall_4e9

    .line 1034
    .end local v4    # "pid":I
    .end local v7    # "pidInteger":Ljava/lang/Integer;
    .restart local v6    # "isFreeze":Z
    .restart local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v11    # "now":J
    .restart local v13    # "token":J
    .restart local v18    # "isSucceed":I
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "uid":I
    .restart local p3    # "isolatedPidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local p4    # "devPath":Ljava/lang/String;
    .restart local p5    # "isLcdOnTrigger":Z
    :catchall_4e9
    move-exception v0

    move/from16 v5, v18

    goto/16 :goto_551

    .line 969
    .end local v18    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "isSucceed":I
    .local v9, "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v10, "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_4ee
    move/from16 v18, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .line 1034
    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_4f4
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    nop

    .line 1036
    if-eqz v6, :cond_52c

    .line 1037
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_52a

    .line 1038
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_504
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_521

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1039
    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    .line 1040
    iput-wide v11, v2, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    .line 1041
    iget-object v7, v1, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    .end local v2    # "pr":Lcom/android/server/am/ProcessRecord;
    goto :goto_504

    .line 1043
    :cond_521
    const/4 v4, 0x1

    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->sendProcPostMonitoringMsg()V

    goto :goto_52d

    .line 1037
    :cond_52a
    const/4 v4, 0x1

    goto :goto_52d

    .line 1036
    :cond_52c
    const/4 v4, 0x1

    .line 1046
    :goto_52d
    const/4 v0, -0x1

    if-eq v5, v0, :cond_532

    move v7, v4

    goto :goto_533

    :cond_532
    const/4 v7, 0x0

    :goto_533
    return v7

    .line 1034
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_534
    move-exception v0

    move/from16 v18, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v5    # "isSucceed":I
    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v18    # "isSucceed":I
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_551

    .end local v18    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17    # "isSucceed":I
    :catchall_53c
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move/from16 v5, v17

    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_551

    .end local v17    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "isSucceed":I
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_544
    move-exception v0

    move/from16 v17, v5

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v5    # "isSucceed":I
    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17    # "isSucceed":I
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_551

    .end local v17    # "isSucceed":I
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5    # "isSucceed":I
    .restart local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :catchall_54c
    move-exception v0

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    .end local v9    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_551
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1035
    throw v0

    .line 866
    .end local v6    # "isFreeze":Z
    .end local v8    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v11    # "now":J
    .end local v13    # "token":J
    .end local v20    # "pids_cached":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v21    # "listProcRecord":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v0, "isFreeze":Z
    :cond_555
    const/4 v2, 0x0

    return v2

    nop

    :pswitch_data_558
    .packed-switch 0x1
        :pswitch_d1
        :pswitch_c9
        :pswitch_c1
        :pswitch_b9
        :pswitch_b1
        :pswitch_a9
        :pswitch_a1
    .end packed-switch
.end method


# virtual methods
.method public addUidToReleaseRestrictionList(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "from"    # Ljava/lang/String;

    .line 3372
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v0

    .line 3373
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 3374
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3375
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_41

    .line 3376
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_40

    .line 3377
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to release restriction list (from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3378
    :cond_40
    return-void

    .line 3375
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method

.method public cacheBroadcastRecord(Ljava/lang/String;Lcom/android/server/am/BroadcastRecord;)V
    .registers 10
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "record"    # Lcom/android/server/am/BroadcastRecord;

    .line 3726
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3727
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 3728
    :cond_9
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2b

    .line 3729
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheBroadcastRecord....action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", broadcastRecord: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3730
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3731
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    if-nez v1, :cond_40

    .line 3732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3733
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3736
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3737
    .local v2, "N":I
    const/4 v3, 0x0

    .line 3738
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_61

    .line 3739
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/BroadcastRecord;

    .line 3740
    .local v4, "br":Lcom/android/server/am/BroadcastRecord;
    iget v5, v4, Lcom/android/server/am/BroadcastRecord;->userId:I

    iget v6, p2, Lcom/android/server/am/BroadcastRecord;->userId:I

    if-ne v5, v6, :cond_5e

    iget-boolean v5, v4, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    iget-boolean v6, p2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-ne v5, v6, :cond_5e

    .line 3741
    invoke-virtual {v1, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3742
    goto :goto_61

    .line 3738
    .end local v4    # "br":Lcom/android/server/am/BroadcastRecord;
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 3745
    :cond_61
    :goto_61
    if-lt v3, v2, :cond_66

    .line 3746
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3748
    :cond_66
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3749
    nop

    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v2    # "N":I
    .end local v3    # "i":I
    monitor-exit v0

    .line 3750
    return-void

    .line 3749
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_3 .. :try_end_70} :catchall_6e

    throw v1
.end method

.method public cacheReceiver(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 3753
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3754
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    monitor-exit v0

    return-void

    .line 3755
    :cond_9
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_2b

    .line 3756
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cacheReceiver....action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    :cond_2b
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 3758
    .local v1, "list":Ljava/util/ArrayList;
    if-nez v1, :cond_40

    .line 3759
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 3760
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3763
    :cond_40
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3764
    .local v2, "N":I
    const/4 v3, 0x0

    .line 3765
    .local v3, "i":I
    const/4 v3, 0x0

    :goto_46
    if-ge v3, v2, :cond_59

    .line 3766
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 3767
    .local v4, "receiver":Ljava/lang/Object;
    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 3768
    invoke-virtual {v1, v3, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 3769
    goto :goto_59

    .line 3765
    .end local v4    # "receiver":Ljava/lang/Object;
    :cond_56
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 3772
    :cond_59
    :goto_59
    if-lt v3, v2, :cond_5e

    .line 3773
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3775
    :cond_5e
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v4, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3776
    nop

    .end local v1    # "list":Ljava/util/ArrayList;
    .end local v2    # "N":I
    .end local v3    # "i":I
    monitor-exit v0

    .line 3777
    return-void

    .line 3776
    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method cancelCalmMode()V
    .registers 10

    .line 2649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2650
    .local v0, "actionUids":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2651
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 2652
    .local v2, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_4f

    .line 2653
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2655
    .local v4, "ps":Lcom/android/server/am/FreecessPkgStatus;
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v8, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_46

    .line 2656
    const-string v5, "CalmMode"

    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    .line 2657
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    goto :goto_4c

    .line 2661
    :cond_46
    iget-boolean v6, v4, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v6, :cond_4c

    .line 2662
    iput-boolean v5, v4, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2652
    .end local v4    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_4c
    :goto_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2665
    .end local v2    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v3    # "i":I
    :cond_4f
    monitor-exit v1
    :try_end_50
    .catchall {:try_start_8 .. :try_end_50} :catchall_61

    .line 2666
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeCalmModeFreezeMsg()V

    .line 2667
    iput-boolean v5, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2668
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictListForCalmMode(Ljava/lang/StringBuilder;)V

    .line 2669
    return-void

    .line 2665
    :catchall_61
    move-exception v2

    :try_start_62
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    throw v2
.end method

.method public checkFrozenBinder(I)V
    .registers 11
    .param p1, "uid"    # I

    .line 1558
    const/4 v0, 0x0

    .line 1559
    .local v0, "mCheckFrozenBinder":Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 1561
    .local v1, "count":I
    :goto_2
    const-string/jumbo v2, "freecess.binder.IFrozenBinder"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1562
    const-string v3, "FBException"

    const-string v4, "MARs-FrozenBinder"

    if-eqz v0, :cond_6c

    .line 1563
    nop

    .line 1577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v5

    .line 1578
    .local v5, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 1579
    .local v6, "reply":Landroid/os/Parcel;
    const/4 v7, -0x1

    .line 1582
    .local v7, "result":I
    :try_start_19
    invoke-virtual {v5, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1583
    invoke-virtual {v5, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    const/16 v2, 0x2523

    const/4 v8, 0x0

    invoke-interface {v0, v2, v5, v6, v8}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1585
    invoke-virtual {v6}, Landroid/os/Parcel;->readException()V

    .line 1586
    invoke-virtual {v6}, Landroid/os/Parcel;->readInt()I

    move-result v2

    move v7, v2

    .line 1587
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v2, :cond_4b

    .line 1588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "native->FW--(result:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_4b} :catch_4e
    .catchall {:try_start_19 .. :try_end_4b} :catchall_4c

    .line 1592
    :cond_4b
    goto :goto_57

    :catchall_4c
    move-exception v2

    goto :goto_65

    .line 1589
    :catch_4e
    move-exception v2

    .line 1590
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4f
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v8, "failed to check frozen binder.."

    invoke-static {v4, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_56
    .catchall {:try_start_4f .. :try_end_56} :catchall_4c

    .line 1592
    nop

    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_57
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1593
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1594
    nop

    .line 1596
    const/4 v2, -0x1

    if-ne v7, v2, :cond_64

    .line 1597
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 1599
    :cond_64
    return-void

    .line 1592
    :goto_65
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 1593
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 1594
    throw v2

    .line 1564
    .end local v5    # "data":Landroid/os/Parcel;
    .end local v6    # "reply":Landroid/os/Parcel;
    .end local v7    # "result":I
    :cond_6c
    const-string v2, "FrozenBinder is waiting..."

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 v2, 0x2

    if-ne v1, v2, :cond_78

    .line 1567
    :try_start_74
    invoke-virtual {p0, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 1568
    return-void

    .line 1570
    :cond_78
    const-wide/16 v2, 0x1f4

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_7d} :catch_80

    .line 1571
    add-int/lit8 v1, v1, 0x1

    .line 1574
    goto :goto_2

    .line 1572
    :catch_80
    move-exception v2

    .line 1573
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "thread sleep error.."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    .end local v2    # "e":Ljava/lang/Exception;
    goto/16 :goto_2
.end method

.method public closeSocketsForFreecessFirewallChain()V
    .registers 7

    .line 1447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1449
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    .line 1450
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1453
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_44

    .line 1455
    const/4 v3, 0x4

    :try_start_1a
    const-string/jumbo v4, "freecess"

    invoke-interface {v2, v3, v4}, Landroid/os/INetworkManagementService;->closeSocketsForFreecess(ILjava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_20} :catch_27
    .catchall {:try_start_1a .. :try_end_20} :catchall_25

    .line 1459
    nop

    :goto_21
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1460
    goto :goto_44

    .line 1459
    :catchall_25
    move-exception v2

    goto :goto_40

    .line 1456
    :catch_27
    move-exception v2

    .line 1457
    .local v2, "e":Ljava/lang/Exception;
    :try_start_28
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while closeSocketsForFreecessFirewallChain: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_28 .. :try_end_3e} :catchall_25

    .line 1459
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_21

    :goto_40
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1460
    throw v2

    .line 1462
    :cond_44
    :goto_44
    return-void
.end method

.method configPacketMonitoredUid(ILjava/lang/String;I)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 1650
    const/16 v0, 0x2520

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/FreecessController;->freecessPacketTransaction(II)I

    move-result v0

    .line 1651
    .local v0, "ret":I
    if-nez v0, :cond_29

    .line 1652
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1653
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 1654
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1656
    :cond_24
    monitor-exit v1

    goto :goto_2e

    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v2

    .line 1658
    :cond_29
    const-string v1, "RegException"

    invoke-virtual {p0, p2, p3, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 1660
    :goto_2e
    return-void
.end method

.method convertUnfreezeTypeToReason(I)Ljava/lang/String;
    .registers 4
    .param p1, "type"    # I

    .line 543
    const-string v0, ""

    .line 544
    .local v0, "reason":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_e

    const/4 v1, 0x2

    if-eq p1, v1, :cond_b

    .line 552
    const-string v0, "default"

    goto :goto_11

    .line 549
    :cond_b
    const-string v0, "SmartSwitch"

    .line 550
    goto :goto_11

    .line 546
    :cond_e
    const-string v0, "BugReport"

    .line 547
    nop

    .line 555
    :goto_11
    return-object v0
.end method

.method public deInit()V
    .registers 3

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 295
    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 297
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 298
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    .line 299
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 301
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->deInit()V

    .line 302
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessTrigger;->deInit()V

    .line 303
    return-void
.end method

.method deletePacketMonitoredUid(I)V
    .registers 6
    .param p1, "uid"    # I

    .line 1663
    const/16 v0, 0x2521

    invoke-direct {p0, v0, p1}, Lcom/android/server/am/FreecessController;->freecessPacketTransaction(II)I

    move-result v0

    .line 1664
    .local v0, "ret":I
    if-nez v0, :cond_29

    .line 1665
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1666
    :try_start_b
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v2, :cond_24

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 1667
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1669
    :cond_24
    monitor-exit v1

    goto :goto_30

    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw v2

    .line 1671
    :cond_29
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v2, "deletePacketMonitoredUid Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :goto_30
    return-void
.end method

.method deleteRemovedPackage(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 757
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 758
    .local v0, "userId":I
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 759
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, v0, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_14

    .line 760
    const-string v2, "PkgRemoved"

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 762
    :cond_14
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 763
    monitor-exit v1

    .line 764
    return-void

    .line 763
    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v2
.end method

.method public destroySocketsForTargetUids([I)V
    .registers 8
    .param p1, "uids"    # [I

    .line 1465
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1467
    .local v0, "token":J
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-nez v2, :cond_15

    .line 1468
    const-string/jumbo v2, "network_management"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    .line 1471
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mNMs:Landroid/os/INetworkManagementService;

    if-eqz v2, :cond_41

    .line 1473
    const/4 v3, 0x0

    :try_start_1a
    invoke-interface {v2, v3, p1}, Landroid/os/INetworkManagementService;->doDestroySockets(I[I)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_24
    .catchall {:try_start_1a .. :try_end_1d} :catchall_22

    .line 1477
    nop

    :goto_1e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    goto :goto_41

    .line 1477
    :catchall_22
    move-exception v2

    goto :goto_3d

    .line 1474
    :catch_24
    move-exception v2

    .line 1475
    .local v2, "e":Ljava/lang/Exception;
    :try_start_25
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occured while destroySocketsForTargetUids: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    .line 1477
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_1e

    :goto_3d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1478
    throw v2

    .line 1480
    :cond_41
    :goto_41
    return-void
.end method

.method dispatchPendingBroadcast(Lcom/android/server/am/BroadcastRecord;Ljava/util/ArrayList;)V
    .registers 34
    .param p1, "br"    # Lcom/android/server/am/BroadcastRecord;
    .param p2, "receivers"    # Ljava/util/ArrayList;

    .line 3883
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3884
    if-eqz v2, :cond_d4

    .line 3885
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->broadcastQueueForIntent(Landroid/content/Intent;)Lcom/android/server/am/BroadcastQueue;

    move-result-object v0

    .line 3886
    .local v0, "queue":Lcom/android/server/am/BroadcastQueue;
    if-eqz v0, :cond_d4

    .line 3887
    const/16 v28, 0x0

    .line 3888
    .local v28, "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    iget-boolean v4, v2, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v4, :cond_6b

    .line 3889
    new-instance v29, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v11, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v12, v2, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v13, v2, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v14, v2, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget v15, v2, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    iget v1, v2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v19, v1

    iget-object v1, v2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v20, v1

    iget-object v1, v2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/16 v22, 0x1

    move-object/from16 v21, v1

    iget-boolean v1, v2, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v23, v1

    iget-boolean v1, v2, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v24, v1

    iget v1, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v25, v1

    iget-boolean v1, v2, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v26, v1

    iget-boolean v1, v2, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move-object/from16 v18, v4

    move-object/from16 v4, v29

    move-object/from16 v16, v5

    move-object v5, v0

    move-object/from16 v17, p2

    move/from16 v27, v1

    invoke-direct/range {v4 .. v27}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V

    move-object/from16 v1, v29

    .line 3893
    .end local v28    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    .local v1, "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->enqueueOrderedBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    goto/16 :goto_d1

    .line 3895
    .end local v1    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    .restart local v28    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_6b
    new-instance v1, Lcom/android/server/am/BroadcastRecord;

    iget-object v6, v2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    iget-object v7, v2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    iget-object v8, v2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v9, v2, Lcom/android/server/am/BroadcastRecord;->callerFeatureId:Ljava/lang/String;

    iget v10, v2, Lcom/android/server/am/BroadcastRecord;->callingPid:I

    iget v11, v2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    iget-boolean v12, v2, Lcom/android/server/am/BroadcastRecord;->callerInstantApp:Z

    iget-object v13, v2, Lcom/android/server/am/BroadcastRecord;->resolvedType:Ljava/lang/String;

    iget-object v14, v2, Lcom/android/server/am/BroadcastRecord;->requiredPermissions:[Ljava/lang/String;

    iget v15, v2, Lcom/android/server/am/BroadcastRecord;->appOp:I

    iget-object v5, v2, Lcom/android/server/am/BroadcastRecord;->options:Landroid/app/BroadcastOptions;

    iget-object v4, v2, Lcom/android/server/am/BroadcastRecord;->resultTo:Landroid/content/IIntentReceiver;

    move/from16 v16, v15

    iget v15, v2, Lcom/android/server/am/BroadcastRecord;->resultCode:I

    move/from16 v17, v15

    iget-object v15, v2, Lcom/android/server/am/BroadcastRecord;->resultData:Ljava/lang/String;

    move-object/from16 v18, v15

    iget-object v15, v2, Lcom/android/server/am/BroadcastRecord;->resultExtras:Landroid/os/Bundle;

    const/16 v22, 0x0

    move-object/from16 v19, v15

    iget-boolean v15, v2, Lcom/android/server/am/BroadcastRecord;->sticky:Z

    move/from16 v20, v15

    iget-boolean v15, v2, Lcom/android/server/am/BroadcastRecord;->initialSticky:Z

    move/from16 v21, v15

    iget v15, v2, Lcom/android/server/am/BroadcastRecord;->userId:I

    move/from16 v23, v15

    iget-boolean v15, v2, Lcom/android/server/am/BroadcastRecord;->allowBackgroundActivityStarts:Z

    move/from16 v24, v15

    iget-boolean v15, v2, Lcom/android/server/am/BroadcastRecord;->timeoutExempt:Z

    move-object/from16 v25, v4

    move-object v4, v1

    move-object/from16 v26, v5

    move-object v5, v0

    move/from16 v30, v15

    move/from16 v27, v23

    move/from16 v29, v24

    move/from16 v23, v20

    move/from16 v24, v21

    move-object/from16 v20, v18

    move-object/from16 v21, v19

    move/from16 v19, v17

    move/from16 v15, v16

    move-object/from16 v16, v26

    move-object/from16 v17, p2

    move-object/from16 v18, v25

    move/from16 v25, v27

    move/from16 v26, v29

    move/from16 v27, v30

    invoke-direct/range {v4 .. v27}, Lcom/android/server/am/BroadcastRecord;-><init>(Lcom/android/server/am/BroadcastQueue;Landroid/content/Intent;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;[Ljava/lang/String;ILandroid/app/BroadcastOptions;Ljava/util/List;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;ZZZIZZ)V

    .line 3899
    .end local v28    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    .restart local v1    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v0, v1}, Lcom/android/server/am/BroadcastQueue;->enqueueParallelBroadcastLocked(Lcom/android/server/am/BroadcastRecord;)V

    .line 3901
    :goto_d1
    invoke-virtual {v0}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 3904
    .end local v0    # "queue":Lcom/android/server/am/BroadcastQueue;
    .end local v1    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    :cond_d4
    monitor-exit v3
    :try_end_d5
    .catchall {:try_start_7 .. :try_end_d5} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3905
    return-void

    .line 3904
    :catchall_d9
    move-exception v0

    :try_start_da
    monitor-exit v3
    :try_end_db
    .catchall {:try_start_da .. :try_end_db} :catchall_d9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3394
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    .line 3396
    .local v0, "isChinaPolicyEnabled":Z
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3397
    :try_start_b
    const-string v2, "FREECESS STATE"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3398
    const-string v2, "-FreecessEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_1e

    const-string v2, "Y"

    goto :goto_20

    :cond_1e
    const-string v2, "N"

    :goto_20
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3399
    const-string v2, " -FreecessEnhancementEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v2

    if-eqz v2, :cond_31

    const-string v2, "Y"

    goto :goto_33

    :cond_31
    const-string v2, "N"

    :goto_33
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3400
    const-string v2, " -CscFeatureValue : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "%d"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    sget v5, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3401
    const-string v2, " -ChinaPolicyEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_5a

    const-string v2, "Y"

    goto :goto_5c

    :cond_5a
    const-string v2, "N"

    :goto_5c
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3402
    const-string v2, " -AngryBirdEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "Y"

    goto :goto_6f

    :cond_6d
    const-string v2, "N"

    :goto_6f
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3403
    const-string v2, " -RageBirdEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v2

    if-eqz v2, :cond_80

    const-string v2, "Y"

    goto :goto_82

    :cond_80
    const-string v2, "N"

    :goto_82
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3404
    const-string v2, " -FuryBirdEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFuryBirdEnabled()Z

    move-result v2

    if-eqz v2, :cond_93

    const-string v2, "Y"

    goto :goto_95

    :cond_93
    const-string v2, "N"

    :goto_95
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3405
    const-string v2, " -MadBirdEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getMadBirdEnabled()Z

    move-result v2

    if-eqz v2, :cond_a6

    const-string v2, "Y"

    goto :goto_a8

    :cond_a6
    const-string v2, "N"

    :goto_a8
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3406
    const-string v2, " -NewPILOT : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v2, :cond_b7

    const-string v2, "Y"

    goto :goto_b9

    :cond_b7
    const-string v2, "N"

    :goto_b9
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3409
    const-string v2, " -LRsEnabled : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    if-eqz v2, :cond_c8

    const-string v2, "Y"

    goto :goto_ca

    :cond_c8
    const-string v2, "N"

    :goto_ca
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3410
    const-string v2, " -AUFAllowBucketSize : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v2, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 3411
    const-string v2, " -cntFail(FZ/UFZ/UFZ_P) : "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3413
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3415
    const-string v2, "ACTIVITY MANAGER Freecess (dumpsys activity freecess)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3417
    const-string/jumbo v2, "mFreecessManagedPackages --- size "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3418
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3420
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_120
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_206

    .line 3421
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3422
    .local v4, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_139
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_202

    .line 3423
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/FreecessPkgStatus;

    .line 3424
    .local v7, "ps":Lcom/android/server/am/FreecessPkgStatus;
    const-string v8, "-Uid "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%8d"

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3425
    const-string v8, "("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3426
    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v8, :cond_16c

    .line 3427
    const-string v8, "S"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_171

    .line 3429
    :cond_16c
    const-string v8, "-"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3430
    :goto_171
    const-string v8, ")"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3432
    const-string v8, "-Idle"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3433
    const-string v8, "("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3434
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_183
    .catchall {:try_start_b .. :try_end_183} :catchall_31b

    .line 3435
    :try_start_183
    iget-object v9, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_197

    .line 3436
    const-string v9, "Y"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_19c

    .line 3438
    :cond_197
    const-string v9, "-"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3439
    :goto_19c
    monitor-exit v8
    :try_end_19d
    .catchall {:try_start_183 .. :try_end_19d} :catchall_1ff

    .line 3440
    :try_start_19d
    const-string v8, ")"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3442
    const-string v8, "-Top"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3443
    const-string v8, "("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3444
    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    monitor-enter v8
    :try_end_1af
    .catchall {:try_start_19d .. :try_end_1af} :catchall_31b

    .line 3445
    :try_start_1af
    iget-object v9, p0, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c3

    .line 3446
    const-string v9, "Y"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1c8

    .line 3448
    :cond_1c3
    const-string v9, "-"

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3449
    :goto_1c8
    monitor-exit v8
    :try_end_1c9
    .catchall {:try_start_1af .. :try_end_1c9} :catchall_1fc

    .line 3450
    :try_start_1c9
    const-string v8, ")"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3452
    const-string v8, "-Pkg "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3454
    iget-boolean v8, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v8, :cond_1e2

    .line 3455
    const-string v8, "--(F)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1f3

    .line 3456
    :cond_1e2
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v8

    iget v9, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v8

    if-eqz v8, :cond_1f3

    .line 3457
    const-string v8, "--(R)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3459
    :cond_1f3
    :goto_1f3
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1f8
    .catchall {:try_start_1c9 .. :try_end_1f8} :catchall_31b

    .line 3422
    .end local v7    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_139

    .line 3449
    .restart local v7    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :catchall_1fc
    move-exception v3

    :try_start_1fd
    monitor-exit v8
    :try_end_1fe
    .catchall {:try_start_1fd .. :try_end_1fe} :catchall_1fc

    .end local v0    # "isChinaPolicyEnabled":Z
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    :try_start_1fe
    throw v3
    :try_end_1ff
    .catchall {:try_start_1fe .. :try_end_1ff} :catchall_31b

    .line 3439
    .restart local v0    # "isChinaPolicyEnabled":Z
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    :catchall_1ff
    move-exception v3

    :try_start_200
    monitor-exit v8
    :try_end_201
    .catchall {:try_start_200 .. :try_end_201} :catchall_1ff

    .end local v0    # "isChinaPolicyEnabled":Z
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    :try_start_201
    throw v3

    .line 3420
    .end local v4    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v5    # "j":I
    .end local v7    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v0    # "isChinaPolicyEnabled":Z
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    :cond_202
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_120

    .line 3463
    .end local v2    # "i":I
    :cond_206
    const-string/jumbo v2, "mFreezedPackages --- size "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3464
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->totalSize()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3465
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_216
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_299

    .line 3466
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/FreecessPkgMap;->getUserIdMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3467
    .restart local v4    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_22f
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v5, v7, :cond_295

    .line 3468
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/FreecessPkgStatus;

    .line 3471
    .restart local v7    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    const-string v8, "-FZT "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3474
    const-string v8, "-UFZT "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v8, v7, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/FreecessController;->formatDateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3477
    const-string v8, "-UFZR "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%10s"

    new-array v9, v3, [Ljava/lang/Object;

    iget-object v10, v7, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3479
    const-string v8, "-UserId "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%3d"

    new-array v9, v3, [Ljava/lang/Object;

    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3481
    const-string v8, "-Pkg "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v8, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3482
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3467
    .end local v7    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    add-int/lit8 v5, v5, 0x1

    goto :goto_22f

    .line 3465
    .end local v4    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v5    # "j":I
    :cond_295
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_216

    .line 3486
    .end local v2    # "i":I
    :cond_299
    const-string/jumbo v2, "mMonitorFreezedList --- size "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3487
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3488
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2a9
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_2c7

    .line 3489
    const-string v4, "%d "

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3488
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a9

    .line 3492
    .end local v2    # "i":I
    :cond_2c7
    const-string/jumbo v2, "mLatestUsedPackagesList --- size "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3493
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 3494
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_2d9
    .catchall {:try_start_201 .. :try_end_2d9} :catchall_31b

    .line 3495
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2da
    :try_start_2da
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_2f8

    .line 3496
    const-string v5, "%d "

    new-array v7, v3, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3495
    add-int/lit8 v4, v4, 0x1

    goto :goto_2da

    .line 3498
    .end local v4    # "i":I
    :cond_2f8
    monitor-exit v2
    :try_end_2f9
    .catchall {:try_start_2da .. :try_end_2f9} :catchall_318

    .line 3500
    :try_start_2f9
    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3502
    monitor-exit v1
    :try_end_2ff
    .catchall {:try_start_2f9 .. :try_end_2ff} :catchall_31b

    .line 3504
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    if-eqz v1, :cond_317

    .line 3505
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, "Freecess"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessHandler$MainHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3507
    :cond_317
    return-void

    .line 3498
    :catchall_318
    move-exception v3

    :try_start_319
    monitor-exit v2
    :try_end_31a
    .catchall {:try_start_319 .. :try_end_31a} :catchall_318

    .end local v0    # "isChinaPolicyEnabled":Z
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    :try_start_31a
    throw v3

    .line 3502
    .restart local v0    # "isChinaPolicyEnabled":Z
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    :catchall_31b
    move-exception v2

    monitor-exit v1
    :try_end_31d
    .catchall {:try_start_31a .. :try_end_31d} :catchall_31b

    throw v2
.end method

.method public dumpFreecessCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3510
    const/4 v0, 0x1

    aget-object v1, p3, v0

    const-string/jumbo v2, "list"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3511
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->dumpFreecess(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3513
    :cond_f
    aget-object v1, p3, v0

    const-string/jumbo v2, "freecess"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eqz v1, :cond_b7

    .line 3514
    array-length v1, p3

    if-ge v1, v3, :cond_42

    .line 3515
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(freecess ) !"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 3517
    const-string v1, "MARstest -- freecess enabled has turned to false"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_b7

    .line 3519
    :cond_42
    aget-object v1, p3, v4

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 3520
    aget-object v1, p3, v3

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    .line 3521
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_b7

    .line 3522
    :cond_5b
    aget-object v1, p3, v3

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 3523
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dumpMARsCommand(freecess off) ! +   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, p3, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 3525
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    const-string v5, "Debug"

    invoke-virtual {v1, v5}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    .line 3526
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_b7

    .line 3528
    :cond_91
    aget-object v1, p3, v4

    const-string/jumbo v5, "off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 3529
    aget-object v1, p3, v3

    const-string v5, "1"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 3530
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    goto :goto_b7

    .line 3531
    :cond_aa
    aget-object v1, p3, v3

    const-string v5, "0"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 3533
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .line 3538
    :cond_b7
    :goto_b7
    aget-object v1, p3, v0

    const-string/jumbo v5, "netd"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x4

    if-eqz v1, :cond_13f

    .line 3539
    aget-object v1, p3, v4

    const-string/jumbo v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_103

    .line 3541
    :try_start_ce
    invoke-direct {p0, v5, v0}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 3542
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 3543
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->closeSocketsForFreecessFirewallChain()V

    .line 3544
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpMARsCommand(netd on)uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p3, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f9
    .catch Ljava/lang/NumberFormatException; {:try_start_ce .. :try_end_f9} :catch_fa

    goto :goto_102

    .line 3545
    :catch_fa
    move-exception v1

    .line 3546
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v7, "dumpMARsCommand(netd on) parseInt error!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_102
    goto :goto_13f

    .line 3548
    :cond_103
    aget-object v1, p3, v4

    const-string/jumbo v6, "off"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13f

    .line 3550
    :try_start_10e
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V

    .line 3551
    invoke-direct {p0, v5, v2}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 3552
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dumpMARsCommand(netd off)uid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p3, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catch Ljava/lang/NumberFormatException; {:try_start_10e .. :try_end_136} :catch_137

    .line 3555
    goto :goto_13f

    .line 3553
    :catch_137
    move-exception v1

    .line 3554
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v7, "dumpMARsCommand(netd off) parseInt error!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3559
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_13f
    :goto_13f
    aget-object v1, p3, v0

    const-string/jumbo v6, "olaf"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    .line 3560
    aget-object v1, p3, v4

    const-string/jumbo v6, "on"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_159

    .line 3561
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_253

    .line 3562
    :cond_159
    aget-object v1, p3, v4

    const-string/jumbo v6, "off"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_168

    .line 3563
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    goto/16 :goto_253

    .line 3564
    :cond_168
    aget-object v1, p3, v0

    const-string v6, "debug"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19e

    .line 3565
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v1, v0

    sput-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 3566
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "olaf debugging mode is "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v5, :cond_18a

    const-string/jumbo v5, "on"

    goto :goto_18d

    :cond_18a
    const-string/jumbo v5, "off"

    :goto_18d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " now!"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_253

    .line 3567
    :cond_19e
    aget-object v1, p3, v4

    const-string v6, "enter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b3

    .line 3568
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->enterOLAF(I)V

    goto/16 :goto_253

    .line 3569
    :cond_1b3
    aget-object v1, p3, v4

    const-string v6, "exit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c2

    .line 3570
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->exitOLAF()V

    goto/16 :goto_253

    .line 3571
    :cond_1c2
    aget-object v1, p3, v4

    const-string v6, "allowlist"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    .line 3572
    aget-object v1, p3, v3

    const-string v6, "add"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1de

    .line 3573
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v5, p3, v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_253

    .line 3574
    :cond_1de
    aget-object v1, p3, v3

    const-string/jumbo v6, "remove"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f1

    .line 3575
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    aget-object v5, p3, v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_253

    .line 3576
    :cond_1f1
    aget-object v1, p3, v3

    const-string v5, "clear"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_201

    .line 3577
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_253

    .line 3578
    :cond_201
    aget-object v1, p3, v3

    const-string/jumbo v5, "list"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_253

    .line 3579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "list size: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3580
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_22d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3581
    .local v5, "member":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .end local v5    # "member":Ljava/lang/String;
    goto :goto_22d

    .line 3582
    :cond_24e
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3587
    :cond_253
    :goto_253
    aget-object v1, p3, v0

    const-string/jumbo v5, "frz"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26a

    .line 3588
    aget-object v6, p3, v4

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "force"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/FreecessController;->freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z

    .line 3591
    :cond_26a
    aget-object v1, p3, v0

    const-string/jumbo v5, "ufz"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27c

    .line 3592
    aget-object v1, p3, v4

    const-string v5, "force"

    invoke-virtual {p0, v1, v2, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 3596
    :cond_27c
    aget-object v1, p3, v0

    const-string/jumbo v5, "lrs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b0

    .line 3597
    aget-object v1, p3, v4

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 3598
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->setLRsEnabled(Z)V

    .line 3599
    const-string/jumbo v1, "lrs set enable"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b0

    .line 3600
    :cond_29c
    aget-object v1, p3, v4

    const-string/jumbo v5, "off"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b0

    .line 3601
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->setLRsEnabled(Z)V

    .line 3602
    const-string/jumbo v1, "lrs set disable"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3606
    :cond_2b0
    :goto_2b0
    aget-object v1, p3, v0

    const-string/jumbo v5, "pending"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2be

    .line 3607
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->dumpPendingBroadcast(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3610
    :cond_2be
    aget-object v1, p3, v0

    const-string/jumbo v5, "uid_idle"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30e

    .line 3611
    array-length v1, p3

    if-ge v1, v3, :cond_2f1

    .line 3612
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 3613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MARstest -- uid idle check mode has turned to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getUidIdleCheckMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_30e

    .line 3615
    :cond_2f1
    aget-object v1, p3, v4

    const-string/jumbo v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_300

    .line 3616
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    goto :goto_30e

    .line 3617
    :cond_300
    aget-object v1, p3, v4

    const-string/jumbo v3, "off"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30e

    .line 3618
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->setUidIdleCheckMode(Z)V

    .line 3623
    :cond_30e
    :goto_30e
    aget-object v0, p3, v0

    const-string/jumbo v1, "window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36d

    .line 3624
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_31c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_31f
    .catchall {:try_start_31c .. :try_end_31f} :catchall_367

    .line 3625
    const/4 v1, 0x0

    .line 3627
    .local v1, "hasWindow":Z
    :try_start_320
    aget-object v2, p3, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3628
    .local v2, "uid":I
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_33b

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_33b

    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v3

    if-eqz v3, :cond_33b

    .line 3629
    const/4 v1, 0x1

    .line 3631
    :cond_33b
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dumpMARsCommand(window) "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ishasFloatingWindow:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_359
    .catch Ljava/lang/NumberFormatException; {:try_start_320 .. :try_end_359} :catch_35a
    .catchall {:try_start_320 .. :try_end_359} :catchall_367

    .line 3634
    .end local v2    # "uid":I
    goto :goto_362

    .line 3632
    :catch_35a
    move-exception v2

    .line 3633
    .local v2, "e":Ljava/lang/NumberFormatException;
    :try_start_35b
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v4, "dumpMARsCommand(window) parseInt error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3635
    .end local v1    # "hasWindow":Z
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_362
    monitor-exit v0
    :try_end_363
    .catchall {:try_start_35b .. :try_end_363} :catchall_367

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_36d

    :catchall_367
    move-exception v1

    :try_start_368
    monitor-exit v0
    :try_end_369
    .catchall {:try_start_368 .. :try_end_369} :catchall_367

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3637
    :cond_36d
    :goto_36d
    return-void
.end method

.method public enterOLAF(I)V
    .registers 4
    .param p1, "mills"    # I

    .line 2194
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;II)V

    .line 2195
    return-void
.end method

.method public enterOLAF(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/FreecessController;->enterOLAF(Ljava/lang/String;II)V

    .line 2200
    return-void
.end method

.method public exitOLAF()V
    .registers 5

    .line 2237
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    if-nez v0, :cond_5

    .line 2238
    return-void

    .line 2240
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    if-nez v0, :cond_a

    .line 2241
    return-void

    .line 2243
    :cond_a
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_15

    .line 2244
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v1, "Exit OLAF!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2247
    :cond_15
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->removeOLAFTimeOutMsg()V

    .line 2249
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/FreecessHandler;->sendOLAFMsg(ZLjava/lang/String;I)V

    .line 2250
    return-void
.end method

.method public freezeBgPackageLocked(Ljava/lang/String;I)V
    .registers 20
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 1799
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-boolean v0, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v0, :cond_145

    iget-boolean v0, v7, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_10

    goto/16 :goto_145

    .line 1803
    :cond_10
    const/4 v0, 0x0

    .line 1804
    .local v0, "hasFloatingOrOnScreenWindow":Z
    const/4 v1, 0x0

    .line 1805
    .local v1, "hasTouchEvent":Z
    const/4 v2, 0x0

    .line 1806
    .local v2, "hasPendingBroadcast":Z
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v10

    .line 1807
    .local v10, "monitorPacketFlag":Z
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v11

    .line 1809
    .local v11, "restrictNetworkFlag":Z
    const/4 v12, 0x0

    .line 1811
    .local v12, "isFreezed":Z
    iget-object v3, v7, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v3, :cond_47

    iget-object v3, v7, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3, v9}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 1812
    const/4 v0, 0x1

    move v13, v0

    goto :goto_48

    .line 1815
    :cond_47
    move v13, v0

    .end local v0    # "hasFloatingOrOnScreenWindow":Z
    .local v13, "hasFloatingOrOnScreenWindow":Z
    :goto_48
    invoke-direct {v7, v9}, Lcom/android/server/am/FreecessController;->isReceivingTouchEvent(I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1816
    const/4 v1, 0x1

    move v14, v1

    goto :goto_52

    .line 1815
    :cond_51
    move v14, v1

    .line 1823
    .end local v1    # "hasTouchEvent":Z
    .local v14, "hasTouchEvent":Z
    :goto_52
    iget-object v0, v7, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->isPendingBroadcastPackageLocked(I)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 1824
    const/4 v2, 0x1

    move v15, v2

    goto :goto_5e

    .line 1823
    :cond_5d
    move v15, v2

    .line 1827
    .end local v2    # "hasPendingBroadcast":Z
    .local v15, "hasPendingBroadcast":Z
    :goto_5e
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v16

    .line 1828
    :try_start_61
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {v7, v8, v0}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    .line 1829
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v0, :cond_140

    iget-boolean v1, v0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v1, :cond_71

    goto/16 :goto_140

    .line 1833
    :cond_71
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v0, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    const/4 v6, 0x1

    if-nez v1, :cond_9a

    .line 1834
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not MARs target, skip to freeze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iput v6, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1836
    monitor-exit v16

    return-void

    .line 1839
    :cond_9a
    const-string v1, "com.samsung.android.spay"

    iget-object v2, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    .line 1840
    iput v6, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1841
    monitor-exit v16

    return-void

    .line 1844
    :cond_a8
    if-eqz v13, :cond_c4

    .line 1845
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has floating or onScreen window, skip to freeze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iput v6, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1847
    monitor-exit v16

    return-void

    .line 1850
    :cond_c4
    if-eqz v14, :cond_e0

    .line 1851
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has Touch Event, skip to freeze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iput v6, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1853
    monitor-exit v16

    return-void

    .line 1856
    :cond_e0
    if-eqz v15, :cond_fc

    .line 1857
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has pending broadcast, skip to freeze"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1858
    iput v6, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1859
    monitor-exit v16

    return-void

    .line 1862
    :cond_fc
    const-string v3, "Bg"

    const/4 v4, 0x3

    move-object/from16 v1, p0

    move-object v2, v0

    move v5, v10

    move v7, v6

    move v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v1

    move v12, v1

    .line 1863
    if-eqz v12, :cond_115

    .line 1864
    iput-boolean v7, v0, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    .line 1865
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    goto :goto_11a

    .line 1867
    :cond_115
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    .line 1868
    iput v7, v0, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 1870
    :goto_11a
    monitor-exit v16
    :try_end_11b
    .catchall {:try_start_61 .. :try_end_11b} :catchall_142

    .line 1872
    if-eqz v12, :cond_13f

    .line 1873
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRZ"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    :cond_13f
    return-void

    .line 1830
    :cond_140
    :goto_140
    :try_start_140
    monitor-exit v16

    return-void

    .line 1870
    .end local v0    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :catchall_142
    move-exception v0

    monitor-exit v16
    :try_end_144
    .catchall {:try_start_140 .. :try_end_144} :catchall_142

    throw v0

    .line 1800
    .end local v10    # "monitorPacketFlag":Z
    .end local v11    # "restrictNetworkFlag":Z
    .end local v12    # "isFreezed":Z
    .end local v13    # "hasFloatingOrOnScreenWindow":Z
    .end local v14    # "hasTouchEvent":Z
    .end local v15    # "hasPendingBroadcast":Z
    :cond_145
    :goto_145
    return-void
.end method

.method freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .registers 13
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2672
    const/4 v0, 0x0

    .line 2674
    .local v0, "isFreezed":Z
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->getAutorunForFreezedPackage(Ljava/lang/String;I)I

    move-result v1

    .line 2676
    .local v1, "autorun":I
    iget-boolean v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_13

    .line 2677
    return v3

    .line 2681
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2682
    return v3

    .line 2685
    :cond_1a
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v6, 0x4

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2686
    return v3

    .line 2689
    :cond_2a
    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_33

    .line 2690
    return v3

    .line 2693
    :cond_33
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v2

    const/16 v4, 0x12

    iget-object v5, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v6, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v2

    if-lez v2, :cond_46

    .line 2696
    return v3

    .line 2699
    :cond_46
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v2

    .line 2700
    .local v2, "restrictNetworkFlag":Z
    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v3

    .line 2701
    .local v3, "monitorPacketFlag":Z
    const/4 v7, 0x3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v8, v3

    move v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v0

    .line 2702
    const/4 v4, 0x1

    if-eqz v0, :cond_84

    .line 2703
    iput-boolean v4, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2705
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "FZ"

    invoke-virtual {v5, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2707
    :cond_84
    return v4
.end method

.method public freezePackage(ILjava/lang/String;IZZ)Z
    .registers 18
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "freeze_type"    # I
    .param p4, "monitorPacketFlag"    # Z
    .param p5, "restrictNetworkFlag"    # Z

    .line 1900
    move-object v7, p0

    iget-boolean v0, v7, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v0, :cond_5c

    iget-boolean v0, v7, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_c

    move-object v4, p2

    goto/16 :goto_5d

    .line 1903
    :cond_c
    const/4 v8, 0x0

    .line 1904
    .local v8, "isFreezed":Z
    const/4 v1, 0x0

    .line 1905
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1906
    .local v2, "userId":I
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 1907
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    .line 1908
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v0, :cond_45

    iget-boolean v3, v0, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-nez v3, :cond_45

    .line 1909
    iget-object v3, v0, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;
    :try_end_1e
    .catchall {:try_start_12 .. :try_end_1e} :catchall_56

    move-object v10, v3

    .line 1910
    .end local v1    # "pkgName":Ljava/lang/String;
    .local v10, "pkgName":Ljava/lang/String;
    :try_start_1f
    iget v1, v0, Lcom/android/server/am/FreecessPkgStatus;->userId:I
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_41

    move v11, v1

    .line 1911
    .end local v2    # "userId":I
    .local v11, "userId":I
    const/4 v1, 0x0

    :try_start_23
    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_39

    .line 1912
    move-object v1, p0

    move-object v2, v0

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v1
    :try_end_35
    .catchall {:try_start_23 .. :try_end_35} :catchall_3c

    move v8, v1

    move-object v1, v10

    move v2, v11

    .end local v8    # "isFreezed":Z
    .local v1, "isFreezed":Z
    goto :goto_45

    .line 1911
    .end local v1    # "isFreezed":Z
    .restart local v8    # "isFreezed":Z
    :cond_39
    move-object v1, v10

    move v2, v11

    goto :goto_45

    .line 1914
    .end local v0    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :catchall_3c
    move-exception v0

    move-object v4, p2

    move-object v1, v10

    move v2, v11

    goto :goto_58

    .end local v11    # "userId":I
    .restart local v2    # "userId":I
    :catchall_41
    move-exception v0

    move-object v4, p2

    move-object v1, v10

    goto :goto_58

    .end local v10    # "pkgName":Ljava/lang/String;
    .local v1, "pkgName":Ljava/lang/String;
    :cond_45
    :goto_45
    :try_start_45
    monitor-exit v9
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_56

    .line 1915
    if-eqz v8, :cond_54

    if-eqz v1, :cond_54

    .line 1916
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    const/4 v3, 0x1

    move-object v4, p2

    invoke-virtual {v0, v1, v2, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    goto :goto_55

    .line 1915
    :cond_54
    move-object v4, p2

    .line 1918
    :goto_55
    return v8

    .line 1914
    :catchall_56
    move-exception v0

    move-object v4, p2

    :goto_58
    :try_start_58
    monitor-exit v9
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5a

    throw v0

    :catchall_5a
    move-exception v0

    goto :goto_58

    .line 1900
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v2    # "userId":I
    .end local v8    # "isFreezed":Z
    :cond_5c
    move-object v4, p2

    .line 1901
    :goto_5d
    const/4 v0, 0x0

    return v0
.end method

.method public freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "freeze_type"    # I
    .param p5, "monitorPacketFlag"    # Z
    .param p6, "restrictNetworkFlag"    # Z

    .line 1880
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_9

    goto :goto_38

    .line 1883
    :cond_9
    const/4 v0, 0x0

    .line 1884
    .local v0, "isFreezed":Z
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1885
    :try_start_d
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    .line 1886
    .local v2, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v2, :cond_29

    iget-boolean v3, v2, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-nez v3, :cond_29

    .line 1887
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 1888
    move-object v3, p0

    move-object v4, v2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/FreecessController;->freezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;IZZ)Z

    move-result v3

    move v0, v3

    .line 1890
    .end local v2    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_35

    .line 1891
    if-eqz v0, :cond_34

    .line 1892
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1894
    :cond_34
    return v0

    .line 1890
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2

    .line 1881
    .end local v0    # "isFreezed":Z
    :cond_38
    :goto_38
    const/4 v0, 0x0

    return v0
.end method

.method public getAngryBirdEnabled()Z
    .registers 3

    .line 408
    iget v0, p0, Lcom/android/server/am/FreecessController;->mAngryBird:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method public getCarModeOnState()Z
    .registers 2

    .line 436
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    return v0
.end method

.method public getChargingMode()Z
    .registers 2

    .line 2963
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsCharging:Z

    return v0
.end method

.method public getEmergencyModeOnState()Z
    .registers 2

    .line 444
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    return v0
.end method

.method public getEnableOLAFwithoutBGFreeze()Z
    .registers 2

    .line 404
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    return v0
.end method

.method public getFreecessEnabled()Z
    .registers 2

    .line 400
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    return v0
.end method

.method public getFreecessEnabledConfig()Z
    .registers 7

    .line 312
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v0

    .line 313
    .local v0, "isChinaModel":Z
    sget v1, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_15

    if-eq v1, v3, :cond_15

    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v1, :cond_1b

    :cond_15
    iget v1, p0, Lcom/android/server/am/FreecessController;->mAngryBird:I

    if-ltz v1, :cond_1b

    move v1, v4

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 314
    .local v1, "isFreecessEnabled":Z
    :goto_1c
    if-eqz v1, :cond_27

    iget-boolean v5, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    if-eqz v5, :cond_27

    sget v5, Lcom/android/server/am/FreecessController;->mCscFeatureValue:I

    if-ne v5, v3, :cond_27

    goto :goto_33

    :cond_27
    if-eqz v1, :cond_2b

    if-nez v0, :cond_33

    :cond_2b
    if-eqz v1, :cond_35

    .line 315
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    :cond_33
    :goto_33
    move v2, v4

    goto :goto_36

    :cond_35
    nop

    :goto_36
    iput-boolean v2, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 318
    if-eqz v1, :cond_46

    .line 319
    :try_start_3a
    iput-boolean v4, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 320
    const-string/jumbo v2, "sys.config.freecess_monitor"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 322
    :cond_46
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "init(): FZ disabled, don\'t set prop"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_4e} :catch_4f

    .line 326
    :goto_4e
    goto :goto_58

    .line 324
    :catch_4f
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "init(), we cannot set FZ prop"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_58
    iput-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 329
    return v1
.end method

.method public getFreecessEnhancementEnabledState()Z
    .registers 2

    .line 452
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    return v0
.end method

.method public getFreecessSkipTimeEnabled()Z
    .registers 2

    .line 428
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    return v0
.end method

.method public getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 767
    const/4 v0, 0x0

    .line 768
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    if-eqz v1, :cond_17

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->sizeByUserId()I

    move-result v1

    if-eqz v1, :cond_17

    .line 769
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p2, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    .line 770
    if-eqz v0, :cond_17

    .line 771
    return-object v0

    .line 774
    :cond_17
    return-object v0
.end method

.method public getFrozenPids()Ljava/util/HashSet;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 841
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 842
    .local v0, "frozenPidList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v1

    .line 843
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_32

    .line 844
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 845
    .local v3, "pid":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 846
    nop

    .end local v3    # "pid":Ljava/lang/Integer;
    goto :goto_16

    .line 847
    :cond_30
    monitor-exit v1

    return-object v0

    .line 849
    :cond_32
    monitor-exit v1

    .line 850
    const/4 v1, 0x0

    return-object v1

    .line 849
    :catchall_35
    move-exception v2

    monitor-exit v1
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_35

    throw v2
.end method

.method public getFuryBirdEnabled()Z
    .registers 3

    .line 416
    iget v0, p0, Lcom/android/server/am/FreecessController;->mAngryBird:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getIsDoingGC(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 628
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 629
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 630
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    const/4 v2, 0x0

    if-eqz v1, :cond_11

    .line 631
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz v3, :cond_f

    const/4 v2, 0x1

    :cond_f
    monitor-exit v0

    return v2

    .line 633
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_11
    monitor-exit v0

    .line 635
    return v2

    .line 633
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public getIsDumpstateWorking()Z
    .registers 2

    .line 612
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    return v0
.end method

.method public getIsSmartSwitchWorking()Z
    .registers 2

    .line 620
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    return v0
.end method

.method public getLRsEnabled()Z
    .registers 2

    .line 539
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    return v0
.end method

.method public getMadBirdEnabled()Z
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/server/am/FreecessController;->mAngryBird:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getMonitorPacketFlag(I)Z
    .registers 4
    .param p1, "autorun"    # I

    .line 1788
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    if-eq p1, v1, :cond_1d

    .line 1789
    :cond_d
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 1788
    :goto_1f
    return v1
.end method

.method getOLAFEnabled()Z
    .registers 2

    .line 456
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    return v0
.end method

.method public getPidProcessName(I)Ljava/lang/String;
    .registers 9
    .param p1, "pid"    # I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 651
    .local v1, "result":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/comm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 653
    .local v2, "proc_pid_comm":Ljava/lang/String;
    :try_start_19
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v3

    .line 654
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_28} :catch_35
    .catchall {:try_start_19 .. :try_end_28} :catchall_33

    move-object v1, v3

    .line 658
    nop

    .line 660
    :try_start_2a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    .line 663
    :goto_2d
    goto :goto_5a

    .line 661
    :catch_2e
    move-exception v3

    .line 662
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_2d

    .line 658
    :catchall_33
    move-exception v3

    goto :goto_5b

    .line 655
    :catch_35
    move-exception v3

    .line 656
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_36
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "can\'t read "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catchall {:try_start_36 .. :try_end_53} :catchall_33

    .line 658
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_5a

    .line 660
    :try_start_56
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_2e

    goto :goto_2d

    .line 666
    :cond_5a
    :goto_5a
    return-object v1

    .line 658
    :goto_5b
    if-eqz v0, :cond_65

    .line 660
    :try_start_5d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    .line 663
    goto :goto_65

    .line 661
    :catch_61
    move-exception v4

    .line 662
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 665
    .end local v4    # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    throw v3
.end method

.method public getRageBirdEnabled()Z
    .registers 3

    .line 412
    iget v0, p0, Lcom/android/server/am/FreecessController;->mAngryBird:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public getRestrictNetworkFlag(I)Z
    .registers 3
    .param p1, "autorun"    # I

    .line 1793
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    if-eqz p1, :cond_1c

    .line 1794
    :cond_12
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 1793
    :goto_1f
    return v0
.end method

.method public getScreenOnFreecessEnabled()Z
    .registers 2

    .line 2931
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    return v0
.end method

.method public getScreenOnState()Z
    .registers 2

    .line 2967
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    return v0
.end method

.method public getUidIdleCheckMode()Z
    .registers 2

    .line 2947
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    return v0
.end method

.method public handleLcdOnResetState(Ljava/lang/String;I)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3230
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3231
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 3232
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    .line 3234
    :cond_b
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1e

    .line 3235
    iput v5, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3236
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    goto :goto_46

    .line 3237
    :cond_1e
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    if-ne v2, v4, :cond_3d

    .line 3238
    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v2, :cond_30

    .line 3240
    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v4, "UidActive"

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_32

    .line 3242
    :cond_30
    iput v5, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3244
    :goto_32
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    const/4 v3, 0x4

    iget-object v4, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    goto :goto_46

    .line 3246
    :cond_3d
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v5, v3}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsgByObj(ILjava/lang/Object;)V

    .line 3248
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :goto_46
    monitor-exit v0

    .line 3249
    return-void

    .line 3248
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method handleResetAllPreAction()V
    .registers 5

    .line 3279
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@*** unFreezeAllPackages for watchdog : Start thread for preaction unfreezing!!! cntFail(FZ/UFZ/UFZ_P) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailFreeze:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreeze:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/FreecessController;->cntFailUnfreezePilot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3281
    .local v0, "startTime":J
    new-instance v2, Lcom/android/server/am/FreecessController$3;

    const-string v3, "MARsWatchdogUnfreezer"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/FreecessController$3;-><init>(Lcom/android/server/am/FreecessController;Ljava/lang/String;J)V

    .line 3299
    invoke-virtual {v2}, Lcom/android/server/am/FreecessController$3;->start()V

    .line 3300
    return-void
.end method

.method handleResetAllState(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"    # Ljava/lang/String;

    .line 3266
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@*** unFreezeAllPackages for watchdog : Start reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3268
    const-string v0, "SoftReset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 3269
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 3270
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 3271
    .local v1, "wakeLock":Landroid/os/PowerManager$WakeLock;
    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 3273
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    .end local v1    # "wakeLock":Landroid/os/PowerManager$WakeLock;
    :cond_38
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unfreezeAllPackages(Ljava/lang/String;)V

    .line 3274
    invoke-direct {p0}, Lcom/android/server/am/FreecessController;->resetFreecessStateForLcdOnFreeze()V

    .line 3275
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@*** unFreezeAllPackages for watchdog : End reset all state unfreezing!!! - MARs FW Side (reason: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3276
    return-void
.end method

.method handleUnfreezeActivePackages(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 3303
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezeActivePackages(Ljava/lang/String;)V

    .line 3304
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .line 261
    iput-object p1, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    .line 262
    iput-object p2, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 265
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabledConfig()Z

    move-result v0

    .line 266
    .local v0, "isFreecessEnabled":Z
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 267
    if-eqz v0, :cond_60

    .line 268
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 270
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mUidObserver:Landroid/app/IUidObserver;

    const/16 v3, 0xf

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    .line 273
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v1, :cond_29

    .line 274
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 276
    :cond_29
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessHandler;->init(Landroid/content/Context;)V

    .line 277
    invoke-static {}, Lcom/android/server/am/FreecessTrigger;->getInstance()Lcom/android/server/am/FreecessTrigger;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessTrigger;->init(Landroid/content/Context;)V

    .line 280
    const-string/jumbo v1, "input"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/input/InputManagerService;

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 283
    const-string v1, "batterymanager"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManager;

    .line 284
    .local v1, "batteryManager":Landroid/os/BatteryManager;
    const/4 v2, 0x1

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v3

    if-eqz v3, :cond_56

    .line 285
    invoke-virtual {p0, v2}, Lcom/android/server/am/FreecessController;->setChargingMode(Z)V

    .line 287
    :cond_56
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 288
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Lcom/android/server/am/FreecessController;->setFirewallChainEnabled(IZ)V

    .line 291
    .end local v1    # "batteryManager":Landroid/os/BatteryManager;
    :cond_60
    return-void
.end method

.method public isCalmModeOnoff()Z
    .registers 2

    .line 2779
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    return v0
.end method

.method isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z
    .registers 9
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;

    .line 2744
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 2745
    return v0

    .line 2747
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeDefaultAllowList:Ljava/util/List;

    iget-object v2, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2748
    return v0

    .line 2750
    :cond_f
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1c

    .line 2751
    return v0

    .line 2753
    :cond_1c
    const/4 v1, 0x2

    .line 2754
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v5, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    const/16 v6, 0x12

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->filter(Ljava/lang/String;III)I

    move-result v2

    if-ne v1, v2, :cond_30

    .line 2756
    return v0

    .line 2758
    :cond_30
    const/4 v0, 0x0

    return v0
.end method

.method public isFreezedByLcdOffPolicy(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1736
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1737
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 1738
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_18

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-nez v2, :cond_18

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-nez v2, :cond_18

    .line 1739
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1741
    :cond_18
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1742
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isFreezedByLcdOnPolicy(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1746
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1747
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 1748
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_18

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v2, :cond_18

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isLcdOnFreezed:Z

    if-nez v2, :cond_15

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v2, :cond_18

    .line 1749
    :cond_15
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1751
    :cond_18
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1752
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method public isFreezedPackage(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1726
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1727
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 1728
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_10

    iget-boolean v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v2, :cond_10

    .line 1729
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1731
    :cond_10
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 1732
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method isFrozenByCalmMode(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 2767
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2768
    return v1

    .line 2769
    :cond_6
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2770
    :try_start_9
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    .line 2771
    .local v2, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v2, :cond_13

    .line 2772
    iget-boolean v1, v2, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    monitor-exit v0

    return v1

    .line 2774
    .end local v2    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_13
    monitor-exit v0

    .line 2775
    return v1

    .line 2774
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_9 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z
    .registers 7
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "impUids"    # [Ljava/lang/String;

    .line 1368
    if-eqz p1, :cond_3c

    .line 1369
    iget-boolean v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 1370
    return v1

    .line 1372
    :cond_8
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_3b

    iget-object v0, p1, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v0, :cond_15

    goto :goto_3b

    .line 1376
    :cond_15
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-direct {p0, v0}, Lcom/android/server/am/FreecessController;->isInBTAllowList(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1380
    return v1

    .line 1383
    :cond_1e
    iget v0, p1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    if-eqz v0, :cond_3c

    .line 1384
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is doing GC, skip to freeze it."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    return v1

    .line 1373
    :cond_3b
    :goto_3b
    return v1

    .line 1388
    :cond_3c
    const/4 v0, 0x0

    return v0
.end method

.method public isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z
    .registers 5
    .param p1, "pi"    # Lcom/android/server/am/MARsPackageInfo;

    .line 1392
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1393
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 1394
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_14

    .line 1395
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/FreecessPkgStatus;[Ljava/lang/String;)Z

    move-result v2

    monitor-exit v0

    return v2

    .line 1397
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_14
    monitor-exit v0

    .line 1398
    const/4 v0, 0x0

    return v0

    .line 1397
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public isInGPSAllowList(I)Z
    .registers 4
    .param p1, "uid"    # I

    .line 1343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1344
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    if-eqz v1, :cond_10

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1345
    const/4 v1, 0x1

    return v1

    .line 1347
    :cond_10
    const/4 v1, 0x0

    return v1
.end method

.method public isInRunningJobList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1351
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1352
    const/4 v0, 0x1

    return v0

    .line 1354
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public isInSpecialTargetForGPS(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method public isPacketMonitoredApp(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1689
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1690
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mMonitorFreezedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1691
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 1692
    :cond_16
    monitor-exit v0

    .line 1693
    const/4 v0, 0x0

    return v0

    .line 1692
    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_19

    throw v1
.end method

.method public isPendingIntent(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 475
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/FreecessController;->getFreezedPackage(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v0

    .line 476
    .local v0, "ps":Lcom/android/server/am/FreecessPkgStatus;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 477
    return v1

    .line 478
    :cond_8
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    .line 479
    .local v2, "isChinaPolicyEnabled":Z
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunOn(Ljava/lang/String;I)Z

    move-result v3

    .line 480
    .local v3, "isAutoRunOn":Z
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_2e

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 481
    if-eqz v2, :cond_2c

    if-eqz v2, :cond_2e

    iget-boolean v4, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    if-nez v4, :cond_2c

    if-eqz v3, :cond_2e

    .line 482
    :cond_2c
    const/4 v1, 0x1

    return v1

    .line 485
    :cond_2e
    return v1
.end method

.method public isProcessAllowList(Lcom/android/server/am/ProcessRecord;)Z
    .registers 7
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 3780
    const/4 v0, 0x0

    if-eqz p1, :cond_8f

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-nez v1, :cond_9

    goto/16 :goto_8f

    .line 3782
    :cond_9
    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastCheckTimeExceptFreeze:J

    iget-wide v3, p0, Lcom/android/server/am/FreecessController;->lastUpdateTimeProcessAllowList:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_8c

    .line 3783
    iput-wide v3, p1, Lcom/android/server/am/ProcessRecord;->lastCheckTimeExceptFreeze:J

    .line 3784
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3785
    .local v1, "processName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_31

    .line 3786
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3787
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    .line 3788
    return v3

    .line 3785
    :cond_2e
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 3791
    .end local v2    # "i":I
    :cond_31
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_38
    if-ltz v2, :cond_4e

    .line 3792
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 3793
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    .line 3794
    return v3

    .line 3791
    :cond_4b
    add-int/lit8 v2, v2, -0x1

    goto :goto_38

    .line 3797
    .end local v2    # "i":I
    :cond_4e
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_55
    if-ltz v2, :cond_6b

    .line 3798
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 3799
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    .line 3800
    return v3

    .line 3797
    :cond_68
    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    .line 3803
    .end local v2    # "i":I
    :cond_6b
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .restart local v2    # "i":I
    :goto_72
    if-ltz v2, :cond_88

    .line 3804
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 3805
    iput-boolean v3, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    .line 3806
    return v3

    .line 3803
    :cond_85
    add-int/lit8 v2, v2, -0x1

    goto :goto_72

    .line 3809
    .end local v2    # "i":I
    :cond_88
    iput-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    .line 3810
    .end local v1    # "processName":Ljava/lang/String;
    nop

    .line 3813
    return v0

    .line 3811
    :cond_8c
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isFreezeAllowList:Z

    return v0

    .line 3781
    :cond_8f
    :goto_8f
    return v0
.end method

.method killPkgForCalmMode(ILjava/lang/String;)Z
    .registers 9
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 2724
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-nez v0, :cond_6

    .line 2725
    const/4 v0, 0x0

    return v0

    .line 2727
    :cond_6
    const/4 v0, 0x0

    .line 2728
    .local v0, "isUnFreezed":Z
    const/4 v1, 0x0

    .line 2729
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2730
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v3

    move-object v1, v3

    .line 2731
    if-eqz v1, :cond_17

    .line 2732
    invoke-virtual {p0, v1, p2}, Lcom/android/server/am/FreecessController;->unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v3

    move v0, v3

    .line 2734
    :cond_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_2f

    .line 2735
    if-eqz v0, :cond_2d

    .line 2736
    if-eqz v1, :cond_2d

    invoke-virtual {p0, v1}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2737
    iget-object v2, v1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const-string v5, "CalmMode"

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/server/am/FreecessController;->killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V

    .line 2740
    :cond_2d
    const/4 v2, 0x1

    return v2

    .line 2734
    :catchall_2f
    move-exception v3

    :try_start_30
    monitor-exit v2
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v3
.end method

.method killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;

    .line 2762
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v1, "CalmMode"

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/ActivityManagerService;->killProcessForCalmMode(Ljava/lang/String;IILjava/lang/String;)V

    .line 2763
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/am/MARsPolicyManager;->addRestrictListForCalmMode(Ljava/lang/String;ILjava/lang/String;)V

    .line 2764
    return-void
.end method

.method lcdOnFreezePackage(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3307
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eqz v0, :cond_18

    .line 3308
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3309
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/FreecessController;->freezeBgPackageLocked(Ljava/lang/String;I)V

    .line 3310
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_18

    :catchall_12
    move-exception v1

    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3312
    :cond_18
    :goto_18
    return-void
.end method

.method lcdOnFreezedStateChange(ILjava/lang/String;Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "state"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I
    .param p5, "isDelay"    # Z

    .line 3206
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 3207
    :try_start_3
    invoke-direct {p0, p3, p4}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 3208
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-nez v1, :cond_b

    monitor-exit v0

    return-void

    .line 3210
    :cond_b
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3211
    .local v2, "preState":I
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1b

    const/4 v4, 0x3

    if-eq p1, v4, :cond_14

    goto :goto_24

    .line 3220
    :cond_14
    iget v5, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    if-ne v5, v3, :cond_24

    .line 3221
    iput v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    goto :goto_24

    .line 3213
    :cond_1b
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_24

    .line 3214
    if-nez p5, :cond_24

    .line 3215
    iput v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 3225
    :cond_24
    :goto_24
    iget v3, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    invoke-direct {p0, v2, v3, p2, v1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    .line 3226
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    .end local v2    # "preState":I
    monitor-exit v0

    .line 3227
    return-void

    .line 3226
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method onUnfreeze(Ljava/lang/String;IIZZ)V
    .registers 20
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "monitorPacketFlag"    # Z
    .param p5, "restrictNetworkFlag"    # Z

    .line 1756
    move-object v1, p0

    move/from16 v11, p3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1760
    .local v12, "token":J
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_10

    .line 1761
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0, v11}, Landroid/bluetooth/BluetoothAdapter;->onUnFreeze(I)V

    .line 1764
    :cond_10
    if-eqz p5, :cond_16

    .line 1765
    const/4 v0, 0x1

    invoke-direct {p0, v11, v0}, Lcom/android/server/am/FreecessController;->updateFreezedUidFirewall(IZ)V
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_31

    .line 1768
    :cond_16
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1769
    nop

    .line 1771
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    const/4 v6, 0x0

    .line 1773
    if-eqz p4, :cond_23

    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    const/4 v0, -0x1

    :goto_24
    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 1771
    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/am/FreecessHandler;->sendFreecessSettlementMsg(Ljava/lang/String;IIIIIZZ)V

    .line 1776
    return-void

    .line 1768
    :catchall_31
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1769
    throw v0
.end method

.method public postMonitoringFrozenProcs()V
    .registers 10

    .line 1050
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1051
    .local v0, "now":J
    const/4 v2, 0x0

    .line 1053
    .local v2, "numProcessNeedToCheck":I
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1054
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/ProcessRecord;>;"
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_83

    .line 1055
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 1057
    .local v4, "pr":Lcom/android/server/am/ProcessRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ProcessRecord;->frozenMARs:Z

    if-nez v5, :cond_2b

    .line 1058
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mMapFrozenProcRecord:Ljava/util/concurrent/ConcurrentHashMap;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    goto :goto_f

    .line 1062
    :cond_2b
    iget-wide v5, v4, Lcom/android/server/am/ProcessRecord;->freezeUnfreezeTimeMARs:J

    sub-long v5, v0, v5

    const-wide/16 v7, 0x9c4

    cmp-long v5, v5, v7

    if-ltz v5, :cond_36

    .line 1063
    goto :goto_f

    .line 1065
    :cond_36
    add-int/lit8 v2, v2, 0x1

    .line 1066
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->getReasonProcShouldNotBeFrozen(Lcom/android/server/am/ProcessRecord;)I

    move-result v5

    .line 1067
    .local v5, "ret":I
    if-lez v5, :cond_82

    .line 1068
    packed-switch v5, :pswitch_data_a8

    .line 1091
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "Post-Monitoring"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    goto :goto_82

    .line 1088
    :pswitch_4b
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "RunningLogcat"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1089
    goto :goto_82

    .line 1085
    :pswitch_53
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "ForegroundAdj"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1086
    goto :goto_82

    .line 1082
    :pswitch_5b
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "StartProcess"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1083
    goto :goto_82

    .line 1079
    :pswitch_63
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "LaunchingProvider"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1080
    goto :goto_82

    .line 1076
    :pswitch_6b
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "ReceivingIntent"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1077
    goto :goto_82

    .line 1073
    :pswitch_73
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "ExecutingService"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1074
    goto :goto_82

    .line 1070
    :pswitch_7b
    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string v7, "AlreadyDied"

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1095
    .end local v4    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "ret":I
    :cond_82
    :goto_82
    goto :goto_f

    .line 1098
    :cond_83
    if-lez v2, :cond_8c

    .line 1099
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/FreecessHandler;->sendProcPostMonitoringMsg()V

    .line 1101
    :cond_8c
    sget-boolean v4, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v4, :cond_a7

    .line 1102
    sget-object v4, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "postMonitoringFrozenProcs() numProcessNeedToCheck is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_a7
    return-void

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_7b
        :pswitch_73
        :pswitch_6b
        :pswitch_63
        :pswitch_5b
        :pswitch_53
        :pswitch_4b
    .end packed-switch
.end method

.method quickFreezeForCalmMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 2637
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 2638
    :try_start_3
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 2639
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_16

    .line 2640
    invoke-virtual {p0, v1, p3}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v2

    .line 2641
    .local v2, "isFreezed":Z
    if-nez v2, :cond_16

    .line 2642
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/am/FreecessHandler;->sendCalmModeRepeatMsg(Ljava/lang/String;ILjava/lang/String;)V

    .line 2645
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    .end local v2    # "isFreezed":Z
    :cond_16
    monitor-exit v0

    .line 2646
    return-void

    .line 2645
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method readSysfs()V
    .registers 17

    .line 3647
    move-object/from16 v1, p0

    const-string v0, ":"

    const-string v2, "e = "

    const/4 v3, 0x0

    .line 3648
    .local v3, "strTemp":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3650
    .local v4, "buf":Ljava/io/BufferedReader;
    :try_start_8
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    const-string v7, "/data/system/ssrm_local_freecess"

    invoke-direct {v6, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v5

    .line 3651
    :cond_15
    :goto_15
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_11e

    .line 3652
    if-eqz v3, :cond_15

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 3653
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 3654
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-le v7, v8, :cond_11c

    .line 3655
    aget-object v7, v6, v5
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_2f} :catch_16d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2f} :catch_143
    .catchall {:try_start_8 .. :try_end_2f} :catchall_140

    const-string v9, ""

    if-eqz v7, :cond_42

    :try_start_33
    aget-object v7, v6, v5

    aget-object v10, v6, v5

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    goto :goto_43

    :cond_42
    move-object v7, v9

    .line 3656
    .local v7, "region":Ljava/lang/String;
    :goto_43
    const/4 v10, 0x1

    aget-object v11, v6, v10

    if-eqz v11, :cond_4b

    aget-object v11, v6, v10

    goto :goto_4c

    :cond_4b
    move-object v11, v9

    .line 3657
    .local v11, "key":Ljava/lang/String;
    :goto_4c
    aget-object v12, v6, v8

    if-eqz v12, :cond_52

    aget-object v9, v6, v8

    :cond_52
    move-object v8, v9

    .line 3658
    .local v8, "value":Ljava/lang/String;
    const-string v9, "ALL"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_59} :catch_16d
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_59} :catch_143
    .catchall {:try_start_33 .. :try_end_59} :catchall_140

    const-string v12, "Enhance_Switch"

    const-string v13, "@"

    const-string v14, "Switch"

    const-string v15, "WL"

    const-string v10, "1"

    if-eqz v9, :cond_b9

    .line 3659
    :try_start_65
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 3660
    if-eqz v8, :cond_11c

    .line 3661
    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 3663
    .local v9, "WLsplitList":[Ljava/lang/String;
    array-length v10, v9

    :goto_72
    if-ge v5, v10, :cond_88

    aget-object v12, v9, v5

    .line 3664
    .local v12, "wlpackage":Ljava/lang/String;
    if-eqz v12, :cond_85

    iget-object v13, v1, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_85

    .line 3665
    iget-object v13, v1, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3663
    .end local v12    # "wlpackage":Ljava/lang/String;
    :cond_85
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 3668
    .end local v9    # "WLsplitList":[Ljava/lang/String;
    :cond_88
    goto/16 :goto_11c

    .line 3669
    :cond_8a
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a1

    .line 3670
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3671
    .local v9, "onoff":Z
    if-eqz v9, :cond_9d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v10

    if-eqz v10, :cond_9d

    const/4 v5, 0x1

    .line 3672
    .end local v9    # "onoff":Z
    .local v5, "onoff":Z
    :cond_9d
    invoke-virtual {v1, v5}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .end local v5    # "onoff":Z
    goto :goto_b8

    .line 3673
    :cond_a1
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b8

    .line 3674
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3675
    .restart local v9    # "onoff":Z
    if-eqz v9, :cond_b4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v10

    if-eqz v10, :cond_b4

    const/4 v5, 0x1

    .line 3676
    .end local v9    # "onoff":Z
    .restart local v5    # "onoff":Z
    :cond_b4
    invoke-virtual {v1, v5}, Lcom/android/server/am/FreecessController;->setFreeceeEnhanceEnabled(Z)V

    .line 3677
    .end local v5    # "onoff":Z
    goto :goto_11c

    .line 3673
    :cond_b8
    :goto_b8
    goto :goto_11c

    .line 3678
    :cond_b9
    sget-object v9, Lcom/android/server/am/FreecessController;->mCountry:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 3679
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_ee

    .line 3680
    if-eqz v8, :cond_11c

    .line 3681
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    if-eqz v9, :cond_11c

    .line 3682
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 3684
    invoke-virtual {v8, v13, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 3686
    .local v9, "WLsplitList":[Ljava/lang/String;
    array-length v10, v9

    :goto_d7
    if-ge v5, v10, :cond_ed

    aget-object v12, v9, v5

    .line 3687
    .restart local v12    # "wlpackage":Ljava/lang/String;
    if-eqz v12, :cond_ea

    iget-object v13, v1, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_ea

    .line 3688
    iget-object v13, v1, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3686
    .end local v12    # "wlpackage":Ljava/lang/String;
    :cond_ea
    add-int/lit8 v5, v5, 0x1

    goto :goto_d7

    .line 3691
    .end local v9    # "WLsplitList":[Ljava/lang/String;
    :cond_ed
    goto :goto_11c

    .line 3693
    :cond_ee
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_105

    .line 3694
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3695
    .local v9, "onoff":Z
    if-eqz v9, :cond_101

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v10

    if-eqz v10, :cond_101

    const/4 v5, 0x1

    .line 3696
    .end local v9    # "onoff":Z
    .restart local v5    # "onoff":Z
    :cond_101
    invoke-virtual {v1, v5}, Lcom/android/server/am/FreecessController;->turnOnOffFreecessMonitor(Z)V

    .end local v5    # "onoff":Z
    goto :goto_11c

    .line 3697
    :cond_105
    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 3698
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 3699
    .restart local v9    # "onoff":Z
    if-eqz v9, :cond_118

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreecessController;->getFreecessEnhancementEnabledState()Z

    move-result v10

    if-eqz v10, :cond_118

    const/4 v5, 0x1

    .line 3700
    .end local v9    # "onoff":Z
    .restart local v5    # "onoff":Z
    :cond_118
    invoke-virtual {v1, v5}, Lcom/android/server/am/FreecessController;->setFreeceeEnhanceEnabled(Z)V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_11b} :catch_16d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_11b} :catch_143
    .catchall {:try_start_65 .. :try_end_11b} :catchall_140

    nop

    .line 3704
    .end local v5    # "onoff":Z
    .end local v6    # "split":[Ljava/lang/String;
    .end local v7    # "region":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    :cond_11c
    :goto_11c
    goto/16 :goto_15

    .line 3712
    :cond_11e
    nop

    .line 3713
    :try_start_11f
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_122
    .catch Ljava/io/IOException; {:try_start_11f .. :try_end_122} :catch_124

    .line 3717
    :cond_122
    :goto_122
    goto/16 :goto_197

    .line 3715
    :catch_124
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 3716
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    :goto_12e
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_197

    .line 3711
    :catchall_140
    move-exception v0

    move-object v5, v0

    goto :goto_198

    .line 3708
    :catch_143
    move-exception v0

    .line 3709
    .local v0, "e":Ljava/lang/Exception;
    :try_start_144
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15c
    .catchall {:try_start_144 .. :try_end_15c} :catchall_140

    .line 3712
    .end local v0    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_122

    .line 3713
    :try_start_15e
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_15e .. :try_end_161} :catch_162

    goto :goto_122

    .line 3715
    :catch_162
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 3716
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_12e

    .line 3706
    .end local v0    # "e":Ljava/io/IOException;
    :catch_16d
    move-exception v0

    .line 3707
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_16e
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_186
    .catchall {:try_start_16e .. :try_end_186} :catchall_140

    .line 3712
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_122

    .line 3713
    :try_start_188
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_18c

    goto :goto_122

    .line 3715
    :catch_18c
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 3716
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_12e

    .line 3719
    .end local v0    # "e":Ljava/io/IOException;
    :goto_197
    return-void

    .line 3712
    :goto_198
    if-eqz v4, :cond_1ba

    .line 3713
    :try_start_19a
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_19a .. :try_end_19d} :catch_19e

    goto :goto_1ba

    .line 3715
    :catch_19e
    move-exception v0

    move-object v6, v0

    move-object v0, v6

    .line 3716
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1bb

    .line 3717
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1ba
    :goto_1ba
    nop

    .line 3718
    :goto_1bb
    throw v5
.end method

.method protected recoverFreezerStateIfTHAWED()V
    .registers 13

    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "reader":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 340
    .local v1, "result":Ljava/lang/String;
    const/4 v2, 0x0

    .line 341
    .local v2, "ret":Z
    const-string v3, "/dev/freezer/frozen/freezer.state"

    .line 342
    .local v3, "path":Ljava/lang/String;
    const-string v4, "FROZEN"

    .line 343
    .local v4, "frozen":Ljava/lang/String;
    const-string v5, "THAWED"

    .line 344
    .local v5, "thawed":Ljava/lang/String;
    const/4 v6, 0x0

    .line 345
    .local v6, "out":Ljava/io/FileOutputStream;
    new-instance v7, Ljava/io/File;

    const-string v8, "/dev/freezer/frozen/freezer.state"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 346
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_be

    invoke-virtual {v7}, Ljava/io/File;->canWrite()Z

    move-result v9

    if-nez v9, :cond_20

    goto/16 :goto_be

    .line 351
    :cond_20
    :try_start_20
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    invoke-direct {v10, v8}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v9

    .line 352
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    move-object v1, v9

    .line 353
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "freezer.state == "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    if-eqz v1, :cond_66

    const-string v9, "THAWED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_66

    .line 355
    new-instance v9, Ljava/io/FileOutputStream;

    const/4 v10, 0x1

    invoke-direct {v9, v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object v6, v9

    .line 356
    const-string v8, "FROZEN"

    const-string v9, "UTF-8"

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 357
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_66} :catch_7c
    .catchall {:try_start_20 .. :try_end_66} :catchall_7a

    .line 362
    :cond_66
    nop

    .line 364
    :try_start_67
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6b

    .line 367
    goto :goto_6f

    .line 365
    :catch_6b
    move-exception v8

    .line 366
    .local v8, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    .end local v8    # "e":Ljava/io/IOException;
    :goto_6f
    if-eqz v6, :cond_a8

    .line 371
    :try_start_71
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    .line 374
    :goto_74
    goto :goto_a8

    .line 372
    :catch_75
    move-exception v8

    .line 373
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .end local v8    # "e":Ljava/io/IOException;
    goto :goto_74

    .line 362
    :catchall_7a
    move-exception v8

    goto :goto_a9

    .line 359
    :catch_7c
    move-exception v8

    .line 360
    .restart local v8    # "e":Ljava/io/IOException;
    :try_start_7d
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "can\'t read or write /dev/freezer/frozen/freezer.state"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_97
    .catchall {:try_start_7d .. :try_end_97} :catchall_7a

    .line 362
    nop

    .end local v8    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_a2

    .line 364
    :try_start_9a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9d
    .catch Ljava/io/IOException; {:try_start_9a .. :try_end_9d} :catch_9e

    .line 367
    goto :goto_a2

    .line 365
    :catch_9e
    move-exception v8

    .line 366
    .restart local v8    # "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    .end local v8    # "e":Ljava/io/IOException;
    :cond_a2
    :goto_a2
    if-eqz v6, :cond_a8

    .line 371
    :try_start_a4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_75

    goto :goto_74

    .line 377
    :cond_a8
    :goto_a8
    return-void

    .line 362
    :goto_a9
    if-eqz v0, :cond_b3

    .line 364
    :try_start_ab
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_ae
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_af

    .line 367
    goto :goto_b3

    .line 365
    :catch_af
    move-exception v9

    .line 366
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 369
    .end local v9    # "e":Ljava/io/IOException;
    :cond_b3
    :goto_b3
    if-eqz v6, :cond_bd

    .line 371
    :try_start_b5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_b8
    .catch Ljava/io/IOException; {:try_start_b5 .. :try_end_b8} :catch_b9

    .line 374
    goto :goto_bd

    .line 372
    :catch_b9
    move-exception v9

    .line 373
    .restart local v9    # "e":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    .line 376
    .end local v9    # "e":Ljava/io/IOException;
    :cond_bd
    :goto_bd
    throw v8

    .line 347
    :cond_be
    :goto_be
    sget-object v8, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "recoverFreezerStateIfTHAWED error: file doesn\'t exist or can\'t write"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    return-void
.end method

.method public releaseFreezedAppPid(I)V
    .registers 10
    .param p1, "pid"    # I

    .line 1106
    const/4 v0, 0x0

    .line 1107
    .local v0, "isContains":Z
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1108
    .local v1, "pidInteger":Ljava/lang/Integer;
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    monitor-enter v2

    .line 1109
    :try_start_8
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1110
    const/4 v0, 0x1

    .line 1111
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mFrozenPidList:Ljava/util/HashSet;

    invoke-virtual {v3, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1113
    :cond_16
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_7f

    .line 1115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1117
    .local v2, "token":J
    :try_start_1b
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v4, :cond_2b

    .line 1118
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    const-string v5, "CustomFrequencyManagerService"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/CustomFrequencyManager;

    iput-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 1120
    :cond_2b
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v4, :cond_75

    if-eqz v0, :cond_75

    .line 1121
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x0

    const-string/jumbo v6, "freeze"

    invoke-virtual {v4, p1, v5, v6}, Landroid/os/CustomFrequencyManager;->requestFreezeSlowdown(IZLjava/lang/String;)I

    move-result v4

    .line 1122
    .local v4, "isSucceed":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_5a

    .line 1123
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UFZ error : pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (when app died or watchdog half)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_75

    .line 1125
    :cond_5a
    sget-object v5, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UFZ : release pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " (when app died or watchdog half)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catchall {:try_start_1b .. :try_end_75} :catchall_7a

    .line 1128
    .end local v4    # "isSucceed":I
    :cond_75
    :goto_75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    nop

    .line 1130
    return-void

    .line 1128
    :catchall_7a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1129
    throw v4

    .line 1113
    .end local v2    # "token":J
    :catchall_7f
    move-exception v3

    :try_start_80
    monitor-exit v2
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    throw v3
.end method

.method public releaseRestriction(I)V
    .registers 5
    .param p1, "uid"    # I

    .line 3382
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    monitor-enter v0

    .line 3383
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 3384
    monitor-exit v0

    return-void

    .line 3385
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mSetUidsNeedToReleaseRestriction:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 3386
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_47

    .line 3387
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_36

    .line 3388
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release restriction for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    :cond_36
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/FreecessHandler;->sendLRsMsg(ZI)V

    .line 3390
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/FreecessHandler;->sendPendingAlarmMsg(Ljava/lang/String;I)V

    .line 3391
    return-void

    .line 3386
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method public removeBgTriggerMsg()V
    .registers 3

    .line 2975
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_c

    .line 2976
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "removeBgTriggerMsg...."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2978
    :cond_c
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 2979
    return-void
.end method

.method public reportAsyncBinder(IIILjava/lang/String;I)V
    .registers 10
    .param p1, "callerPid"    # I
    .param p2, "uid"    # I
    .param p3, "code"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "mismatch_flag"    # I

    .line 1700
    if-eqz p4, :cond_8d

    .line 1701
    const-string/jumbo v0, "free_buffer_full"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, -0x1

    if-eq p3, v0, :cond_17

    :cond_e
    const-string/jumbo v0, "mismatch"

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 1702
    :cond_17
    const-string v0, "Binder(1)-"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/FreecessController;->killPkgForCalmMode(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1703
    return-void

    .line 1705
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder(1)-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1706
    return-void

    .line 1707
    :cond_35
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder(1)-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1709
    return-void

    .line 1710
    :cond_57
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v2, v2, p4}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1711
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1712
    .local v0, "uidInteger":Ljava/lang/Integer;
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1713
    :try_start_6a
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFGServiceList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_88

    .line 1714
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binder(1)-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(ILjava/lang/String;)V

    .line 1715
    monitor-exit v1

    return-void

    .line 1717
    :cond_88
    monitor-exit v1

    goto :goto_8d

    :catchall_8a
    move-exception v2

    monitor-exit v1
    :try_end_8c
    .catchall {:try_start_6a .. :try_end_8c} :catchall_8a

    throw v2

    .line 1720
    .end local v0    # "uidInteger":Ljava/lang/Integer;
    :cond_8d
    :goto_8d
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_c6

    .line 1721
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABI"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1723
    :cond_c6
    return-void
.end method

.method public sendPendingAlarm(Ljava/lang/String;I)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 3363
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    if-nez v0, :cond_e

    .line 3364
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 3367
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->unblockMARsRestrictedAlarmsForUidPackage(Ljava/lang/String;I)V

    .line 3368
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "send pending alarm to packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3369
    return-void
.end method

.method public sendPendingBroadcast(Ljava/lang/String;I)V
    .registers 16
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 3817
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3818
    .local v0, "dispatchMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/am/BroadcastRecord;Ljava/util/ArrayList;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3819
    :try_start_8
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v2, :cond_2b

    .line 3820
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendPendingBroadcast to packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3822
    :cond_2b
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_2c
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_d8

    .line 3823
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3824
    .local v3, "action":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3825
    .local v4, "brList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3827
    .local v5, "list":Ljava/util/ArrayList;
    if-eqz v4, :cond_d4

    if-nez v5, :cond_52

    .line 3828
    goto/16 :goto_d4

    .line 3829
    :cond_52
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_53
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c4

    .line 3830
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/BroadcastRecord;

    .line 3833
    .local v7, "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3834
    .local v8, "tempReceivers":Ljava/util/ArrayList;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_65
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_b3

    .line 3835
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 3836
    .local v10, "obj":Ljava/lang/Object;
    instance-of v11, v10, Lcom/android/server/am/BroadcastFilter;

    if-eqz v11, :cond_86

    .line 3837
    move-object v11, v10

    check-cast v11, Lcom/android/server/am/BroadcastFilter;

    .line 3838
    .local v11, "bf":Lcom/android/server/am/BroadcastFilter;
    iget-object v12, v11, Lcom/android/server/am/BroadcastFilter;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_af

    iget v12, v11, Lcom/android/server/am/BroadcastFilter;->owningUserId:I

    if-ne p2, v12, :cond_af

    .line 3839
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_af

    .line 3841
    .end local v11    # "bf":Lcom/android/server/am/BroadcastFilter;
    :cond_86
    instance-of v11, v10, Landroid/content/pm/ResolveInfo;

    if-eqz v11, :cond_af

    .line 3842
    move-object v11, v10

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 3843
    .local v11, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_b0

    iget-boolean v12, v7, Lcom/android/server/am/BroadcastRecord;->ordered:Z

    if-eqz v12, :cond_b0

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3844
    invoke-virtual {p1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b0

    iget-object v12, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-ne p2, v12, :cond_b0

    .line 3845
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b0

    .line 3841
    .end local v11    # "info":Landroid/content/pm/ResolveInfo;
    :cond_af
    :goto_af
    nop

    .line 3834
    .end local v10    # "obj":Ljava/lang/Object;
    :cond_b0
    :goto_b0
    add-int/lit8 v9, v9, 0x1

    goto :goto_65

    .line 3850
    .end local v9    # "i":I
    :cond_b3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_ba

    .line 3851
    goto :goto_c4

    .line 3854
    :cond_ba
    invoke-virtual {v0, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3858
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 3829
    nop

    .end local v7    # "broadcastRecord":Lcom/android/server/am/BroadcastRecord;
    .end local v8    # "tempReceivers":Ljava/util/ArrayList;
    add-int/lit8 v6, v6, 0x1

    goto :goto_53

    .line 3862
    .end local v6    # "j":I
    :cond_c4
    :goto_c4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_d4

    .line 3863
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mReceivers:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3864
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mBroadcastRecords:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3822
    .end local v3    # "action":Ljava/lang/String;
    .end local v4    # "brList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/BroadcastRecord;>;"
    .end local v5    # "list":Ljava/util/ArrayList;
    :cond_d4
    :goto_d4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2c

    .line 3867
    .end local v2    # "k":I
    :cond_d8
    monitor-exit v1
    :try_end_d9
    .catchall {:try_start_8 .. :try_end_d9} :catchall_fd

    .line 3869
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3870
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/BroadcastRecord;>;"
    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 3871
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/BroadcastRecord;

    .line 3872
    .local v2, "br":Lcom/android/server/am/BroadcastRecord;
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3873
    .local v3, "receivers":Ljava/util/ArrayList;
    if-eqz v2, :cond_f8

    .line 3874
    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/FreecessController;->dispatchPendingBroadcast(Lcom/android/server/am/BroadcastRecord;Ljava/util/ArrayList;)V

    .line 3877
    :cond_f8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 3878
    .end local v2    # "br":Lcom/android/server/am/BroadcastRecord;
    .end local v3    # "receivers":Ljava/util/ArrayList;
    goto :goto_e1

    .line 3880
    :cond_fc
    return-void

    .line 3867
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/am/BroadcastRecord;>;"
    :catchall_fd
    move-exception v2

    :try_start_fe
    monitor-exit v1
    :try_end_ff
    .catchall {:try_start_fe .. :try_end_ff} :catchall_fd

    throw v2
.end method

.method public setCarModeOnState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 432
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mCarModeOn:Z

    .line 433
    return-void
.end method

.method public setChargingMode(Z)V
    .registers 5
    .param p1, "charging"    # Z

    .line 2957
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsCharging:Z

    .line 2958
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v0, :cond_1c

    .line 2959
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Charging Mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    :cond_1c
    return-void
.end method

.method public setEmergencyModeOnState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 440
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mEmergencyModeOn:Z

    .line 441
    return-void
.end method

.method public setFreeceeEnhanceEnabled(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 448
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_ENHANCEMENT:Z

    .line 449
    return-void
.end method

.method public setFreecessEnableForDump(Z)V
    .registers 3
    .param p1, "onoff"    # Z

    .line 559
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    if-eqz v0, :cond_5

    .line 560
    return-void

    .line 562
    :cond_5
    const/4 v0, 0x1

    if-nez p1, :cond_a

    .line 563
    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 565
    :cond_a
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    .line 566
    return-void
.end method

.method setFreecessEnableForSmartSwitch(Z)V
    .registers 3
    .param p1, "onoff"    # Z

    .line 569
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    if-eqz v0, :cond_5

    .line 570
    return-void

    .line 572
    :cond_5
    if-nez p1, :cond_a

    .line 573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 575
    :cond_a
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreecessController;->setFreecessEnableForSpecificReason(ZI)V

    .line 576
    return-void
.end method

.method setFreecessEnableForSpecificReason(ZI)V
    .registers 7
    .param p1, "onoff"    # Z
    .param p2, "ufzType"    # I

    .line 579
    invoke-virtual {p0, p2}, Lcom/android/server/am/FreecessController;->convertUnfreezeTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    .local v0, "reason":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_12

    const-string v3, "ON"

    goto :goto_14

    :cond_12
    const-string v3, "OFF"

    :goto_14
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FRZ"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    if-eqz p1, :cond_33

    .line 584
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setOLAFEnabled(Z)V

    .line 589
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    goto :goto_55

    .line 591
    :cond_33
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/FreecessHandler;->sendSetFreecessEnableDelayedMsg(I)V

    .line 594
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 595
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 598
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessHandler;->removeMessages(I)V

    .line 599
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setOLAFEnabled(Z)V

    .line 603
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 607
    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 609
    :goto_55
    return-void
.end method

.method public setFreecessEnabled(Z)V
    .registers 3
    .param p1, "onoff"    # Z

    .line 391
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessEnable:Z

    .line 392
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 394
    if-nez p1, :cond_b

    .line 395
    const-string v0, "DisableFC"

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 397
    :cond_b
    return-void
.end method

.method public setFreecessSkipTimeEnabled(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 424
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsFreecessSkipTimeEnabled:Z

    .line 425
    return-void
.end method

.method public setIsDoingGC(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "isDoingGC"    # Z

    .line 639
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 640
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 641
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v1, :cond_18

    .line 642
    if-eqz p2, :cond_12

    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    goto :goto_18

    .line 643
    :cond_12
    iget v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v1, Lcom/android/server/am/FreecessPkgStatus;->isDoingGC:I

    .line 645
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_18
    :goto_18
    monitor-exit v0

    .line 646
    return-void

    .line 645
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setIsDumpstateWorking(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 616
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsDumpstateWorking:Z

    .line 617
    return-void
.end method

.method public setIsSmartSwitchWorking(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 624
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsSmartSwitchWorking:Z

    .line 625
    return-void
.end method

.method setLRs(ZI)V
    .registers 7
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 2915
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "apply [LRs:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] to uid["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2917
    :try_start_23
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_34

    .line 2918
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 2920
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v0, :cond_3d

    .line 2921
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0, p1, p2}, Landroid/location/ILocationManager;->onFreezeStateChanged(ZI)V
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_3d} :catch_3e

    .line 2925
    :cond_3d
    goto :goto_65

    .line 2923
    :catch_3e
    move-exception v0

    .line 2924
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred while setLRs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2926
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_65
    if-eqz p1, :cond_6c

    .line 2927
    const-string v0, "LRs"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/FreecessController;->addUidToReleaseRestrictionList(ILjava/lang/String;)V

    .line 2928
    :cond_6c
    return-void
.end method

.method public setLRsEnabled(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 535
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->FREECESS_LRS_ENABLED:Z

    .line 536
    return-void
.end method

.method public setOLAFBlockList(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 468
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 469
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 470
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 472
    :cond_10
    return-void
.end method

.method public setOLAFDebugEnabled(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 464
    sput-boolean p1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 465
    return-void
.end method

.method public setOLAFEnabled(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 460
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsOLAFEnabled:Z

    .line 461
    return-void
.end method

.method public setPendingBlocklistForGPS(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 496
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 497
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 498
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingBlocklistForGPS:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_10
    return-void
.end method

.method public setPendingIntentList(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    if-eqz v0, :cond_10

    .line 490
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 491
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mPendingIntents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    :cond_10
    return-void
.end method

.method public declared-synchronized setProcessAllowList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "matchType"    # Ljava/lang/String;

    monitor-enter p0

    .line 503
    if-eqz p1, :cond_82

    if-nez p2, :cond_7

    goto/16 :goto_82

    .line 505
    :cond_7
    :try_start_7
    const-string v0, "equals"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 506
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 507
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_7f

    if-eqz v0, :cond_1d

    .line 508
    monitor-exit p0

    return-void

    .line 509
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEquals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 511
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_23
    const-string v0, "contains"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 512
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 513
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_35
    .catchall {:try_start_1d .. :try_end_35} :catchall_7f

    if-eqz v0, :cond_39

    .line 514
    monitor-exit p0

    return-void

    .line 515
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_39
    :try_start_39
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListContains:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 517
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_3f
    const-string/jumbo v0, "startsWith"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    .line 518
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 519
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_52
    .catchall {:try_start_39 .. :try_end_52} :catchall_7f

    if-eqz v0, :cond_56

    .line 520
    monitor-exit p0

    return-void

    .line 521
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_56
    :try_start_56
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListStartsWith:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_77

    .line 523
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_5c
    const-string v0, "endsWith"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 524
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    if-eqz v0, :cond_77

    .line 525
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6e
    .catchall {:try_start_56 .. :try_end_6e} :catchall_7f

    if-eqz v0, :cond_72

    .line 526
    monitor-exit p0

    return-void

    .line 527
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_72
    :try_start_72
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mProcessAllowListEndsWith:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 530
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    :cond_77
    :goto_77
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/FreecessController;->lastUpdateTimeProcessAllowList:J
    :try_end_7d
    .catchall {:try_start_72 .. :try_end_7d} :catchall_7f

    .line 531
    monitor-exit p0

    return-void

    .line 502
    .end local p1    # "processName":Ljava/lang/String;
    .end local p2    # "matchType":Ljava/lang/String;
    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1

    .line 504
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "processName":Ljava/lang/String;
    .restart local p2    # "matchType":Ljava/lang/String;
    :cond_82
    :goto_82
    monitor-exit p0

    return-void
.end method

.method public setScreenOnFreecessEnabled(Z)V
    .registers 3
    .param p1, "onoff"    # Z

    .line 2935
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    if-eq v0, p1, :cond_a

    .line 2936
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 2937
    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 2940
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/FreecessController;->mEnableOLAFwithoutBGFreeze:Z

    if-eqz v0, :cond_14

    .line 2941
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mIsScreenOnFreecessEnabled:Z

    .line 2942
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    .line 2944
    :cond_14
    return-void
.end method

.method public setScreenOnState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    .line 2971
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mScreenOn:Z

    .line 2972
    return-void
.end method

.method public setUidIdleCheckMode(Z)V
    .registers 5
    .param p1, "onoff"    # Z

    .line 2951
    iput-boolean p1, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    .line 2952
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v0, :cond_1e

    .line 2953
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FRECESS DEBUGGING MODE CHANGED ! Uid Idle Checking will be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_1e
    return-void
.end method

.method setWakeLockEnableDisable(Ljava/lang/String;IZZ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "disable"    # Z
    .param p4, "isLcdOnTrigger"    # Z

    .line 3323
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-nez v0, :cond_e

    .line 3324
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 3327
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v0, p2, p3}, Landroid/os/PowerManagerInternal;->setWakeLockEnableDisable(IZ)I

    move-result v0

    .line 3329
    .local v0, "num":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_45

    .line 3330
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_23

    const-string v3, "disable"

    goto :goto_25

    :cond_23
    const-string v3, "enable"

    :goto_25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " frozen app ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") wakelock."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c

    .line 3331
    :cond_45
    const/4 v1, 0x2

    if-ne v0, v1, :cond_7c

    .line 3332
    if-eqz p4, :cond_59

    .line 3333
    iget-boolean v1, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v1, :cond_4f

    return-void

    .line 3335
    :cond_4f
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string v2, "Wakelock"

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_7c

    .line 3336
    :cond_59
    invoke-virtual {p0}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_7c

    .line 3337
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3338
    :try_start_62
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 3340
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string v3, "Wakelock"

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 3342
    :cond_77
    monitor-exit v1

    goto :goto_7c

    :catchall_79
    move-exception v2

    monitor-exit v1
    :try_end_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_79

    throw v2

    .line 3345
    :cond_7c
    :goto_7c
    return-void
.end method

.method triggerCalmMode(Ljava/util/ArrayList;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2568
    .local p1, "allowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    .line 2569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2570
    .local v1, "actionUids":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 2572
    if-eqz p1, :cond_17

    .line 2573
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getCalmModeAllowList(Ljava/util/ArrayList;)Lcom/android/server/am/FreecessPkgMap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreecessController;->mCalmModeAllowListFromGameUI:Lcom/android/server/am/FreecessPkgMap;

    .line 2576
    :cond_17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 2577
    .local v2, "before":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2579
    .local v4, "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_2e

    .line 2580
    iget-object v5, p0, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v4

    .line 2583
    :cond_2e
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2584
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->setUsingAudioList(Z)V

    .line 2586
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 2587
    :try_start_3f
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v6

    .line 2588
    .local v6, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_46
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_af

    .line 2589
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2592
    .local v8, "ps":Lcom/android/server/am/FreecessPkgStatus;
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_7d

    iget-object v9, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7d

    .line 2593
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_ac

    .line 2594
    sget-object v9, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has window surface, skip to freeze CalmMode"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    .line 2599
    :cond_7d
    const-string v9, "CalmMode First trigger"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/am/FreecessController;->freezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z

    move-result v9

    .line 2600
    .local v9, "isFreezed":Z
    if-eqz v9, :cond_a0

    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v10, :cond_a0

    .line 2601
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ac

    .line 2602
    :cond_a0
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v10, :cond_ac

    invoke-virtual {p0, v8}, Lcom/android/server/am/FreecessController;->isExceptionListAppForCalmMode(Lcom/android/server/am/FreecessPkgStatus;)Z

    move-result v10

    if-nez v10, :cond_ac

    .line 2603
    iput-boolean v0, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2588
    .end local v8    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    .end local v9    # "isFreezed":Z
    :cond_ac
    :goto_ac
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 2606
    .end local v6    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v7    # "i":I
    :cond_af
    monitor-exit v5
    :try_end_b0
    .catchall {:try_start_3f .. :try_end_b0} :catchall_e7

    .line 2607
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->setUsingAudioList(Z)V

    .line 2609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ["

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2611
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "CalmMode "

    invoke-virtual {v0, v6, v5}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    return-void

    .line 2606
    :catchall_e7
    move-exception v0

    :try_start_e8
    monitor-exit v5
    :try_end_e9
    .catchall {:try_start_e8 .. :try_end_e9} :catchall_e7

    throw v0
.end method

.method triggerLcdOnFreeze(ILjava/lang/String;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3146
    const/4 v0, 0x0

    .line 3147
    .local v0, "isUidIdle":Z
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3148
    :try_start_4
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mUidIdleCheck:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    goto :goto_18

    :cond_16
    const/4 v2, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    move v2, v3

    :goto_19
    move v0, v2

    .line 3149
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_45

    .line 3151
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 3152
    :try_start_1e
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/FreecessPkgMap;->getByUid(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/FreecessPkgStatus;

    .line 3153
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-nez v1, :cond_2a

    monitor-exit v2

    return-void

    .line 3155
    :cond_2a
    if-eqz v0, :cond_39

    .line 3156
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    if-ne v4, v3, :cond_40

    .line 3157
    iget v4, v1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    const-string/jumbo v5, "uidIdle"

    invoke-direct {p0, v4, v3, v5, v1}, Lcom/android/server/am/FreecessController;->stepLcdOnFreezedState(IILjava/lang/String;Lcom/android/server/am/FreecessPkgStatus;)V

    goto :goto_40

    .line 3159
    :cond_39
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/FreecessHandler;->sendUidIdleCheckMsg(ILjava/lang/String;)V

    .line 3161
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_40
    :goto_40
    monitor-exit v2

    .line 3162
    return-void

    .line 3161
    :catchall_42
    move-exception v1

    monitor-exit v2
    :try_end_44
    .catchall {:try_start_1e .. :try_end_44} :catchall_42

    throw v1

    .line 3149
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    throw v2
.end method

.method triggerOLAF(Ljava/lang/String;I)V
    .registers 26
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 2253
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 2255
    .local v4, "actionUids":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 2258
    .local v5, "before":J
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessHandler;->removeBgTriggerMsg()V

    .line 2260
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const-string v7, "activity"

    invoke-virtual {v1, v2, v0, v7}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2262
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v7, 0x40

    if-eqz v0, :cond_2b

    .line 2263
    const-string v0, "Trigger OLAF"

    invoke-static {v7, v8, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2265
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2267
    .local v0, "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v9, :cond_40

    .line 2268
    iget-object v9, v1, Lcom/android/server/am/FreecessController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getVisibleWinSurfacePkgList()Ljava/util/ArrayList;

    move-result-object v0

    move-object v9, v0

    goto :goto_41

    .line 2267
    :cond_40
    move-object v9, v0

    .line 2271
    .end local v0    # "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v9, "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_41
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2275
    sget-boolean v0, Lcom/android/server/am/FreecessController;->IS_PILOT_PROJECT:Z

    if-eqz v0, :cond_265

    .line 2276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v0

    .line 2277
    .local v12, "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    sget-object v13, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v13

    .line 2279
    :try_start_55
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v0

    .line 2280
    .local v0, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_5c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v15
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_25e

    if-ge v14, v15, :cond_74

    .line 2281
    :try_start_62
    invoke-virtual {v0, v14}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/FreecessPkgStatus;

    .line 2282
    .local v15, "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    invoke-virtual {v12, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6b
    .catchall {:try_start_62 .. :try_end_6b} :catchall_6f

    .line 2280
    nop

    .end local v15    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    add-int/lit8 v14, v14, 0x1

    goto :goto_5c

    .line 2284
    .end local v0    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v14    # "i":I
    :catchall_6f
    move-exception v0

    move-object/from16 v16, v12

    goto/16 :goto_261

    :cond_74
    :try_start_74
    monitor-exit v13
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_25e

    .line 2285
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 2286
    .local v13, "lastSleepTime":J
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_7d
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/am/FreecessPkgStatus;

    .line 2287
    .local v7, "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    sget-object v8, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v8

    .line 2288
    :try_start_8d
    iget-boolean v0, v7, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z
    :try_end_8f
    .catchall {:try_start_8d .. :try_end_8f} :catchall_253

    if-eqz v0, :cond_9d

    .line 2289
    :try_start_91
    monitor-exit v8

    move-object/from16 v16, v12

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2355
    :catchall_98
    move-exception v0

    move-object/from16 v16, v12

    goto/16 :goto_256

    .line 2291
    :cond_9d
    if-eqz v2, :cond_b2

    iget-object v0, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    iget v0, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v0, v3, :cond_b2

    .line 2292
    monitor-exit v8
    :try_end_ac
    .catchall {:try_start_91 .. :try_end_ac} :catchall_98

    move-object/from16 v16, v12

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2295
    :cond_b2
    :try_start_b2
    iget-object v0, v7, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;
    :try_end_b4
    .catchall {:try_start_b2 .. :try_end_b4} :catchall_253

    if-eqz v0, :cond_da

    .line 2296
    :try_start_b6
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_d3

    .line 2297
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip sharedUid app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    :cond_d3
    monitor-exit v8
    :try_end_d4
    .catchall {:try_start_b6 .. :try_end_d4} :catchall_98

    move-object/from16 v16, v12

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2303
    :cond_da
    :try_start_da
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v10, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v11, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I
    :try_end_e2
    .catchall {:try_start_da .. :try_end_e2} :catchall_253

    move-object/from16 v16, v12

    const/4 v12, 0x4

    .end local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .local v16, "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :try_start_e5
    invoke-virtual {v0, v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_10d

    .line 2304
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_108

    .line 2305
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip isInPolicyExceptionList app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_108
    monitor-exit v8

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2311
    :cond_10d
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_14b

    .line 2312
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14b

    .line 2313
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_146

    .line 2314
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "skip to freeze prev app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", uid : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2316
    :cond_146
    monitor-exit v8

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2320
    :cond_14b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_17a

    iget-object v0, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 2321
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_175

    .line 2322
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " has window surface, skip to freeze"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    :cond_175
    monitor-exit v8

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2327
    :cond_17a
    iget-boolean v0, v7, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v0, :cond_19f

    .line 2328
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_19a

    .line 2329
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " olaf allowlist, skip to freeze"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2331
    :cond_19a
    monitor-exit v8

    move-object/from16 v18, v15

    goto/16 :goto_24b

    .line 2334
    :cond_19f
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v10, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22c

    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1bb

    move-object/from16 v18, v15

    goto/16 :goto_22e

    .line 2342
    :cond_1bb
    const/4 v10, 0x0

    .line 2343
    .local v10, "isTop":Z
    iget-object v11, v1, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    monitor-enter v11
    :try_end_1bf
    .catchall {:try_start_e5 .. :try_end_1bf} :catchall_258

    .line 2344
    :try_start_1bf
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    iget v12, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1cb
    .catchall {:try_start_1bf .. :try_end_1cb} :catchall_229

    move v10, v0

    .line 2345
    :try_start_1cc
    monitor-exit v11
    :try_end_1cd
    .catchall {:try_start_1cc .. :try_end_1cd} :catchall_225

    .line 2346
    if-eqz v10, :cond_1eb

    .line 2347
    :try_start_1cf
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " is top app, skip to freeze"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    monitor-exit v8

    move-object/from16 v18, v15

    goto :goto_24b

    .line 2351
    :cond_1eb
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v7, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    move/from16 v17, v10

    .end local v10    # "isTop":Z
    .local v17, "isTop":Z
    iget v10, v7, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move-object/from16 v18, v15

    const/16 v15, 0xa

    invoke-virtual {v0, v15, v11, v12, v10}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_204

    .line 2353
    invoke-direct {v1, v7, v4}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 2355
    .end local v17    # "isTop":Z
    :cond_204
    monitor-exit v8
    :try_end_205
    .catchall {:try_start_1cf .. :try_end_205} :catchall_258

    .line 2356
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2357
    .local v10, "now":J
    sub-long v19, v10, v13

    const-wide/16 v21, 0x32

    cmp-long v0, v19, v21

    if-ltz v0, :cond_21d

    .line 2360
    const-wide/16 v19, 0xa

    :try_start_213
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_216
    .catch Ljava/lang/InterruptedException; {:try_start_213 .. :try_end_216} :catch_217

    .line 2362
    goto :goto_218

    .line 2361
    :catch_217
    move-exception v0

    .line 2363
    :goto_218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    move-wide v13, v12

    .line 2365
    .end local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v10    # "now":J
    :cond_21d
    move-object/from16 v12, v16

    move-object/from16 v15, v18

    const-wide/16 v7, 0x40

    goto/16 :goto_7d

    .line 2345
    .restart local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .local v10, "isTop":Z
    :catchall_225
    move-exception v0

    move/from16 v17, v10

    .end local v10    # "isTop":Z
    .restart local v17    # "isTop":Z
    goto :goto_22a

    .end local v17    # "isTop":Z
    .restart local v10    # "isTop":Z
    :catchall_229
    move-exception v0

    :goto_22a
    :try_start_22a
    monitor-exit v11
    :try_end_22b
    .catchall {:try_start_22a .. :try_end_22b} :catchall_229

    .end local v4    # "actionUids":Ljava/lang/StringBuilder;
    .end local v5    # "before":J
    .end local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v9    # "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v13    # "lastSleepTime":J
    .end local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "uid":I
    :try_start_22b
    throw v0

    .line 2334
    .end local v10    # "isTop":Z
    .restart local v4    # "actionUids":Ljava/lang/StringBuilder;
    .restart local v5    # "before":J
    .restart local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v9    # "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v13    # "lastSleepTime":J
    .restart local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "uid":I
    :cond_22c
    move-object/from16 v18, v15

    .line 2335
    :goto_22e
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_24a

    .line 2336
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v7, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    :cond_24a
    monitor-exit v8

    .line 2286
    .end local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :goto_24b
    move-object/from16 v12, v16

    move-object/from16 v15, v18

    const-wide/16 v7, 0x40

    .end local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    goto/16 :goto_7d

    .line 2355
    .end local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .restart local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :catchall_253
    move-exception v0

    move-object/from16 v16, v12

    .end local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :goto_256
    monitor-exit v8
    :try_end_257
    .catchall {:try_start_22b .. :try_end_257} :catchall_258

    throw v0

    :catchall_258
    move-exception v0

    goto :goto_256

    .line 2286
    .end local v7    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    .end local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :cond_25a
    move-object/from16 v16, v12

    .line 2366
    .end local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v13    # "lastSleepTime":J
    goto/16 :goto_43e

    .line 2284
    .restart local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :catchall_25e
    move-exception v0

    move-object/from16 v16, v12

    .end local v12    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :goto_261
    :try_start_261
    monitor-exit v13
    :try_end_262
    .catchall {:try_start_261 .. :try_end_262} :catchall_263

    throw v0

    :catchall_263
    move-exception v0

    goto :goto_261

    .line 2367
    .end local v16    # "listFreecessPkgStatus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    :cond_265
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 2369
    :try_start_268
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mFreecessManagedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v0

    move-object v8, v0

    .line 2370
    .local v8, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v0, 0x0

    move v10, v0

    .local v10, "i":I
    :goto_271
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v10, v0, :cond_43b

    .line 2371
    invoke-virtual {v8, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/FreecessPkgStatus;

    move-object v11, v0

    .line 2372
    .local v11, "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    iget-boolean v0, v11, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    if-eqz v0, :cond_288

    .line 2373
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2375
    :cond_288
    if-eqz v2, :cond_29c

    iget-object v0, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29c

    iget v0, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    if-ne v0, v3, :cond_29c

    .line 2376
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2379
    :cond_29c
    iget-object v0, v11, Lcom/android/server/am/FreecessPkgStatus;->sharedUidName:Ljava/lang/String;

    if-eqz v0, :cond_2c9

    .line 2380
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_2c3

    .line 2381
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip sharedUid app:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2380
    :cond_2c3
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2387
    :cond_2c9
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    const/4 v14, 0x4

    invoke-virtual {v0, v12, v13, v14}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_301

    .line 2388
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_2fb

    .line 2389
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip isInPolicyExceptionList app:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2388
    :cond_2fb
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2395
    :cond_301
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    if-eqz v0, :cond_346

    .line 2396
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mLatestUsedPackagesList:Ljava/util/ArrayList;

    iget v12, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    .line 2397
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_340

    .line 2398
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "skip to freeze prev app:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", uid : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2397
    :cond_340
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2404
    :cond_346
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_37c

    iget-object v0, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37c

    .line 2405
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_376

    .line 2406
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " has window surface, skip to freeze"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2405
    :cond_376
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2411
    :cond_37c
    iget-boolean v0, v11, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    if-eqz v0, :cond_3a8

    .line 2412
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_3a2

    .line 2413
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " olaf allowlist, skip to freeze"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2412
    :cond_3a2
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto/16 :goto_435

    .line 2418
    :cond_3a8
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget-object v12, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_415

    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mOLAFAllowListForDebug:Ljava/util/ArrayList;

    iget v12, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c5

    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto :goto_419

    .line 2426
    :cond_3c5
    const/4 v12, 0x0

    .line 2427
    .local v12, "isTop":Z
    iget-object v13, v1, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_3c9
    .catchall {:try_start_268 .. :try_end_3c9} :catchall_4d0

    .line 2428
    :try_start_3c9
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mTopUidList:Ljava/util/ArrayList;

    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    move v12, v0

    .line 2429
    monitor-exit v13
    :try_end_3d7
    .catchall {:try_start_3c9 .. :try_end_3d7} :catchall_40e

    .line 2430
    if-eqz v12, :cond_3f6

    .line 2431
    :try_start_3d9
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " is top app, skip to freeze"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    move-object/from16 v16, v8

    const/16 v8, 0xa

    goto :goto_435

    .line 2435
    :cond_3f6
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v15, v11, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget v14, v11, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    move-object/from16 v16, v8

    const/16 v8, 0xa

    .end local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .local v16, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    invoke-virtual {v0, v8, v13, v15, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_435

    .line 2437
    invoke-direct {v1, v11, v4}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V
    :try_end_40d
    .catchall {:try_start_3d9 .. :try_end_40d} :catchall_4d0

    goto :goto_435

    .line 2429
    .end local v16    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :catchall_40e
    move-exception v0

    move-object/from16 v16, v8

    .end local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v16    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :goto_411
    :try_start_411
    monitor-exit v13
    :try_end_412
    .catchall {:try_start_411 .. :try_end_412} :catchall_413

    .end local v4    # "actionUids":Ljava/lang/StringBuilder;
    .end local v5    # "before":J
    .end local v9    # "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Lcom/android/server/am/FreecessController;
    .end local p1    # "pkgName":Ljava/lang/String;
    .end local p2    # "uid":I
    :try_start_412
    throw v0

    .restart local v4    # "actionUids":Ljava/lang/StringBuilder;
    .restart local v5    # "before":J
    .restart local v9    # "visibleWinSurfacePkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Lcom/android/server/am/FreecessController;
    .restart local p1    # "pkgName":Ljava/lang/String;
    .restart local p2    # "uid":I
    :catchall_413
    move-exception v0

    goto :goto_411

    .line 2418
    .end local v12    # "isTop":Z
    .end local v16    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :cond_415
    move-object/from16 v16, v8

    const/16 v8, 0xa

    .line 2419
    .end local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v16    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :goto_419
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_435

    .line 2420
    sget-object v0, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v11, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " olaf debug allowlist, skip to freeze"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    .end local v11    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    :cond_435
    :goto_435
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v8, v16

    goto/16 :goto_271

    .end local v16    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .restart local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    :cond_43b
    move-object/from16 v16, v8

    .line 2440
    .end local v8    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v10    # "i":I
    monitor-exit v7
    :try_end_43e
    .catchall {:try_start_412 .. :try_end_43e} :catchall_4d0

    .line 2443
    :goto_43e
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 2444
    .local v7, "userId":I
    iget-object v0, v1, Lcom/android/server/am/FreecessController;->mOLAFBlockList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_44a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_478

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 2446
    .local v8, "bl":Ljava/lang/String;
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45d

    .line 2447
    goto :goto_44a

    .line 2450
    :cond_45d
    sget-object v10, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v10

    .line 2453
    :try_start_460
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v11

    invoke-virtual {v11, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_473

    .line 2454
    invoke-direct {v1, v8, v7}, Lcom/android/server/am/FreecessController;->getPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v11

    .line 2455
    .restart local v11    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v11, :cond_473

    .line 2456
    invoke-direct {v1, v11, v4}, Lcom/android/server/am/FreecessController;->freezeOLAFPackage(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/StringBuilder;)V

    .line 2459
    .end local v11    # "targetPackageStatus":Lcom/android/server/am/FreecessPkgStatus;
    :cond_473
    monitor-exit v10

    .line 2460
    .end local v8    # "bl":Ljava/lang/String;
    goto :goto_44a

    .line 2459
    .restart local v8    # "bl":Ljava/lang/String;
    :catchall_475
    move-exception v0

    monitor-exit v10
    :try_end_477
    .catchall {:try_start_460 .. :try_end_477} :catchall_475

    throw v0

    .line 2462
    .end local v8    # "bl":Ljava/lang/String;
    :cond_478
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v0, :cond_481

    .line 2463
    const-wide/16 v10, 0x40

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    .line 2465
    :cond_481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 2467
    .local v10, "after":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2468
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "OLAF "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v8, v12}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2471
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    iget-object v8, v1, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v0, v12, v13}, Lcom/android/server/am/FreecessHandler;->sendOLAFTimeOutMsg(J)V

    .line 2472
    return-void

    .line 2440
    .end local v7    # "userId":I
    .end local v10    # "after":J
    :catchall_4d0
    move-exception v0

    :try_start_4d1
    monitor-exit v7
    :try_end_4d2
    .catchall {:try_start_4d1 .. :try_end_4d2} :catchall_4d0

    throw v0
.end method

.method public turnOnOffFreecessMonitor(Z)V
    .registers 5
    .param p1, "onoff"    # Z

    .line 381
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setFreecessEnabled(Z)V

    .line 383
    :try_start_3
    const-string/jumbo v0, "sys.config.freecess_monitor"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_d} :catch_e

    .line 386
    goto :goto_17

    .line 384
    :catch_e
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "turnOffFreecessMonitor failed.."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_17
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 388
    return-void
.end method

.method public unFreezeActivePackages(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 1970
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1971
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 1972
    .local v1, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_33

    .line 1973
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/FreecessPkgStatus;

    .line 1974
    .local v3, "ps":Lcom/android/server/am/FreecessPkgStatus;
    iget-boolean v4, v3, Lcom/android/server/am/FreecessPkgStatus;->isLcdOffFreezed:Z

    if-eqz v4, :cond_30

    iget-object v4, p0, Lcom/android/server/am/FreecessController;->mUidIdleList:Ljava/util/ArrayList;

    iget v5, v3, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_30

    .line 1975
    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 1972
    .end local v3    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 1978
    .end local v1    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v2    # "i":I
    :cond_33
    monitor-exit v0

    .line 1979
    return-void

    .line 1978
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw v1
.end method

.method unFreezeForCalmMode(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)Z
    .registers 7
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2711
    const/4 v0, 0x0

    .line 2712
    .local v0, "isUnfreezed":Z
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v0

    .line 2714
    if-eqz v0, :cond_a

    .line 2715
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    .line 2718
    :cond_a
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_38

    .line 2719
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CalmMode UFZ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2720
    :cond_38
    return v0
.end method

.method unFreezeForOLAF(Ljava/lang/String;)V
    .registers 15
    .param p1, "reason"    # Ljava/lang/String;

    .line 2822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2823
    .local v0, "actionUids":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2824
    .local v1, "tempMARsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2826
    .local v2, "tempNotMARsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/FreecessPkgStatus;>;"
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    const-wide/16 v4, 0x40

    if-eqz v3, :cond_30

    .line 2827
    sget-object v3, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OLAF unfreeze for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    const-string v3, "Unfreeze OLAF"

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2831
    :cond_30
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 2832
    :try_start_33
    iget-object v6, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v6

    .line 2834
    .local v6, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_3e
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    const/4 v9, 0x0

    if-ge v7, v8, :cond_cb

    .line 2835
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2838
    .local v8, "freezedPackage":Lcom/android/server/am/FreecessPkgStatus;
    iget-boolean v10, p0, Lcom/android/server/am/FreecessController;->mCalmModeEnabled:Z

    if-eqz v10, :cond_5b

    .line 2839
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isFreezedByCalm:Z

    if-eqz v10, :cond_5b

    .line 2841
    iput-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2842
    const/4 v9, 0x3

    iput v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2843
    iput v9, v8, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2844
    goto :goto_c7

    .line 2852
    :cond_5b
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    iget-object v11, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v12, v8, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_a0

    .line 2853
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v10, :cond_85

    .line 2855
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OLAF:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2857
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c7

    .line 2860
    :cond_85
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ":nMARsTG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v8, v10, v9}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v9

    .line 2862
    .local v9, "isUnfreezed":Z
    if-eqz v9, :cond_9f

    .line 2863
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2864
    .end local v9    # "isUnfreezed":Z
    :cond_9f
    goto :goto_c7

    .line 2866
    :cond_a0
    iget-boolean v10, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    if-eqz v10, :cond_ac

    .line 2868
    iget-object v10, v8, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    invoke-direct {p0, v8, v10}, Lcom/android/server/am/FreecessController;->unfreezePackageForPending(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V

    .line 2869
    iput-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isPendingUFZ:Z

    goto :goto_c4

    .line 2873
    :cond_ac
    iget-boolean v9, v8, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    if-eqz v9, :cond_c4

    .line 2874
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OLAF:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9, v0}, Lcom/android/server/am/FreecessController;->unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 2878
    :cond_c4
    :goto_c4
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2834
    .end local v8    # "freezedPackage":Lcom/android/server/am/FreecessPkgStatus;
    :goto_c7
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3e

    .line 2883
    .end local v7    # "i":I
    :cond_cb
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_cc
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_e6

    .line 2884
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/FreecessPkgStatus;

    .line 2885
    .local v8, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v8, :cond_e3

    .line 2886
    iget-object v10, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v11, v8, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v12, v8, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2883
    .end local v8    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_e3
    add-int/lit8 v7, v7, 0x1

    goto :goto_cc

    .line 2889
    .end local v6    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v7    # "i":I
    :cond_e6
    monitor-exit v3
    :try_end_e7
    .catchall {:try_start_33 .. :try_end_e7} :catchall_147

    .line 2891
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v3, :cond_ee

    .line 2892
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 2894
    :cond_ee
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OLAF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UFA"

    invoke-virtual {v3, v5, v4}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2897
    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mSkipTriggerLcdOnFreeze:Z

    if-nez v3, :cond_135

    iget-boolean v3, p0, Lcom/android/server/am/FreecessController;->mIsCharging:Z

    if-nez v3, :cond_135

    .line 2898
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_135

    .line 2899
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 2900
    .local v4, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v4, :cond_132

    .line 2901
    iget v5, v4, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v6, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/android/server/am/FreecessController;->triggerLcdOnFreeze(ILjava/lang/String;)V

    .line 2898
    .end local v4    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_132
    add-int/lit8 v3, v3, 0x1

    goto :goto_11d

    .line 2907
    .end local v3    # "i":I
    :cond_135
    iget-object v4, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    monitor-enter v4

    .line 2908
    const-wide/16 v5, 0x0

    :try_start_13a
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->olafUnfreezeEstimatedTime:Ljava/lang/Long;

    .line 2909
    monitor-exit v4
    :try_end_141
    .catchall {:try_start_13a .. :try_end_141} :catchall_144

    .line 2910
    iput-boolean v9, p0, Lcom/android/server/am/FreecessController;->mOLAFOn:Z

    .line 2911
    return-void

    .line 2909
    :catchall_144
    move-exception v3

    :try_start_145
    monitor-exit v4
    :try_end_146
    .catchall {:try_start_145 .. :try_end_146} :catchall_144

    throw v3

    .line 2889
    :catchall_147
    move-exception v4

    :try_start_148
    monitor-exit v3
    :try_end_149
    .catchall {:try_start_148 .. :try_end_149} :catchall_147

    throw v4
.end method

.method public unFreezePackage(ILjava/lang/String;)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 1941
    const/4 v0, 0x0

    .line 1942
    .local v0, "isUnFreezed":Z
    const/4 v1, 0x0

    .line 1943
    .local v1, "pkgName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1944
    .local v2, "userId":I
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 1945
    :try_start_6
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v4

    .line 1946
    .local v4, "ps":Lcom/android/server/am/FreecessPkgStatus;
    if-eqz v4, :cond_18

    .line 1947
    iget-object v5, v4, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    move-object v1, v5

    .line 1948
    iget v5, v4, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    move v2, v5

    .line 1949
    const/4 v5, 0x1

    invoke-direct {p0, v4, p2, v5}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    .line 1951
    .end local v4    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :cond_18
    monitor-exit v3
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_26

    .line 1952
    if-eqz v0, :cond_25

    if-eqz v1, :cond_25

    .line 1953
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v2, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1955
    :cond_25
    return-void

    .line 1951
    :catchall_26
    move-exception v4

    :try_start_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v4
.end method

.method public unFreezePackage(Ljava/lang/String;)V
    .registers 8
    .param p1, "reason"    # Ljava/lang/String;

    .line 1958
    const/4 v0, 0x0

    .line 1960
    .local v0, "isUnFreezed":Z
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1961
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/FreecessPkgMap;->getUidMap()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v2

    .line 1962
    .local v2, "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_24

    .line 1963
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/FreecessPkgStatus;

    .line 1964
    .local v4, "ps":Lcom/android/server/am/FreecessPkgStatus;
    const/4 v5, 0x0

    invoke-direct {p0, v4, p1, v5}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v5

    move v0, v5

    .line 1962
    .end local v4    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1966
    .end local v2    # "uidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/FreecessPkgStatus;>;"
    .end local v3    # "i":I
    :cond_24
    monitor-exit v1

    .line 1967
    return-void

    .line 1966
    :catchall_26
    move-exception v2

    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_26

    throw v2
.end method

.method public unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1930
    const/4 v0, 0x0

    .line 1931
    .local v0, "isUnFreezed":Z
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1932
    :try_start_4
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(Ljava/lang/String;I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v2

    .line 1933
    .local v2, "ps":Lcom/android/server/am/FreecessPkgStatus;
    const/4 v3, 0x1

    invoke-direct {p0, v2, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    move-result v3

    move v0, v3

    .line 1934
    .end local v2    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_1a

    .line 1935
    if-eqz v0, :cond_19

    .line 1936
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/android/server/am/MARsPolicyManager;->reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 1938
    :cond_19
    return-void

    .line 1934
    :catchall_1a
    move-exception v2

    :try_start_1b
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v2
.end method

.method public unFreezePackageForProc(IILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 1992
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1993
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/am/FreecessController;->getFrozenPackageStatus(I)Lcom/android/server/am/FreecessPkgStatus;

    move-result-object v1

    .line 1994
    .local v1, "ps":Lcom/android/server/am/FreecessPkgStatus;
    iget-boolean v2, p0, Lcom/android/server/am/FreecessController;->mPidUnfreezeEnabled:Z

    if-eqz v2, :cond_f

    .line 1995
    invoke-direct {p0, v1, p3, p2}, Lcom/android/server/am/FreecessController;->unFreezeActionForPid(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;I)V

    goto :goto_13

    .line 1997
    :cond_f
    const/4 v2, 0x0

    invoke-direct {p0, v1, p3, v2}, Lcom/android/server/am/FreecessController;->unFreezeAction(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Z)Z

    .line 1998
    .end local v1    # "ps":Lcom/android/server/am/FreecessPkgStatus;
    :goto_13
    monitor-exit v0

    .line 1999
    return-void

    .line 1998
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public unfreezeAllPackages(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 2183
    invoke-virtual {p0, p1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 2189
    invoke-direct {p0}, Lcom/android/server/am/FreecessController;->cleanPacketMonitoredUids()V

    .line 2190
    return-void
.end method

.method public unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;)V
    .registers 9
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2515
    const/4 v0, 0x0

    .line 2516
    .local v0, "isUnfreezed":Z
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v0

    .line 2518
    if-eqz v0, :cond_9a

    .line 2519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2520
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 2521
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2522
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2523
    const/4 v2, 0x1

    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2524
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2526
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 2527
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2529
    :cond_35
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedTime:J

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UFZ"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2531
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_9a

    .line 2532
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OLAF UFZ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    :cond_9a
    return-void
.end method

.method unfreezePackageForOLAF(Lcom/android/server/am/FreecessPkgStatus;Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .registers 9
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "actionUids"    # Ljava/lang/StringBuilder;

    .line 2537
    const/4 v0, 0x0

    .line 2538
    .local v0, "isUnfreezed":Z
    iget-object v1, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->isolatedPids:Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/server/am/FreecessController;->sendFreecessSignal(Ljava/lang/String;ILjava/util/ArrayList;I)Z

    move-result v0

    .line 2540
    if-eqz v0, :cond_79

    .line 2541
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedTime:J

    .line 2542
    iput-object p2, p1, Lcom/android/server/am/FreecessPkgStatus;->unfreezedReason:Ljava/lang/String;

    .line 2543
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isFreezed:Z

    .line 2544
    iput v1, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedType:I

    .line 2545
    const/4 v2, 0x1

    iput v2, p1, Lcom/android/server/am/FreecessPkgStatus;->freezedState:I

    .line 2546
    iput-boolean v1, p1, Lcom/android/server/am/FreecessPkgStatus;->isOLAFFreezed:Z

    .line 2547
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2549
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessPkgMap;->getByUserId(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4b

    .line 2550
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mFreezedPackages:Lcom/android/server/am/FreecessPkgMap;

    iget v2, p1, Lcom/android/server/am/FreecessPkgStatus;->uid:I

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/FreecessPkgMap;->remove(ILjava/lang/String;)Ljava/lang/Object;

    .line 2552
    :cond_4b
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_79

    .line 2553
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OLAF UFZ : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/server/am/FreecessPkgStatus;->userId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    :cond_79
    return-void
.end method

.method updateAllowListForFreecess(Lcom/android/server/am/FreecessPkgStatus;)V
    .registers 6
    .param p1, "ps"    # Lcom/android/server/am/FreecessPkgStatus;

    .line 1241
    if-nez p1, :cond_3

    .line 1242
    return-void

    .line 1244
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mSsrmAllowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1245
    .local v1, "wl":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 1246
    iput-boolean v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isInAllowList:Z

    .line 1247
    goto :goto_22

    .line 1249
    .end local v1    # "wl":Ljava/lang/String;
    :cond_21
    goto :goto_9

    .line 1251
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mOLAFAllowList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1252
    .restart local v1    # "wl":Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/am/FreecessPkgStatus;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 1253
    iput-boolean v2, p1, Lcom/android/server/am/FreecessPkgStatus;->isOlafAllowList:Z

    .line 1254
    goto :goto_40

    .line 1256
    .end local v1    # "wl":Ljava/lang/String;
    :cond_3f
    goto :goto_28

    .line 1257
    :cond_40
    :goto_40
    return-void
.end method

.method updateAppSyncStatus(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flag"    # I

    .line 3348
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    if-nez v0, :cond_e

    .line 3349
    const-class v0, Lcom/android/server/AlarmManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerInternal;

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    .line 3352
    :cond_e
    const/4 v0, 0x1

    if-ne p3, v0, :cond_17

    .line 3353
    :try_start_11
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z

    goto :goto_1c

    .line 3355
    :cond_17
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mAlarmManagerInternal:Lcom/android/server/AlarmManagerInternal;

    invoke-interface {v0, p1, p2}, Lcom/android/server/AlarmManagerInternal;->disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    :try_end_1c
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_1c} :catch_1d

    .line 3359
    :goto_1c
    goto :goto_26

    .line 3357
    :catch_1d
    move-exception v0

    .line 3358
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "mAlarmManagerInternal is null!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3360
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :goto_26
    return-void
.end method

.method public updateBTUsingPackages()V
    .registers 5

    .line 1297
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mBTAllowList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1298
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1301
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_11

    .line 1302
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1305
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_43

    .line 1306
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getHWUsingApps()Ljava/util/Map;

    move-result-object v0

    .line 1307
    .local v0, "BTMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_43

    .line 1308
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1309
    .local v2, "i":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_42

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mBTAllowList:Ljava/util/List;

    .line 1310
    .end local v2    # "i":I
    :cond_42
    goto :goto_23

    .line 1313
    .end local v0    # "BTMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_43
    return-void
.end method

.method updateJobSchedulerPackages()V
    .registers 6

    .line 1260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1261
    .local v0, "startedJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    if-eqz v1, :cond_c

    .line 1262
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1266
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    if-nez v1, :cond_1d

    .line 1267
    const-string/jumbo v1, "jobscheduler"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/job/IJobScheduler$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobScheduler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    .line 1269
    :cond_1d
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    if-eqz v1, :cond_28

    .line 1270
    iget-object v1, p0, Lcom/android/server/am/FreecessController;->mJobScheduler:Landroid/app/job/IJobScheduler;

    invoke-interface {v1}, Landroid/app/job/IJobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .line 1272
    :cond_28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobInfo;

    .line 1273
    .local v2, "job":Landroid/app/job/JobInfo;
    iget-object v3, p0, Lcom/android/server/am/FreecessController;->mRunningJobList:Ljava/util/List;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_45} :catch_48

    .line 1274
    nop

    .end local v2    # "job":Landroid/app/job/JobInfo;
    goto :goto_2c

    .line 1277
    :cond_47
    goto :goto_50

    .line 1275
    :catch_48
    move-exception v1

    .line 1276
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v3, "Exception updateJobSchedulerPackages"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_50
    return-void
.end method

.method public updateRunningLocationPackages()V
    .registers 5

    .line 1316
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1317
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1321
    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-nez v0, :cond_18

    .line 1322
    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    .line 1325
    :cond_18
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    if-eqz v0, :cond_4c

    .line 1326
    iget-object v0, p0, Lcom/android/server/am/FreecessController;->mLocationManager:Landroid/location/ILocationManager;

    invoke-interface {v0}, Landroid/location/ILocationManager;->getGPSUsingApps()Ljava/util/Map;

    move-result-object v0

    .line 1327
    .local v0, "GPSMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_4c

    .line 1328
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1329
    .local v2, "i":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4b

    .line 1330
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/android/server/am/FreecessController;->mGPSAllowList:Ljava/util/List;
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_4b} :catch_4d

    .line 1334
    .end local v2    # "i":I
    :cond_4b
    goto :goto_2c

    .line 1339
    .end local v0    # "GPSMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :cond_4c
    goto :goto_55

    .line 1337
    :catch_4d
    move-exception v0

    .line 1338
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/android/server/am/FreecessController;->TAG:Ljava/lang/String;

    const-string v2, "failed to updateRunningLocationPackages!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_55
    return-void
.end method
