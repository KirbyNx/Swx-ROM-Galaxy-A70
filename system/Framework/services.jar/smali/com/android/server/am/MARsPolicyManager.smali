.class public Lcom/android/server/am/MARsPolicyManager;
.super Ljava/lang/Object;
.source "MARsPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MARsPolicyManager$LevelInfo;,
        Lcom/android/server/am/MARsPolicyManager$UsageInfo;,
        Lcom/android/server/am/MARsPolicyManager$Policy;,
        Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;,
        Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;,
        Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;,
        Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;,
        Lcom/android/server/am/MARsPolicyManager$Lock;
    }
.end annotation


# static fields
.field private static final ACTION_APP_SLEEP_NOTIFY:Ljava/lang/String; = "com.sec.android.mars.APP_SLEEP_NOTIFY"

.field private static final APPLOCKER_KILL_TYPE:I = 0x8

.field static AUFAllowBucketSize:I = 0x0

.field private static final AUTORUN_KILL_TYPE:I = 0xa

.field private static final AUTO_DISABLE_NOTI_REFERENCE_TIME:J = 0x4d3f6400L

.field private static final AUTO_DISABLE_REFERENCE_TIME:J = 0xa4cb8000L

.field private static final AUTO_LEVELUP_REFERENCE_TIME:J = 0x5265c00L

.field static App_StartUp_History:Z = false

.field private static final DEFAULT_KILL_TYPE:I = 0x9

.field public static final DEFAULT_LEVEL:I = 0x0

.field public static final DISABLE_LEVEL:I = 0x4

.field private static final EXTRA_APP_SLEEP_NOTIFY:Ljava/lang/String; = "type"

.field public static final FAS_LEVEL:I = 0x2

.field public static final FORCESTOP_LEVEL:I = 0x3

.field private static final FREECESS_KILL_TYPE:I = 0x1a

.field public static final FREECESS_LEVEL:I = 0x1

.field public static final GAME_LEVEL:I = 0x8

.field public static GlobalModelWithChinaSIM:Z = false

.field static HQM_ENABLE:Z = false

.field private static final KILL_TYPE_DEFAULT:I = 0x1

.field private static final KILL_TYPE_MAX:I = 0x10

.field private static final KILL_TYPE_PKG_FREEZE:I = 0x10

.field private static final KILL_TYPE_PKG_RESTART:I = 0x8

.field private static final KILL_TYPE_SKIP_ADJ_NONE:I = 0x2

.field private static final KILL_TYPE_SKIP_ADJ_UNDER_SERVICE:I = 0x4

.field private static final LEVEL_CHANGE_ABNORMAL_APP_DETECTED:I = 0x10

.field private static final LEVEL_CHANGE_APPIDLE_STATUS_CHANGE:I = 0x400

.field public static final LEVEL_CHANGE_COMPONENT_STARTED:I = 0x1000

.field private static final LEVEL_CHANGE_MANUAL_DISABLE:I = 0x80

.field private static final LEVEL_CHANGE_MANUAL_ENABLE:I = 0x200

.field private static final LEVEL_CHANGE_MANUAL_SLEEP:I = 0x40

.field private static final LEVEL_CHANGE_NOT_USED_30DAYS:I = 0x8

.field private static final LEVEL_CHANGE_NOT_USED_30DAYS_CANDIDATE:I = 0x4

.field private static final LEVEL_CHANGE_PACKAGE_ENABLED:I = 0x800

.field private static final LEVEL_CHANGE_SET_FAS_OFF:I = 0x100

.field private static final LEVEL_CHANGE_SET_FAS_ON:I = 0x20

.field private static final LEVEL_CHANGE_STAY_IN_RAREBUCKET:I = 0x2

.field private static final LEVEL_CHANGE_STAY_IN_RAREBUCKET_CANDIDATE:I = 0x1

.field public static final MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

.field static MARs_ENABLE:Z = false

.field public static final MPSM_LEVEL:I = 0x9

.field public static final POLICY_NUM_APPLOCKER:I = 0x1

.field public static final POLICY_NUM_AUTORUN:I = 0x2

.field public static final POLICY_NUM_DISABLER:I = 0x8

.field public static final POLICY_NUM_FORCE:I = 0x0

.field public static final POLICY_NUM_FREECESS:I = 0x4

.field public static final POLICY_NUM_GAME:I = 0x9

.field public static final POLICY_NUM_MPSM:I = 0xa

.field public static final POLICY_NUM_SBIKE:I = 0x6

.field public static final POLICY_NUM_UDS:I = 0x5

.field private static final POLICY_TARGET_CATEGORY_ALL:I = 0x1

.field private static final POLICY_TARGET_CATEGORY_AUTORUN_OFF:I = 0x14

.field private static final POLICY_TARGET_CATEGORY_AUTORUN_OFF_AND_NOTUSEDRECENTLY:I = 0x15

.field private static final POLICY_TARGET_CATEGORY_DISABLER:I = 0x1a

.field private static final POLICY_TARGET_CATEGORY_FREECESS:I = 0x19

.field private static final POLICY_TARGET_CATEGORY_GAME:I = 0x1b

.field private static final POLICY_TARGET_CATEGORY_GLOBAL_AUTORUN_OFF:I = 0x18

.field private static final POLICY_TARGET_CATEGORY_MPSM:I = 0x1c

.field private static final POLICY_TARGET_CATEGORY_SBIKE:I = 0x17

.field private static final POLICY_TARGET_CATEGORY_UDS:I = 0x16

.field public static final SBIKE_LEVEL:I = 0x7

.field private static final SMART_MANAGER_PKG_NAME:Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "MARsPolicyManager"

.field private static final TREATLIKE_SYSTEMTIME_CHANGED_INTERNAL_TIME:J = 0x1b7740L

.field public static final UDS_LEVEL:I = 0x6

.field private static isChinaModel:Z

.field private static mAUF:Lcom/android/server/ipm/PkgPredictorService;


# instance fields
.field private final BUB_ONOFF:Ljava/lang/String;

.field private THRESHOLD_POWER_USAGE:D

.field private THRESHOLD_POWER_USAGE_BACKUP:D

.field appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field private isTimeChangedForDebug:Z

.field private mAllPoliciesOn:I

.field mAm:Lcom/android/server/am/ActivityManagerService;

.field mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

.field private mAutoDeepSleepTimeForDebug:J

.field private mAutoDisabledLockingTime:J

.field private mAutoSleepTimeForDebug:J

.field mCalibrationResetTime:J

.field private mCarModeOn:Z

.field mContext:Landroid/content/Context;

.field mContextPackageName:Ljava/lang/String;

.field private mCurrentUserId:I

.field private mDetectBadBehaviorInterval:J

.field private mDetectBadBehaviorUnfreezedCount:I

.field private mDualAppEnabled:Z

.field private mDualAppUserId:I

.field private mEnabledProfileUserIds:[I

.field private mFGServiceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstNotiSentTimeForSleep:J

.field private mFirstTimeUpdatePackages:Z

.field private mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

.field private mIsCharging:Z

.field private mIsDeviceIdleMode:Z

.field private mIsFirstNotiSentForSleep:Z

.field private mIsFirstNotiSentForSleepDismiss:Z

.field private mIsLastNotiSentTimeForDisabledDismiss:Z

.field private mIsManualMode:Z

.field private mIsOLAFEnabled:Z

.field private mLastNotiSentTimeForDisabled:J

.field private mLastTriggerTime:J

.field private mLockingTimeChanged:Z

.field mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mManagedProfileEnabled:Z

.field private mScreenOn:Z

.field private mUnusedLockingTime:J

.field private mUsageStatsManager:Landroid/app/usage/UsageStatsManagerInternal;

.field mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

.field udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 98
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 99
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    .line 117
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v3, "com.samsung.android.lool"

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    .line 122
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$Lock;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/MARsPolicyManager$Lock;-><init>(Lcom/android/server/am/MARsPolicyManager$1;)V

    sput-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    .line 129
    const-string/jumbo v1, "sys.config.mars_auf_bucket"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 558
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 561
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 564
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 106
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    .line 113
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 115
    const-wide/32 v2, 0xdbba0

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    .line 116
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorUnfreezedCount:I

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    .line 411
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 412
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z

    .line 413
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z

    .line 414
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsCharging:Z

    .line 562
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsOLAFEnabled:Z

    .line 563
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 634
    iput v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 635
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 1031
    new-instance v2, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v2}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1034
    new-instance v2, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v2}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    .line 1544
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 1545
    const-wide/32 v2, 0x5265c00

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 1546
    const-wide v4, 0xa4cb8000L

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    .line 1547
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1548
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    .line 1549
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    .line 1550
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1551
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    .line 1552
    const-wide/32 v6, 0x36ee80

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    .line 1557
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 1558
    iput-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 1560
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 1561
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoSleepTimeForDebug:J

    .line 1562
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 3522
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3523
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3524
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3525
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3526
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3527
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3528
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3529
    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3531
    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 5024
    const-string/jumbo v0, "persist.sys.bub_onoff"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->BUB_ONOFF:Ljava/lang/String;

    .line 132
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/MARsPolicyManager$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/MARsPolicyManager$1;

    .line 95
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/MARsPolicyManager;)Lcom/android/server/am/MARsPkgMap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/MARsPolicyManager;

    .line 95
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    return-object v0
.end method

.method private awakePackageList(Ljava/util/List;Ljava/lang/String;)V
    .registers 16
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4856
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4857
    .local v0, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4858
    .local v1, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4859
    .local v3, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 4860
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v5

    .line 4861
    .local v5, "uid":I
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4862
    .local v6, "userId":I
    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-nez v7, :cond_2d

    goto :goto_e

    .line 4864
    :cond_2d
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 4865
    :try_start_30
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v8, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v8

    .line 4866
    .local v8, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v8, :cond_117

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v9

    if-eqz v9, :cond_117

    .line 4867
    const/16 v9, 0x100

    invoke-virtual {p0, v9, v8}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4868
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v11

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 4869
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4870
    invoke-virtual {v8, p2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 4872
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v9

    if-nez v9, :cond_10d

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_6c

    goto/16 :goto_10d

    .line 4876
    :cond_6c
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4877
    new-instance v10, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4878
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4879
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v11

    if-eqz v11, :cond_92

    const-string v11, "1"

    goto :goto_94

    :cond_92
    const-string v11, "0"

    :goto_94
    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4880
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v11

    if-eqz v11, :cond_9f

    :goto_9e
    goto :goto_a8

    :cond_9f
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_9e

    :goto_a8
    invoke-virtual {v10, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 4881
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 4882
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 4883
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 4884
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 4885
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 4886
    invoke-virtual {v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v9

    .line 4887
    .local v9, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4889
    iget-object v10, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_117

    .line 4890
    iget-object v10, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    goto :goto_117

    .line 4873
    .end local v9    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_10d
    :goto_10d
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4874
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4894
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_117
    :goto_117
    monitor-exit v7

    .line 4895
    .end local v3    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    goto/16 :goto_e

    .line 4894
    .restart local v3    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v4    # "packageName":Ljava/lang/String;
    .restart local v5    # "uid":I
    .restart local v6    # "userId":I
    :catchall_11a
    move-exception v2

    monitor-exit v7
    :try_end_11c
    .catchall {:try_start_30 .. :try_end_11c} :catchall_11a

    throw v2

    .line 4896
    .end local v3    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "uid":I
    .end local v6    # "userId":I
    :cond_11d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_126

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)V

    .line 4897
    :cond_126
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_133

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4898
    :cond_133
    return-void
.end method

.method private callRestrictAppForAllPkgs()V
    .registers 11

    .line 718
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-nez v0, :cond_e

    .line 719
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 722
    :cond_e
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 724
    .local v0, "mTargetApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    if-eqz v1, :cond_5b

    .line 725
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    monitor-enter v1

    .line 726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b
    :try_start_1b
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 727
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 728
    .local v3, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_34
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_53

    .line 729
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 730
    .local v5, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v5, :cond_50

    .line 731
    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 732
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    const/4 v9, 0x4

    .line 731
    invoke-interface {v6, v7, v8, v9}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 728
    .end local v5    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_34

    .line 726
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v4    # "j":I
    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 736
    .end local v2    # "i":I
    :cond_56
    monitor-exit v1

    goto :goto_5b

    :catchall_58
    move-exception v2

    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_1b .. :try_end_5a} :catchall_58

    throw v2

    .line 738
    :cond_5b
    :goto_5b
    return-void
.end method

.method private convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "actionUids"    # [Ljava/lang/String;
    .param p2, "impUids"    # [Ljava/lang/String;

    .line 2979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2980
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    aget-object v2, p1, v1

    const-string v3, "[FRZ]"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, " "

    if-nez v2, :cond_26

    .line 2981
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v5, p1, v1

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2983
    :cond_26
    const/4 v2, 0x2

    aget-object v5, p1, v2

    const-string v6, "[FAS]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_45

    .line 2984
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p1, v2

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    :cond_45
    const/4 v5, 0x3

    aget-object v7, p1, v5

    const-string v8, "[FOS]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_64

    .line 2987
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v9, p1, v5

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2989
    :cond_64
    const/4 v7, 0x4

    aget-object v9, p1, v7

    const-string v10, "[DIS]"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_74

    .line 2990
    aget-object v9, p1, v7

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2993
    :cond_74
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_fe

    .line 2994
    aget-object v9, p2, v1

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    aget-object v9, p2, v2

    .line 2995
    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    aget-object v9, p2, v5

    .line 2996
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_98

    aget-object v9, p2, v7

    .line 2997
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9d

    .line 2998
    :cond_98
    const-string v9, " [IMP] "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    :cond_9d
    aget-object v9, p2, v1

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b9

    .line 3001
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p2, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3003
    :cond_b9
    aget-object v1, p2, v2

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d5

    .line 3004
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    :cond_d5
    aget-object v1, p2, v5

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f1

    .line 3007
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3009
    :cond_f1
    aget-object v1, p2, v7

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_fe

    .line 3010
    aget-object v1, p2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3013
    :cond_fe
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 3
    .param p1, "level"    # I

    .line 3534
    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    .line 3549
    const/4 v0, 0x0

    return-object v0

    .line 3547
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3542
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 3543
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3545
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3540
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3538
    :cond_20
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0
.end method

.method private convertLevelToPolicyNum(I)I
    .registers 6
    .param p1, "level"    # I

    .line 3553
    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_1a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_19

    const/4 v3, 0x3

    if-eq p1, v3, :cond_11

    if-eq p1, v1, :cond_e

    .line 3568
    const/4 v0, -0x1

    return v0

    .line 3566
    :cond_e
    const/16 v0, 0x8

    return v0

    .line 3561
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3562
    return v0

    .line 3564
    :cond_18
    return v2

    .line 3559
    :cond_19
    return v1

    .line 3557
    :cond_1a
    return v1
.end method

.method private convertPolicyNumToImportantType(I)I
    .registers 3
    .param p1, "policyNum"    # I

    .line 3593
    packed-switch p1, :pswitch_data_1a

    .line 3613
    :pswitch_3
    const/4 v0, -0x1

    return v0

    .line 3611
    :pswitch_5
    const/16 v0, 0x10

    return v0

    .line 3609
    :pswitch_8
    const/16 v0, 0x8

    return v0

    .line 3607
    :pswitch_b
    const/4 v0, 0x7

    return v0

    .line 3605
    :pswitch_d
    const/4 v0, 0x6

    return v0

    .line 3603
    :pswitch_f
    const/4 v0, 0x5

    return v0

    .line 3601
    :pswitch_11
    const/4 v0, 0x4

    return v0

    .line 3599
    :pswitch_13
    const/4 v0, 0x3

    return v0

    .line 3597
    :pswitch_15
    const/4 v0, 0x2

    return v0

    .line 3595
    :pswitch_17
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_3
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_3
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method private convertPolicyNumToLevel(Lcom/android/server/am/MARsPolicyManager$Policy;)I
    .registers 3
    .param p1, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3572
    iget v0, p1, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    packed-switch v0, :pswitch_data_18

    .line 3589
    :pswitch_5
    const/4 v0, 0x0

    return v0

    .line 3587
    :pswitch_7
    const/16 v0, 0x9

    return v0

    .line 3585
    :pswitch_a
    const/16 v0, 0x8

    return v0

    .line 3579
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 3583
    :pswitch_f
    const/4 v0, 0x7

    return v0

    .line 3581
    :pswitch_11
    const/4 v0, 0x6

    return v0

    .line 3574
    :pswitch_13
    const/4 v0, 0x1

    return v0

    .line 3577
    :pswitch_15
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_15
        :pswitch_15
        :pswitch_5
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_5
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private deletePkgInfoInMARs(Ljava/util/ArrayList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 1201
    .local p1, "fasEntityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    if-eqz p1, :cond_d3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d3

    .line 1202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1204
    .local v0, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePkgInfoInMARs size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1207
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .local v2, "i":I
    :goto_36
    if-ltz v2, :cond_96

    .line 1208
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1209
    .local v4, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_45
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_93

    .line 1210
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 1211
    .local v6, "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    const/4 v7, 0x0

    .line 1212
    .local v7, "isFound":Z
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_53
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8b

    .line 1213
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/mars/database/FASEntity;

    .line 1214
    .local v9, "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    new-instance v10, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v10, v9}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1216
    .local v10, "tmpPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_88

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v11

    invoke-virtual {v10}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    if-ne v11, v12, :cond_88

    .line 1218
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 1219
    invoke-virtual {v6, v10}, Lcom/android/server/am/MARsPackageInfo;->updatePackageInfo(Lcom/android/server/am/MARsPackageInfo;)V

    .line 1220
    const/4 v7, 0x1

    .line 1221
    goto :goto_8b

    .line 1212
    .end local v9    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .end local v10    # "tmpPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    :cond_88
    add-int/lit8 v8, v8, 0x1

    goto :goto_53

    .line 1224
    .end local v8    # "k":I
    :cond_8b
    :goto_8b
    if-nez v7, :cond_90

    .line 1225
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    .end local v6    # "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    .end local v7    # "isFound":Z
    :cond_90
    add-int/lit8 v5, v5, 0x1

    goto :goto_45

    .line 1207
    .end local v4    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v5    # "j":I
    :cond_93
    add-int/lit8 v2, v2, -0x1

    goto :goto_36

    .line 1229
    .end local v2    # "i":I
    :cond_96
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_97
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_ce

    .line 1230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 1231
    .local v4, "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getIsRemovedPkg()Z

    move-result v5

    .line 1232
    .local v5, "pkgRemoved":Z
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_af

    move v6, v3

    goto :goto_b0

    :cond_af
    const/4 v6, 0x0

    .line 1234
    .local v6, "isSharedUid":Z
    :goto_b0
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1235
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1229
    nop

    .end local v4    # "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    .end local v5    # "pkgRemoved":Z
    .end local v6    # "isSharedUid":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_97

    .line 1237
    .end local v2    # "i":I
    :cond_ce
    monitor-exit v1

    goto :goto_d3

    :catchall_d0
    move-exception v2

    monitor-exit v1
    :try_end_d2
    .catchall {:try_start_2a .. :try_end_d2} :catchall_d0

    throw v2

    .line 1239
    .end local v0    # "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    :cond_d3
    :goto_d3
    return-void
.end method

.method private disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 11
    .param p1, "tempPSInfo"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 1976
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-nez v0, :cond_64

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1978
    :try_start_c
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 1979
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v1

    move v7, v1

    .line 1980
    .local v7, "pkgEnabledState":I
    const/4 v8, 0x1

    if-eqz v7, :cond_27

    if-ne v7, v8, :cond_4c

    .line 1983
    :cond_27
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_4c

    .line 1985
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    .line 1986
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    const-string v6, "auto_disabler"

    .line 1985
    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1987
    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I
    invoke-static {p1, v7}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 1989
    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    invoke-static {p1, v8}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_4b} :catch_4d

    .line 1991
    return v8

    .line 1995
    .end local v0    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v7    # "pkgEnabledState":I
    :cond_4c
    goto :goto_64

    .line 1993
    :catch_4d
    move-exception v0

    .line 1994
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred in disableAction()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_64
    :goto_64
    const/4 v0, 0x0

    return v0
.end method

.method private disablePackageBySEP(Ljava/lang/String;IZ)Z
    .registers 29
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "byUser"    # Z

    .line 4250
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    const/4 v9, 0x0

    .line 4251
    .local v9, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 4252
    .local v10, "userId":I
    const/4 v1, 0x0

    .line 4253
    .local v1, "levelChanged":Z
    const/4 v11, 0x0

    .line 4254
    .local v11, "isDisabled":Z
    const/4 v2, 0x0

    .line 4255
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v12, 0x0

    .line 4256
    .local v12, "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    const/4 v3, -0x1

    .line 4257
    .local v3, "preFasType":I
    const/4 v4, -0x1

    .line 4259
    .local v4, "preDisableReason":I
    invoke-virtual {v7, v10}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v0

    const/4 v13, 0x0

    if-nez v0, :cond_17

    return v13

    .line 4260
    :cond_17
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 4261
    :try_start_1a
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v0, v8, v10}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_343

    move-object v15, v0

    .line 4263
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v15, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v15, :cond_33b

    .line 4264
    :try_start_23
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v0
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_336

    if-eqz v0, :cond_61

    .line 4265
    :try_start_29
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_59

    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is alread disabled, so we will not disable"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    :cond_59
    monitor-exit v14
    :try_end_5a
    .catchall {:try_start_29 .. :try_end_5a} :catchall_5b

    return v13

    .line 4287
    :catchall_5b
    move-exception v0

    move-object/from16 v17, v9

    move-object v2, v15

    goto/16 :goto_346

    .line 4269
    :cond_61
    :try_start_61
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_336

    if-eqz v0, :cond_7f

    :try_start_6b
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v8, v10}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7f

    .line 4270
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string/jumbo v2, "manualDisable"

    invoke-virtual {v0, v8, v10, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_7f
    .catchall {:try_start_6b .. :try_end_7f} :catchall_5b

    .line 4273
    :cond_7f
    :try_start_7f
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0
    :try_end_83
    .catchall {:try_start_7f .. :try_end_83} :catchall_336

    move v6, v0

    .line 4274
    .end local v3    # "preFasType":I
    .local v6, "preFasType":I
    :try_start_84
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_32f

    move v5, v0

    .line 4276
    .end local v4    # "preDisableReason":I
    .local v5, "preDisableReason":I
    if-eqz p3, :cond_9a

    const/16 v0, 0x80

    :try_start_8d
    invoke-virtual {v7, v0, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v0
    :try_end_91
    .catchall {:try_start_8d .. :try_end_91} :catchall_92

    goto :goto_a0

    .line 4287
    :catchall_92
    move-exception v0

    move v4, v5

    move v3, v6

    move-object/from16 v17, v9

    move-object v2, v15

    goto/16 :goto_346

    .line 4276
    :cond_9a
    const/16 v0, 0x8

    :try_start_9c
    invoke-virtual {v7, v0, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v0
    :try_end_a0
    .catchall {:try_start_9c .. :try_end_a0} :catchall_326

    :goto_a0
    move/from16 v16, v0

    .line 4277
    .end local v1    # "levelChanged":Z
    .local v16, "levelChanged":Z
    if-nez v16, :cond_e0

    .line 4278
    :try_start_a4
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_d4

    const-string v0, "MARsPolicyManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " can\'t be disabled, so we will not disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4279
    :cond_d4
    monitor-exit v14
    :try_end_d5
    .catchall {:try_start_a4 .. :try_end_d5} :catchall_d6

    return v13

    .line 4287
    :catchall_d6
    move-exception v0

    move v4, v5

    move v3, v6

    move-object/from16 v17, v9

    move-object v2, v15

    move/from16 v1, v16

    goto/16 :goto_346

    .line 4282
    :cond_e0
    :try_start_e0
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v17
    :try_end_ee
    .catchall {:try_start_e0 .. :try_end_ee} :catchall_31b

    const/16 v18, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move v13, v5

    .end local v5    # "preDisableReason":I
    .local v13, "preDisableReason":I
    move/from16 v5, v17

    move-object/from16 v17, v9

    move v9, v6

    .end local v6    # "preFasType":I
    .local v9, "preFasType":I
    .local v17, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    move-object/from16 v6, v18

    :try_start_fb
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object v12, v0

    .line 4283
    invoke-direct {v7, v15, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 4287
    monitor-exit v14
    :try_end_103
    .catchall {:try_start_fb .. :try_end_103} :catchall_314

    .line 4289
    const/4 v1, 0x1

    if-eqz v16, :cond_193

    .line 4291
    :try_start_106
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 4292
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/android/server/pm/PackageManagerService;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v2

    .line 4293
    .local v2, "pkgEnabledState":I
    if-eqz v2, :cond_151

    if-ne v2, v1, :cond_120

    goto :goto_151

    .line 4304
    :cond_120
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_17a

    .line 4305
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " is already disabled, so we will not disable"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17a

    .line 4295
    :cond_151
    :goto_151
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/pm/PackageManagerService;->isPackageSuspendedForUser(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_178

    .line 4296
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x4

    const/16 v22, 0x0

    .line 4297
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v23

    const-string v24, "auto_disabler"

    .line 4296
    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v24}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 4298
    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I
    invoke-static {v12, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 4300
    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    invoke-static {v12, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z
    :try_end_178
    .catch Ljava/lang/Exception; {:try_start_106 .. :try_end_178} :catch_17c

    .line 4302
    :cond_178
    const/4 v3, 0x1

    move v11, v3

    .line 4309
    .end local v0    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v2    # "pkgEnabledState":I
    :cond_17a
    :goto_17a
    move v2, v11

    goto :goto_194

    .line 4307
    :catch_17c
    move-exception v0

    .line 4308
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error occurred in disable package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MARsPolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4312
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_193
    move v2, v11

    .end local v11    # "isDisabled":Z
    .local v2, "isDisabled":Z
    :goto_194
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 4313
    nop

    .line 4314
    const/4 v0, 0x0

    if-eqz v2, :cond_26c

    .line 4315
    :try_start_19b
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v4, v8, v10}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    move-object v15, v4

    .line 4316
    if-eqz v15, :cond_25a

    .line 4317
    invoke-direct {v7, v12, v15}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 4318
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v15, v4}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4320
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1c9

    .line 4321
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6, v15}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4324
    :cond_1c9
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4325
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4326
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_1eb

    const-string v5, "1"

    goto :goto_1ec

    :cond_1eb
    move-object v5, v0

    :goto_1ec
    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4327
    if-eqz p3, :cond_1f4

    move-object v5, v0

    goto :goto_1f6

    :cond_1f4
    const-string v5, "1"

    :goto_1f6
    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4328
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_208

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    :cond_208
    invoke-virtual {v4, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4329
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4330
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4331
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4332
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4333
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getPreBatteryUsage()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPreBatteryUsage(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4334
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4335
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0
    :try_end_258
    .catchall {:try_start_19b .. :try_end_258} :catchall_311

    move-object v4, v0

    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .local v0, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_25c

    .line 4316
    .end local v0    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_25a
    move-object/from16 v4, v17

    .line 4357
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .local v4, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :goto_25c
    :try_start_25c
    monitor-exit v3
    :try_end_25d
    .catchall {:try_start_25c .. :try_end_25d} :catchall_267

    .line 4358
    if-eqz v4, :cond_266

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 4359
    :cond_266
    return v1

    .line 4357
    :catchall_267
    move-exception v0

    move-object/from16 v17, v4

    goto/16 :goto_312

    .line 4338
    .end local v4    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_26c
    :try_start_26c
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_29c

    const-string v1, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pkg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v12}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " failed to disable action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4340
    :cond_29c
    if-eqz v15, :cond_30e

    .line 4341
    invoke-virtual {v15, v9}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4342
    invoke-virtual {v15, v13}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4343
    const/16 v1, 0x400

    invoke-virtual {v7, v1, v15}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_30e

    .line 4344
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 4345
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 4346
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_2d3

    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    :cond_2d3
    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4347
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4348
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4349
    invoke-virtual {v15}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 4350
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0
    :try_end_2ff
    .catchall {:try_start_26c .. :try_end_2ff} :catchall_311

    move-object v1, v0

    .line 4351
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .local v1, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :try_start_300
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V
    :try_end_307
    .catchall {:try_start_300 .. :try_end_307} :catchall_30a

    move-object/from16 v17, v1

    goto :goto_30e

    .line 4357
    :catchall_30a
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_312

    .line 4354
    .end local v1    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_30e
    :goto_30e
    :try_start_30e
    monitor-exit v3

    const/4 v1, 0x0

    return v1

    .line 4357
    :catchall_311
    move-exception v0

    :goto_312
    monitor-exit v3
    :try_end_313
    .catchall {:try_start_30e .. :try_end_313} :catchall_311

    throw v0

    .line 4287
    .end local v2    # "isDisabled":Z
    .restart local v11    # "isDisabled":Z
    :catchall_314
    move-exception v0

    move v3, v9

    move v4, v13

    move-object v2, v15

    move/from16 v1, v16

    goto :goto_346

    .end local v13    # "preDisableReason":I
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v5    # "preDisableReason":I
    .restart local v6    # "preFasType":I
    .local v9, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :catchall_31b
    move-exception v0

    move v13, v5

    move-object/from16 v17, v9

    move v9, v6

    move v3, v9

    move v4, v13

    move-object v2, v15

    move/from16 v1, v16

    .end local v5    # "preDisableReason":I
    .end local v6    # "preFasType":I
    .local v9, "preFasType":I
    .restart local v13    # "preDisableReason":I
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_346

    .end local v13    # "preDisableReason":I
    .end local v16    # "levelChanged":Z
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .local v1, "levelChanged":Z
    .restart local v5    # "preDisableReason":I
    .restart local v6    # "preFasType":I
    .local v9, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :catchall_326
    move-exception v0

    move v13, v5

    move-object/from16 v17, v9

    move v9, v6

    move v3, v9

    move v4, v13

    move-object v2, v15

    .end local v5    # "preDisableReason":I
    .end local v6    # "preFasType":I
    .local v9, "preFasType":I
    .restart local v13    # "preDisableReason":I
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_346

    .end local v13    # "preDisableReason":I
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .local v4, "preDisableReason":I
    .restart local v6    # "preFasType":I
    .local v9, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :catchall_32f
    move-exception v0

    move-object/from16 v17, v9

    move v9, v6

    move v3, v9

    move-object v2, v15

    .end local v6    # "preFasType":I
    .local v9, "preFasType":I
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_346

    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v3    # "preFasType":I
    .local v9, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :catchall_336
    move-exception v0

    move-object/from16 v17, v9

    move-object v2, v15

    .end local v9    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_346

    .line 4285
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v9    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_33b
    move-object/from16 v17, v9

    .end local v9    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :try_start_33d
    monitor-exit v14
    :try_end_33e
    .catchall {:try_start_33d .. :try_end_33e} :catchall_340

    const/4 v2, 0x0

    return v2

    .line 4287
    :catchall_340
    move-exception v0

    move-object v2, v15

    goto :goto_346

    .end local v15    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v9    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :catchall_343
    move-exception v0

    move-object/from16 v17, v9

    .end local v9    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v17    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :goto_346
    :try_start_346
    monitor-exit v14
    :try_end_347
    .catchall {:try_start_346 .. :try_end_347} :catchall_348

    throw v0

    :catchall_348
    move-exception v0

    goto :goto_346
.end method

.method private disablePackageList(Ljava/util/List;Ljava/lang/String;)V
    .registers 23
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4645
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    .line 4646
    .local v9, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    invoke-direct {v7, v8}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0x80

    goto :goto_15

    :cond_13
    const/16 v0, 0x8

    :goto_15
    move v10, v0

    .line 4647
    .local v10, "levelState":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4648
    .local v11, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    const/4 v1, 0x0

    .line 4649
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v12, 0x0

    .line 4650
    .local v12, "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-virtual {v11}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v13

    .line 4651
    .local v13, "packageName":Ljava/lang/String;
    invoke-virtual {v11}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v14

    .line 4652
    .local v14, "uid":I
    invoke-static {v14}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    .line 4653
    .local v15, "userId":I
    const/4 v2, 0x0

    .line 4654
    .local v2, "levelChanged":Z
    invoke-virtual {v7, v15}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v3

    if-nez v3, :cond_3d

    goto :goto_1a

    .line 4655
    :cond_3d
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v16

    .line 4656
    :try_start_40
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v3, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3
    :try_end_46
    .catchall {:try_start_40 .. :try_end_46} :catchall_1f3

    move-object v6, v3

    .line 4657
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_108

    .line 4658
    :try_start_49
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v1
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_103

    if-eqz v1, :cond_93

    :try_start_4f
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 4659
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_8d

    .line 4660
    const-string v1, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " uid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is already disabled, so we will not disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4661
    :cond_8d
    monitor-exit v16
    :try_end_8e
    .catchall {:try_start_4f .. :try_end_8e} :catchall_8f

    goto :goto_1a

    .line 4672
    :catchall_8f
    move-exception v0

    move-object v1, v6

    goto/16 :goto_1f4

    .line 4663
    :cond_93
    :try_start_93
    invoke-virtual {v7, v10, v6}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v1
    :try_end_97
    .catchall {:try_start_93 .. :try_end_97} :catchall_103

    move/from16 v17, v1

    .end local v2    # "levelChanged":Z
    .local v17, "levelChanged":Z
    if-nez v1, :cond_d4

    .line 4664
    :try_start_9b
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_cb

    .line 4665
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " can\'t be disabled, so we will not disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    :cond_cb
    monitor-exit v16
    :try_end_cc
    .catchall {:try_start_9b .. :try_end_cc} :catchall_ce

    goto/16 :goto_1a

    .line 4672
    :catchall_ce
    move-exception v0

    move-object v1, v6

    move/from16 v2, v17

    goto/16 :goto_1f4

    .line 4669
    :cond_d4
    :try_start_d4
    new-instance v18, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5
    :try_end_e2
    .catchall {:try_start_d4 .. :try_end_e2} :catchall_fc

    const/16 v19, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move-object v8, v6

    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v8, "pi":Lcom/android/server/am/MARsPackageInfo;
    move-object/from16 v6, v19

    :try_start_eb
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v12, v18

    .line 4670
    invoke-direct {v7, v8, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    :try_end_f3
    .catchall {:try_start_eb .. :try_end_f3} :catchall_f6

    move/from16 v2, v17

    goto :goto_109

    .line 4672
    :catchall_f6
    move-exception v0

    move-object v1, v8

    move/from16 v2, v17

    goto/16 :goto_1f4

    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_fc
    move-exception v0

    move-object v8, v6

    move-object v1, v8

    move/from16 v2, v17

    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    goto/16 :goto_1f4

    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v17    # "levelChanged":Z
    .restart local v2    # "levelChanged":Z
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_103
    move-exception v0

    move-object v8, v6

    move-object v1, v8

    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    goto/16 :goto_1f4

    .line 4657
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_108
    move-object v8, v6

    .line 4672
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_109
    :try_start_109
    monitor-exit v16
    :try_end_10a
    .catchall {:try_start_109 .. :try_end_10a} :catchall_1f0

    .line 4674
    if-eqz v2, :cond_1ec

    if-eqz v12, :cond_1ec

    .line 4675
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_12c

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v13, v15}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 4676
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string/jumbo v3, "manualDisable"

    invoke-virtual {v1, v13, v15, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 4679
    :cond_12c
    invoke-direct {v7, v12}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v1

    .line 4680
    .local v1, "isDisabled":Z
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 4681
    :try_start_133
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v4, v13, v15}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4
    :try_end_139
    .catchall {:try_start_133 .. :try_end_139} :catchall_1e6

    move-object v6, v4

    .line 4682
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_1e4

    .line 4683
    :try_start_13c
    invoke-direct {v7, v12, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 4684
    if-eqz v1, :cond_167

    .line 4685
    const/4 v4, 0x4

    invoke-virtual {v6, v4}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4686
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v6, v4}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4687
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v4, v5, v8}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_167

    .line 4688
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v4, v5, v8, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 4692
    :cond_167
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4693
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4694
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    const/4 v8, 0x0

    if-eqz v5, :cond_18a

    const-string v5, "1"

    goto :goto_18b

    :cond_18a
    move-object v5, v8

    :goto_18b
    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4695
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_19d

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    :cond_19d
    invoke-virtual {v4, v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4696
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4697
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4698
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4699
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4700
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 4701
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    .line 4702
    .local v4, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4704
    .end local v4    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_1e4
    monitor-exit v3

    goto :goto_1ec

    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_1e6
    move-exception v0

    move-object v6, v8

    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_1e8
    monitor-exit v3
    :try_end_1e9
    .catchall {:try_start_13c .. :try_end_1e9} :catchall_1ea

    throw v0

    :catchall_1ea
    move-exception v0

    goto :goto_1e8

    .line 4706
    .end local v1    # "isDisabled":Z
    .end local v2    # "levelChanged":Z
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v11    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v12    # "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "userId":I
    :cond_1ec
    :goto_1ec
    move-object/from16 v8, p2

    goto/16 :goto_1a

    .line 4672
    .restart local v2    # "levelChanged":Z
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v11    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v12    # "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v13    # "packageName":Ljava/lang/String;
    .restart local v14    # "uid":I
    .restart local v15    # "userId":I
    :catchall_1f0
    move-exception v0

    move-object v1, v8

    goto :goto_1f4

    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_1f3
    move-exception v0

    :goto_1f4
    :try_start_1f4
    monitor-exit v16
    :try_end_1f5
    .catchall {:try_start_1f4 .. :try_end_1f5} :catchall_1f3

    throw v0

    .line 4708
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v2    # "levelChanged":Z
    .end local v11    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v12    # "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v13    # "packageName":Ljava/lang/String;
    .end local v14    # "uid":I
    .end local v15    # "userId":I
    :cond_1f6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_203

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4709
    :cond_203
    return-void
.end method

.method private enablePackageBySEP(Ljava/lang/String;IZ)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "byUser"    # Z

    .line 4363
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageManagerService;

    .line 4365
    .local v0, "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v7, 0x0

    .line 4366
    .local v7, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4368
    .local v8, "userId":I
    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v1

    const/4 v9, 0x0

    if-nez v1, :cond_16

    return v9

    .line 4369
    :cond_16
    if-eqz p1, :cond_13f

    invoke-virtual {p0, p1, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_20

    goto/16 :goto_13f

    .line 4372
    :cond_20
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 4374
    .local v10, "mtoken":J
    const/4 v3, 0x1

    const/4 v4, 0x1

    :try_start_26
    const-string v6, "auto_disabler"

    move-object v1, v0

    move-object v2, p1

    move v5, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2e} :catch_11f
    .catchall {:try_start_26 .. :try_end_2e} :catchall_11d

    .line 4379
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4380
    nop

    .line 4382
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4383
    :try_start_35
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, v8}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 4384
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_118

    .line 4385
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_53

    .line 4386
    const/16 v3, 0x800

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4387
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4388
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_63

    .line 4390
    :cond_53
    if-eqz p3, :cond_5b

    .line 4391
    const/16 v3, 0x200

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_60

    .line 4393
    :cond_5b
    const/16 v3, 0x400

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4395
    :goto_60
    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4397
    :goto_63
    if-eqz p3, :cond_68

    const/16 v3, 0x8

    goto :goto_69

    :cond_68
    const/4 v3, 0x4

    :goto_69
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4398
    invoke-virtual {v2, v9}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4399
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4401
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4402
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4403
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_94

    move-object v5, v4

    goto :goto_96

    :cond_94
    const-string v5, "0"

    :goto_96
    invoke-virtual {v3, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4404
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_a1

    :goto_a0
    goto :goto_aa

    :cond_a1
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_a0

    :goto_aa
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4405
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4406
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4407
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4408
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4409
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 4410
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    move-object v7, v3

    .line 4412
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_10c

    .line 4413
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4418
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_10c
    monitor-exit v1
    :try_end_10d
    .catchall {:try_start_35 .. :try_end_10d} :catchall_11a

    .line 4419
    if-eqz v7, :cond_116

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 4420
    :cond_116
    const/4 v1, 0x1

    return v1

    .line 4416
    .restart local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_118
    :try_start_118
    monitor-exit v1

    return v9

    .line 4418
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_11a
    move-exception v2

    monitor-exit v1
    :try_end_11c
    .catchall {:try_start_118 .. :try_end_11c} :catchall_11a

    throw v2

    .line 4379
    :catchall_11d
    move-exception v1

    goto :goto_13b

    .line 4375
    :catch_11f
    move-exception v1

    .line 4376
    .local v1, "e":Ljava/lang/Exception;
    :try_start_120
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured in enablePackageBySEP with change package enabled setting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_136
    .catchall {:try_start_120 .. :try_end_136} :catchall_11d

    .line 4377
    nop

    .line 4379
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4377
    return v9

    .line 4379
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_13b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4380
    throw v1

    .line 4370
    .end local v10    # "mtoken":J
    :cond_13f
    :goto_13f
    return v9
.end method

.method private enablePackageList(Ljava/util/List;Ljava/lang/String;)V
    .registers 22
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4712
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 4713
    .local v3, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    .line 4714
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-direct {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0x200

    goto :goto_1f

    :cond_1d
    const/16 v0, 0x400

    :goto_1f
    move v11, v0

    .line 4715
    .local v11, "levelState":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_24
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_17b

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4716
    .local v13, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    invoke-virtual {v13}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4717
    .local v14, "packageName":Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v15

    .line 4718
    .local v15, "uid":I
    invoke-static {v15}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 4719
    .local v9, "userId":I
    invoke-virtual {v1, v9}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_24

    .line 4720
    :cond_44
    if-eqz v14, :cond_174

    invoke-virtual {v1, v14, v9}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4d

    .line 4721
    goto :goto_24

    .line 4723
    :cond_4d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4725
    .local v16, "mtoken":J
    const/4 v6, 0x1

    const/4 v7, 0x1

    :try_start_53
    const-string v0, "auto_disabler"
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_55} :catch_14f
    .catchall {:try_start_53 .. :try_end_55} :catchall_14a

    move-object v4, v10

    move-object v5, v14

    move v8, v9

    move-object/from16 v18, v10

    move v10, v9

    .end local v9    # "userId":I
    .local v10, "userId":I
    .local v18, "pms":Lcom/android/server/pm/PackageManagerService;
    move-object v9, v0

    :try_start_5c
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5f} :catch_148
    .catchall {:try_start_5c .. :try_end_5f} :catchall_146

    .line 4730
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4731
    nop

    .line 4733
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 4734
    :try_start_66
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1, v0, v14, v10}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    .line 4735
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v0, :cond_13e

    .line 4736
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_84

    .line 4737
    const/16 v5, 0x800

    invoke-virtual {v1, v5, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4738
    const/4 v5, 0x2

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 4739
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_b1

    .line 4741
    :cond_84
    invoke-virtual {v1, v11, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 4742
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4743
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 4744
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4745
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_b1

    .line 4746
    iget-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4749
    :cond_b1
    :goto_b1
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4750
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4751
    const/4 v5, -0x1

    invoke-virtual {v0, v5}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4753
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4754
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4755
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v7

    if-eqz v7, :cond_e1

    move-object v7, v6

    goto :goto_e3

    :cond_e1
    const-string v7, "0"

    :goto_e3
    invoke-virtual {v5, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4756
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v7

    if-eqz v7, :cond_ee

    :goto_ed
    goto :goto_f7

    :cond_ee
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_ed

    :goto_f7
    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4757
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4758
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4759
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4760
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4761
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 4762
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    .line 4763
    .local v5, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4765
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v5    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_13e
    monitor-exit v4

    .line 4766
    .end local v10    # "userId":I
    .end local v13    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "uid":I
    .end local v16    # "mtoken":J
    move-object/from16 v10, v18

    goto/16 :goto_24

    .line 4765
    .restart local v10    # "userId":I
    .restart local v13    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v14    # "packageName":Ljava/lang/String;
    .restart local v15    # "uid":I
    .restart local v16    # "mtoken":J
    :catchall_143
    move-exception v0

    monitor-exit v4
    :try_end_145
    .catchall {:try_start_66 .. :try_end_145} :catchall_143

    throw v0

    .line 4730
    :catchall_146
    move-exception v0

    goto :goto_170

    .line 4726
    :catch_148
    move-exception v0

    goto :goto_153

    .line 4730
    .end local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v9    # "userId":I
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    :catchall_14a
    move-exception v0

    move-object/from16 v18, v10

    move v10, v9

    .end local v9    # "userId":I
    .local v10, "userId":I
    .restart local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    goto :goto_170

    .line 4726
    .end local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v9    # "userId":I
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    :catch_14f
    move-exception v0

    move-object/from16 v18, v10

    move v10, v9

    .line 4727
    .end local v9    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .local v10, "userId":I
    .restart local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    :goto_153
    :try_start_153
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred in enablePackageList() with change package enabled setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_169
    .catchall {:try_start_153 .. :try_end_169} :catchall_146

    .line 4730
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4728
    move-object/from16 v10, v18

    goto/16 :goto_24

    .line 4730
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_170
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4731
    throw v0

    .line 4720
    .end local v16    # "mtoken":J
    .end local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v9    # "userId":I
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_174
    move-object/from16 v18, v10

    move v10, v9

    .end local v9    # "userId":I
    .local v10, "userId":I
    .restart local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    move-object/from16 v10, v18

    goto/16 :goto_24

    .line 4767
    .end local v13    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "uid":I
    .end local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_17b
    move-object/from16 v18, v10

    .end local v10    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v18    # "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_18a

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4768
    :cond_18a
    return-void
.end method

.method private forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policy"    # Lcom/android/server/am/MARsPolicyManager$Policy;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .line 2012
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move/from16 v11, p3

    const/4 v1, 0x0

    .line 2013
    .local v1, "isDefaultKillType":Z
    const/4 v2, 0x0

    .line 2014
    .local v2, "needSkipAdj":Z
    const/4 v12, 0x0

    .line 2015
    .local v12, "skipAdjUnderService":Z
    const/4 v3, 0x0

    .line 2016
    .local v3, "needPackageRestart":Z
    const/4 v4, 0x0

    .line 2017
    .local v4, "skipAdjValue":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MARs #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2019
    .local v13, "killReason":Ljava/lang/String;
    const/4 v5, 0x1

    move v14, v1

    move v15, v2

    move/from16 v16, v3

    move/from16 v17, v4

    .end local v1    # "isDefaultKillType":Z
    .end local v2    # "needSkipAdj":Z
    .end local v3    # "needPackageRestart":Z
    .end local v4    # "skipAdjValue":I
    .local v5, "step":I
    .local v14, "isDefaultKillType":Z
    .local v15, "needSkipAdj":Z
    .local v16, "needPackageRestart":Z
    .local v17, "skipAdjValue":I
    :goto_27
    const/16 v1, 0x10

    if-gt v5, v1, :cond_52

    .line 2020
    iget v1, v10, Lcom/android/server/am/MARsPolicyManager$Policy;->action:I

    and-int/2addr v1, v5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4d

    const/4 v2, 0x2

    if-eq v1, v2, :cond_47

    const/4 v2, 0x4

    if-eq v1, v2, :cond_40

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3c

    goto :goto_4f

    .line 2033
    :cond_3c
    const/4 v1, 0x1

    move/from16 v16, v1

    .end local v16    # "needPackageRestart":Z
    .local v1, "needPackageRestart":Z
    goto :goto_4f

    .line 2029
    .end local v1    # "needPackageRestart":Z
    .restart local v16    # "needPackageRestart":Z
    :cond_40
    const/4 v1, 0x1

    .line 2030
    .end local v15    # "needSkipAdj":Z
    .local v1, "needSkipAdj":Z
    const/16 v2, 0x1f4

    .line 2031
    .end local v17    # "skipAdjValue":I
    .local v2, "skipAdjValue":I
    move v15, v1

    move/from16 v17, v2

    goto :goto_4f

    .line 2025
    .end local v1    # "needSkipAdj":Z
    .end local v2    # "skipAdjValue":I
    .restart local v15    # "needSkipAdj":Z
    .restart local v17    # "skipAdjValue":I
    :cond_47
    const/4 v1, 0x0

    .line 2026
    .end local v15    # "needSkipAdj":Z
    .restart local v1    # "needSkipAdj":Z
    const/4 v2, 0x0

    .line 2027
    .end local v17    # "skipAdjValue":I
    .restart local v2    # "skipAdjValue":I
    move v15, v1

    move/from16 v17, v2

    goto :goto_4f

    .line 2022
    .end local v1    # "needSkipAdj":Z
    .end local v2    # "skipAdjValue":I
    .restart local v15    # "needSkipAdj":Z
    .restart local v17    # "skipAdjValue":I
    :cond_4d
    const/4 v1, 0x1

    .line 2023
    .end local v14    # "isDefaultKillType":Z
    .local v1, "isDefaultKillType":Z
    move v14, v1

    .line 2019
    .end local v1    # "isDefaultKillType":Z
    .restart local v14    # "isDefaultKillType":Z
    :goto_4f
    shl-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 2038
    .end local v5    # "step":I
    :cond_52
    const/16 v18, 0x1

    .line 2039
    .local v18, "isStopped":Z
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    const-string v8, "MARsPolicyManager"

    if-eqz v1, :cond_6f

    .line 2040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceKillPackage: pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_6f
    if-eqz v14, :cond_77

    .line 2043
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v9, v11}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    goto :goto_ac

    .line 2045
    :cond_77
    iget-object v1, v0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v6, v16

    move/from16 v7, p3

    move-object v0, v8

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZII)Z

    move-result v18

    .line 2046
    if-nez v18, :cond_ac

    .line 2047
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_ac

    .line 2048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceKillPackage: don\'t force stop package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    :cond_ac
    :goto_ac
    return v18
.end method

.method private forceStopAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z
    .registers 12
    .param p1, "tempPSInfo"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2001
    const/4 v0, 0x0

    .line 2002
    .local v0, "succeed":Z
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 2003
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MARs #"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    invoke-direct {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicyNum(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 2004
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v8

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v9

    .line 2003
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageForMARsLocked(Ljava/lang/String;Ljava/lang/String;ZIZII)Z

    move-result v0

    .line 2006
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J
    invoke-static {p1, v1, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J

    .line 2008
    :cond_39
    return v0
.end method

.method private formatDateTime(J)Ljava/lang/String;
    .registers 6
    .param p1, "dateTime"    # J

    .line 3017
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

    .line 3018
    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3019
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3020
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getChangedByUserFromReason(Ljava/lang/String;)Z
    .registers 3
    .param p1, "reason"    # Ljava/lang/String;

    .line 4960
    const-string v0, "added_from_user_manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4961
    const-string v0, "added_from_anomaly_manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4962
    const-string v0, "deleted_from_user_manual"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 4963
    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    .line 4966
    :cond_21
    const/4 v0, 0x0

    return v0

    .line 4964
    :cond_23
    :goto_23
    const/4 v0, 0x1

    return v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;
    .registers 5
    .param p1, "user"    # Landroid/os/UserHandle;

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v0

    .line 149
    :catch_e
    move-exception v0

    .line 151
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    return-object v1
.end method

.method public static getInstance()Lcom/android/server/am/MARsPolicyManager;
    .registers 1

    .line 139
    # getter for: Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->INSTANCE:Lcom/android/server/am/MARsPolicyManager;
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager$MARsPolicyManagerHolder;->access$200()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v0

    return-object v0
.end method

.method private getPkgInfoFromDBToMARs()V
    .registers 1

    .line 1058
    return-void
.end method

.method private getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V
    .registers 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 1084
    .local p1, "fasEntityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1086
    .local v0, "needTriggerAutoRunPolicy":Z
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 1089
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1091
    .local v3, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1092
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    .line 1095
    :cond_24
    const/4 v4, 0x0

    move v5, v4

    move v4, v0

    .end local v0    # "needTriggerAutoRunPolicy":Z
    .local v4, "needTriggerAutoRunPolicy":Z
    .local v5, "i":I
    :goto_27
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1ed

    .line 1096
    move-object/from16 v7, p1

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/am/mars/database/FASEntity;

    .line 1097
    .local v8, "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    new-instance v0, Lcom/android/server/am/MARsPackageInfo;

    invoke-direct {v0, v8}, Lcom/android/server/am/MARsPackageInfo;-><init>(Lcom/android/server/am/mars/database/FASEntity;)V

    move-object v9, v0

    .line 1098
    .local v9, "tmpPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrPkgName()Ljava/lang/String;

    move-result-object v10

    .line 1099
    .local v10, "pkgName":Ljava/lang/String;
    const/4 v11, -0x1

    .line 1100
    .local v11, "uid":I
    const/4 v12, -0x1

    .line 1101
    .local v12, "userId":I
    const/4 v13, 0x0

    .line 1102
    .local v13, "mode":I
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v14

    .line 1103
    .local v14, "fasType":I
    const/4 v15, 0x1

    .line 1104
    .local v15, "maxLevel":I
    const/16 v16, 0x0

    .line 1105
    .local v16, "packageType":I
    const/16 v17, -0x1

    .line 1106
    .local v17, "disableType":I
    const-wide/16 v18, -0x1

    .line 1107
    .local v18, "disableTime":J
    const-wide/16 v20, 0x0

    .line 1108
    .local v20, "preBatteryUsage":D
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableReason()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v22

    .line 1109
    .local v22, "disableReason":I
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrExtras()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToState(Ljava/lang/String;)I

    move-result v23

    .line 1112
    .local v23, "state":I
    :try_start_64
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 1113
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v12, v0

    .line 1114
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrMode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v13, v0

    .line 1115
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrLevel()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v15, v0

    .line 1116
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrPackageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v16, v0

    .line 1117
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrDisableType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move/from16 v17, v0

    .line 1118
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrPreBatteryUsage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v24
    :try_end_a0
    .catch Ljava/lang/NumberFormatException; {:try_start_64 .. :try_end_a0} :catch_a3

    move-wide/from16 v20, v24

    .line 1121
    goto :goto_ba

    .line 1119
    :catch_a3
    move-exception v0

    .line 1120
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException !"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MARsPolicyManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_ba
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6

    .line 1124
    :try_start_bd
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_1e4

    move-object/from16 v25, v10

    .end local v10    # "pkgName":Ljava/lang/String;
    .local v25, "pkgName":Ljava/lang/String;
    :try_start_c5
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v1, v0, v7, v10}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0
    :try_end_cd
    .catchall {:try_start_c5 .. :try_end_cd} :catchall_1e0

    move-object v7, v0

    .local v7, "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    const/4 v10, 0x1

    if-eqz v0, :cond_138

    .line 1126
    :try_start_d1
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-ne v0, v13, :cond_f5

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    if-eq v0, v14, :cond_de

    goto :goto_f5

    .line 1142
    :cond_de
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v0

    if-eqz v0, :cond_f1

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    if-nez v0, :cond_f1

    .line 1143
    invoke-virtual {v7, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    move-object/from16 v26, v2

    goto/16 :goto_1c5

    .line 1142
    :cond_f1
    move-object/from16 v26, v2

    goto/16 :goto_1c5

    .line 1127
    :cond_f5
    :goto_f5
    invoke-virtual {v7, v14}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1128
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntity;->getStrFasReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 1130
    if-ne v13, v10, :cond_10a

    .line 1131
    const/16 v0, 0x20

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-object/from16 v26, v2

    goto/16 :goto_1c5

    .line 1133
    :cond_10a
    const/16 v0, 0x100

    invoke-virtual {v1, v0, v7}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1135
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v0

    if-nez v0, :cond_121

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_11d

    goto :goto_121

    :cond_11d
    move-object/from16 v26, v2

    goto/16 :goto_1c5

    .line 1136
    :cond_121
    :goto_121
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    const/4 v10, 0x2

    if-ne v0, v10, :cond_12c

    .line 1137
    const/4 v10, 0x0

    invoke-virtual {v7, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1139
    :cond_12c
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_12f
    .catchall {:try_start_d1 .. :try_end_12f} :catchall_133

    move-object/from16 v26, v2

    goto/16 :goto_1c5

    .line 1170
    .end local v7    # "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    :catchall_133
    move-exception v0

    move-object/from16 v26, v2

    goto/16 :goto_1e9

    .line 1146
    .restart local v7    # "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    :cond_138
    :try_start_138
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v1, v0, v10}, Lcom/android/server/am/MARsPolicyManager;->getSharedUidName(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/MARsPackageInfo;->setSharedUidName(Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v0
    :try_end_14b
    .catchall {:try_start_138 .. :try_end_14b} :catchall_1e0

    const/4 v10, 0x1

    and-int/2addr v0, v10

    if-eqz v0, :cond_152

    .line 1149
    :try_start_14f
    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPackageInfo;->setHasAppIcon(Z)V
    :try_end_152
    .catchall {:try_start_14f .. :try_end_152} :catchall_133

    .line 1152
    :cond_152
    :try_start_152
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    invoke-virtual {v2, v0, v10}, Lcom/android/server/pm/PackageManagerService;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v0

    const/4 v10, 0x4

    if-eqz v0, :cond_192

    .line 1153
    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1154
    invoke-virtual {v9, v10}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1155
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 1156
    invoke-direct {v1, v10}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 1157
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0
    :try_end_176
    .catchall {:try_start_152 .. :try_end_176} :catchall_1e0

    const/4 v10, 0x2

    if-eq v0, v10, :cond_182

    .line 1158
    const/4 v0, 0x1

    :try_start_17a
    invoke-virtual {v9, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1159
    const/16 v0, 0x10

    invoke-virtual {v9, v0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V
    :try_end_182
    .catchall {:try_start_17a .. :try_end_182} :catchall_133

    .line 1161
    :cond_182
    :try_start_182
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_188
    .catchall {:try_start_182 .. :try_end_188} :catchall_1e0

    move-object/from16 v26, v2

    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .local v26, "pms":Lcom/android/server/pm/PackageManagerService;
    :try_start_18a
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    invoke-virtual {v0, v10, v2, v9}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b5

    .line 1162
    .end local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_192
    move-object/from16 v26, v2

    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    if-ne v0, v10, :cond_1b5

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1b5

    .line 1163
    invoke-direct {v1, v10}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 1164
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v0, v2, v10, v9}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :cond_1b5
    :goto_1b5
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->initOptionFlag()V

    .line 1168
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v0, v2, v10, v9}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 1170
    :goto_1c5
    monitor-exit v6
    :try_end_1c6
    .catchall {:try_start_18a .. :try_end_1c6} :catchall_1eb

    .line 1172
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1da

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 1173
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 1174
    const/4 v0, 0x1

    move v4, v0

    .line 1095
    .end local v8    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .end local v9    # "tmpPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    .end local v11    # "uid":I
    .end local v12    # "userId":I
    .end local v13    # "mode":I
    .end local v14    # "fasType":I
    .end local v15    # "maxLevel":I
    .end local v16    # "packageType":I
    .end local v17    # "disableType":I
    .end local v18    # "disableTime":J
    .end local v20    # "preBatteryUsage":D
    .end local v22    # "disableReason":I
    .end local v23    # "state":I
    .end local v25    # "pkgName":Ljava/lang/String;
    :cond_1da
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v2, v26

    goto/16 :goto_27

    .line 1170
    .end local v7    # "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    .end local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v8    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .restart local v9    # "tmpPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    .restart local v11    # "uid":I
    .restart local v12    # "userId":I
    .restart local v13    # "mode":I
    .restart local v14    # "fasType":I
    .restart local v15    # "maxLevel":I
    .restart local v16    # "packageType":I
    .restart local v17    # "disableType":I
    .restart local v18    # "disableTime":J
    .restart local v20    # "preBatteryUsage":D
    .restart local v22    # "disableReason":I
    .restart local v23    # "state":I
    .restart local v25    # "pkgName":Ljava/lang/String;
    :catchall_1e0
    move-exception v0

    move-object/from16 v26, v2

    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    goto :goto_1e9

    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v10    # "pkgName":Ljava/lang/String;
    :catchall_1e4
    move-exception v0

    move-object/from16 v26, v2

    move-object/from16 v25, v10

    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v10    # "pkgName":Ljava/lang/String;
    .restart local v25    # "pkgName":Ljava/lang/String;
    .restart local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    :goto_1e9
    :try_start_1e9
    monitor-exit v6
    :try_end_1ea
    .catchall {:try_start_1e9 .. :try_end_1ea} :catchall_1eb

    throw v0

    :catchall_1eb
    move-exception v0

    goto :goto_1e9

    .line 1095
    .end local v8    # "fasEntity":Lcom/android/server/am/mars/database/FASEntity;
    .end local v9    # "tmpPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    .end local v11    # "uid":I
    .end local v12    # "userId":I
    .end local v13    # "mode":I
    .end local v14    # "fasType":I
    .end local v15    # "maxLevel":I
    .end local v16    # "packageType":I
    .end local v17    # "disableType":I
    .end local v18    # "disableTime":J
    .end local v20    # "preBatteryUsage":D
    .end local v22    # "disableReason":I
    .end local v23    # "state":I
    .end local v25    # "pkgName":Ljava/lang/String;
    .end local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    :cond_1ed
    move-object/from16 v26, v2

    .line 1181
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v5    # "i":I
    .restart local v26    # "pms":Lcom/android/server/pm/PackageManagerService;
    const/4 v0, 0x0

    move v2, v0

    .local v2, "i":I
    :goto_1f1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_219

    .line 1182
    const/4 v5, 0x0

    .line 1183
    .local v5, "tempPkgName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 1185
    .local v6, "tempUserId":I
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 1186
    :try_start_1fc
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    .line 1187
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v0, :cond_20e

    .line 1188
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 1189
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v8

    move v6, v8

    .line 1191
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_20e
    monitor-exit v7
    :try_end_20f
    .catchall {:try_start_1fc .. :try_end_20f} :catchall_216

    .line 1192
    const/4 v8, 0x0

    invoke-virtual {v1, v5, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 1181
    .end local v5    # "tempPkgName":Ljava/lang/String;
    .end local v6    # "tempUserId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f1

    .line 1191
    .restart local v5    # "tempPkgName":Ljava/lang/String;
    .restart local v6    # "tempUserId":I
    :catchall_216
    move-exception v0

    :try_start_217
    monitor-exit v7
    :try_end_218
    .catchall {:try_start_217 .. :try_end_218} :catchall_216

    throw v0

    .line 1195
    .end local v2    # "i":I
    .end local v5    # "tempPkgName":Ljava/lang/String;
    .end local v6    # "tempUserId":I
    :cond_219
    if-eqz v4, :cond_222

    .line 1196
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsHandler;->sendTriggerPolicyMsgToMainHandler()V

    .line 1198
    :cond_222
    return-void
.end method

.method private hasPermission(Ljava/lang/String;)Z
    .registers 6
    .param p1, "permission"    # Ljava/lang/String;

    .line 4970
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4971
    .local v0, "uid":I
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    .line 4972
    .local v1, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v3, v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 4973
    invoke-virtual {v1, p1, v0}, Lcom/android/server/pm/PackageManagerService;->checkUidPermission(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1f

    .line 4974
    const/4 v2, 0x0

    return v2

    .line 4976
    :cond_1f
    const/4 v2, 0x1

    return v2
.end method

.method private initHistoryBuffer()V
    .registers 6

    .line 2951
    const/4 v0, 0x0

    .line 2954
    .local v0, "mbSize":I
    :try_start_1
    const-string v1, "dalvik.vm.heapsize"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2955
    .local v1, "heapSize":Ljava/lang/String;
    if-eqz v1, :cond_20

    .line 2956
    const-string/jumbo v2, "m"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2957
    .local v2, "words":[Ljava/lang/String;
    if-eqz v2, :cond_20

    array-length v3, v2

    const/4 v4, 0x1

    if-lt v3, v4, :cond_20

    .line 2958
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_21

    move v0, v3

    .line 2963
    .end local v1    # "heapSize":Ljava/lang/String;
    .end local v2    # "words":[Ljava/lang/String;
    :cond_20
    goto :goto_25

    .line 2961
    :catch_21
    move-exception v1

    .line 2962
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2965
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_25
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    const/16 v2, 0x80

    if-lt v0, v2, :cond_2e

    const/16 v2, 0x1388

    goto :goto_30

    :cond_2e
    const/16 v2, 0x3e8

    :goto_30
    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;-><init>(Lcom/android/server/am/MARsPolicyManager;I)V

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    .line 2966
    return-void
.end method

.method private isGoogleSigniture(Ljava/lang/String;)Z
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4425
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.gms"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 4426
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.google.android.youtube"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_20

    if-nez v0, :cond_1d

    goto :goto_1e

    .line 4432
    :cond_1d
    goto :goto_3e

    .line 4427
    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    return v0

    .line 4429
    :catch_20
    move-exception v0

    .line 4430
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred in isGoogleSigniture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4433
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    const/4 v0, 0x0

    return v0
.end method

.method private isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z
    .registers 7
    .param p1, "pkg"    # Lcom/android/server/am/MARsPackageInfo;

    .line 974
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 975
    return v1

    .line 977
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    .line 979
    .local v0, "autoRun":Z
    if-eqz v0, :cond_23

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    .line 980
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v3

    const/16 v4, 0x100

    if-eq v3, v4, :cond_22

    goto :goto_23

    .line 983
    :cond_22
    return v1

    .line 981
    :cond_23
    :goto_23
    return v2
.end method

.method private isSameDay(JJ)Z
    .registers 10
    .param p1, "then"    # J
    .param p3, "now"    # J

    .line 1525
    const/4 v0, 0x0

    .line 1526
    .local v0, "ret":Z
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1527
    .local v1, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v1, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1528
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 1529
    .local v2, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v2, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1531
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_33

    .line 1532
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_33

    .line 1533
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_33

    .line 1534
    const/4 v0, 0x1

    .line 1536
    :cond_33
    return v0
.end method

.method private isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p1, "targetPkgName"    # Ljava/lang/String;
    .param p2, "matchType"    # Ljava/lang/String;
    .param p3, "excludePkgName"    # Ljava/lang/String;

    .line 3730
    const/4 v0, 0x0

    .line 3732
    .local v0, "match":Z
    const-string v1, "equals"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3733
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_42

    .line 3734
    :cond_e
    const-string v1, "contains"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 3735
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_42

    .line 3736
    :cond_1b
    const-string/jumbo v1, "startsWith"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 3737
    invoke-virtual {p1, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_42

    .line 3738
    :cond_29
    const-string v1, "endsWith"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 3739
    invoke-virtual {p1, p3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    goto :goto_42

    .line 3740
    :cond_36
    const-string v1, "equalsIgnoreCase"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 3741
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 3743
    :cond_42
    :goto_42
    return v0
.end method

.method private killAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .registers 16
    .param p1, "tempPSInfo"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2058
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v3

    .line 2059
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MARs #"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2061
    const/4 v5, 0x3

    invoke-direct {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicyNum(I)I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2058
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual/range {v1 .. v13}, Lcom/android/server/am/ProcessList;->killPackageProcessesLocked(Ljava/lang/String;IIIZZZZZIILjava/lang/String;)Z

    .line 2062
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J
    invoke-static {p1, v0, v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J

    .line 2064
    return-void
.end method

.method private registerAppIdleStateReceiver()V
    .registers 4

    .line 1264
    const-class v0, Lcom/android/server/usage/AppStandbyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppStandbyInternal;

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 1265
    if-eqz v0, :cond_21

    .line 1266
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/MARsPolicyManager$MARsAppIdleStateChangeListener;-><init>(Lcom/android/server/am/MARsPolicyManager;Lcom/android/server/am/MARsPolicyManager$1;)V

    invoke-interface {v0, v1}, Lcom/android/server/usage/AppStandbyInternal;->addListener(Lcom/android/server/usage/AppStandbyInternal$AppIdleStateChangeListener;)V

    .line 1267
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_21

    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "registerAppIdleStateReceiver"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    :cond_21
    return-void
.end method

.method private removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)V
    .registers 15
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4599
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4600
    .local v0, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4601
    .local v1, "needToBeAwakeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4602
    .local v2, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    const/4 v3, 0x0

    .line 4604
    .local v3, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4605
    .local v5, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 4606
    .local v6, "packageName":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v7

    .line 4607
    .local v7, "uid":I
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4608
    .local v8, "userId":I
    invoke-virtual {p0, v8}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_14

    .line 4609
    :cond_33
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 4610
    :try_start_36
    iget-object v10, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v10, v6, v8}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v10

    move-object v3, v10

    .line 4611
    if-eqz v3, :cond_ca

    .line 4612
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    const/4 v11, 0x4

    if-ne v10, v11, :cond_4b

    .line 4613
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ca

    .line 4614
    :cond_4b
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v10

    if-eqz v10, :cond_62

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v10

    if-nez v10, :cond_62

    .line 4615
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDBValueToDisableReason(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4616
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_ca

    .line 4618
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->checkIsChinaModel()Z

    move-result v10

    if-nez v10, :cond_72

    .line 4619
    invoke-static {p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4620
    invoke-virtual {v3, p2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 4622
    :cond_72
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4623
    const/4 v10, 0x1

    invoke-virtual {v3, v10}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 4624
    new-instance v10, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4625
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4626
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4627
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4628
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v11

    invoke-static {v11}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4629
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 4630
    invoke-virtual {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v10

    .line 4631
    .local v10, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4634
    .end local v10    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_ca
    :goto_ca
    monitor-exit v9

    .line 4635
    .end local v5    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    goto/16 :goto_14

    .line 4634
    .restart local v5    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v7    # "uid":I
    .restart local v8    # "userId":I
    :catchall_cd
    move-exception v4

    monitor-exit v9
    :try_end_cf
    .catchall {:try_start_36 .. :try_end_cf} :catchall_cd

    throw v4

    .line 4637
    .end local v5    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "uid":I
    .end local v8    # "userId":I
    :cond_d0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_d9

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)V

    .line 4638
    :cond_d9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_e2

    invoke-direct {p0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/util/List;Ljava/lang/String;)V

    .line 4640
    :cond_e2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_ef

    .line 4641
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4642
    :cond_ef
    return-void
.end method

.method private sendBigDataInfoFromMARsToHQM(Ljava/lang/String;)V
    .registers 14
    .param p1, "basicCustom"    # Ljava/lang/String;

    .line 4091
    if-nez p1, :cond_3

    return-void

    .line 4093
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    .line 4094
    .local v0, "shm":Landroid/os/SemHqmManager;
    const-string v11, "MARsPolicyManager"

    if-eqz v0, :cond_3c

    .line 4095
    const/4 v2, 0x0

    const-string v3, "Sluggish"

    const-string v4, "PLEV"

    const-string/jumbo v5, "ph"

    const-string v6, "0.0"

    const-string/jumbo v7, "sec"

    const-string v8, ""

    const-string v10, ""

    move-object v1, v0

    move-object v9, p1

    invoke-virtual/range {v1 .. v10}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 4096
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Success "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41

    .line 4098
    :cond_3c
    const-string v1, "Failed to send sluggish info to HQM"

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4100
    :goto_41
    return-void
.end method

.method public static setAUF(Lcom/android/server/ipm/PkgPredictorService;)V
    .registers 1
    .param p0, "AUF"    # Lcom/android/server/ipm/PkgPredictorService;

    .line 512
    if-eqz p0, :cond_4

    .line 513
    sput-object p0, Lcom/android/server/am/MARsPolicyManager;->mAUF:Lcom/android/server/ipm/PkgPredictorService;

    .line 514
    :cond_4
    return-void
.end method

.method private setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 157
    return-void
.end method

.method private setMaxLevel(ILjava/lang/String;)V
    .registers 11
    .param p1, "level"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 3318
    const/4 v0, 0x0

    .line 3320
    .local v0, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3321
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    invoke-virtual {p0, v2, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 3322
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_be

    .line 3323
    const/4 v3, 0x0

    .line 3324
    .local v3, "state":I
    const/4 v4, 0x1

    if-eq p1, v4, :cond_3d

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq p1, v4, :cond_20

    if-eq p1, v5, :cond_1d

    goto :goto_40

    .line 3343
    :cond_1d
    const/16 v3, 0x8

    goto :goto_40

    .line 3330
    :cond_20
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 3331
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    const/4 v6, 0x0

    invoke-direct {p0, p2, v4, v6}, Lcom/android/server/am/MARsPolicyManager;->enablePackageBySEP(Ljava/lang/String;IZ)Z

    .line 3334
    :cond_2e
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mAppStandby:Lcom/android/server/usage/AppStandbyInternal;

    .line 3335
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    .line 3334
    invoke-interface {v4, v6, v7, v5}, Lcom/android/server/usage/AppStandbyInternal;->restrictApp(Ljava/lang/String;II)V

    .line 3336
    const/4 v3, 0x2

    .line 3337
    goto :goto_40

    .line 3326
    :cond_3d
    const/16 v3, 0x400

    .line 3327
    nop

    .line 3347
    :goto_40
    if-nez v3, :cond_44

    .line 3348
    monitor-exit v1

    return-void

    .line 3350
    :cond_44
    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v4

    if-eqz v4, :cond_be

    .line 3351
    new-instance v4, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3352
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3353
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_6c

    const-string v5, "1"

    goto :goto_6e

    :cond_6c
    const-string v5, "0"

    :goto_6e
    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3354
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-eqz v5, :cond_7b

    const-string v5, "1"

    goto :goto_7d

    :cond_7b
    const-string v5, "0"

    :goto_7d
    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3355
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3356
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3357
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3358
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3359
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v4

    .line 3360
    invoke-virtual {v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v4

    move-object v0, v4

    .line 3363
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v3    # "state":I
    :cond_be
    monitor-exit v1
    :try_end_bf
    .catchall {:try_start_4 .. :try_end_bf} :catchall_c9

    .line 3365
    if-eqz v0, :cond_c8

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 3366
    :cond_c8
    return-void

    .line 3363
    :catchall_c9
    move-exception v2

    :try_start_ca
    monitor-exit v1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_c9

    throw v2
.end method

.method private sleepPackageList(Ljava/util/List;Ljava/lang/String;)V
    .registers 21
    .param p2, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4771
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    .line 4772
    .local v3, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    .line 4773
    .local v4, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    invoke-direct {v1, v2}, Lcom/android/server/am/MARsPolicyManager;->getChangedByUserFromReason(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/16 v0, 0x40

    goto :goto_1a

    :cond_19
    const/4 v0, 0x2

    :goto_1a
    move v5, v0

    .line 4774
    .local v5, "levelState":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x4

    if-eqz v6, :cond_d0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4775
    .local v6, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    invoke-virtual {v6}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 4776
    .local v8, "packageName":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v9

    .line 4777
    .local v9, "uid":I
    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 4778
    .local v10, "userId":I
    invoke-virtual {v1, v10}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v11

    if-nez v11, :cond_3f

    goto :goto_1f

    .line 4780
    :cond_3f
    sget-object v11, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v11

    .line 4781
    :try_start_42
    iget-object v12, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1, v12, v8, v10}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v12

    .line 4782
    .local v12, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v12, :cond_ca

    .line 4783
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v13

    if-nez v13, :cond_c1

    .line 4784
    invoke-virtual {v1, v5, v12}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v7

    if-eqz v7, :cond_ca

    .line 4785
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v12, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4786
    invoke-virtual {v12, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 4788
    new-instance v7, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4789
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4790
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v13

    if-eqz v13, :cond_82

    const-string v13, "1"

    goto :goto_84

    :cond_82
    const-string v13, "0"

    :goto_84
    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4791
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4792
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4793
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4794
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v7

    .line 4795
    invoke-virtual {v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v7

    .line 4796
    .local v7, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4797
    nop

    .end local v7    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    goto :goto_ca

    .line 4798
    :cond_c1
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v13

    if-ne v13, v7, :cond_ca

    .line 4799
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4802
    .end local v12    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_ca
    :goto_ca
    monitor-exit v11

    .line 4803
    .end local v6    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    goto/16 :goto_1f

    .line 4802
    .restart local v6    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v8    # "packageName":Ljava/lang/String;
    .restart local v9    # "uid":I
    .restart local v10    # "userId":I
    :catchall_cd
    move-exception v0

    monitor-exit v11
    :try_end_cf
    .catchall {:try_start_42 .. :try_end_cf} :catchall_cd

    throw v0

    .line 4806
    .end local v6    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "uid":I
    .end local v10    # "userId":I
    :cond_d0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_d4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_200

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4807
    .local v8, "toBeEnabledInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/pm/PackageManagerService;

    .line 4808
    .local v15, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 4809
    .local v14, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 4811
    .local v16, "mtoken":J
    :try_start_f7
    invoke-virtual {v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v0, "auto_disabler"
    :try_end_ff
    .catch Ljava/lang/Exception; {:try_start_f7 .. :try_end_ff} :catch_1dc
    .catchall {:try_start_f7 .. :try_end_ff} :catchall_1d9

    move-object v9, v15

    move v13, v14

    move v7, v14

    .end local v14    # "userId":I
    .local v7, "userId":I
    move-object v14, v0

    :try_start_103
    invoke-virtual/range {v9 .. v14}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_106} :catch_1d6
    .catchall {:try_start_103 .. :try_end_106} :catchall_1fb

    .line 4817
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4818
    nop

    .line 4820
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 4821
    :try_start_10d
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v0, v10, v7}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    .line 4822
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v0, :cond_1ce

    .line 4823
    invoke-virtual {v1, v5, v0}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_1cc

    .line 4824
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_129

    .line 4825
    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 4827
    :cond_129
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASReasonToValue(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 4828
    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 4829
    const/4 v10, 0x0

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 4830
    const/4 v10, -0x1

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 4831
    const/4 v10, 0x4

    invoke-virtual {v0, v10}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4832
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_160

    .line 4833
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 4834
    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 4837
    :cond_160
    new-instance v11, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4838
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4839
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v12

    if-eqz v12, :cond_182

    const-string v12, "1"

    goto :goto_184

    :cond_182
    const-string v12, "0"

    :goto_184
    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4840
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4841
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4842
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4843
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4844
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v11

    .line 4845
    invoke-virtual {v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v11

    .line 4846
    .local v11, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1cf

    .line 4823
    .end local v11    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_1cc
    const/4 v10, 0x4

    goto :goto_1cf

    .line 4822
    :cond_1ce
    const/4 v10, 0x4

    .line 4849
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_1cf
    monitor-exit v9

    .line 4850
    .end local v7    # "userId":I
    .end local v8    # "toBeEnabledInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v15    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v16    # "mtoken":J
    move v7, v10

    goto/16 :goto_d4

    .line 4849
    .restart local v7    # "userId":I
    .restart local v8    # "toBeEnabledInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v15    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v16    # "mtoken":J
    :catchall_1d3
    move-exception v0

    monitor-exit v9
    :try_end_1d5
    .catchall {:try_start_10d .. :try_end_1d5} :catchall_1d3

    throw v0

    .line 4813
    :catch_1d6
    move-exception v0

    const/4 v10, 0x4

    goto :goto_1df

    .line 4817
    .end local v7    # "userId":I
    .restart local v14    # "userId":I
    :catchall_1d9
    move-exception v0

    move v7, v14

    .end local v14    # "userId":I
    .restart local v7    # "userId":I
    goto :goto_1fc

    .line 4813
    .end local v7    # "userId":I
    .restart local v14    # "userId":I
    :catch_1dc
    move-exception v0

    move v10, v7

    move v7, v14

    .line 4814
    .end local v14    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v7    # "userId":I
    :goto_1df
    :try_start_1df
    const-string v9, "MARsPolicyManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error occurred in sleepPackageList()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1f5
    .catchall {:try_start_1df .. :try_end_1f5} :catchall_1fb

    .line 4817
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4815
    move v7, v10

    goto/16 :goto_d4

    .line 4817
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1fb
    move-exception v0

    :goto_1fc
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4818
    throw v0

    .line 4852
    .end local v7    # "userId":I
    .end local v8    # "toBeEnabledInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v15    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v16    # "mtoken":J
    :cond_200
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_20d

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4853
    :cond_20d
    return-void
.end method

.method private switchPolicies(IZ)V
    .registers 6
    .param p1, "policy"    # I
    .param p2, "boot"    # Z

    .line 742
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_16

    .line 743
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_f

    .line 747
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_f

    .line 748
    iput-boolean v0, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 750
    :cond_f
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_24

    .line 751
    iput-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    goto :goto_24

    .line 752
    :cond_16
    if-ne p1, v1, :cond_24

    .line 754
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v2, :cond_1e

    .line 755
    iput-boolean v1, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 757
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_24

    .line 758
    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 760
    :cond_24
    :goto_24
    if-nez p2, :cond_5b

    .line 762
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 763
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    const-string/jumbo v1, "switchPolicy"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 767
    :cond_3a
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 768
    :try_start_3d
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v1, :cond_46

    .line 769
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 772
    :cond_46
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    if-eqz v1, :cond_4f

    .line 773
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 774
    :cond_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_58

    .line 776
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendInitSettingMsgToDBHandler()V

    goto :goto_5b

    .line 774
    :catchall_58
    move-exception v1

    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    throw v1

    .line 778
    :cond_5b
    :goto_5b
    return-void
.end method

.method private updateDisableCandidateInfo(Ljava/util/List;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)V"
        }
    .end annotation

    .line 4928
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4929
    .local v0, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 4931
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_99

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4932
    .local v2, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4933
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v4

    .line 4934
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4935
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_d

    .line 4937
    :cond_2c
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6

    .line 4938
    :try_start_2f
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v7, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v7

    .line 4939
    .local v7, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v7, :cond_93

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    if-nez v8, :cond_93

    .line 4940
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v8

    const/4 v9, 0x7

    .line 4941
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    .line 4940
    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v8

    if-nez v8, :cond_93

    .line 4942
    const/4 v8, 0x4

    invoke-virtual {p0, v8, v7}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v8

    if-eqz v8, :cond_93

    .line 4943
    new-instance v8, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4944
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4945
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4946
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4947
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v8

    .line 4949
    .local v8, "value":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4953
    .end local v7    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v8    # "value":Lcom/android/server/am/mars/database/FASEntity;
    :cond_93
    monitor-exit v6

    .line 4954
    .end local v2    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    goto/16 :goto_d

    .line 4953
    .restart local v2    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "userId":I
    :catchall_96
    move-exception v1

    monitor-exit v6
    :try_end_98
    .catchall {:try_start_2f .. :try_end_98} :catchall_96

    throw v1

    .line 4956
    .end local v2    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    :cond_99
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a6

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4957
    :cond_a6
    return-void
.end method

.method private updateDoNotDisableInfo(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)V"
        }
    .end annotation

    .line 4901
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4902
    .local v0, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    .line 4903
    .local v2, "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4904
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;->getUid()I

    move-result v4

    .line 4905
    .local v4, "uid":I
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4906
    .local v5, "userId":I
    invoke-virtual {p0, v5}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v6

    if-nez v6, :cond_28

    goto :goto_9

    .line 4908
    :cond_28
    sget-object v6, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v6

    .line 4909
    :try_start_2b
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v7, v3, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v7

    .line 4910
    .local v7, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v7, :cond_88

    .line 4911
    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 4912
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_40

    const/4 v8, 0x4

    goto :goto_41

    :cond_40
    const/4 v8, 0x1

    :goto_41
    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 4914
    new-instance v8, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4915
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4916
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4917
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4918
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v8

    .line 4919
    invoke-virtual {v8}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v8

    .line 4920
    .local v8, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4922
    .end local v7    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v8    # "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    :cond_88
    monitor-exit v6

    .line 4923
    .end local v2    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    goto/16 :goto_9

    .line 4922
    .restart local v2    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .restart local v3    # "packageName":Ljava/lang/String;
    .restart local v4    # "uid":I
    .restart local v5    # "userId":I
    :catchall_8b
    move-exception v1

    monitor-exit v6
    :try_end_8d
    .catchall {:try_start_2b .. :try_end_8d} :catchall_8b

    throw v1

    .line 4924
    .end local v2    # "appInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "userId":I
    :cond_8e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9b

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 4925
    :cond_9b
    return-void
.end method

.method private updateFromMARsMainThread()V
    .registers 26

    .line 1590
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1591
    .local v0, "tempSleepNotiFlag":Z
    const/4 v2, 0x0

    .line 1592
    .local v2, "isActionUidExist":Z
    const-string v3, ""

    const-string v4, "[FRZ]"

    const-string v5, "[FAS]"

    const-string v6, "[FOS]"

    const-string v7, "[DIS]"

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v3

    .line 1593
    .local v3, "actionUids":[Ljava/lang/String;
    const-string v4, ""

    const-string v5, "[FRZ]"

    const-string v6, "[FAS]"

    const-string v7, "[FOS]"

    const-string v8, "[DIS]"

    filled-new-array {v4, v5, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v4

    .line 1595
    .local v4, "impUids":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 1596
    const-string v5, "MARsPolicyManager"

    const-string v6, "Now manual mode is on, we will not update anything!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    return-void

    .line 1600
    :cond_2e
    sget-boolean v5, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v5, :cond_3a

    .line 1601
    const-string v5, "MARsPolicyManager"

    const-string/jumbo v6, "updateFromMARsThread"

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1604
    .local v5, "currentTime":J
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1605
    .local v7, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    const/4 v8, 0x0

    .line 1607
    .local v8, "impValue":I
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9

    .line 1608
    const/4 v10, 0x0

    move/from16 v24, v2

    move v2, v0

    move v0, v10

    move v10, v8

    move/from16 v8, v24

    .local v0, "i":I
    .local v2, "tempSleepNotiFlag":Z
    .local v8, "isActionUidExist":Z
    .local v10, "impValue":I
    :goto_4f
    :try_start_4f
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v11}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v0, v11, :cond_37b

    .line 1609
    iget-object v11, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v11}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/util/SparseArray;
    :try_end_67
    .catchall {:try_start_4f .. :try_end_67} :catchall_39a

    .line 1610
    .local v11, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_68
    :try_start_68
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_371

    .line 1611
    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/MARsPackageInfo;

    .line 1613
    .local v14, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v15

    invoke-virtual {v1, v15}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v15

    if-nez v15, :cond_83

    .line 1614
    move v15, v10

    move-object/from16 v21, v11

    goto/16 :goto_362

    .line 1617
    :cond_83
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v15

    const/16 v12, 0x100

    if-ne v15, v12, :cond_90

    .line 1618
    move v15, v10

    move-object/from16 v21, v11

    goto/16 :goto_362

    .line 1621
    :cond_90
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v12
    :try_end_94
    .catchall {:try_start_68 .. :try_end_94} :catchall_378

    const/4 v15, 0x4

    if-ne v12, v15, :cond_a3

    :try_start_97
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v12
    :try_end_9b
    .catchall {:try_start_97 .. :try_end_9b} :catchall_39a

    const/4 v15, 0x2

    if-ne v12, v15, :cond_a3

    .line 1622
    move v15, v10

    move-object/from16 v21, v11

    goto/16 :goto_362

    .line 1625
    :cond_a3
    move v15, v10

    move-object v12, v11

    .end local v10    # "impValue":I
    .end local v11    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v12, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v15, "impValue":I
    :try_start_a5
    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J
    :try_end_a7
    .catchall {:try_start_a5 .. :try_end_a7} :catchall_36e

    const-wide/16 v17, 0x0

    cmp-long v10, v10, v17

    const-wide/32 v19, 0x5265c00

    if-eqz v10, :cond_1ec

    :try_start_b0
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_1ec

    move-object v10, v12

    .end local v12    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v10, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    iget-wide v11, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long v11, v5, v11

    .line 1626
    move-object/from16 v21, v10

    .end local v10    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v21, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    iget-boolean v10, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z
    :try_end_c1
    .catchall {:try_start_b0 .. :try_end_c1} :catchall_1e8

    if-eqz v10, :cond_c8

    move-wide/from16 v22, v5

    .end local v5    # "currentTime":J
    .local v22, "currentTime":J
    :try_start_c5
    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_cc

    .end local v22    # "currentTime":J
    .restart local v5    # "currentTime":J
    :cond_c8
    move-wide/from16 v22, v5

    .end local v5    # "currentTime":J
    .restart local v22    # "currentTime":J
    move-wide/from16 v5, v19

    :goto_cc
    cmp-long v5, v11, v5

    if-lez v5, :cond_1f0

    .line 1627
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v5

    const/4 v6, 0x7

    .line 1628
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v11

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    .line 1627
    invoke-virtual {v5, v6, v10, v11, v12}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v5
    :try_end_e5
    .catchall {:try_start_c5 .. :try_end_e5} :catchall_213

    move v10, v5

    .end local v15    # "impValue":I
    .local v10, "impValue":I
    if-eqz v5, :cond_110

    .line 1629
    :try_start_e8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    aget-object v11, v4, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 1630
    goto/16 :goto_1df

    .line 1632
    :cond_110
    const/16 v5, 0x8

    invoke-virtual {v1, v5, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v5

    if-eqz v5, :cond_1c0

    .line 1633
    if-nez v8, :cond_11c

    const/4 v5, 0x1

    move v8, v5

    .line 1634
    :cond_11c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    aget-object v11, v3, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v3, v6

    .line 1635
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1636
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1637
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_15c

    const-string v6, "1"

    goto :goto_15d

    :cond_15c
    const/4 v6, 0x0

    :goto_15d
    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1638
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_16a

    const-string v6, "1"

    goto :goto_16b

    :cond_16a
    const/4 v6, 0x0

    :goto_16b
    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1639
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_17f

    .line 1640
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_180

    :cond_17f
    const/4 v11, 0x0

    .line 1639
    :goto_180
    invoke-virtual {v5, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1641
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1642
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1643
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1644
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    .line 1645
    .local v5, "value":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1647
    iget-boolean v6, v1, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    if-nez v6, :cond_1bc

    .line 1648
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1649
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v6

    const-string v11, "deepsleepdismiss"

    invoke-virtual {v6, v11}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;)V

    .line 1651
    .end local v5    # "value":Lcom/android/server/am/mars/database/FASEntity;
    :cond_1bc
    move-wide/from16 v5, v22

    goto/16 :goto_363

    .line 1652
    :cond_1c0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x4

    aget-object v11, v4, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v4, v6
    :try_end_1de
    .catchall {:try_start_e8 .. :try_end_1de} :catchall_1e3

    .line 1654
    nop

    .line 1610
    .end local v14    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_1df
    move-wide/from16 v5, v22

    goto/16 :goto_363

    .line 1711
    .end local v0    # "i":I
    .end local v13    # "j":I
    .end local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :catchall_1e3
    move-exception v0

    move-wide/from16 v5, v22

    goto/16 :goto_39b

    .end local v10    # "impValue":I
    .end local v22    # "currentTime":J
    .local v5, "currentTime":J
    .restart local v15    # "impValue":I
    :catchall_1e8
    move-exception v0

    move v10, v15

    .end local v5    # "currentTime":J
    .restart local v22    # "currentTime":J
    goto/16 :goto_39b

    .line 1625
    .end local v22    # "currentTime":J
    .restart local v0    # "i":I
    .restart local v5    # "currentTime":J
    .restart local v12    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v13    # "j":I
    .restart local v14    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_1ec
    move-wide/from16 v22, v5

    move-object/from16 v21, v12

    .line 1658
    .end local v5    # "currentTime":J
    .end local v12    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v22    # "currentTime":J
    :cond_1f0
    :try_start_1f0
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_1fb

    .line 1659
    move-wide/from16 v5, v22

    goto/16 :goto_362

    .line 1662
    :cond_1fb
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5
    :try_end_1ff
    .catchall {:try_start_1f0 .. :try_end_1ff} :catchall_369

    if-nez v5, :cond_219

    :try_start_201
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v5

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result v5
    :try_end_20d
    .catchall {:try_start_201 .. :try_end_20d} :catchall_213

    if-eqz v5, :cond_219

    .line 1663
    move-wide/from16 v5, v22

    goto/16 :goto_362

    .line 1711
    .end local v0    # "i":I
    .end local v13    # "j":I
    .end local v14    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :catchall_213
    move-exception v0

    move v10, v15

    move-wide/from16 v5, v22

    goto/16 :goto_39b

    .line 1666
    .restart local v0    # "i":I
    .restart local v13    # "j":I
    .restart local v14    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :cond_219
    :try_start_219
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v5
    :try_end_21d
    .catchall {:try_start_219 .. :try_end_21d} :catchall_369

    .line 1668
    .local v5, "resetTime":J
    cmp-long v10, v5, v17

    if-lez v10, :cond_22b

    sub-long v16, v22, v5

    :try_start_223
    iget-wide v11, v1, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J
    :try_end_225
    .catchall {:try_start_223 .. :try_end_225} :catchall_213

    cmp-long v11, v16, v11

    if-lez v11, :cond_22b

    const/4 v11, 0x1

    goto :goto_22c

    :cond_22b
    const/4 v11, 0x0

    .line 1669
    .local v11, "timePassed":Z
    :goto_22c
    if-eqz v11, :cond_35c

    .line 1670
    :try_start_22e
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v16

    move/from16 v18, v11

    .end local v11    # "timePassed":Z
    .local v18, "timePassed":Z
    iget-wide v10, v1, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    cmpl-double v10, v16, v10

    if-lez v10, :cond_23c

    const/4 v12, 0x1

    goto :goto_23d

    :cond_23c
    const/4 v12, 0x0

    :goto_23d
    move v10, v12

    .line 1671
    .local v10, "batteryUsed":Z
    if-eqz v10, :cond_357

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v11

    const/4 v12, 0x1

    if-gt v11, v12, :cond_357

    .line 1672
    iget-boolean v11, v1, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z
    :try_end_249
    .catchall {:try_start_22e .. :try_end_249} :catchall_369

    if-eqz v11, :cond_331

    :try_start_24b
    iget-wide v11, v1, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    sub-long v11, v22, v11

    move-wide/from16 v16, v5

    .end local v5    # "resetTime":J
    .local v16, "resetTime":J
    iget-boolean v5, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v5, :cond_259

    iget-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoSleepTimeForDebug:J

    move-wide/from16 v19, v5

    :cond_259
    cmp-long v5, v11, v19

    if-ltz v5, :cond_333

    .line 1673
    const/4 v5, 0x2

    invoke-virtual {v1, v5, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_310

    .line 1674
    if-nez v8, :cond_268

    const/4 v5, 0x1

    move v8, v5

    .line 1675
    :cond_268
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v11, v3, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v3, v6

    .line 1676
    new-instance v5, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1677
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1678
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_2a8

    const-string v6, "1"

    goto :goto_2a9

    :cond_2a8
    const/4 v6, 0x0

    :goto_2a9
    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1679
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v6

    if-eqz v6, :cond_2b6

    const-string v6, "1"

    goto :goto_2b7

    :cond_2b6
    const/4 v6, 0x0

    :goto_2b7
    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1680
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    const/4 v11, 0x1

    if-ne v6, v11, :cond_2cb

    .line 1681
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_2cc

    :cond_2cb
    const/4 v11, 0x0

    .line 1680
    :goto_2cc
    invoke-virtual {v5, v11}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1682
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1683
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1684
    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v5

    .line 1685
    invoke-virtual {v5}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v5

    .line 1686
    .local v5, "value":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1688
    iget-boolean v6, v1, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    if-nez v6, :cond_30c

    .line 1689
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    .line 1690
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v6

    const-string/jumbo v11, "sleepdismiss"

    invoke-virtual {v6, v11}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;)V

    .line 1692
    .end local v5    # "value":Lcom/android/server/am/mars/database/FASEntity;
    :cond_30c
    move v10, v15

    move-wide/from16 v5, v22

    goto :goto_363

    .line 1693
    :cond_310
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    aget-object v11, v4, v6

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6
    :try_end_32e
    .catchall {:try_start_24b .. :try_end_32e} :catchall_213

    move-wide/from16 v5, v22

    goto :goto_362

    .line 1672
    .end local v16    # "resetTime":J
    .local v5, "resetTime":J
    :cond_331
    move-wide/from16 v16, v5

    .line 1696
    .end local v5    # "resetTime":J
    .restart local v16    # "resetTime":J
    :cond_333
    const/4 v5, 0x1

    :try_start_334
    invoke-virtual {v1, v5, v14}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v6

    if-eqz v6, :cond_354

    .line 1697
    iget-boolean v5, v1, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z
    :try_end_33c
    .catchall {:try_start_334 .. :try_end_33c} :catchall_369

    if-nez v5, :cond_351

    if-nez v2, :cond_351

    .line 1701
    const/4 v2, 0x1

    .line 1702
    move-wide/from16 v5, v22

    .end local v22    # "currentTime":J
    .local v5, "currentTime":J
    :try_start_343
    iput-wide v5, v1, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    .line 1703
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v11

    const-string/jumbo v12, "sleep"

    invoke-virtual {v11, v12}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;)V
    :try_end_34f
    .catchall {:try_start_343 .. :try_end_34f} :catchall_36e

    move v10, v15

    goto :goto_363

    .line 1697
    .end local v5    # "currentTime":J
    .restart local v22    # "currentTime":J
    :cond_351
    move-wide/from16 v5, v22

    .end local v22    # "currentTime":J
    .restart local v5    # "currentTime":J
    goto :goto_362

    .line 1696
    .end local v5    # "currentTime":J
    .restart local v22    # "currentTime":J
    :cond_354
    move-wide/from16 v5, v22

    .end local v22    # "currentTime":J
    .restart local v5    # "currentTime":J
    goto :goto_362

    .line 1671
    .end local v16    # "resetTime":J
    .local v5, "resetTime":J
    .restart local v22    # "currentTime":J
    :cond_357
    move-wide/from16 v16, v5

    move-wide/from16 v5, v22

    .end local v22    # "currentTime":J
    .local v5, "currentTime":J
    .restart local v16    # "resetTime":J
    goto :goto_362

    .line 1669
    .end local v10    # "batteryUsed":Z
    .end local v16    # "resetTime":J
    .end local v18    # "timePassed":Z
    .local v5, "resetTime":J
    .restart local v11    # "timePassed":Z
    .restart local v22    # "currentTime":J
    :cond_35c
    move-wide/from16 v16, v5

    move/from16 v18, v11

    move-wide/from16 v5, v22

    .line 1610
    .end local v14    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v15    # "impValue":I
    .end local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v22    # "currentTime":J
    .local v5, "currentTime":J
    .local v10, "impValue":I
    .local v11, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :goto_362
    move v10, v15

    .end local v11    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :goto_363
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v11, v21

    goto/16 :goto_68

    .line 1711
    .end local v0    # "i":I
    .end local v5    # "currentTime":J
    .end local v10    # "impValue":I
    .end local v13    # "j":I
    .end local v21    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v15    # "impValue":I
    .restart local v22    # "currentTime":J
    :catchall_369
    move-exception v0

    move-wide/from16 v5, v22

    move v10, v15

    .end local v22    # "currentTime":J
    .restart local v5    # "currentTime":J
    goto :goto_39b

    :catchall_36e
    move-exception v0

    move v10, v15

    goto :goto_39b

    .line 1610
    .end local v15    # "impValue":I
    .restart local v0    # "i":I
    .restart local v10    # "impValue":I
    .restart local v11    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v13    # "j":I
    :cond_371
    move v15, v10

    move-object/from16 v21, v11

    .line 1608
    .end local v10    # "impValue":I
    .end local v11    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v13    # "j":I
    .restart local v15    # "impValue":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4f

    .line 1711
    .end local v0    # "i":I
    .end local v15    # "impValue":I
    .restart local v10    # "impValue":I
    :catchall_378
    move-exception v0

    move v15, v10

    .end local v10    # "impValue":I
    .restart local v15    # "impValue":I
    goto :goto_39b

    .end local v15    # "impValue":I
    .restart local v10    # "impValue":I
    :cond_37b
    :try_start_37b
    monitor-exit v9
    :try_end_37c
    .catchall {:try_start_37b .. :try_end_37c} :catchall_39a

    .line 1713
    if-eqz v2, :cond_381

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    .line 1715
    :cond_381
    if-eqz v8, :cond_38c

    .line 1716
    invoke-direct {v1, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "LVU"

    invoke-virtual {v1, v9, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    :cond_38c
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_399

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 1720
    :cond_399
    return-void

    .line 1711
    :catchall_39a
    move-exception v0

    :goto_39b
    :try_start_39b
    monitor-exit v9
    :try_end_39c
    .catchall {:try_start_39b .. :try_end_39c} :catchall_39a

    throw v0
.end method

.method private updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V
    .registers 4
    .param p1, "info"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .param p2, "pi"    # Lcom/android/server/am/MARsPackageInfo;

    .line 3435
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 3436
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 3437
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 3438
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$900(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 3439
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1300(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3440
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 3441
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 3442
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I
    invoke-static {p1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 3443
    return-void
.end method

.method private updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    .registers 4
    .param p1, "pi"    # Lcom/android/server/am/MARsPackageInfo;
    .param p2, "info"    # Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 3420
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->fasType:I
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1602(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 3421
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->state:I
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1702(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 3422
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isDisabled:Z
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z

    .line 3423
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableType:I
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$902(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 3424
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 3425
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1502(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 3426
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$602(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Z)Z

    .line 3427
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->disableReason:I
    invoke-static {p2, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1802(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 3428
    return-void
.end method


# virtual methods
.method public addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .line 2969
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    if-eqz v0, :cond_5f

    .line 2970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2971
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2973
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2974
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->put(Ljava/lang/String;)V

    .line 2976
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5f
    return-void
.end method

.method public addRestrictListForCalmMode(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 3933
    const/4 v0, 0x0

    .line 3934
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3935
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 3936
    if-eqz v0, :cond_34

    .line 3937
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3938
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3940
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_34

    .line 3941
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 3944
    :cond_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_4f

    .line 3945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EXE"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3946
    return-void

    .line 3944
    :catchall_4f
    move-exception v2

    :try_start_50
    monitor-exit v1
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v2
.end method

.method public canRestrictBySEP(ILjava/lang/String;I)Z
    .registers 13
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 4171
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 4172
    return v1

    .line 4175
    :cond_a
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4176
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 4177
    :cond_15
    if-eqz p2, :cond_de

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1f

    goto/16 :goto_de

    .line 4180
    :cond_1f
    const/4 v2, 0x7

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez p1, :cond_8b

    .line 4181
    invoke-direct {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->isGoogleSigniture(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_46

    .line 4182
    sget-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t restrict google package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MARsPolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4183
    :cond_45
    return v1

    .line 4186
    :cond_46
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v6

    const/16 v7, 0x15

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p2, v8, v8}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_54

    .line 4187
    return v1

    .line 4190
    :cond_54
    :try_start_54
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService;

    .line 4191
    .local v6, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-virtual {v6, p2, v0}, Lcom/android/server/pm/PackageManagerService;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v7
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_61} :catch_73

    .line 4192
    .local v7, "pkgEnabledState":I
    if-eq v7, v3, :cond_72

    if-ne v7, v4, :cond_66

    goto :goto_72

    .line 4199
    .end local v6    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v7    # "pkgEnabledState":I
    :cond_66
    nop

    .line 4201
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2, v0, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_dd

    .line 4203
    return v5

    .line 4194
    .restart local v6    # "pms":Lcom/android/server/pm/PackageManagerService;
    .restart local v7    # "pkgEnabledState":I
    :cond_72
    :goto_72
    return v1

    .line 4196
    .end local v6    # "pms":Lcom/android/server/pm/PackageManagerService;
    .end local v7    # "pkgEnabledState":I
    :catch_73
    move-exception v2

    .line 4197
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MARsPolicyManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    return v1

    .line 4204
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_8b
    if-ne p1, v5, :cond_8e

    .line 4205
    return v5

    .line 4206
    :cond_8e
    if-ne p1, v4, :cond_91

    .line 4207
    return v5

    .line 4208
    :cond_91
    if-ne p1, v3, :cond_dd

    .line 4209
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 4210
    :try_start_96
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v4, p2, v0}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    .line 4211
    .local v4, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v6

    and-int/lit16 v6, v6, 0xc0

    if-nez v6, :cond_d8

    .line 4212
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_d8

    .line 4213
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v6

    and-int/2addr v6, v5

    if-nez v6, :cond_ba

    goto :goto_d8

    .line 4216
    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_ba
    monitor-exit v3
    :try_end_bb
    .catchall {:try_start_96 .. :try_end_bb} :catchall_da

    .line 4218
    const-string v3, ".sec."

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d7

    const-string v3, ".samsung."

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_cc

    goto :goto_d7

    .line 4221
    :cond_cc
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2, v0, p3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_dd

    .line 4223
    return v5

    .line 4219
    :cond_d7
    :goto_d7
    return v1

    .line 4214
    .restart local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_d8
    :goto_d8
    :try_start_d8
    monitor-exit v3

    return v1

    .line 4216
    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_da
    move-exception v1

    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_da

    throw v1

    .line 4225
    :cond_dd
    return v1

    .line 4178
    :cond_de
    :goto_de
    return v1
.end method

.method public cancelAllPolicy()V
    .registers 12

    .line 3788
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3789
    .local v0, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3790
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    :try_start_9
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_9a

    .line 3791
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3792
    .local v3, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_23
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_96

    .line 3793
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 3794
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v7

    if-eqz v7, :cond_5d

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_5d

    .line 3795
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    const-string v10, "CancelPolicy"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 3796
    goto :goto_93

    .line 3799
    :cond_5d
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    if-eqz v7, :cond_93

    .line 3800
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v7

    const/4 v8, 0x2

    if-nez v7, :cond_79

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v7

    if-ne v7, v8, :cond_71

    goto :goto_79

    .line 3810
    :cond_71
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3811
    invoke-virtual {v6, v4}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    goto :goto_93

    .line 3801
    :cond_79
    :goto_79
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v7

    if-ne v7, v8, :cond_90

    .line 3803
    invoke-virtual {v6, v4}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 3804
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-nez v7, :cond_90

    .line 3805
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 3807
    :cond_90
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3792
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_93
    :goto_93
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 3790
    .end local v3    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v5    # "j":I
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_9

    .line 3815
    .end local v2    # "i":I
    :cond_9a
    monitor-exit v1
    :try_end_9b
    .catchall {:try_start_9 .. :try_end_9b} :catchall_d8

    .line 3819
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c3

    .line 3820
    const/4 v2, 0x0

    .line 3821
    .local v2, "tempPkgName":Ljava/lang/String;
    const/4 v3, -0x1

    .line 3823
    .local v3, "tempUserId":I
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 3824
    :try_start_a7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 3825
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_b9

    .line 3826
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 3827
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    move v3, v7

    .line 3829
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_b9
    monitor-exit v5
    :try_end_ba
    .catchall {:try_start_a7 .. :try_end_ba} :catchall_c0

    .line 3830
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 3819
    .end local v2    # "tempPkgName":Ljava/lang/String;
    .end local v3    # "tempUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9c

    .line 3829
    .restart local v2    # "tempPkgName":Ljava/lang/String;
    .restart local v3    # "tempUserId":I
    :catchall_c0
    move-exception v4

    :try_start_c1
    monitor-exit v5
    :try_end_c2
    .catchall {:try_start_c1 .. :try_end_c2} :catchall_c0

    throw v4

    .line 3833
    .end local v1    # "i":I
    .end local v2    # "tempPkgName":Ljava/lang/String;
    .end local v3    # "tempUserId":I
    :cond_c3
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 3834
    :try_start_c6
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_d3

    .line 3835
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 3836
    :cond_d3
    monitor-exit v2

    .line 3837
    return-void

    .line 3836
    :catchall_d5
    move-exception v1

    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_c6 .. :try_end_d7} :catchall_d5

    throw v1

    .line 3815
    :catchall_d8
    move-exception v2

    :try_start_d9
    monitor-exit v1
    :try_end_da
    .catchall {:try_start_d9 .. :try_end_da} :catchall_d8

    throw v2
.end method

.method public cancelDisablePolicy(Ljava/lang/String;II)Z
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "flag"    # I

    .line 1936
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1937
    return v0

    .line 1939
    :cond_4
    const/4 v1, -0x1

    .line 1941
    .local v1, "disableType":I
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1942
    :try_start_8
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    .line 1943
    .local v3, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v3, :cond_c9

    .line 1944
    const-string v4, "MARsPolicyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelDisablePolicy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1945
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1944
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1946
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_79

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_79

    .line 1947
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v4

    move v1, v4

    .line 1948
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v4

    if-nez v4, :cond_79

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_79

    .line 1950
    monitor-exit v2

    return v5

    .line 1956
    .end local v3    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_79
    monitor-exit v2
    :try_end_7a
    .catchall {:try_start_8 .. :try_end_7a} :catchall_cb

    .line 1958
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    .line 1959
    .local v2, "pms":Lcom/android/server/pm/PackageManagerService;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1961
    .local v3, "mtoken":J
    nop

    .line 1962
    const/4 v6, -0x1

    if-eq v1, v6, :cond_90

    const/4 v6, 0x4

    if-eq v1, v6, :cond_90

    move v8, v1

    goto :goto_91

    :cond_90
    move v8, v0

    :goto_91
    :try_start_91
    const-string v11, "auto_disabler"

    .line 1961
    move-object v6, v2

    move-object v7, p1

    move v9, p3

    move v10, p2

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V

    .line 1964
    if-eqz p3, :cond_9e

    move v6, v5

    goto :goto_9f

    :cond_9e
    move v6, v0

    :goto_9f
    invoke-virtual {p0, p1, p2, v6}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_a2} :catch_a9
    .catchall {:try_start_91 .. :try_end_a2} :catchall_a7

    .line 1969
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    nop

    .line 1972
    return v5

    .line 1969
    :catchall_a7
    move-exception v0

    goto :goto_c5

    .line 1965
    :catch_a9
    move-exception v5

    .line 1966
    .local v5, "e":Ljava/lang/Exception;
    :try_start_aa
    const-string v6, "MARsPolicyManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occured in cancelDisablePolicy()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_a7

    .line 1967
    nop

    .line 1969
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1967
    return v0

    .line 1969
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_c5
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1970
    throw v0

    .line 1954
    .end local v2    # "pms":Lcom/android/server/pm/PackageManagerService;
    .local v3, "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_c9
    :try_start_c9
    monitor-exit v2

    return v0

    .line 1956
    .end local v3    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_cb
    move-exception v0

    monitor-exit v2
    :try_end_cd
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_cb

    throw v0
.end method

.method cancelPolicy(I)V
    .registers 13
    .param p1, "policyNum"    # I

    .line 2845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2846
    .local v0, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2847
    .local v1, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2848
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_d7

    .line 2849
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 2850
    .local v4, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_27
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_d3

    .line 2851
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 2852
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2854
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_65

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_65

    .line 2855
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    const-string v10, "CancelPolicy"

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2856
    goto :goto_cf

    .line 2859
    :cond_65
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_c6

    .line 2860
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    iget v8, v8, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v8, p1, :cond_c6

    .line 2861
    const/4 v8, 0x5

    if-ne p1, v8, :cond_79

    .line 2862
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    .line 2864
    :cond_79
    const/4 v8, 0x6

    if-ne p1, v8, :cond_7f

    .line 2865
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    .line 2867
    :cond_7f
    const/16 v8, 0xa

    if-ne p1, v8, :cond_ad

    .line 2868
    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 2869
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v7

    if-eqz v7, :cond_ad

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    const/4 v8, 0x4

    if-eq v7, v8, :cond_ad

    .line 2870
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v7

    .line 2871
    .local v7, "updatePi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v7, :cond_ad

    .line 2872
    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2876
    .end local v7    # "updatePi":Lcom/android/server/am/MARsPackageInfo;
    :cond_ad
    const/16 v7, 0x8

    if-ne p1, v7, :cond_c2

    .line 2877
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v7

    if-nez v7, :cond_be

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c2

    .line 2878
    :cond_be
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2879
    goto :goto_cf

    .line 2882
    :cond_c2
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 2886
    :cond_c6
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    if-nez v7, :cond_cf

    .line 2887
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2850
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_cf
    :goto_cf
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_27

    .line 2848
    .end local v4    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v5    # "j":I
    :cond_d3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_e

    .line 2892
    .end local v3    # "i":I
    :cond_d7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_d8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_f5

    .line 2893
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 2894
    .local v4, "pi":Lcom/android/server/am/MARsPackageInfo;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2892
    nop

    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d8

    .line 2896
    .end local v3    # "i":I
    :cond_f5
    monitor-exit v2
    :try_end_f6
    .catchall {:try_start_e .. :try_end_f6} :catchall_120

    .line 2899
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f7
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_11f

    .line 2900
    const/4 v3, 0x0

    .line 2901
    .local v3, "tempPkgName":Ljava/lang/String;
    const/4 v4, -0x1

    .line 2903
    .local v4, "tempUserId":I
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 2904
    :try_start_102
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 2905
    .restart local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_114

    .line 2906
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 2907
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    move v4, v7

    .line 2909
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_114
    monitor-exit v5
    :try_end_115
    .catchall {:try_start_102 .. :try_end_115} :catchall_11c

    .line 2910
    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 2899
    .end local v3    # "tempPkgName":Ljava/lang/String;
    .end local v4    # "tempUserId":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_f7

    .line 2909
    .restart local v3    # "tempPkgName":Ljava/lang/String;
    .restart local v4    # "tempUserId":I
    :catchall_11c
    move-exception v6

    :try_start_11d
    monitor-exit v5
    :try_end_11e
    .catchall {:try_start_11d .. :try_end_11e} :catchall_11c

    throw v6

    .line 2912
    .end local v2    # "i":I
    .end local v3    # "tempPkgName":Ljava/lang/String;
    .end local v4    # "tempUserId":I
    :cond_11f
    return-void

    .line 2896
    :catchall_120
    move-exception v3

    :try_start_121
    monitor-exit v2
    :try_end_122
    .catchall {:try_start_121 .. :try_end_122} :catchall_120

    throw v3
.end method

.method cancelPolicy(Ljava/lang/String;II)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "policyNum"    # I
    .param p3, "userId"    # I

    .line 2781
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2783
    .local v0, "needToBeEnabledList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2784
    :try_start_8
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, p1, p3}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 2785
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    const-string v3, "CancelPolicy"

    invoke-virtual {v2, p1, p3, v3}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2786
    monitor-exit v1

    return-void

    .line 2789
    :cond_27
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 2790
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v3, 0x0

    if-eqz v2, :cond_83

    .line 2791
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    const/16 v5, 0x8

    if-eqz v4, :cond_6e

    .line 2792
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    iget v4, v4, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    if-ne v4, p2, :cond_6e

    .line 2793
    if-eq p2, v5, :cond_49

    .line 2794
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 2795
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2804
    :cond_49
    const/4 v4, 0x5

    if-ne p2, v4, :cond_4f

    .line 2805
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    .line 2807
    :cond_4f
    const/4 v4, 0x6

    if-ne p2, v4, :cond_55

    .line 2808
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    .line 2810
    :cond_55
    const/16 v4, 0xa

    if-ne p2, v4, :cond_5c

    .line 2811
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 2813
    :cond_5c
    if-ne p2, v5, :cond_6e

    .line 2814
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v4

    if-nez v4, :cond_6b

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_6e

    .line 2815
    :cond_6b
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2821
    :cond_6e
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    if-nez v4, :cond_83

    if-eq p2, v5, :cond_83

    .line 2822
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2825
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_83
    monitor-exit v1
    :try_end_84
    .catchall {:try_start_8 .. :try_end_84} :catchall_ad

    .line 2828
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_85
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_ac

    .line 2829
    const/4 v2, 0x0

    .line 2830
    .local v2, "tempPkgName":Ljava/lang/String;
    const/4 v4, -0x1

    .line 2832
    .local v4, "tempUserId":I
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5

    .line 2833
    :try_start_90
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 2834
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_a2

    .line 2835
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 2836
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    move v4, v7

    .line 2838
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_a2
    monitor-exit v5
    :try_end_a3
    .catchall {:try_start_90 .. :try_end_a3} :catchall_a9

    .line 2839
    invoke-virtual {p0, v2, v4, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelDisablePolicy(Ljava/lang/String;II)Z

    .line 2828
    .end local v2    # "tempPkgName":Ljava/lang/String;
    .end local v4    # "tempUserId":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 2838
    .restart local v2    # "tempPkgName":Ljava/lang/String;
    .restart local v4    # "tempUserId":I
    :catchall_a9
    move-exception v3

    :try_start_aa
    monitor-exit v5
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v3

    .line 2841
    .end local v1    # "i":I
    .end local v2    # "tempPkgName":Ljava/lang/String;
    .end local v4    # "tempUserId":I
    :cond_ac
    return-void

    .line 2825
    :catchall_ad
    move-exception v2

    :try_start_ae
    monitor-exit v1
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v2
.end method

.method public changeAutoDisabledAppState(Ljava/lang/String;IZ)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPackageEnabled"    # Z

    .line 3857
    const/4 v0, 0x0

    .line 3859
    .local v0, "updateValue":Lcom/android/server/am/mars/database/FASEntity;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3860
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 3861
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_ed

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    if-eqz v3, :cond_ed

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v3

    iget v3, v3, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_ed

    .line 3862
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x400

    const/4 v7, 0x2

    if-ne v3, v7, :cond_2b

    .line 3863
    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto/16 :goto_ea

    .line 3865
    :cond_2b
    if-eqz p3, :cond_36

    .line 3866
    const/16 v3, 0x800

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 3867
    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto :goto_3d

    .line 3869
    :cond_36
    invoke-virtual {p0, v6, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 3870
    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 3874
    :goto_3d
    if-eqz p3, :cond_4e

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 3875
    invoke-virtual {v2, v7}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3876
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    goto :goto_62

    .line 3878
    :cond_4e
    invoke-virtual {v2, v5}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3879
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3880
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    invoke-virtual {v3, v4, v6}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 3882
    :goto_62
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableType(I)V

    .line 3883
    new-instance v3, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3884
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3885
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_88

    const-string v4, "1"

    goto :goto_8a

    :cond_88
    const-string v4, "0"

    :goto_8a
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3886
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_97

    const-string v4, "1"

    goto :goto_99

    :cond_97
    const-string v4, "0"

    :goto_99
    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrNew(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3887
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3888
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3889
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3890
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3891
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3892
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v3

    .line 3893
    invoke-virtual {v3}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v3

    move-object v0, v3

    .line 3895
    :goto_ea
    invoke-virtual {v2, v5}, Lcom/android/server/am/MARsPackageInfo;->setDisabled(Z)V

    .line 3897
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_ed
    monitor-exit v1
    :try_end_ee
    .catchall {:try_start_4 .. :try_end_ee} :catchall_f8

    .line 3899
    if-eqz v0, :cond_f7

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 3900
    :cond_f7
    return-void

    .line 3897
    :catchall_f8
    move-exception v2

    :try_start_f9
    monitor-exit v1
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    throw v2
.end method

.method public checkIsChinaModel()Z
    .registers 2

    .line 567
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    return v0
.end method

.method public checkMARsRestrictedAlarmTarget(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 994
    const/4 v0, 0x0

    .line 995
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v1, 0x0

    .line 996
    .local v1, "isAllowList":Z
    const/4 v2, 0x0

    .line 997
    .local v2, "isBlockList":Z
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 998
    :try_start_6
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    move-object v0, v4

    .line 999
    const/4 v4, 0x0

    if-nez v0, :cond_12

    .line 1000
    monitor-exit v3

    return v4

    .line 1001
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v5

    if-nez v5, :cond_20

    .line 1002
    monitor-exit v3

    return v4

    .line 1004
    :cond_20
    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-eqz v5, :cond_29

    move v5, v6

    goto :goto_2a

    :cond_29
    move v5, v4

    :goto_2a
    move v1, v5

    .line 1005
    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I

    and-int/2addr v5, v6

    if-eqz v5, :cond_32

    move v5, v6

    goto :goto_33

    :cond_32
    move v5, v4

    :goto_33
    move v2, v5

    .line 1006
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_6 .. :try_end_35} :catchall_65

    .line 1007
    const/4 v3, 0x0

    .line 1008
    .local v3, "isAlarmBlockList":Z
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getMadBirdEnabled()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 1009
    if-nez v1, :cond_4c

    if-nez v2, :cond_4a

    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->isPkgAUFAllowList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4c

    :cond_4a
    move v5, v6

    goto :goto_4d

    :cond_4c
    move v5, v4

    :goto_4d
    move v3, v5

    goto :goto_57

    .line 1011
    :cond_4f
    if-nez v1, :cond_55

    if-eqz v2, :cond_55

    move v5, v6

    goto :goto_56

    :cond_55
    move v5, v4

    :goto_56
    move v3, v5

    .line 1012
    :goto_57
    if-eqz v3, :cond_64

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_64

    move v4, v6

    :cond_64
    return v4

    .line 1006
    .end local v3    # "isAlarmBlockList":Z
    :catchall_65
    move-exception v4

    :try_start_66
    monitor-exit v3
    :try_end_67
    .catchall {:try_start_66 .. :try_end_67} :catchall_65

    throw v4
.end method

.method public clearAllPackages()V
    .registers 3

    .line 1061
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1062
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_10

    .line 1063
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 1064
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->size()I

    move-result v1

    if-lez v1, :cond_1d

    .line 1065
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->clear()V

    .line 1066
    :cond_1d
    monitor-exit v0

    .line 1067
    return-void

    .line 1066
    :catchall_1f
    move-exception v1

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public clearRestrictionInfo(Ljava/util/List;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 4590
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    if-nez p1, :cond_b

    goto :goto_12

    .line 4594
    :cond_b
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)V

    .line 4595
    const/4 v0, 0x1

    return v0

    .line 4591
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public createPolicies()V
    .registers 21

    .line 3618
    move-object/from16 v13, p0

    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_4
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ge v8, v0, :cond_8c

    .line 3619
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getName()Ljava/lang/String;

    move-result-object v10

    .line 3620
    .local v10, "policyName":Ljava/lang/String;
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getNum()I

    move-result v11

    .line 3621
    .local v11, "policyNum":I
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getEnabled()I

    move-result v12

    .line 3622
    .local v12, "enabled":I
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getTargetCategory()I

    move-result v14

    .line 3623
    .local v14, "targetCategory":I
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getRestriction()I

    move-result v15

    .line 3624
    .local v15, "restriction":I
    sget-object v0, Lcom/android/server/am/mars/database/MARsVersionManager;->mPolicyInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager$PolicyInfo;->getAction()I

    move-result v16

    .line 3625
    .local v16, "action":I
    const/16 v17, 0x0

    .line 3627
    .local v17, "bigdataRestriction":I
    if-ne v12, v9, :cond_5d

    .line 3628
    const/4 v0, 0x1

    move/from16 v18, v0

    .local v0, "policyEnabled":Z
    goto :goto_60

    .line 3630
    .end local v0    # "policyEnabled":Z
    :cond_5d
    const/4 v0, 0x0

    move/from16 v18, v0

    .line 3632
    .local v18, "policyEnabled":Z
    :goto_60
    new-instance v19, Lcom/android/server/am/MARsPolicyManager$Policy;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object v2, v10

    move v3, v11

    move/from16 v4, v18

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    .line 3633
    .local v0, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-ne v11, v9, :cond_76

    .line 3634
    iput-object v0, v13, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_88

    .line 3639
    :cond_76
    const/4 v1, 0x2

    if-ne v11, v1, :cond_7c

    .line 3640
    iput-object v0, v13, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_88

    .line 3650
    :cond_7c
    const/4 v1, 0x4

    if-ne v11, v1, :cond_82

    .line 3651
    iput-object v0, v13, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    goto :goto_88

    .line 3656
    :cond_82
    const/16 v1, 0x8

    if-ne v11, v1, :cond_88

    .line 3657
    iput-object v0, v13, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3618
    .end local v0    # "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    .end local v10    # "policyName":Ljava/lang/String;
    .end local v11    # "policyNum":I
    .end local v12    # "enabled":I
    .end local v14    # "targetCategory":I
    .end local v15    # "restriction":I
    .end local v16    # "action":I
    .end local v17    # "bigdataRestriction":I
    :cond_88
    :goto_88
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_4

    .line 3663
    .end local v8    # "i":I
    .end local v18    # "policyEnabled":Z
    :cond_8c
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_bc

    .line 3664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createPolicies---AL = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , AR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , FZ = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v13, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3666
    :cond_bc
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UDS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    .line 3667
    .local v14, "udsPolicyEnabled":Z
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v3, 0x5

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/16 v7, 0x9

    const-string/jumbo v2, "udspolicy"

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v14

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, v13, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3674
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_ConfigBikeMode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bikemode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 3675
    .local v15, "sbikePolicyEnabled":Z
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/4 v3, 0x6

    const/16 v5, 0x17

    const-string/jumbo v2, "sbkiepolicy"

    move-object v0, v8

    move-object/from16 v1, p0

    move v4, v15

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, v13, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3682
    const-string/jumbo v0, "sys.config.mars.game_policy"

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v16

    .line 3683
    .local v16, "gameConfigEnabled":Z
    move/from16 v4, v16

    .line 3684
    .local v4, "gamePolicyEnabled":Z
    new-instance v8, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v3, 0x9

    const/16 v5, 0x1b

    const/16 v7, 0xa

    const-string/jumbo v2, "gamePolicy"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v8, v13, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3691
    const/4 v0, 0x1

    .line 3692
    .local v0, "mpsmPolicyEnabled":Z
    new-instance v1, Lcom/android/server/am/MARsPolicyManager$Policy;

    const/16 v8, 0xa

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const/16 v12, 0x9

    const-string/jumbo v7, "mpsmpolicy"

    move-object v5, v1

    move-object/from16 v6, p0

    move v9, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/server/am/MARsPolicyManager$Policy;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IZIII)V

    iput-object v1, v13, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    .line 3698
    return-void
.end method

.method public deInit()V
    .registers 3

    .line 173
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/FilterManager;->deInit()V

    .line 174
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/util/UidStateMgr;->deInit(Lcom/android/server/am/ActivityManagerService;)V

    .line 175
    return-void
.end method

.method public doUpdatePackages(Z)V
    .registers 4
    .param p1, "timeChanged"    # Z

    .line 1540
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_b

    const-string v0, "MARsPolicyManager"

    const-string v1, "doUpdatePackages called!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    :cond_b
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    .line 1542
    return-void
.end method

.method protected dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3032
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "ACTIVITY MANAGER MARs (dumpsys activity mars)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3033
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 3035
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3036
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFirstNotiSentTimeForSleep : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mLastNotiSentTimeForDisabled : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3037
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMARsTargetPackages --- size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3039
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_59
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v2, v3, :cond_1f6

    .line 3040
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3041
    .local v3, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_74
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_1f2

    .line 3042
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 3043
    .local v7, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v7, :cond_1ee

    .line 3048
    const-string v8, "-RST "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v8

    invoke-direct {p0, v8, v9}, Lcom/android/server/am/MARsPolicyManager;->formatDateTime(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3051
    const-string v8, "-PT "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%6d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3052
    const-string v8, "-ST "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%2d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3053
    const-string v8, "-DT "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%2d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3054
    const-string v8, "-DR "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%2d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3055
    const-string v8, "-DD "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    if-eqz v8, :cond_108

    const-string v8, "T"

    goto :goto_10a

    :cond_108
    const-string v8, "F"

    :goto_10a
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3061
    const-string v8, "-Uid "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%8d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3062
    const-string v8, "("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3063
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_138

    .line 3064
    const-string v8, "S"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_13d

    .line 3066
    :cond_138
    const-string v8, "-"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3067
    :goto_13d
    const-string v8, ")"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3069
    const-string v8, "-Idle"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3070
    const-string v8, "("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3075
    const-string v8, ")"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3076
    const-string v8, "-maxLv "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 3078
    const-string v8, "-FAS "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v9

    if-eqz v9, :cond_170

    const-string v9, "Y"

    goto :goto_172

    :cond_170
    const-string v9, "N"

    :goto_172
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%4d"

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v4

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3079
    const-string v8, "("

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3080
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    and-int/lit16 v8, v8, 0x81

    if-eqz v8, :cond_1a6

    const-string v8, "A"

    goto :goto_1a8

    :cond_1a6
    const-string v8, "-"

    :goto_1a8
    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3081
    const-string v8, ")"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3083
    const-string v8, "-BU "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%10f"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getBatteryUsage()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3085
    const-string v8, "-Pkg "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3086
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v8

    if-eqz v8, :cond_1e9

    .line 3087
    const-string v8, "--(R)"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3089
    :cond_1e9
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3041
    .end local v7    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_1ee
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_74

    .line 3039
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v6    # "j":I
    :cond_1f2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_59

    .line 3094
    .end local v2    # "i":I
    :cond_1f6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMARsRestrictedPackages --- size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3095
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_212
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_293

    .line 3096
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3097
    .restart local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_22b
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_290

    .line 3098
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 3099
    .restart local v7    # "pi":Lcom/android/server/am/MARsPackageInfo;
    const-string v8, "-Uid "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v8, "%8d"

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v4

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3100
    const-string v8, "-Pkg "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3101
    const-string v8, "-POL "

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3102
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    if-eqz v8, :cond_282

    .line 3103
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager$Policy;->toString()Ljava/lang/String;

    move-result-object v8

    .line 3107
    .local v8, "str":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3108
    .end local v8    # "str":Ljava/lang/String;
    goto :goto_288

    .line 3109
    :cond_282
    const-string/jumbo v8, "null"

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3111
    :goto_288
    const-string v8, ""

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    .end local v7    # "pi":Lcom/android/server/am/MARsPackageInfo;
    add-int/lit8 v6, v6, 0x1

    goto :goto_22b

    .line 3095
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v6    # "j":I
    :cond_290
    add-int/lit8 v2, v2, 0x1

    goto :goto_212

    .line 3114
    .end local v2    # "i":I
    :cond_293
    monitor-exit v1
    :try_end_294
    .catchall {:try_start_14 .. :try_end_294} :catchall_2b2

    .line 3116
    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3118
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    if-eqz v1, :cond_2b1

    .line 3119
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    new-instance v2, Landroid/util/PrintWriterPrinter;

    invoke-direct {v2, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v3, "MARsHandler"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsHandler$MainHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3121
    :cond_2b1
    return-void

    .line 3114
    :catchall_2b2
    move-exception v2

    :try_start_2b3
    monitor-exit v1
    :try_end_2b4
    .catchall {:try_start_2b3 .. :try_end_2b4} :catchall_2b2

    throw v2
.end method

.method protected dumpMARsCommand(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 3124
    const/4 v0, 0x1

    aget-object v1, p3, v0

    const-string v2, "bigdata"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3125
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsHandler;->sendBigdataInfoToHQM(Z)V

    .line 3128
    :cond_12
    aget-object v1, p3, v0

    const-string v2, "bstat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 3129
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getBatteryStats()V

    .line 3132
    :cond_1f
    aget-object v1, p3, v0

    const-string v2, "disable"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_e1

    .line 3133
    array-length v1, p3

    if-ge v1, v2, :cond_5b

    .line 3134
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v1, :cond_e1

    .line 3135
    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    xor-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 3136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabler policy has been turned "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v4

    if-eqz v4, :cond_4c

    const-string/jumbo v4, "on"

    goto :goto_4f

    :cond_4c
    const-string/jumbo v4, "off"

    :goto_4f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_e1

    .line 3139
    :cond_5b
    array-length v1, p3

    if-ne v1, v2, :cond_e1

    .line 3140
    aget-object v1, p3, v3

    .line 3141
    .local v1, "pkgName":Ljava/lang/String;
    if-nez v1, :cond_68

    .line 3142
    const-string v0, "Disable will not work, please input proper packageName!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    return-void

    .line 3145
    :cond_68
    const/4 v4, -0x1

    .line 3146
    .local v4, "uid":I
    const/4 v5, 0x0

    .line 3147
    .local v5, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v6, 0x0

    .line 3148
    .local v6, "disabled":Z
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 3149
    :try_start_6e
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v9, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getUserId()I

    move-result v9

    invoke-virtual {p0, v8, v1, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v8

    move-object v5, v8

    .line 3150
    if-eqz v5, :cond_87

    .line 3151
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    move v4, v8

    .line 3152
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v8

    move v6, v8

    .line 3154
    :cond_87
    monitor-exit v7
    :try_end_88
    .catchall {:try_start_6e .. :try_end_88} :catchall_de

    .line 3156
    const/4 v7, -0x1

    if-eq v4, v7, :cond_c8

    .line 3157
    const/4 v7, 0x0

    .line 3158
    .local v7, "succeed":Z
    const/4 v8, 0x0

    if-eqz v6, :cond_94

    .line 3159
    invoke-direct {p0, v1, v4, v8}, Lcom/android/server/am/MARsPolicyManager;->enablePackageBySEP(Ljava/lang/String;IZ)Z

    move-result v7

    goto :goto_98

    .line 3161
    :cond_94
    invoke-direct {p0, v1, v4, v8}, Lcom/android/server/am/MARsPolicyManager;->disablePackageBySEP(Ljava/lang/String;IZ)Z

    move-result v7

    .line 3163
    :goto_98
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v7, :cond_bb

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " has been "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v6, :cond_b1

    const-string v10, "enabled"

    goto :goto_b3

    :cond_b1
    const-string v10, "disabled!"

    :goto_b3
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_bd

    :cond_bb
    const-string v9, " is not in our target, we will not manage it!"

    :goto_bd
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3164
    .end local v7    # "succeed":Z
    goto :goto_e1

    .line 3165
    :cond_c8
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v8, "is not in our target, we will not manage it!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e1

    .line 3154
    :catchall_de
    move-exception v0

    :try_start_df
    monitor-exit v7
    :try_end_e0
    .catchall {:try_start_df .. :try_end_e0} :catchall_de

    throw v0

    .line 3171
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v4    # "uid":I
    .end local v5    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v6    # "disabled":Z
    :cond_e1
    :goto_e1
    aget-object v1, p3, v0

    const-string v4, "filter"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_126

    .line 3174
    :try_start_ec
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filter -- freecess "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v5

    aget-object v6, p3, v3

    .line 3175
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget-object v7, p3, v2

    aget-object v8, p3, v4

    .line 3176
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x5

    aget-object v9, p3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3174
    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11d
    .catch Ljava/lang/NumberFormatException; {:try_start_ec .. :try_end_11d} :catch_11e

    .line 3179
    goto :goto_126

    .line 3177
    :catch_11e
    move-exception v1

    .line 3178
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "MARsPolicyManager"

    const-string v6, "dumpMARsCommand(filter) parseInt error!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_126
    :goto_126
    aget-object v1, p3, v0

    const-string v5, "aufbucket"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_150

    .line 3184
    :try_start_130
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    .line 3185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AUFAllowBucketSize set "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_14e
    .catch Ljava/lang/NumberFormatException; {:try_start_130 .. :try_end_14e} :catch_14f

    goto :goto_150

    .line 3186
    :catch_14f
    move-exception v1

    .line 3189
    :cond_150
    :goto_150
    aget-object v1, p3, v0

    const-string/jumbo v5, "history"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15e

    .line 3190
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3193
    :cond_15e
    aget-object v1, p3, v0

    const-string/jumbo v5, "level"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ce

    .line 3194
    array-length v1, p3

    if-ge v1, v2, :cond_172

    .line 3195
    const-string v1, "MARstest -- need levelNum and packageName"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1ce

    .line 3196
    :cond_172
    array-length v1, p3

    if-ne v1, v4, :cond_1ce

    .line 3198
    :try_start_175
    aget-object v1, p3, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3199
    .local v1, "level":I
    const-string v5, "-a"

    aget-object v6, p3, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c2

    .line 3200
    sget-object v5, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v5
    :try_end_188
    .catch Ljava/lang/NumberFormatException; {:try_start_175 .. :try_end_188} :catch_1c8

    .line 3201
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_189
    :try_start_189
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_1bd

    .line 3202
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/SparseArray;

    .line 3203
    .local v7, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1a2
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_1ba

    .line 3204
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    .line 3205
    .local v9, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v9, :cond_1b7

    .line 3206
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v1, v10}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V

    .line 3203
    .end local v9    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_1b7
    add-int/lit8 v8, v8, 0x1

    goto :goto_1a2

    .line 3201
    .end local v7    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v8    # "j":I
    :cond_1ba
    add-int/lit8 v6, v6, 0x1

    goto :goto_189

    .line 3210
    .end local v6    # "i":I
    :cond_1bd
    monitor-exit v5

    goto :goto_1c7

    :catchall_1bf
    move-exception v6

    monitor-exit v5
    :try_end_1c1
    .catchall {:try_start_189 .. :try_end_1c1} :catchall_1bf

    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_1c1
    throw v6

    .line 3212
    .restart local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :cond_1c2
    aget-object v5, p3, v2

    .line 3213
    .local v5, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v1, v5}, Lcom/android/server/am/MARsPolicyManager;->setMaxLevel(ILjava/lang/String;)V
    :try_end_1c7
    .catch Ljava/lang/NumberFormatException; {:try_start_1c1 .. :try_end_1c7} :catch_1c8

    .line 3217
    .end local v1    # "level":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :goto_1c7
    goto :goto_1ce

    .line 3215
    :catch_1c8
    move-exception v1

    .line 3216
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v5, "MARstest -- NumberFormatException!"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3221
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_1ce
    :goto_1ce
    aget-object v1, p3, v0

    const-string/jumbo v5, "list"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1dc

    .line 3222
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->dumpMARs(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 3225
    :cond_1dc
    aget-object v1, p3, v0

    const-string/jumbo v5, "time_disable"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_202

    .line 3226
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    aget-object v5, p3, v3

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {p0, v1, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 3227
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v1, :cond_202

    .line 3228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 3229
    .local v5, "currentTime":J
    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    sub-long v7, v5, v7

    invoke-virtual {v1, v7, v8}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 3233
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v5    # "currentTime":J
    :cond_202
    aget-object v1, p3, v0

    const-string/jumbo v5, "update"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_210

    .line 3234
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->updateFromMARsMainThread()V

    .line 3237
    :cond_210
    aget-object v1, p3, v0

    const-string/jumbo v5, "widget"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_222

    .line 3238
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getBoundAppWidgetPackages()V

    .line 3241
    :cond_222
    aget-object v1, p3, v0

    const-string/jumbo v5, "query"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_230

    .line 3242
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->queryUsageStatsForUser()V

    .line 3245
    :cond_230
    aget-object v1, p3, v0

    const-string v5, "candidate"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_285

    .line 3246
    array-length v1, p3

    if-ge v1, v2, :cond_243

    .line 3247
    const-string v1, "MARstest -- need type and packageName"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_285

    .line 3248
    :cond_243
    array-length v1, p3

    if-ne v1, v4, :cond_285

    .line 3250
    :try_start_246
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1
    :try_end_249
    .catch Ljava/lang/NumberFormatException; {:try_start_246 .. :try_end_249} :catch_27f

    .line 3251
    :try_start_249
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    aget-object v2, p3, v2

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getUserId()I

    move-result v6

    invoke-virtual {p0, v5, v2, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 3252
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_275

    .line 3253
    const-string v5, "-s"

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_267

    .line 3254
    invoke-virtual {p0, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_27a

    .line 3255
    :cond_267
    const-string v5, "-d"

    aget-object v6, p3, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27a

    .line 3256
    invoke-virtual {p0, v4, v2}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_27a

    .line 3259
    :cond_275
    const-string v4, "MARstest -- not mars target!"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3261
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_27a
    :goto_27a
    monitor-exit v1

    .line 3264
    goto :goto_285

    .line 3261
    :catchall_27c
    move-exception v2

    monitor-exit v1
    :try_end_27e
    .catchall {:try_start_249 .. :try_end_27e} :catchall_27c

    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :try_start_27e
    throw v2
    :try_end_27f
    .catch Ljava/lang/NumberFormatException; {:try_start_27e .. :try_end_27f} :catch_27f

    .line 3262
    .restart local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "args":[Ljava/lang/String;
    :catch_27f
    move-exception v1

    .line 3263
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v2, "MARstest -- NumberFormatException!"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3268
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_285
    :goto_285
    aget-object v1, p3, v0

    const-string v2, "debug"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3ea

    .line 3269
    aget-object v1, p3, v3

    const-string/jumbo v2, "help"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2dd

    .line 3270
    const-string v0, "MARs debug options commands:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    const-string v0, "  help"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3272
    const-string v0, "     Print this help text."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3273
    const-string v0, "  all"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3274
    const-string v0, "     Enable/Disable all mars debug message."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3275
    const-string v0, "  olaf"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3276
    const-string v0, "     Enable/Disable olaf debug message."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3277
    const-string v0, "  freecess"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3278
    const-string v0, "     Enable/Disable freecess debug message."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3279
    const-string v0, "  database"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    const-string v0, "     Enable/Disable MARs database debug message."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3281
    const-string v0, "  filter"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3282
    const-string v0, "     Enable/Disable MARs filter debug message."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3ea

    .line 3283
    :cond_2dd
    aget-object v1, p3, v3

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_312

    .line 3284
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    .line 3285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mars debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v1, :cond_2fe

    const-string/jumbo v1, "on"

    goto :goto_301

    :cond_2fe
    const-string/jumbo v1, "off"

    :goto_301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3ea

    .line 3286
    :cond_312
    aget-object v1, p3, v3

    const-string/jumbo v2, "olaf"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_348

    .line 3287
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    .line 3288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " olaf debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    if-eqz v1, :cond_334

    const-string/jumbo v1, "on"

    goto :goto_337

    :cond_334
    const-string/jumbo v1, "off"

    :goto_337
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3ea

    .line 3289
    :cond_348
    aget-object v1, p3, v3

    const-string/jumbo v2, "freecess"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37d

    .line 3290
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    .line 3291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " freecess debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    if-eqz v1, :cond_36a

    const-string/jumbo v1, "on"

    goto :goto_36d

    :cond_36a
    const-string/jumbo v1, "off"

    :goto_36d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3ea

    .line 3292
    :cond_37d
    aget-object v1, p3, v3

    const-string v2, "database"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b1

    .line 3293
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    .line 3294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " database debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    if-eqz v1, :cond_39e

    const-string/jumbo v1, "on"

    goto :goto_3a1

    :cond_39e
    const-string/jumbo v1, "off"

    :goto_3a1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3ea

    .line 3295
    :cond_3b1
    aget-object v1, p3, v3

    const-string v2, "filter"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e5

    .line 3296
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    .line 3297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " filter debugging mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    if-eqz v1, :cond_3d2

    const-string/jumbo v1, "on"

    goto :goto_3d5

    :cond_3d2
    const-string/jumbo v1, "off"

    :goto_3d5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " now!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3ea

    .line 3299
    :cond_3e5
    const-string v0, "Error: debug command requires argument"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3302
    :cond_3ea
    :goto_3ea
    return-void
.end method

.method protected dumpMARsHistory(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 3305
    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3306
    const-string v1, "ACTIVITY MANAGER MARs HISTORY (dumpsys activity mars history)"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3308
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    if-eqz v1, :cond_26

    .line 3309
    invoke-virtual {v1}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->getBuffer()[Ljava/lang/String;

    move-result-object v1

    .line 3310
    .local v1, "historyBufferArray":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mHistoryBufferArray:Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPolicyManager$HistoryBuffer;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_23

    .line 3311
    aget-object v3, v1, v2

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3310
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3313
    .end local v2    # "i":I
    :cond_23
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3315
    .end local v1    # "historyBufferArray":[Ljava/lang/String;
    :cond_26
    return-void
.end method

.method forceRunPolicyForRecentKill(ILjava/lang/String;)Z
    .registers 22
    .param p1, "policyNum"    # I
    .param p2, "packageInfo"    # Ljava/lang/String;

    .line 2140
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v0

    .line 2141
    .local v9, "actionUids":Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 2143
    .local v10, "isActionUidExist":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v11

    .line 2144
    .local v11, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    const/4 v12, 0x0

    if-eqz v11, :cond_1bd

    iget-boolean v0, v11, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_1a

    move/from16 v4, p1

    goto/16 :goto_1bf

    .line 2154
    :cond_1a
    sget-object v13, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v13

    .line 2155
    const/4 v0, 0x0

    .line 2156
    .local v0, "packageName":Ljava/lang/String;
    :try_start_1e
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2157
    .local v1, "userId":I
    const/4 v14, 0x1

    const/4 v15, 0x2

    if-eqz v8, :cond_5d

    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 2158
    const-string v2, ","

    invoke-virtual {v8, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2159
    .local v2, "packageSplitList":[Ljava/lang/String;
    if-eqz v2, :cond_5b

    array-length v3, v2

    if-ne v3, v15, :cond_5b

    .line 2160
    aget-object v3, v2, v12

    if-eqz v3, :cond_43

    .line 2161
    aget-object v3, v2, v12
    :try_end_41
    .catchall {:try_start_1e .. :try_end_41} :catchall_1b6

    move-object v0, v3

    goto :goto_44

    .line 2160
    :cond_43
    move-object v3, v0

    .line 2163
    .end local v0    # "packageName":Ljava/lang/String;
    .local v3, "packageName":Ljava/lang/String;
    :goto_44
    :try_start_44
    aget-object v0, v2, v14

    if-eqz v0, :cond_4f

    .line 2164
    aget-object v0, v2, v14

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_4e
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_4e} :catch_51
    .catchall {:try_start_44 .. :try_end_4e} :catchall_1b6

    move v1, v0

    .line 2167
    :cond_4f
    move-object v0, v3

    goto :goto_5b

    .line 2165
    :catch_51
    move-exception v0

    .line 2166
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_52
    const-string v4, "MARsPolicyManager"

    const-string/jumbo v5, "forceRunPolicyForRecentKill parseInt error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 2169
    .end local v2    # "packageSplitList":[Ljava/lang/String;
    .end local v3    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    :cond_5b
    :goto_5b
    move v6, v1

    goto :goto_60

    .line 2170
    :cond_5d
    move-object/from16 v0, p2

    move v6, v1

    .line 2172
    .end local v1    # "userId":I
    .local v6, "userId":I
    :goto_60
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v1, v0, v6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    move-object v5, v1

    .line 2174
    .local v5, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    if-nez v5, :cond_6b

    .line 2175
    monitor-exit v13

    return v12

    .line 2181
    :cond_6b
    new-instance v16, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v17

    const/16 v18, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object v12, v5

    .end local v5    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    .local v12, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "userId":I
    .local v17, "userId":I
    move-object/from16 v6, v18

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v16

    .line 2182
    .local v1, "tempTarget":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v12, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2183
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v17    # "userId":I
    monitor-exit v13
    :try_end_8f
    .catchall {:try_start_52 .. :try_end_8f} :catchall_1b6

    .line 2185
    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    :try_start_92
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2186
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_c2

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 2187
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    const-string v5, "RecentKill"

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2194
    :cond_c2
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v0

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-direct {v7, v0, v11, v3, v4}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v0

    if-eqz v0, :cond_1a4

    .line 2195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J
    invoke-static {v1, v3, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J

    .line 2196
    const/4 v0, 0x3

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {v1, v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 2197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    const/4 v10, 0x1

    .line 2202
    monitor-exit v2
    :try_end_f9
    .catchall {:try_start_92 .. :try_end_f9} :catchall_1ac

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2204
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 2205
    if-eqz v12, :cond_15b

    .line 2206
    :try_start_101
    invoke-direct {v7, v1, v12}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2207
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v0, v2, :cond_117

    .line 2208
    invoke-virtual {v12, v11}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V
    :try_end_10f
    .catchall {:try_start_101 .. :try_end_10f} :catchall_157

    .line 2209
    move/from16 v4, p1

    if-ne v4, v15, :cond_119

    .line 2210
    :try_start_113
    invoke-virtual {v7, v15, v12}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_119

    .line 2207
    :cond_117
    move/from16 v4, p1

    .line 2216
    :cond_119
    :goto_119
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v2, v5}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_137

    .line 2217
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v2, v5, v12}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15d

    .line 2218
    :cond_137
    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v0, v2, :cond_15d

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v0

    if-ne v0, v15, :cond_15d

    .line 2219
    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2220
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    invoke-virtual {v0, v2, v5, v12}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_15d

    .line 2228
    :catchall_157
    move-exception v0

    move/from16 v4, p1

    goto :goto_1a2

    .line 2205
    :cond_15b
    move/from16 v4, p1

    .line 2224
    :cond_15d
    :goto_15d
    if-eqz v10, :cond_179

    .line 2225
    const-string v0, "EXE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recent "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2227
    :cond_179
    const-string v0, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recent_Kill: add mRestrictedPackages "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " policy --"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    monitor-exit v3

    .line 2230
    return v14

    .line 2228
    :catchall_1a1
    move-exception v0

    :goto_1a2
    monitor-exit v3
    :try_end_1a3
    .catchall {:try_start_113 .. :try_end_1a3} :catchall_1a1

    throw v0

    .line 2200
    :cond_1a4
    move/from16 v4, p1

    :try_start_1a6
    monitor-exit v2
    :try_end_1a7
    .catchall {:try_start_1a6 .. :try_end_1a7} :catchall_1b4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    const/4 v2, 0x0

    return v2

    .line 2202
    :catchall_1ac
    move-exception v0

    move/from16 v4, p1

    :goto_1af
    :try_start_1af
    monitor-exit v2
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1b4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1b4
    move-exception v0

    goto :goto_1af

    .line 2183
    .end local v1    # "tempTarget":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v12    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    :catchall_1b6
    move-exception v0

    move/from16 v4, p1

    :goto_1b9
    :try_start_1b9
    monitor-exit v13
    :try_end_1ba
    .catchall {:try_start_1b9 .. :try_end_1ba} :catchall_1bb

    throw v0

    :catchall_1bb
    move-exception v0

    goto :goto_1b9

    .line 2144
    :cond_1bd
    move/from16 v4, p1

    .line 2145
    :goto_1bf
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    const/4 v1, 0x0

    return v1
.end method

.method public forceRunPolicyForSpecificPackage(ILjava/util/ArrayList;)V
    .registers 25
    .param p1, "policyNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2391
    .local p2, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    new-instance v0, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v0}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    move-object v8, v0

    .line 2392
    .local v8, "targetPackages":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Lcom/android/server/am/MARsPackageInfo;>;"
    new-instance v0, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v0}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    move-object v9, v0

    .line 2393
    .local v9, "runningPackages":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 2394
    .local v10, "tempTargetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v11, v0

    .line 2395
    .local v11, "actionUids":Ljava/lang/StringBuilder;
    const/4 v12, 0x0

    .line 2397
    .local v12, "isActionUidExist":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v13

    .line 2398
    .local v13, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v13, :cond_2e1

    iget-boolean v0, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_29

    move/from16 v4, p1

    goto/16 :goto_2e3

    .line 2404
    :cond_29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2406
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getActiveNotifications()V

    .line 2407
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2414
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 2415
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_42
    :try_start_42
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_c9

    .line 2416
    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 2417
    .local v2, "packageInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2418
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 2419
    .local v3, "userId":I
    const/4 v4, 0x0

    .line 2421
    .local v4, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_ad

    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_ad

    .line 2422
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 2423
    .local v6, "packageSplitList":[Ljava/lang/String;
    if-eqz v6, :cond_a4

    array-length v15, v6

    move-object/from16 v18, v0

    const/4 v0, 0x2

    .end local v0    # "packageName":Ljava/lang/String;
    .local v18, "packageName":Ljava/lang/String;
    if-ne v15, v0, :cond_a1

    .line 2424
    const/4 v0, 0x0

    aget-object v15, v6, v0

    if-eqz v15, :cond_7a

    .line 2425
    aget-object v0, v6, v0
    :try_end_78
    .catchall {:try_start_42 .. :try_end_78} :catchall_2da

    move-object v15, v0

    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    goto :goto_7c

    .line 2424
    .end local v0    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    :cond_7a
    move-object/from16 v15, v18

    .line 2427
    .end local v18    # "packageName":Ljava/lang/String;
    .local v15, "packageName":Ljava/lang/String;
    :goto_7c
    const/4 v0, 0x1

    :try_start_7d
    aget-object v16, v6, v0

    if-eqz v16, :cond_88

    .line 2428
    aget-object v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_87} :catch_8b
    .catchall {:try_start_7d .. :try_end_87} :catchall_2da

    move v3, v0

    .line 2431
    :cond_88
    move-object/from16 v17, v4

    goto :goto_98

    .line 2429
    :catch_8b
    move-exception v0

    .line 2430
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-object/from16 v16, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v16, "e":Ljava/lang/NumberFormatException;
    :try_start_8e
    const-string v0, "MARsPolicyManager"

    move-object/from16 v17, v4

    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v17, "pi":Lcom/android/server/am/MARsPackageInfo;
    const-string/jumbo v4, "forceRunPolicyForSpecificPackage parseInt error!"

    invoke-static {v0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    .end local v16    # "e":Ljava/lang/NumberFormatException;
    :goto_98
    iget-object v0, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v0, v15, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    move-object v4, v0

    move-object v0, v15

    .end local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    goto :goto_ac

    .line 2423
    .end local v15    # "packageName":Ljava/lang/String;
    .restart local v18    # "packageName":Ljava/lang/String;
    :cond_a1
    move-object/from16 v17, v4

    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    goto :goto_a8

    .end local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v18    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    .restart local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_a4
    move-object/from16 v18, v0

    move-object/from16 v17, v4

    .line 2434
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v6    # "packageSplitList":[Ljava/lang/String;
    .restart local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v18    # "packageName":Ljava/lang/String;
    :goto_a8
    move-object/from16 v4, v17

    move-object/from16 v0, v18

    .end local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_ac
    goto :goto_b8

    .line 2421
    :cond_ad
    move-object/from16 v18, v0

    move-object/from16 v17, v4

    .line 2435
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v18    # "packageName":Ljava/lang/String;
    move-object v0, v2

    .line 2436
    .end local v18    # "packageName":Ljava/lang/String;
    .restart local v0    # "packageName":Ljava/lang/String;
    iget-object v4, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v7, v4, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v4

    .line 2439
    .end local v17    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_b8
    if-eqz v4, :cond_c5

    .line 2440
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v15

    invoke-virtual {v8, v6, v15, v4}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2415
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "packageInfo":Ljava/lang/String;
    .end local v3    # "userId":I
    .end local v4    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_c5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_42

    :cond_c9
    move-object/from16 v5, p2

    .line 2443
    .end local v1    # "i":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cc
    invoke-virtual {v8}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_18a

    .line 2444
    invoke-virtual {v8}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v15, v1

    .line 2445
    .local v15, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v1, 0x0

    move v6, v1

    .local v6, "j":I
    :goto_e3
    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v6, v1, :cond_180

    .line 2446
    invoke-virtual {v15, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;

    move-object v4, v1

    .line 2447
    .local v4, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget v3, v13, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v7, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 2448
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_12d

    .line 2449
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    move/from16 v18, v6

    const/16 v19, 0x1

    goto :goto_17a

    .line 2448
    :cond_12d
    move-object v2, v4

    move/from16 v18, v6

    const/16 v19, 0x1

    goto :goto_17a

    .line 2455
    :cond_133
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    .line 2456
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2457
    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    .line 2455
    move/from16 v18, v6

    const/4 v6, 0x1

    .end local v6    # "j":I
    .local v18, "j":I
    invoke-virtual {v1, v6, v2, v3, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_150

    .line 2458
    move-object v2, v4

    move/from16 v19, v6

    goto :goto_17a

    .line 2461
    :cond_150
    new-instance v16, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v21, v4

    .end local v4    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    .local v21, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    move v4, v5

    move/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v6, v20

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v16

    .line 2462
    .local v1, "psInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    move-object/from16 v2, v21

    .end local v21    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    .local v2, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    invoke-direct {v7, v2, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2464
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2445
    .end local v1    # "psInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :goto_17a
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v5, p2

    .end local v18    # "j":I
    .restart local v6    # "j":I
    goto/16 :goto_e3

    .end local v2    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    :cond_180
    move/from16 v18, v6

    const/16 v19, 0x1

    .line 2443
    .end local v6    # "j":I
    .end local v15    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v5, p2

    goto/16 :goto_cc

    :cond_18a
    const/16 v19, 0x1

    .line 2467
    .end local v0    # "i":I
    monitor-exit v14
    :try_end_18d
    .catchall {:try_start_8e .. :try_end_18d} :catchall_2da

    .line 2469
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_190
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2470
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0    # "i":I
    :goto_199
    if-ltz v0, :cond_20d

    .line 2471
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2473
    .local v2, "tempPSInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v3

    if-eqz v3, :cond_1ce

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1ce

    .line 2474
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    const-string v6, "SMKill"

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2481
    :cond_1ce
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-direct {v7, v3, v13, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v3

    if-eqz v3, :cond_206

    .line 2482
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J
    invoke-static {v2, v3, v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J

    .line 2483
    const/4 v3, 0x3

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {v2, v3}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 2484
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2485
    const/4 v3, 0x1

    move v12, v3

    .end local v12    # "isActionUidExist":Z
    .local v3, "isActionUidExist":Z
    goto :goto_20a

    .line 2487
    .end local v3    # "isActionUidExist":Z
    .restart local v12    # "isActionUidExist":Z
    :cond_206
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2488
    nop

    .line 2470
    .end local v2    # "tempPSInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :goto_20a
    add-int/lit8 v0, v0, -0x1

    goto :goto_199

    .line 2491
    .end local v0    # "i":I
    :cond_20d
    monitor-exit v1
    :try_end_20e
    .catchall {:try_start_190 .. :try_end_20e} :catchall_2d0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2493
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 2494
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_215
    :try_start_215
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2ba

    .line 2495
    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2497
    .local v1, "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v4

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v7, v3, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    .line 2499
    .local v3, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v3, :cond_28c

    .line 2500
    invoke-direct {v7, v1, v3}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2501
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v4

    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v4, v5, :cond_248

    .line 2502
    invoke-virtual {v3, v13}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V
    :try_end_23f
    .catchall {:try_start_215 .. :try_end_23f} :catchall_2c9

    .line 2503
    move/from16 v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_24a

    .line 2504
    :try_start_244
    invoke-virtual {v7, v5, v3}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    goto :goto_24a

    .line 2501
    :cond_248
    move/from16 v4, p1

    .line 2508
    :cond_24a
    :goto_24a
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v5, v6, v14}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_269

    .line 2509
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v5, v6, v14, v3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x2

    goto :goto_28f

    .line 2510
    :cond_269
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v5

    iget-object v6, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-ne v5, v6, :cond_28a

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_28f

    .line 2511
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2512
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v15

    invoke-virtual {v5, v14, v15, v3}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_28f

    .line 2510
    :cond_28a
    const/4 v6, 0x2

    goto :goto_28f

    .line 2499
    :cond_28c
    move/from16 v4, p1

    const/4 v6, 0x2

    .line 2516
    :cond_28f
    :goto_28f
    const-string v5, "MARsPolicyManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add mRestrictedPackages "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " policy --"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    nop

    .end local v1    # "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v3    # "pi":Lcom/android/server/am/MARsPackageInfo;
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_215

    :cond_2ba
    move/from16 v4, p1

    .line 2518
    .end local v0    # "i":I
    monitor-exit v2
    :try_end_2bd
    .catchall {:try_start_244 .. :try_end_2bd} :catchall_2ce

    .line 2520
    if-eqz v12, :cond_2c8

    .line 2521
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SM"

    invoke-virtual {v7, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2522
    :cond_2c8
    return-void

    .line 2518
    :catchall_2c9
    move-exception v0

    move/from16 v4, p1

    :goto_2cc
    :try_start_2cc
    monitor-exit v2
    :try_end_2cd
    .catchall {:try_start_2cc .. :try_end_2cd} :catchall_2ce

    throw v0

    :catchall_2ce
    move-exception v0

    goto :goto_2cc

    .line 2491
    :catchall_2d0
    move-exception v0

    move/from16 v4, p1

    :goto_2d3
    :try_start_2d3
    monitor-exit v1
    :try_end_2d4
    .catchall {:try_start_2d3 .. :try_end_2d4} :catchall_2d8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_2d8
    move-exception v0

    goto :goto_2d3

    .line 2467
    :catchall_2da
    move-exception v0

    move/from16 v4, p1

    :goto_2dd
    :try_start_2dd
    monitor-exit v14
    :try_end_2de
    .catchall {:try_start_2dd .. :try_end_2de} :catchall_2df

    throw v0

    :catchall_2df
    move-exception v0

    goto :goto_2dd

    .line 2398
    :cond_2e1
    move/from16 v4, p1

    .line 2399
    :goto_2e3
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    return-void
.end method

.method public forceRunPolicyForSpecificPolicy(ILjava/util/ArrayList;)V
    .registers 26
    .param p1, "policyNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2235
    .local p2, "surviveAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    new-instance v0, Lcom/android/server/am/MARsPkgMap;

    invoke-direct {v0}, Lcom/android/server/am/MARsPkgMap;-><init>()V

    move-object v10, v0

    .line 2236
    .local v10, "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 2237
    .local v11, "tempTargetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v12, v0

    .line 2238
    .local v12, "actionUids":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    .line 2240
    .local v13, "isActionUidExist":Z
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v14

    .line 2241
    .local v14, "policy":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v14, :cond_3a4

    iget-boolean v0, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-nez v0, :cond_27

    move-object/from16 v22, v10

    goto/16 :goto_3a6

    .line 2245
    :cond_27
    invoke-direct {v7, v14}, Lcom/android/server/am/MARsPolicyManager;->convertPolicyNumToLevel(Lcom/android/server/am/MARsPolicyManager$Policy;)I

    move-result v15

    .line 2248
    .local v15, "level":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2250
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getActiveNotifications()V

    .line 2251
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2253
    sget-object v16, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v16

    .line 2255
    if-eqz v9, :cond_ac

    .line 2256
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_46
    :try_start_46
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_a5

    .line 2257
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 2258
    .local v2, "packageInfo":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2259
    .local v0, "packageName":Ljava/lang/String;
    iget-object v3, v7, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    .line 2261
    .local v3, "userId":I
    if-eqz v2, :cond_a1

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 2262
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2263
    .local v4, "packageSplitList":[Ljava/lang/String;
    if-eqz v4, :cond_98

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_98

    .line 2264
    const/4 v5, 0x0

    aget-object v6, v4, v5

    if-eqz v6, :cond_79

    .line 2265
    aget-object v5, v4, v5
    :try_end_77
    .catchall {:try_start_46 .. :try_end_77} :catchall_a7

    move-object v0, v5

    goto :goto_7a

    .line 2264
    :cond_79
    move-object v5, v0

    .line 2267
    .end local v0    # "packageName":Ljava/lang/String;
    .local v5, "packageName":Ljava/lang/String;
    :goto_7a
    const/4 v6, 0x1

    :try_start_7b
    aget-object v0, v4, v6

    if-eqz v0, :cond_8a

    .line 2268
    aget-object v0, v4, v6

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_89
    .catch Ljava/lang/NumberFormatException; {:try_start_7b .. :try_end_89} :catch_8c
    .catchall {:try_start_7b .. :try_end_89} :catchall_a7

    move v3, v0

    .line 2271
    :cond_8a
    move-object v0, v5

    goto :goto_98

    .line 2269
    :catch_8c
    move-exception v0

    .line 2270
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_8d
    const-string v6, "MARsPolicyManager"

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .local v18, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v0, "forceRunPolicyForGamePolicy parseInt error!"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v5

    .line 2273
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v18    # "e":Ljava/lang/NumberFormatException;
    .local v0, "packageName":Ljava/lang/String;
    :cond_98
    :goto_98
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v10, v0, v3, v5}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_a0
    .catchall {:try_start_8d .. :try_end_a0} :catchall_a7

    goto :goto_a2

    .line 2261
    .end local v4    # "packageSplitList":[Ljava/lang/String;
    :cond_a1
    const/4 v6, 0x1

    .line 2256
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v2    # "packageInfo":Ljava/lang/String;
    .end local v3    # "userId":I
    :goto_a2
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    :cond_a5
    const/4 v6, 0x1

    goto :goto_ad

    .line 2331
    .end local v1    # "i":I
    :catchall_a7
    move-exception v0

    move-object/from16 v22, v10

    goto/16 :goto_3a0

    .line 2255
    :cond_ac
    const/4 v6, 0x1

    .line 2278
    :goto_ad
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_ae
    :try_start_ae
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_244

    .line 2279
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v5, v1

    .line 2280
    .local v5, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v1, 0x0

    move v4, v1

    .local v4, "j":I
    :goto_c9
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v4, v1, :cond_235

    .line 2281
    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MARsPackageInfo;
    :try_end_d5
    .catchall {:try_start_ae .. :try_end_d5} :catchall_39d

    move-object v3, v1

    .line 2283
    .local v3, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    const/16 v1, 0x9

    if-ne v8, v1, :cond_16a

    .line 2284
    :try_start_da
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_121

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v1

    if-nez v1, :cond_121

    .line 2285
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_117

    .line 2286
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not game policy target, don\'t execute this policy "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v9, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto/16 :goto_22a

    .line 2285
    :cond_117
    move-object v9, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto/16 :goto_22a

    .line 2291
    :cond_121
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    invoke-virtual {v10, v1, v2}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_16a

    .line 2292
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_160

    .line 2293
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in survivePkgs, don\'t execute this policy "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_156
    .catchall {:try_start_da .. :try_end_156} :catchall_a7

    move-object v9, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto/16 :goto_22a

    .line 2292
    :cond_160
    move-object v9, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto/16 :goto_22a

    .line 2299
    :cond_16a
    :try_start_16a
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v2

    iget v6, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    invoke-virtual {v7, v1, v2, v6}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v1
    :try_end_178
    .catchall {:try_start_16a .. :try_end_178} :catchall_39d

    if-eqz v1, :cond_1b5

    .line 2300
    :try_start_17a
    sget-boolean v1, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v1, :cond_1ab

    .line 2301
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " inPolicyAllowList, don\'t execute this policy "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a1
    .catchall {:try_start_17a .. :try_end_1a1} :catchall_a7

    move-object v9, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto/16 :goto_22a

    .line 2300
    :cond_1ab
    move-object v9, v3

    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto/16 :goto_22a

    .line 2307
    :cond_1b5
    :try_start_1b5
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    iget v2, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    .line 2308
    invoke-direct {v7, v2}, Lcom/android/server/am/MARsPolicyManager;->convertPolicyNumToImportantType(I)I

    move-result v2

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    .line 2309
    move/from16 v18, v4

    .end local v4    # "j":I
    .local v18, "j":I
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    move-object/from16 v19, v5

    .end local v5    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v19, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    .line 2307
    invoke-virtual {v1, v2, v6, v4, v5}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-lez v1, :cond_1da

    .line 2310
    move-object v9, v3

    move-object/from16 v22, v10

    const/4 v10, 0x1

    goto :goto_22a

    .line 2313
    :cond_1da
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    .line 2314
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6
    :try_end_1e8
    .catchall {:try_start_1b5 .. :try_end_1e8} :catchall_39d

    const/16 v21, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object v9, v3

    .end local v3    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    .local v9, "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    move-object v3, v4

    move v4, v5

    move v5, v6

    move-object/from16 v22, v10

    const/4 v10, 0x1

    .end local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .local v22, "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    move-object/from16 v6, v21

    :try_start_1f7
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v20

    .line 2315
    .local v1, "psInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v9, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2317
    const/4 v2, 0x5

    if-ne v8, v2, :cond_20c

    .line 2318
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getUds()I

    move-result v2

    if-ne v2, v10, :cond_22a

    .line 2319
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    .line 2320
    :cond_20c
    const/4 v2, 0x6

    if-ne v8, v2, :cond_219

    .line 2321
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getSBike()I

    move-result v2

    if-ne v2, v10, :cond_22a

    .line 2322
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    .line 2323
    :cond_219
    const/16 v2, 0xa

    if-ne v8, v2, :cond_227

    .line 2324
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getMpsm()I

    move-result v2

    if-ne v2, v10, :cond_22a

    .line 2325
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22a

    .line 2327
    :cond_227
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2280
    .end local v1    # "psInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_22a
    :goto_22a
    add-int/lit8 v4, v18, 0x1

    move-object/from16 v9, p2

    move v6, v10

    move-object/from16 v5, v19

    move-object/from16 v10, v22

    .end local v18    # "j":I
    .restart local v4    # "j":I
    goto/16 :goto_c9

    .end local v9    # "targetPackageInfo":Lcom/android/server/am/MARsPackageInfo;
    .end local v19    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v5    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    :cond_235
    move/from16 v18, v4

    move-object/from16 v19, v5

    move-object/from16 v22, v10

    move v10, v6

    .line 2278
    .end local v4    # "j":I
    .end local v5    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v9, p2

    move-object/from16 v10, v22

    goto/16 :goto_ae

    .end local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    :cond_244
    move-object/from16 v22, v10

    move v10, v6

    .line 2331
    .end local v0    # "i":I
    .end local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    monitor-exit v16
    :try_end_248
    .catchall {:try_start_1f7 .. :try_end_248} :catchall_3a2

    .line 2333
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2334
    .local v0, "lastSleepTime":J
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v10

    move v3, v2

    move v4, v13

    move-wide v1, v0

    .end local v0    # "lastSleepTime":J
    .end local v13    # "isActionUidExist":Z
    .local v1, "lastSleepTime":J
    .local v3, "i":I
    .local v4, "isActionUidExist":Z
    :goto_254
    if-ltz v3, :cond_303

    .line 2335
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 2336
    .local v5, "now":J
    sub-long v9, v5, v1

    const-wide/16 v16, 0x32

    cmp-long v0, v9, v16

    if-ltz v0, :cond_274

    .line 2338
    const-wide/16 v9, 0xa

    :try_start_264
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_267
    .catch Ljava/lang/InterruptedException; {:try_start_264 .. :try_end_267} :catch_268

    .line 2341
    goto :goto_26e

    .line 2339
    :catch_268
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2340
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 2342
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_26e
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    move-wide v9, v0

    .end local v1    # "lastSleepTime":J
    .local v0, "lastSleepTime":J
    goto :goto_275

    .line 2336
    .end local v0    # "lastSleepTime":J
    .restart local v1    # "lastSleepTime":J
    :cond_274
    move-wide v9, v1

    .line 2344
    .end local v1    # "lastSleepTime":J
    .local v9, "lastSleepTime":J
    :goto_275
    iget-object v13, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v13

    :try_start_278
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2345
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2347
    .local v0, "tempPSInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_2b1

    .line 2348
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2
    :try_end_293
    .catchall {:try_start_278 .. :try_end_293} :catchall_2f9

    move-wide/from16 v16, v5

    .end local v5    # "now":J
    .local v16, "now":J
    :try_start_295
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-virtual {v1, v2, v5}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2b3

    .line 2349
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    iget-object v6, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v5, v6}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2b3

    .line 2347
    .end local v16    # "now":J
    .restart local v5    # "now":J
    :cond_2b1
    move-wide/from16 v16, v5

    .line 2352
    .end local v5    # "now":J
    .restart local v16    # "now":J
    :cond_2b3
    :goto_2b3
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v1

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v5

    invoke-direct {v7, v1, v14, v2, v5}, Lcom/android/server/am/MARsPolicyManager;->forceKillPackage(Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$Policy;II)Z

    move-result v1

    if-eqz v1, :cond_2ed

    .line 2353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->forceStopTime:J
    invoke-static {v0, v1, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1102(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;J)J

    .line 2354
    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {v0, v15}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 2355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v0}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2356
    const/4 v4, 0x1

    .line 2361
    .end local v0    # "tempPSInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    monitor-exit v13
    :try_end_2e9
    .catchall {:try_start_295 .. :try_end_2e9} :catchall_301

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_2f4

    .line 2358
    .restart local v0    # "tempPSInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_2ed
    :try_start_2ed
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2359
    monitor-exit v13
    :try_end_2f1
    .catchall {:try_start_2ed .. :try_end_2f1} :catchall_301

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2334
    .end local v0    # "tempPSInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v16    # "now":J
    :goto_2f4
    add-int/lit8 v3, v3, -0x1

    move-wide v1, v9

    goto/16 :goto_254

    .line 2361
    .restart local v5    # "now":J
    :catchall_2f9
    move-exception v0

    move-wide/from16 v16, v5

    .end local v5    # "now":J
    .restart local v16    # "now":J
    :goto_2fc
    :try_start_2fc
    monitor-exit v13
    :try_end_2fd
    .catchall {:try_start_2fc .. :try_end_2fd} :catchall_301

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_301
    move-exception v0

    goto :goto_2fc

    .line 2364
    .end local v3    # "i":I
    .end local v9    # "lastSleepTime":J
    .end local v16    # "now":J
    .restart local v1    # "lastSleepTime":J
    :cond_303
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 2365
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_307
    :try_start_307
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_377

    .line 2366
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2368
    .local v5, "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    iget-object v6, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v10

    invoke-virtual {v7, v6, v9, v10}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    .line 2370
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_374

    .line 2371
    invoke-direct {v7, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2372
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    iget-object v10, v7, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eq v9, v10, :cond_331

    .line 2373
    invoke-virtual {v6, v14}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 2376
    :cond_331
    iget-object v9, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {v9, v10, v13}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_34e

    .line 2377
    iget-object v9, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {v9, v10, v13, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2379
    :cond_34e
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_374

    .line 2380
    const-string v9, "MARsPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "add mRestrictedPackages "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " policy --"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2365
    .end local v5    # "tempInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_374
    add-int/lit8 v0, v0, 0x1

    goto :goto_307

    .line 2383
    .end local v0    # "i":I
    :cond_377
    monitor-exit v3
    :try_end_378
    .catchall {:try_start_307 .. :try_end_378} :catchall_39a

    .line 2385
    if-eqz v4, :cond_399

    .line 2386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v14, Lcom/android/server/am/MARsPolicyManager$Policy;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "EXE"

    invoke-virtual {v7, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 2387
    :cond_399
    return-void

    .line 2383
    :catchall_39a
    move-exception v0

    :try_start_39b
    monitor-exit v3
    :try_end_39c
    .catchall {:try_start_39b .. :try_end_39c} :catchall_39a

    throw v0

    .line 2331
    .end local v1    # "lastSleepTime":J
    .end local v4    # "isActionUidExist":Z
    .end local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v13    # "isActionUidExist":Z
    :catchall_39d
    move-exception v0

    move-object/from16 v22, v10

    .end local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    :goto_3a0
    :try_start_3a0
    monitor-exit v16
    :try_end_3a1
    .catchall {:try_start_3a0 .. :try_end_3a1} :catchall_3a2

    throw v0

    :catchall_3a2
    move-exception v0

    goto :goto_3a0

    .line 2241
    .end local v15    # "level":I
    .end local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    :cond_3a4
    move-object/from16 v22, v10

    .line 2242
    .end local v10    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    .restart local v22    # "survivePkgs":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Ljava/lang/Integer;>;"
    :goto_3a6
    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "policy is not exist or not enabled!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    return-void
.end method

.method forceStopForRecentKill(Ljava/lang/String;)V
    .registers 8
    .param p1, "packageInfo"    # Ljava/lang/String;

    .line 2114
    const/4 v0, 0x0

    .line 2115
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 2116
    .local v1, "userId":I
    if-eqz p1, :cond_39

    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 2117
    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2118
    .local v2, "packageSplitList":[Ljava/lang/String;
    if-eqz v2, :cond_38

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    .line 2119
    const/4 v3, 0x0

    aget-object v4, v2, v3

    if-eqz v4, :cond_22

    .line 2120
    aget-object v0, v2, v3

    .line 2122
    :cond_22
    const/4 v3, 0x1

    :try_start_23
    aget-object v4, v2, v3

    if-eqz v4, :cond_2e

    .line 2123
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_2d} :catch_2f

    move v1, v3

    .line 2126
    :cond_2e
    goto :goto_38

    .line 2124
    :catch_2f
    move-exception v3

    .line 2125
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v4, "MARsPolicyManager"

    const-string/jumbo v5, "forceStopForRecentKill parseInt error!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    .end local v2    # "packageSplitList":[Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :cond_38
    :goto_38
    goto :goto_3a

    .line 2129
    :cond_39
    move-object v0, p1

    .line 2132
    :goto_3a
    if-eqz v0, :cond_41

    .line 2133
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2135
    :cond_41
    return-void
.end method

.method public formatDateTimeWithoutYear(J)Ljava/lang/String;
    .registers 6
    .param p1, "dateTime"    # J

    .line 3024
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string/jumbo v2, "null"

    aput-object v2, v0, v1

    const-string v1, "%18s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3025
    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 3026
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 3027
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAllRestrictedList()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 4472
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4473
    const/4 v0, 0x0

    return-object v0

    .line 4476
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4477
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4478
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_a0

    .line 4479
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 4480
    .local v3, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2c
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_9c

    .line 4481
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 4482
    .local v5, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v5, :cond_99

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v6

    if-eqz v6, :cond_99

    .line 4483
    const/4 v6, 0x0

    .line 4484
    .local v6, "info":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-ne v7, v8, :cond_5d

    .line 4485
    new-instance v7, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    const/4 v8, 0x0

    .line 4486
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v7

    goto :goto_89

    .line 4487
    :cond_5d
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 4488
    new-instance v7, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4489
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v9, v9, v8}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v7

    goto :goto_89

    .line 4490
    :cond_72
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v7

    const/16 v8, 0x100

    if-ne v7, v8, :cond_89

    .line 4491
    new-instance v7, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    const/4 v8, 0x3

    .line 4492
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v10

    invoke-static {v10}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v7

    .line 4494
    :cond_89
    :goto_89
    new-instance v7, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-direct {v7, v8, v9, v6}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4480
    .end local v5    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v6    # "info":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    :cond_99
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 4478
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v4    # "j":I
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 4498
    .end local v2    # "i":I
    :cond_a0
    monitor-exit v1

    .line 4499
    return-object v0

    .line 4498
    :catchall_a2
    move-exception v2

    monitor-exit v1
    :try_end_a4
    .catchall {:try_start_13 .. :try_end_a4} :catchall_a2

    throw v2
.end method

.method public getAutorunForFreezedPackage(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1046
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1049
    :try_start_a
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1e

    .line 1050
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v2

    if-eqz v2, :cond_1b

    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x1

    :goto_1c
    monitor-exit v1

    return v2

    .line 1052
    :cond_1e
    monitor-exit v1

    goto :goto_23

    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_a .. :try_end_22} :catchall_20

    throw v2

    .line 1054
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_23
    :goto_23
    const/4 v0, -0x1

    return v0
.end method

.method public getBatteryStats()V
    .registers 15

    .line 1475
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_c

    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "getBatteryStats called!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1477
    :cond_c
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 1478
    .local v0, "mBatteryStatMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Double;>;"
    new-instance v1, Lcom/samsung/android/sdhms/SemDeviceHealthManager;

    invoke-direct {v1}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;-><init>()V

    .line 1479
    .local v1, "mSemDeviceHealthManager":Lcom/samsung/android/sdhms/SemDeviceHealthManager;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v2

    .line 1480
    .local v8, "mBatteryStatsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v2

    .line 1481
    .local v9, "mApplicationList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1483
    .local v10, "curTime":J
    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    const/4 v7, 0x1

    .line 1484
    move-wide v5, v10

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/android/sdhms/SemDeviceHealthManager;->getBatteryStats(IJJZ)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1486
    .end local v8    # "mBatteryStatsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    .local v2, "mBatteryStatsList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemBatteryStats;>;"
    if-eqz v2, :cond_bb

    .line 1487
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_bb

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/sdhms/SemBatteryStats;

    .line 1488
    .local v4, "mSemBatteryStats":Lcom/samsung/android/sdhms/SemBatteryStats;
    if-eqz v4, :cond_b9

    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v5

    invoke-direct {p0, v5, v6, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isSameDay(JJ)Z

    move-result v5

    if-nez v5, :cond_b9

    .line 1489
    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemBatteryStats;->getAppDetailUsages()Ljava/util/List;

    move-result-object v9

    .line 1490
    if-eqz v9, :cond_bb

    .line 1491
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;

    .line 1492
    .local v5, "app":Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1493
    sget-boolean v6, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v6, :cond_b7

    .line 1494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/samsung/android/sdhms/SemBatteryStats;->getEndTimestamp()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " getBatteryStats(D) app : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getPowerUsage()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;->getScreenPowerUsage()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MARsPolicyManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    .end local v5    # "app":Lcom/samsung/android/sdhms/SemBatteryStats$AppDetailUsage;
    :cond_b7
    goto :goto_59

    :cond_b8
    goto :goto_bb

    .line 1500
    .end local v4    # "mSemBatteryStats":Lcom/samsung/android/sdhms/SemBatteryStats;
    :cond_b9
    goto/16 :goto_37

    .line 1503
    :cond_bb
    :goto_bb
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 1504
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bf
    :try_start_bf
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_111

    .line 1505
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    .line 1506
    .local v5, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_d8
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_10e

    .line 1507
    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/MARsPackageInfo;

    .line 1509
    .local v7, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v8

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    if-lez v8, :cond_108

    .line 1510
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    .line 1511
    .local v8, "temp":Ljava/lang/Double;
    if-eqz v8, :cond_104

    .line 1512
    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    invoke-virtual {v7, v12, v13}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    goto :goto_107

    .line 1514
    :cond_104
    invoke-virtual {v7, v12, v13}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    .line 1516
    .end local v8    # "temp":Ljava/lang/Double;
    :goto_107
    goto :goto_10b

    .line 1517
    :cond_108
    invoke-virtual {v7, v12, v13}, Lcom/android/server/am/MARsPackageInfo;->setBatteryUsage(D)V

    .line 1506
    .end local v7    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_10b
    add-int/lit8 v6, v6, 0x1

    goto :goto_d8

    .line 1504
    .end local v5    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v6    # "j":I
    :cond_10e
    add-int/lit8 v4, v4, 0x1

    goto :goto_bf

    .line 1521
    .end local v4    # "i":I
    :cond_111
    monitor-exit v3

    .line 1522
    return-void

    .line 1521
    :catchall_113
    move-exception v4

    monitor-exit v3
    :try_end_115
    .catchall {:try_start_bf .. :try_end_115} :catchall_113

    throw v4
.end method

.method public declared-synchronized getCarModeOnState()Z
    .registers 2

    monitor-enter p0

    .line 456
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 456
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getChargingMode()Z
    .registers 2

    .line 443
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsCharging:Z

    return v0
.end method

.method public declared-synchronized getDeviceIdleModeState()Z
    .registers 2

    monitor-enter p0

    .line 464
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 464
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDualAppEnabled()Z
    .registers 2

    monitor-enter p0

    .line 488
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 488
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDualAppUserId()I
    .registers 2

    monitor-enter p0

    .line 480
    :try_start_1
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 480
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFirstTimeUpdatePkgsState()Z
    .registers 2

    monitor-enter p0

    .line 472
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 472
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHasAppIcon(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgname"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1243
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 1244
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 1245
    .local v1, "marsPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1246
    const/4 v2, 0x1

    monitor-exit v0

    return v2

    .line 1247
    .end local v1    # "marsPkgInfo":Lcom/android/server/am/MARsPackageInfo;
    :cond_14
    monitor-exit v0

    .line 1249
    const/4 v0, 0x0

    return v0

    .line 1247
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method public declared-synchronized getIsManualMode()Z
    .registers 2

    monitor-enter p0

    .line 421
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 421
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLastUsedTime(Ljava/lang/String;I)J
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1253
    const-wide/32 v0, -0xdbba0

    .line 1254
    .local v0, "lastUsedTime":J
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1255
    :try_start_6
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    .line 1256
    .local v3, "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v3, :cond_14

    .line 1257
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide v4

    monitor-exit v2

    return-wide v4

    .line 1259
    .end local v3    # "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    :cond_14
    monitor-exit v2

    .line 1260
    return-wide v0

    .line 1259
    :catchall_16
    move-exception v3

    monitor-exit v2
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v3
.end method

.method public getMARsEnabled()Z
    .registers 2

    .line 417
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    return v0
.end method

.method public getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;
    .registers 6
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/MARsPkgMap<",
            "Lcom/android/server/am/MARsPackageInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/android/server/am/MARsPackageInfo;"
        }
    .end annotation

    .line 1038
    .local p1, "targetPackages":Lcom/android/server/am/MARsPkgMap;, "Lcom/android/server/am/MARsPkgMap<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v0, 0x0

    .line 1039
    .local v0, "pkgInfo":Lcom/android/server/am/MARsPackageInfo;
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v1

    if-eqz v1, :cond_10

    .line 1040
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    .line 1042
    :cond_10
    return-object v0
.end method

.method declared-synchronized getManagedProfileEnabled()Z
    .registers 2

    monitor-enter p0

    .line 496
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedProfileEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 496
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPackageDisablerEnabled()Z
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_7

    .line 525
    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return v0

    .line 527
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getPkgsTypeForChimera(Ljava/util/List;)Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3904
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 3905
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->updateJobSchedulerPackages()V

    .line 3906
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 3908
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3909
    .local v0, "pkgsType":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3910
    .local v2, "pkg":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3911
    .local v4, "pkgInfo":[Ljava/lang/String;
    if-eqz v4, :cond_75

    .line 3912
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 3913
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v6, -0x1

    .line 3914
    .local v6, "userId":I
    const/4 v7, 0x0

    .line 3916
    .local v7, "uid":I
    const/4 v8, 0x1

    :try_start_38
    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v6, v8

    .line 3917
    const/4 v8, 0x2

    aget-object v8, v4, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_46} :catch_6c

    move v7, v8

    .line 3921
    nop

    .line 3923
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v8

    invoke-virtual {v8, v5, v6, v7}, Lcom/android/server/am/mars/filter/FilterManager;->filterForChimera(Ljava/lang/String;II)I

    move-result v8

    .line 3924
    .local v8, "type":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 3918
    .end local v8    # "type":I
    :catch_6c
    move-exception v3

    .line 3919
    .local v3, "e":Ljava/lang/NumberFormatException;
    const-string v8, "MARsPolicyManager"

    const-string v9, "NumberFormatException!"

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3920
    goto :goto_1e

    .line 3926
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .end local v4    # "pkgInfo":[Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "userId":I
    .end local v7    # "uid":I
    :cond_75
    :goto_75
    goto :goto_1e

    .line 3928
    :cond_76
    return-object v0
.end method

.method getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;
    .registers 3
    .param p1, "num"    # I

    .line 3701
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 3702
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->appLockerPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3703
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    .line 3704
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3705
    :cond_c
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 3706
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3707
    :cond_12
    const/4 v0, 0x5

    if-ne p1, v0, :cond_18

    .line 3708
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3709
    :cond_18
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1e

    .line 3710
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3711
    :cond_1e
    const/16 v0, 0x8

    if-ne p1, v0, :cond_25

    .line 3712
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3713
    :cond_25
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2c

    .line 3714
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3715
    :cond_2c
    const/16 v0, 0xa

    if-ne p1, v0, :cond_33

    .line 3716
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    return-object v0

    .line 3718
    :cond_33
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRestrictableList(I)Ljava/util/List;
    .registers 12
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 4437
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4438
    const/4 v0, 0x0

    return-object v0

    .line 4441
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4442
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4443
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_8e

    .line 4444
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 4445
    .local v3, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2c
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_8b

    .line 4446
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 4447
    .local v5, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v5, :cond_88

    .line 4449
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-virtual {p0, p1, v6, v7}, Lcom/android/server/am/MARsPolicyManager;->canRestrictBySEP(ILjava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 4450
    const/4 v6, 0x0

    .line 4451
    .local v6, "info":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    const/4 v7, 0x1

    if-ne p1, v7, :cond_61

    .line 4452
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_78

    .line 4453
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4454
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v7, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v8

    goto :goto_78

    .line 4456
    :cond_61
    if-nez p1, :cond_78

    .line 4457
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_78

    .line 4458
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    .line 4459
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v7, v9}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v8

    .line 4462
    :cond_78
    :goto_78
    new-instance v7, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-direct {v7, v8, v9, v6}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4445
    .end local v5    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v6    # "info":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    :cond_88
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 4443
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v4    # "j":I
    :cond_8b
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 4467
    .end local v2    # "i":I
    :cond_8e
    monitor-exit v1

    .line 4468
    return-object v0

    .line 4467
    :catchall_90
    move-exception v2

    monitor-exit v1
    :try_end_92
    .catchall {:try_start_13 .. :try_end_92} :catchall_90

    throw v2
.end method

.method public getRestrictedList(I)Ljava/util/List;
    .registers 14
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;"
        }
    .end annotation

    .line 4503
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4504
    const/4 v0, 0x0

    return-object v0

    .line 4507
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4508
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 4509
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    :try_start_13
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_c2

    .line 4510
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 4511
    .local v3, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2c
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_be

    .line 4512
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 4513
    .local v5, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v5, :cond_ba

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v6

    if-eqz v6, :cond_ba

    .line 4514
    const/4 v6, 0x0

    .line 4515
    .local v6, "restrictionInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    const/4 v7, 0x0

    .line 4516
    .local v7, "reason":Ljava/lang/String;
    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eqz p1, :cond_93

    if-eq p1, v9, :cond_83

    const/4 v10, 0x2

    if-eq p1, v10, :cond_6b

    const/4 v8, 0x3

    if-eq p1, v8, :cond_53

    goto :goto_a2

    .line 4531
    :cond_53
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-nez v8, :cond_a2

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    const/16 v10, 0x100

    if-ne v8, v10, :cond_a2

    .line 4532
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_a2

    .line 4526
    :cond_6b
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v10

    const/16 v11, 0x8

    if-ne v10, v11, :cond_a2

    .line 4527
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-eq v10, v8, :cond_a2

    .line 4528
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_a2

    .line 4518
    :cond_83
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 4519
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    goto :goto_a2

    .line 4522
    :cond_93
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-ne v10, v8, :cond_a2

    .line 4523
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 4536
    :cond_a2
    :goto_a2
    if-eqz v7, :cond_ba

    .line 4537
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v8, p1, v9, v7}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    move-object v6, v8

    .line 4538
    new-instance v8, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    invoke-direct {v8, v9, v10, v6}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4511
    .end local v5    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v6    # "restrictionInfo":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .end local v7    # "reason":Ljava/lang/String;
    :cond_ba
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2c

    .line 4509
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v4    # "j":I
    :cond_be
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_13

    .line 4543
    .end local v2    # "i":I
    :cond_c2
    monitor-exit v1

    .line 4544
    return-object v0

    .line 4543
    :catchall_c4
    move-exception v2

    monitor-exit v1
    :try_end_c6
    .catchall {:try_start_13 .. :try_end_c6} :catchall_c4

    throw v2
.end method

.method public getRestrictionInfoBySEP(ILjava/lang/String;I)Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .registers 10
    .param p1, "type"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I

    .line 4107
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 4108
    const/4 v0, 0x0

    return-object v0

    .line 4111
    :cond_a
    const/4 v0, 0x0

    .line 4112
    .local v0, "state":I
    const-string v1, "default"

    .line 4114
    .local v1, "reason":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 4115
    :try_start_10
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {p0, v3, p2, v4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    .line 4116
    .local v3, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v3, :cond_ab

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 4117
    if-nez p1, :cond_52

    .line 4118
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3b

    .line 4119
    const/4 v0, 0x1

    .line 4120
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto/16 :goto_ab

    .line 4122
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    if-nez v4, :cond_47

    .line 4123
    const/4 v0, 0x0

    .line 4124
    const-string v4, "default"

    move-object v1, v4

    goto/16 :goto_ab

    .line 4126
    :cond_47
    const/4 v0, 0x2

    .line 4127
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_ab

    .line 4130
    :cond_52
    const/4 v4, 0x1

    if-ne p1, v4, :cond_7c

    .line 4131
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-eqz v4, :cond_66

    .line 4132
    const/4 v0, 0x1

    .line 4133
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_ab

    .line 4135
    :cond_66
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    if-nez v4, :cond_71

    .line 4136
    const/4 v0, 0x0

    .line 4137
    const-string v4, "default"

    move-object v1, v4

    goto :goto_ab

    .line 4139
    :cond_71
    const/4 v0, 0x2

    .line 4140
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    goto :goto_ab

    .line 4143
    :cond_7c
    const/4 v4, 0x2

    if-ne p1, v4, :cond_91

    .line 4144
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_8c

    .line 4145
    const/4 v0, 0x1

    .line 4146
    const-string v4, "added_from_mars_auto"

    move-object v1, v4

    goto :goto_ab

    .line 4148
    :cond_8c
    const/4 v0, 0x2

    .line 4149
    const-string v4, "added_from_mars_auto"

    move-object v1, v4

    goto :goto_ab

    .line 4151
    :cond_91
    const/4 v4, 0x3

    if-ne p1, v4, :cond_ab

    .line 4152
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    if-nez v4, :cond_a7

    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_a7

    .line 4153
    const/4 v0, 0x1

    .line 4154
    const-string v4, "default"

    move-object v1, v4

    goto :goto_ab

    .line 4156
    :cond_a7
    const/4 v0, 0x2

    .line 4157
    const-string v4, "default"

    move-object v1, v4

    .line 4161
    .end local v3    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_ab
    :goto_ab
    monitor-exit v2
    :try_end_ac
    .catchall {:try_start_10 .. :try_end_ac} :catchall_b2

    .line 4162
    new-instance v2, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v2, p1, v0, v1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    return-object v2

    .line 4161
    :catchall_b2
    move-exception v3

    :try_start_b3
    monitor-exit v2
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b2

    throw v3
.end method

.method public declared-synchronized getScreenOnState()Z
    .registers 2

    monitor-enter p0

    .line 447
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 447
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getSharedUidName(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 539
    const-string v0, "MARsPolicyManager"

    const/4 v1, 0x0

    .line 542
    .local v1, "sharedUidName":Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 543
    .local v2, "pm":Landroid/content/pm/PackageManager;
    const v3, 0x402000

    invoke-virtual {v2, p1, v3, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 545
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_15

    .line 546
    iget-object v0, v3, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_14} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_14} :catch_16

    move-object v1, v0

    .line 552
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_15
    :goto_15
    goto :goto_46

    .line 550
    :catch_16
    move-exception v2

    .line 551
    .local v2, "e":Ljava/lang/NullPointerException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointerException occurred in getSharedUidName() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_46

    .line 548
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_30
    move-exception v2

    .line 549
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException occurred for package : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_15

    .line 554
    :goto_46
    return-object v1
.end method

.method public getSyncBlockEnabled(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 5026
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->BUB_ONOFF:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5027
    const-string v0, "com.google.android.gm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 5028
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->isInTopPkgList(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 5029
    const/4 v0, 0x1

    return v0

    .line 5031
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public getUnusedAppList()Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4981
    move-object/from16 v1, p0

    const-string v0, "android.permission.QUERY_ALL_PACKAGES"

    invoke-direct {v1, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 4982
    return-object v2

    .line 4985
    :cond_c
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsVersionManager;->getUnusedAppPeriodDaysValue()I

    move-result v0

    int-to-long v3, v0

    const-wide/32 v5, 0x5265c00

    mul-long/2addr v3, v5

    .line 4986
    .local v3, "unusedDaysThreshold":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4987
    .local v13, "timeNow":J
    const-wide v5, 0x90321000L

    sub-long v15, v13, v5

    .line 4988
    .local v15, "timeInterval":J
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 4989
    .local v12, "userId":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 4991
    .local v10, "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v5, v1, Lcom/android/server/am/MARsPolicyManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManagerInternal;

    .line 4992
    if-nez v5, :cond_3c

    return-object v2

    .line 4994
    :cond_3c
    const/4 v7, 0x2

    const/4 v0, 0x0

    move v6, v12

    move-wide v8, v15

    move-object/from16 v17, v10

    .end local v10    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-wide v10, v13

    move/from16 v18, v12

    .end local v12    # "userId":I
    .local v18, "userId":I
    move v12, v0

    invoke-virtual/range {v5 .. v12}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v5

    .line 4996
    .local v5, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v5, :cond_4d

    return-object v2

    .line 4998
    :cond_4d
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 4999
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_116

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/app/usage/UsageStats;

    .line 5000
    .local v7, "stat":Landroid/app/usage/UsageStats;
    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v8

    sub-long v8, v13, v8

    cmp-long v0, v8, v3

    if-lez v0, :cond_106

    .line 5002
    :try_start_6e
    invoke-virtual {v7}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    move-object v8, v0

    .line 5003
    .local v8, "info":Landroid/content/pm/PackageInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_e1

    iget-object v0, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const-string v9, "/data/"

    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 5004
    sget-object v9, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v9
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_8b} :catch_e8

    .line 5005
    :try_start_8b
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget-object v10, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_d4

    move/from16 v11, v18

    .end local v18    # "userId":I
    .local v11, "userId":I
    :try_start_91
    invoke-virtual {v1, v0, v10, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v0

    .line 5006
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v0, :cond_c1

    .line 5007
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v10

    .line 5008
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v1
    :try_end_a3
    .catchall {:try_start_91 .. :try_end_a3} :catchall_ce

    move-object/from16 v19, v2

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .local v19, "pm":Landroid/content/pm/PackageManager;
    :try_start_a5
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    .line 5007
    move-object/from16 v20, v0

    const/4 v0, 0x7

    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v20, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v10, v0, v12, v1, v2}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_ba

    .line 5009
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
    :try_end_b4
    .catchall {:try_start_a5 .. :try_end_b4} :catchall_bd

    move-object/from16 v1, v17

    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_b6
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_cc

    .line 5007
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ba
    move-object/from16 v1, v17

    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_cc

    .line 5014
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_bd
    move-exception v0

    move-object/from16 v1, v17

    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_db

    .line 5012
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c1
    move-object/from16 v20, v0

    move-object/from16 v19, v2

    move-object/from16 v1, v17

    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v20    # "pi":Lcom/android/server/am/MARsPackageInfo;
    iget-object v0, v8, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5014
    .end local v20    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_cc
    monitor-exit v9

    goto :goto_e7

    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_ce
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v1, v17

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_db

    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "userId":I
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "userId":I
    :catchall_d4
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v1, v17

    move/from16 v11, v18

    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userId":I
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "userId":I
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :goto_db
    monitor-exit v9
    :try_end_dc
    .catchall {:try_start_b6 .. :try_end_dc} :catchall_df

    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "unusedDaysThreshold":J
    .end local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v7    # "stat":Landroid/app/usage/UsageStats;
    .end local v11    # "userId":I
    .end local v13    # "timeNow":J
    .end local v15    # "timeInterval":J
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :try_start_dc
    throw v0
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_dd} :catch_dd

    .line 5016
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "unusedDaysThreshold":J
    .restart local v5    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .restart local v7    # "stat":Landroid/app/usage/UsageStats;
    .restart local v11    # "userId":I
    .restart local v13    # "timeNow":J
    .restart local v15    # "timeInterval":J
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catch_dd
    move-exception v0

    goto :goto_ef

    .line 5014
    .restart local v8    # "info":Landroid/content/pm/PackageInfo;
    :catchall_df
    move-exception v0

    goto :goto_db

    .line 5003
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "userId":I
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "userId":I
    :cond_e1
    move-object/from16 v19, v2

    move-object/from16 v1, v17

    move/from16 v11, v18

    .line 5018
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userId":I
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "userId":I
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :goto_e7
    goto :goto_10c

    .line 5016
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "userId":I
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "userId":I
    :catch_e8
    move-exception v0

    move-object/from16 v19, v2

    move-object/from16 v1, v17

    move/from16 v11, v18

    .line 5017
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userId":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "userId":I
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :goto_ef
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error occurred in getUnusedAppList() "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v8, "MARsPolicyManager"

    invoke-static {v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10c

    .line 5000
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "userId":I
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "userId":I
    :cond_106
    move-object/from16 v19, v2

    move-object/from16 v1, v17

    move/from16 v11, v18

    .line 5020
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v7    # "stat":Landroid/app/usage/UsageStats;
    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "userId":I
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "userId":I
    .restart local v19    # "pm":Landroid/content/pm/PackageManager;
    :goto_10c
    move-object/from16 v17, v1

    move/from16 v18, v11

    move-object/from16 v2, v19

    move-object/from16 v1, p0

    goto/16 :goto_57

    .line 5021
    .end local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "userId":I
    .end local v19    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    .restart local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "userId":I
    :cond_116
    move-object/from16 v1, v17

    .end local v17    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "unusedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-object v1
.end method

.method public init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .registers 5
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;

    .line 160
    iput-object p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 161
    iput-object p2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    .line 162
    invoke-virtual {p2}, Landroid/content/Context;->getUserId()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 163
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContextPackageName:Ljava/lang/String;

    .line 165
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->recoverFreezerStateIfTHAWED()V

    .line 166
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->init(Landroid/content/Context;)V

    .line 167
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsTrigger;->init(Landroid/content/Context;)V

    .line 168
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->init(Landroid/content/Context;)V

    .line 169
    invoke-static {}, Lcom/android/server/am/mars/database/MARsComponentTracker;->getInstance()Lcom/android/server/am/mars/database/MARsComponentTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsComponentTracker;->init(Landroid/content/Context;)V

    .line 170
    return-void
.end method

.method initCurrentUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 329
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    .line 330
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 331
    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleep:Z

    .line 334
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 335
    .local v0, "currentUser":Landroid/os/UserHandle;
    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->getContextForUser(Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1

    .line 337
    .local v1, "context":Landroid/content/Context;
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->switchUser(Landroid/content/Context;)V

    .line 338
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    .line 339
    return-void
.end method

.method initDisabledPackage(I)V
    .registers 21
    .param p1, "userId"    # I

    .line 297
    move-object/from16 v1, p0

    move/from16 v8, p1

    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 298
    .local v9, "pm":Landroid/content/pm/PackageManager;
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    .line 300
    .local v10, "pms":Lcom/android/server/pm/PackageManagerService;
    const v11, 0x8000

    .line 301
    .local v11, "flags":I
    invoke-virtual {v9, v11, v8}, Landroid/content/pm/PackageManager;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v12

    .line 303
    .local v12, "installedPackagesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_1d
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v13, v0, :cond_8f

    .line 304
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/content/pm/PackageInfo;

    .line 305
    .local v14, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v14, :cond_8c

    .line 306
    iget-object v15, v14, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 308
    .local v15, "pkgname":Ljava/lang/String;
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_8c

    .line 309
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 311
    .local v7, "uid":I
    iget-object v0, v14, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_8a

    .line 312
    invoke-virtual {v1, v15, v8}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_87

    invoke-virtual {v10, v15, v7}, Lcom/android/server/pm/PackageManagerService;->isPackageAutoDisabled(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 313
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 315
    .local v16, "mtoken":J
    const/4 v4, 0x1

    const/4 v5, 0x1

    :try_start_4f
    const-string v0, "auto_disabler"
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_51} :catch_68
    .catchall {:try_start_4f .. :try_end_51} :catchall_64

    move-object v2, v10

    move-object v3, v15

    move/from16 v6, p1

    move/from16 v18, v7

    .end local v7    # "uid":I
    .local v18, "uid":I
    move-object v7, v0

    :try_start_58
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/PackageManagerService;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_62
    .catchall {:try_start_58 .. :try_end_5b} :catchall_60

    .line 319
    nop

    :goto_5c
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    goto :goto_8c

    .line 319
    :catchall_60
    move-exception v0

    goto :goto_83

    .line 316
    :catch_62
    move-exception v0

    goto :goto_6b

    .line 319
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :catchall_64
    move-exception v0

    move/from16 v18, v7

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    goto :goto_83

    .line 316
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :catch_68
    move-exception v0

    move/from16 v18, v7

    .line 317
    .end local v7    # "uid":I
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "uid":I
    :goto_6b
    :try_start_6b
    const-string v2, "MARsPolicyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occured in initDisabledPackage()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catchall {:try_start_6b .. :try_end_81} :catchall_60

    .line 319
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_5c

    :goto_83
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 320
    throw v0

    .line 312
    .end local v16    # "mtoken":J
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :cond_87
    move/from16 v18, v7

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    goto :goto_8c

    .line 311
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :cond_8a
    move/from16 v18, v7

    .line 303
    .end local v7    # "uid":I
    .end local v14    # "pi":Landroid/content/pm/PackageInfo;
    .end local v15    # "pkgname":Ljava/lang/String;
    :cond_8c
    :goto_8c
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    .line 326
    .end local v13    # "i":I
    :cond_8f
    return-void
.end method

.method public initInternal(Z)V
    .registers 5
    .param p1, "boot"    # Z

    .line 365
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 367
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_b

    .line 368
    iput-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 371
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_19

    .line 372
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/FreecessController;->getFreecessEnabledConfig()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 376
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isAppStartUpHistoryEnabled()Z

    move-result v0

    const-string v2, "MARsPolicyManager"

    if-eqz v0, :cond_2c

    .line 377
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_2a

    const-string v0, "App StartUp History is enabled"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_2a
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->App_StartUp_History:Z

    .line 382
    :cond_2c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_3b

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_3b

    .line 383
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->registerUDSReceiver()V

    .line 387
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_4a

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_4a

    .line 388
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->registerSBikeReceiver()V

    .line 392
    :cond_4a
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_59

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_59

    .line 393
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->registerGameReceiver()V

    .line 397
    :cond_59
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_68

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eqz v0, :cond_68

    .line 398
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->registerMPSMReceiver()V

    .line 401
    :cond_68
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_e8

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FC = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->freecessPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", AR = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->autoRunPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", PD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", UD = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->udsPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", SB = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->sbikePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", GA = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->gamePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", MP = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mpsmPolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_e8
    return-void
.end method

.method public isActiveTrafficAppForChimera(Ljava/lang/String;II)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I

    .line 3978
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/am/mars/filter/FilterManager;->filterForChimera(Ljava/lang/String;III)I

    move-result v0

    if-lez v0, :cond_e

    .line 3980
    const/4 v0, 0x1

    return v0

    .line 3983
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method isAppStartUpHistoryEnabled()Z
    .registers 7

    .line 618
    const-string v0, "com.samsung.android.sm.ACTION_AUTO_RUN"

    .line 619
    .local v0, "APP_STARTUP_HISTORY_INTENT":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 621
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 622
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.samsung.android.sm.ACTION_AUTO_RUN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 624
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 625
    .local v4, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v4, :cond_28

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5}, Landroid/content/pm/ActivityInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_28

    .line 627
    const/4 v3, 0x1

    return v3

    .line 630
    :cond_28
    return v3
.end method

.method public isAutoRunBlockedApp(Ljava/lang/String;I)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 589
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_12

    .line 590
    const-string v0, "MARsPolicyManager"

    const-string v2, "AR not enabled"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_12
    return v1

    .line 594
    :cond_13
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 595
    :try_start_16
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 596
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_5e

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_5e

    .line 602
    :cond_25
    const/4 v3, 0x2

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->isInPolicyExceptionList(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 603
    monitor-exit v0

    return v1

    .line 605
    :cond_2e
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v3

    .line 606
    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    .line 605
    const/4 v5, 0x1

    invoke-virtual {v3, v5, p1, p2, v4}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v3

    if-lez v3, :cond_3f

    .line 607
    monitor-exit v0

    return v1

    .line 609
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_16 .. :try_end_40} :catchall_7d

    .line 611
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_5d

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Auto run OFF, userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_5d
    return v5

    .line 597
    .restart local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_5e
    :goto_5e
    :try_start_5e
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_7b

    .line 598
    const-string v3, "MARsPolicyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Auto run ON, userId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    :cond_7b
    monitor-exit v0

    return v1

    .line 609
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_7d
    move-exception v1

    monitor-exit v0
    :try_end_7f
    .catchall {:try_start_5e .. :try_end_7f} :catchall_7d

    throw v1
.end method

.method public isAutoRunOn(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 580
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 581
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 582
    .local v1, "pkg":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v2

    if-nez v2, :cond_13

    const/4 v2, 0x1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    monitor-exit v0

    return v2

    .line 583
    .end local v1    # "pkg":Lcom/android/server/am/MARsPackageInfo;
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public isChinaPolicyEnabled()Z
    .registers 2

    .line 571
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v0, :cond_b

    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    .line 572
    .local v0, "chinaPolicyEnabled":Z
    :goto_c
    return v0
.end method

.method isCurrentUser(I)Z
    .registers 10
    .param p1, "userId"    # I

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "isDualAppUserId":Z
    const/4 v1, 0x0

    .line 344
    .local v1, "isManagedProfileUserId":Z
    iget v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    const/4 v3, 0x0

    if-nez v2, :cond_2c

    .line 345
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    if-eqz v2, :cond_15

    const/16 v2, 0x5f

    if-lt p1, v2, :cond_15

    const/16 v2, 0x63

    if-gt p1, v2, :cond_15

    .line 347
    const/4 v0, 0x1

    goto :goto_2c

    .line 349
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v2

    .line 350
    :try_start_18
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    array-length v5, v4

    move v6, v3

    :goto_1c
    if-ge v6, v5, :cond_27

    aget v7, v4, v6

    .line 351
    .local v7, "enabledProfileUserId":I
    if-ne p1, v7, :cond_24

    .line 352
    const/4 v1, 0x1

    .line 353
    goto :goto_27

    .line 350
    .end local v7    # "enabledProfileUserId":I
    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 356
    :cond_27
    :goto_27
    monitor-exit v2

    goto :goto_2c

    :catchall_29
    move-exception v3

    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_29

    throw v3

    .line 359
    :cond_2c
    :goto_2c
    iget v2, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    if-eq v2, p1, :cond_34

    if-nez v0, :cond_34

    if-eqz v1, :cond_35

    :cond_34
    const/4 v3, 0x1

    :cond_35
    return v3
.end method

.method public isFirstTimeTriggerAutorun()Z
    .registers 2

    .line 576
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method isForegroundPackage(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 783
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 785
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isMARsTarget(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 786
    const/4 v0, 0x1

    return v0

    .line 788
    :cond_c
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->isInTopPkgList(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isForegroundServicePkg(I)Z
    .registers 6
    .param p1, "uid"    # I

    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "isFg":Z
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 808
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 809
    const/4 v0, 0x1

    .line 811
    :cond_11
    monitor-exit v1

    .line 812
    return v0

    .line 811
    :catchall_13
    move-exception v2

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_13

    throw v2
.end method

.method public isInPolicyExceptionList(Ljava/lang/String;II)Z
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "policyNum"    # I

    .line 3748
    const/4 v0, 0x0

    .line 3749
    .local v0, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 3750
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v2, v2, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->policyNum:I

    .line 3751
    .local v2, "num":I
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget v3, v3, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->condition:I

    .line 3752
    .local v3, "condition":I
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v4, v4, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->pkgNameMatchType:Ljava/lang/String;

    .line 3753
    .local v4, "pkgNameMatchType":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager;->mExcludeTargetList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;

    iget-object v5, v5, Lcom/android/server/am/mars/database/MARsVersionManager$AdjustTargetExcludePackage;->packageName:Ljava/lang/String;

    .line 3756
    .local v5, "pkgName":Ljava/lang/String;
    const/4 v6, 0x1

    if-eqz v2, :cond_72

    const/4 v7, 0x2

    if-eq v2, v7, :cond_57

    const/4 v7, 0x4

    if-eq v2, v7, :cond_50

    goto :goto_77

    .line 3774
    :cond_50
    if-ne p3, v7, :cond_77

    .line 3775
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_77

    .line 3764
    :cond_57
    if-ne p3, v7, :cond_77

    .line 3765
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v7, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v7

    .line 3766
    .local v7, "packageInfo":Lcom/android/server/am/MARsPackageInfo;
    if-nez v7, :cond_62

    .line 3767
    goto :goto_77

    .line 3768
    :cond_62
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v8

    xor-int/2addr v8, v6

    if-ne v3, v8, :cond_71

    .line 3769
    invoke-virtual {v7}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3771
    .end local v7    # "packageInfo":Lcom/android/server/am/MARsPackageInfo;
    :cond_71
    goto :goto_77

    .line 3758
    :cond_72
    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/am/MARsPolicyManager;->isTargetMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 3759
    nop

    .line 3780
    :cond_77
    :goto_77
    if-eqz v0, :cond_7a

    .line 3781
    return v6

    .line 3749
    .end local v2    # "num":I
    .end local v3    # "condition":I
    .end local v4    # "pkgNameMatchType":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3784
    .end local v1    # "i":I
    :cond_7d
    const/4 v1, 0x0

    return v1
.end method

.method isInSpecialIntentList(Ljava/lang/String;)Z
    .registers 3
    .param p1, "intent"    # Ljava/lang/String;

    .line 967
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 968
    return v0

    .line 970
    :cond_4
    return v0
.end method

.method public isMARsTarget(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 987
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 988
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 989
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v1, :cond_d

    const/4 v2, 0x1

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    monitor-exit v0

    return v2

    .line 990
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method isPkgAUFAllowList(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 517
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->mAUF:Lcom/android/server/ipm/PkgPredictorService;

    if-eqz v0, :cond_e

    sget v1, Lcom/android/server/am/MARsPolicyManager;->AUFAllowBucketSize:I

    if-gtz v1, :cond_9

    goto :goto_e

    .line 519
    :cond_9
    invoke-virtual {v0, v1, p1}, Lcom/android/server/ipm/PkgPredictorService;->isPredictedAppForMARs(ILjava/lang/String;)Z

    move-result v0

    return v0

    .line 518
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method public isPolicyEnabled(I)Z
    .registers 4
    .param p1, "num"    # I

    .line 3722
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v0

    .line 3723
    .local v0, "pl":Lcom/android/server/am/MARsPolicyManager$Policy;
    if-eqz v0, :cond_9

    .line 3724
    iget-boolean v1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    return v1

    .line 3726
    :cond_9
    const/4 v1, 0x0

    return v1
.end method

.method protected levelChange(ILcom/android/server/am/MARsPackageInfo;)Z
    .registers 14
    .param p1, "state"    # I
    .param p2, "pi"    # Lcom/android/server/am/MARsPackageInfo;

    .line 1741
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "levelChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_33
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-gt p1, v0, :cond_55

    .line 1744
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getPackageType()I

    move-result v2

    and-int/lit16 v2, v2, 0xc0

    if-nez v2, :cond_54

    .line 1745
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/AllowListFilter;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/am/mars/filter/filter/AllowListFilter;->isInDefaultAllowList(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 1746
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getHasAppIcon()Z

    move-result v2

    if-nez v2, :cond_55

    .line 1747
    :cond_54
    return v1

    .line 1751
    :cond_55
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_2a0

    const/4 v4, 0x4

    if-eq p1, v2, :cond_270

    const-string v5, ".samsung."

    const/4 v6, 0x3

    const-string v7, ".sec."

    const-wide/16 v8, 0x0

    sparse-switch p1, :sswitch_data_2a6

    goto/16 :goto_2a4

    .line 1861
    :sswitch_68
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1862
    goto/16 :goto_2a4

    .line 1864
    :sswitch_6d
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_74

    move v2, v6

    :cond_74
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1865
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1866
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-nez v0, :cond_2a4

    .line 1867
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1868
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1869
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1870
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_2a4

    .line 1824
    :sswitch_a2
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    if-eq v4, v2, :cond_11e

    .line 1825
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v4

    const/16 v5, 0x80

    if-eqz v4, :cond_e7

    .line 1826
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    if-eq v4, v3, :cond_c3

    .line 1827
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    const/16 v7, 0x40

    if-ne v4, v7, :cond_bf

    goto :goto_c3

    .line 1835
    :cond_bf
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    goto :goto_ea

    .line 1828
    :cond_c3
    :goto_c3
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1829
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    invoke-virtual {v4, v7, v10, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1830
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1831
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1832
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto :goto_ea

    .line 1838
    :cond_e7
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1841
    :goto_ea
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v4

    if-eq v4, v0, :cond_f6

    .line 1842
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v0

    if-ne v0, v2, :cond_f9

    .line 1843
    :cond_f6
    invoke-virtual {p2, v5}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1846
    :cond_f9
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1847
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1853
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-eqz v0, :cond_11e

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getSharedUidName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11e

    .line 1854
    :cond_11b
    invoke-virtual {p2, v6}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1857
    :cond_11e
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setIsInUsageStats(Z)V

    .line 1858
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1859
    goto/16 :goto_2a4

    .line 1874
    :sswitch_126
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1875
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1876
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1877
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v5

    invoke-virtual {v2, v4, v5, v1}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1878
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1879
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1880
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setfasEnabledTime(J)V

    .line 1881
    const/16 v1, 0x100

    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1882
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 1883
    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    goto/16 :goto_2a4

    .line 1817
    :sswitch_15c
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1818
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1819
    invoke-virtual {p2, v1}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1820
    invoke-virtual {p2, v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1821
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1822
    goto/16 :goto_2a4

    .line 1805
    :sswitch_16d
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1806
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1807
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    .line 1808
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1809
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-nez v0, :cond_2a4

    .line 1810
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1811
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    goto/16 :goto_2a4

    .line 1799
    :sswitch_19b
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1800
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1801
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1802
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1803
    goto/16 :goto_2a4

    .line 1793
    :sswitch_1b5
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1794
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1795
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1796
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1797
    goto/16 :goto_2a4

    .line 1779
    :sswitch_1c3
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1de

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1dd

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1de

    .line 1780
    :cond_1dd
    return v1

    .line 1781
    :cond_1de
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1782
    const/16 v0, 0x10

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1783
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 1784
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-nez v0, :cond_2a4

    .line 1785
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1786
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1787
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1788
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto/16 :goto_2a4

    .line 1768
    :sswitch_211
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_22b

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23c

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_23c

    .line 1769
    :cond_22b
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v2

    const/16 v4, 0x15

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6, v6}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_23d

    .line 1770
    :cond_23c
    return v1

    .line 1771
    :cond_23d
    iget-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    cmp-long v2, v4, v8

    if-eqz v2, :cond_25b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    sub-long/2addr v4, v6

    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v2, :cond_254

    const-wide/16 v6, 0x2

    iget-wide v8, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v8, v6

    goto :goto_257

    :cond_254
    const-wide/32 v8, 0x4d3f6400

    :goto_257
    cmp-long v2, v4, v8

    if-lez v2, :cond_26c

    .line 1772
    :cond_25b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1773
    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsLastNotiSentTimeForDisabledDismiss:Z

    .line 1774
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v1

    const-string v2, "deepsleep"

    invoke-virtual {v1, v2}, Lcom/android/server/am/MARsHandler;->sendNotifyDeviceCareMsgToMainHandler(Ljava/lang/String;)V

    .line 1776
    :cond_26c
    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1777
    goto :goto_2a4

    .line 1757
    :cond_270
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 1758
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 1759
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v0

    if-nez v0, :cond_2a4

    .line 1760
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/MARsHandler;->sendCallSetModeMsgToMainHandler(Ljava/lang/String;II)V

    .line 1761
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFASEnabled(Z)V

    .line 1762
    invoke-virtual {p2, v4}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1763
    invoke-virtual {p2, v3}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 1764
    invoke-virtual {p2}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/am/MARsPackageInfo;->setFasReason(Ljava/lang/String;)V

    goto :goto_2a4

    .line 1754
    :cond_2a0
    invoke-virtual {p2, v2}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 1755
    nop

    .line 1887
    :cond_2a4
    :goto_2a4
    return v3

    nop

    :sswitch_data_2a6
    .sparse-switch
        0x4 -> :sswitch_211
        0x8 -> :sswitch_1c3
        0x10 -> :sswitch_1b5
        0x20 -> :sswitch_1b5
        0x40 -> :sswitch_19b
        0x80 -> :sswitch_16d
        0x100 -> :sswitch_15c
        0x200 -> :sswitch_126
        0x400 -> :sswitch_a2
        0x800 -> :sswitch_6d
        0x1000 -> :sswitch_68
    .end sparse-switch
.end method

.method notifyAppSleepToDC(Ljava/lang/String;)V
    .registers 6
    .param p1, "extraType"    # Ljava/lang/String;

    .line 1566
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2f

    .line 1567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1568
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1569
    const-string v1, "com.sec.android.mars.APP_SLEEP_NOTIFY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1570
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->SMART_MANAGER_PKG_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1571
    const-string/jumbo v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1572
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCurrentUserId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1573
    const-string v1, "NOTI"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2f
    return-void
.end method

.method public onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V
    .registers 6
    .param p1, "pi"    # Lcom/android/server/am/MARsPackageInfo;

    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, "value":Lcom/android/server/am/mars/database/FASEntity;
    const/16 v1, 0x400

    invoke-virtual {p0, v1, p1}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    .line 1414
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v1

    const/16 v2, 0x80

    if-ne v1, v2, :cond_76

    .line 1415
    new-instance v1, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1416
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1417
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFASEnabled()Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v2, "1"

    goto :goto_32

    :cond_30
    const-string v2, "0"

    :goto_32
    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrMode(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1418
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertFASTypeToReason(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrFasReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1419
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1420
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1421
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1422
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v1

    .line 1423
    invoke-virtual {v1}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0

    .line 1427
    :cond_76
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    if-eqz v2, :cond_87

    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v2

    iget v2, v2, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    goto :goto_88

    :cond_87
    const/4 v2, 0x0

    :goto_88
    invoke-virtual {p1}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->cancelPolicy(Ljava/lang/String;II)V

    .line 1428
    if-eqz v0, :cond_98

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeSpecificMsgToDBHandler(Lcom/android/server/am/mars/database/FASEntity;)V

    .line 1429
    :cond_98
    return-void
.end method

.method public onAppUsedForTimeChanged(J)V
    .registers 13
    .param p1, "changedTime"    # J

    .line 1439
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_1b

    .line 1440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAppUsedForTimeChanged -- SystemTime Changed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    :cond_1b
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    cmp-long v0, v0, v2

    if-gez v0, :cond_32

    .line 1444
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_31

    .line 1445
    const-string v0, "MARsPolicyManager"

    const-string v1, "SystemTime Changed Less than 30 min, didn\'t care!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    :cond_31
    return-void

    .line 1450
    :cond_32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1452
    .local v0, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1453
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3b
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_ab

    .line 1454
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 1455
    .local v3, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_54
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_a8

    .line 1456
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPackageInfo;

    .line 1458
    .local v5, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_a5

    .line 1459
    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/MARsPackageInfo;->setResetTime(J)V

    .line 1461
    new-instance v6, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1462
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1463
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1464
    invoke-virtual {v5}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v6

    .line 1465
    invoke-virtual {v6}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v6

    .line 1466
    .local v6, "value":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1455
    .end local v5    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v6    # "value":Lcom/android/server/am/mars/database/FASEntity;
    :cond_a5
    add-int/lit8 v4, v4, 0x1

    goto :goto_54

    .line 1453
    .end local v3    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v4    # "j":I
    :cond_a8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3b

    .line 1470
    .end local v2    # "i":I
    :cond_ab
    monitor-exit v1
    :try_end_ac
    .catchall {:try_start_3b .. :try_end_ac} :catchall_ba

    .line 1471
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b9

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 1472
    :cond_b9
    return-void

    .line 1470
    :catchall_ba
    move-exception v2

    :try_start_bb
    monitor-exit v1
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    throw v2
.end method

.method public onPackagePausedBG(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "strCallerPkgName"    # Ljava/lang/String;
    .param p3, "isFullScreen"    # Z
    .param p4, "userId"    # I

    .line 949
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 950
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p4}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 952
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    iget-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 953
    if-eqz v1, :cond_1c

    .line 954
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setLastUsedTime(J)V

    .line 958
    :cond_1c
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    if-nez p3, :cond_26

    .line 959
    monitor-exit v0

    return-void

    .line 961
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_26
    monitor-exit v0

    .line 962
    return-void

    .line 961
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_3 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method public onPackageResumedFG(Landroid/util/ArraySet;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;I)V
    .registers 11
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "strCallerPkgName"    # Ljava/lang/String;
    .param p4, "isFullScreen"    # Z
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "I)V"
        }
    .end annotation

    .line 907
    .local p1, "topList":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_2d

    .line 908
    if-eqz p2, :cond_2d

    const-string v0, ".iqi"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageResumedFG pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 913
    if-eqz p1, :cond_3c

    .line 914
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/TopPackageFilter;

    move-result-object v0

    invoke-virtual {v0, p1, p6}, Lcom/android/server/am/mars/filter/filter/TopPackageFilter;->updateTopPkgList(Landroid/util/ArraySet;I)V

    .line 918
    :cond_3c
    if-eqz p2, :cond_65

    .line 919
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 920
    :try_start_41
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p2, p6}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 921
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v1, :cond_60

    .line 922
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 923
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setLastUsedTime(J)V

    .line 924
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;

    move-result-object v2

    invoke-virtual {v2, p2, p6}, Lcom/android/server/am/mars/filter/filter/LatestProtectedPackageFilter;->setLatestProtectedPkg(Ljava/lang/String;I)V

    .line 926
    :cond_5d
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 928
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_60
    monitor-exit v0

    goto :goto_65

    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_41 .. :try_end_64} :catchall_62

    throw v1

    .line 933
    :cond_65
    :goto_65
    if-eqz p5, :cond_af

    if-eqz p2, :cond_af

    .line 934
    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {p5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 935
    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_af

    invoke-virtual {p5}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "android.intent.category.HOME"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_af

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current Home Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Resumed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->setHomePackage(Ljava/lang/String;)V

    .line 941
    :cond_af
    return-void
.end method

.method public onSpecialBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 853
    if-eqz p1, :cond_71

    if-nez p2, :cond_5

    goto :goto_71

    .line 857
    :cond_5
    const-string v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p4, :cond_1a

    .line 858
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 861
    :cond_1a
    const-string v0, "android.net.VpnService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 862
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->onVpnPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 865
    :cond_2d
    const-string v0, "android.service.notification.NotificationListenerService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 866
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->onNotificationListenerBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 869
    :cond_40
    sget-object v0, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v0

    .line 870
    :try_start_43
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v1, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v1

    .line 871
    .local v1, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v1, :cond_6c

    .line 872
    const-string v2, "android.view.InputMethod"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 873
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 876
    :cond_56
    const-string v2, "android.service.wallpaper.WallpaperService"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6c

    .line 877
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->onWallPaperPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 881
    .end local v1    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_6c
    monitor-exit v0

    .line 882
    return-void

    .line 881
    :catchall_6e
    move-exception v1

    monitor-exit v0
    :try_end_70
    .catchall {:try_start_43 .. :try_end_70} :catchall_6e

    throw v1

    .line 854
    :cond_71
    :goto_71
    return-void
.end method

.method public onSpecialIntentActions(Ljava/lang/String;Landroid/content/Intent;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userId"    # I

    .line 825
    if-nez p1, :cond_3

    .line 826
    return-void

    .line 828
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_a

    .line 830
    return-void

    .line 832
    :cond_a
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 833
    :try_start_d
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 834
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v2, :cond_66

    .line 835
    const-string v3, "android.appwidget.action.APPWIDGET_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 836
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 837
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWidgetEnabled(Ljava/lang/String;I)V

    goto :goto_66

    .line 838
    :cond_28
    const-string v3, "android.appwidget.action.APPWIDGET_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 839
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/server/am/mars/filter/filter/WidgetPkgFilter;->onAppWigetDisabled(Ljava/lang/String;I)V

    goto :goto_66

    .line 840
    :cond_38
    const-string v3, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 841
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    goto :goto_66

    .line 842
    :cond_44
    const-string v3, "android.app.action.DEVICE_ADMIN_ENABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    .line 843
    invoke-virtual {p0, v2}, Lcom/android/server/am/MARsPolicyManager;->onAppUsed(Lcom/android/server/am/MARsPackageInfo;)V

    .line 844
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminEnabled(Ljava/lang/String;I)V

    goto :goto_66

    .line 845
    :cond_57
    const-string v3, "android.app.action.DEVICE_ADMIN_DISABLED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_66

    .line 846
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;

    move-result-object v3

    invoke-virtual {v3, p1, p3}, Lcom/android/server/am/mars/filter/filter/DeviceAdminPackageFilter;->onDeviceAdminDisabled(Ljava/lang/String;I)V

    .line 849
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_66
    :goto_66
    monitor-exit v1

    .line 850
    return-void

    .line 849
    :catchall_68
    move-exception v2

    monitor-exit v1
    :try_end_6a
    .catchall {:try_start_d .. :try_end_6a} :catchall_68

    throw v2
.end method

.method public onSpecialUnBindServiceActions(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "caller"    # Ljava/lang/String;

    .line 885
    if-eqz p1, :cond_41

    if-nez p2, :cond_5

    goto :goto_41

    .line 889
    :cond_5
    const-string v0, "android.intent.action.TTS_SERVICE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p4, :cond_1a

    .line 890
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->onTTSPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    :cond_1a
    const-string v0, "android.net.VpnService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 894
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/VPNPackageFilter;->onVpnPkgUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 897
    :cond_2d
    const-string v0, "android.service.notification.NotificationListenerService"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 898
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->onNotificationListenerUnBinded(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 900
    :cond_40
    return-void

    .line 886
    :cond_41
    :goto_41
    return-void
.end method

.method postInit(Z)V
    .registers 11
    .param p1, "boot"    # Z

    .line 178
    sget-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    if-eqz v0, :cond_5

    .line 179
    return-void

    .line 182
    :cond_5
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->registerEmStateReceiver()V

    .line 185
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/MARsTrigger;->registerSMDBChangedReceiver()V

    .line 188
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/mars/database/MARsDBManager;->isSMProviderExist()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    .line 189
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 190
    return-void

    .line 194
    :cond_21
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->MARs_ENABLE:Z

    .line 208
    :try_start_24
    const-string/jumbo v2, "sys.config.mars_version"

    const-string v3, "6.00"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_24 .. :try_end_2c} :catch_2d

    .line 211
    goto :goto_36

    .line 209
    :catch_2d
    move-exception v2

    .line 210
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "MARsPolicyManager"

    const-string/jumbo v4, "init(), we cannot set system property"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :goto_36
    invoke-static {}, Landroid/os/SemSystemProperties;->getCountryCode()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CHINA"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 214
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    .line 216
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isChinaModel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MARsPolicyManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    if-eqz p1, :cond_62

    .line 220
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->initHistoryBuffer()V

    .line 223
    :cond_62
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 224
    .local v2, "pm":Landroid/os/PowerManager;
    invoke-virtual {v2}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    .line 225
    sget-boolean v3, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v3, :cond_93

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mScreenOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MARsPolicyManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_93
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string v4, "batterymanager"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryManager;

    .line 228
    .local v3, "batteryManager":Landroid/os/BatteryManager;
    if-eqz v3, :cond_a8

    invoke-virtual {v3}, Landroid/os/BatteryManager;->isCharging()Z

    move-result v4

    if-eqz v4, :cond_a8

    .line 229
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setChargingMode(Z)V

    .line 232
    :cond_a8
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendGetMARsPolicyConditionMsgToDBHandler(Z)V

    .line 234
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/filter/FilterManager;->init(Landroid/content/Context;)V

    .line 235
    invoke-static {}, Lcom/android/server/am/MARsTrigger;->getInstance()Lcom/android/server/am/MARsTrigger;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/MARsTrigger;->registerReceiver(Z)V

    .line 236
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/mars/database/MARsDBManager;->sendInitSettingMsgToDBHandler()V

    .line 237
    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/server/am/mars/database/MARsDBManager;->registerContentObservers(Landroid/content/Context;)V

    .line 238
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/mars/util/UidStateMgr;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v4

    if-nez v4, :cond_e3

    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->registerAppIdleStateReceiver()V

    .line 241
    :cond_e3
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 242
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/am/MARsHandler;->sendGetBatteryStatMsgToMainHandler(Z)V

    .line 243
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 244
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    .line 245
    sget-boolean v4, Lcom/android/server/am/MARsPolicyManager;->HQM_ENABLE:Z

    if-eqz v4, :cond_110

    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/am/MARsHandler;->sendBigdataInfoToHQM(Z)V

    .line 249
    :cond_110
    :try_start_110
    const-string/jumbo v1, "sys.dualapp.profile_id"

    const-string v4, "-1"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    .line 250
    const/16 v4, 0x5f

    if-lt v1, v4, :cond_132

    const/16 v4, 0x63

    if-gt v1, v4, :cond_132

    .line 251
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z

    .line 252
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V
    :try_end_132
    .catch Ljava/lang/NumberFormatException; {:try_start_110 .. :try_end_132} :catch_133

    .line 256
    :cond_132
    goto :goto_13c

    .line 254
    :catch_133
    move-exception v0

    .line 255
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "MARsPolicyManager"

    const-string/jumbo v4, "init() get DualAppUserId failed!"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_13c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 258
    .local v0, "um":Landroid/os/UserManager;
    if-eqz v0, :cond_17b

    .line 259
    invoke-virtual {v0}, Landroid/os/UserManager;->getEnabledProfiles()Ljava/util/List;

    move-result-object v1

    .line 260
    .local v1, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_151
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 261
    .local v5, "user":Landroid/os/UserHandle;
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 262
    .local v6, "userId":I
    if-eqz v6, :cond_17a

    .line 263
    iget-object v7, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v7

    .line 264
    :try_start_166
    iget-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {v8, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 265
    monitor-exit v7
    :try_end_16f
    .catchall {:try_start_166 .. :try_end_16f} :catchall_177

    .line 266
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    goto :goto_17a

    .line 265
    :catchall_177
    move-exception v4

    :try_start_178
    monitor-exit v7
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    throw v4

    .line 268
    .end local v5    # "user":Landroid/os/UserHandle;
    .end local v6    # "userId":I
    :cond_17a
    :goto_17a
    goto :goto_151

    .line 270
    .end local v1    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/os/UserHandle;>;"
    :cond_17b
    return-void
.end method

.method queryUsageStatsForUser()V
    .registers 28

    .line 1311
    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getIsManualMode()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1312
    const-string v0, "MARsPolicyManager"

    const-string v2, "Now manual mode is on, we will not update anything!"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    return-void

    .line 1316
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    .line 1317
    .local v2, "actionUids":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1318
    .local v11, "timeNow":J
    iget-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    const-wide/16 v13, 0x0

    cmp-long v0, v3, v13

    if-eqz v0, :cond_35

    sub-long v3, v11, v3

    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v0, :cond_2e

    const-wide/16 v5, 0x2

    iget-wide v7, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    mul-long/2addr v7, v5

    goto :goto_31

    :cond_2e
    const-wide/32 v7, 0x4d3f6400

    :goto_31
    cmp-long v0, v3, v7

    if-lez v0, :cond_2ed

    .line 1319
    :cond_35
    const-wide v3, 0x90321000L

    sub-long v15, v11, v3

    .line 1321
    .local v15, "timeInterval":J
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v0

    .line 1323
    .local v10, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1324
    if-nez v0, :cond_4f

    return-void

    .line 1326
    :cond_4f
    iget-object v0, v1, Lcom/android/server/am/MARsPolicyManager;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/UserManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/os/UserManager;

    .line 1327
    .local v17, "um":Landroid/os/UserManager;
    if-nez v17, :cond_5e

    return-void

    .line 1329
    :cond_5e
    invoke-virtual/range {v17 .. v17}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v8

    .line 1330
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    .line 1331
    .local v9, "userCount":I
    iget-boolean v0, v1, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    if-eqz v0, :cond_6d

    iget-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    goto :goto_6f

    :cond_6d
    iget-wide v3, v1, Lcom/android/server/am/MARsPolicyManager;->mAutoDisabledLockingTime:J

    :goto_6f
    move-wide/from16 v18, v3

    .line 1333
    .local v18, "resetTimeForDeepSleep":J
    const/4 v0, 0x0

    move v6, v0

    .local v6, "i":I
    :goto_73
    const/4 v7, 0x7

    if-ge v6, v9, :cond_1e3

    .line 1334
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 1335
    .local v4, "info":Landroid/content/pm/UserInfo;
    iget v3, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v3

    if-nez v3, :cond_8e

    move/from16 v20, v6

    move-object/from16 v24, v8

    move/from16 v25, v9

    move-object v9, v10

    goto/16 :goto_1d8

    .line 1336
    :cond_8e
    iget-object v3, v1, Lcom/android/server/am/MARsPolicyManager;->mUsageStatsManager:Landroid/app/usage/UsageStatsManagerInternal;

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    const/16 v21, 0x2

    const/16 v22, 0x0

    move-object v13, v4

    .end local v4    # "info":Landroid/content/pm/UserInfo;
    .local v13, "info":Landroid/content/pm/UserInfo;
    move v4, v5

    const/16 v14, 0x100

    move/from16 v5, v21

    move/from16 v20, v6

    move v0, v7

    .end local v6    # "i":I
    .local v20, "i":I
    move-wide v6, v15

    move-object/from16 v24, v8

    move/from16 v25, v9

    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v9    # "userCount":I
    .local v24, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v25, "userCount":I
    move-wide v8, v11

    move-object/from16 v26, v10

    .end local v10    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .local v26, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    move/from16 v10, v22

    invoke-virtual/range {v3 .. v10}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v3

    .line 1338
    .local v3, "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    if-nez v3, :cond_b3

    move-object/from16 v9, v26

    goto/16 :goto_1d8

    .line 1340
    :cond_b3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_b7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1d6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 1341
    .local v5, "stat":Landroid/app/usage/UsageStats;
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 1342
    .local v6, "packageName":Ljava/lang/String;
    sget-object v7, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v7

    .line 1343
    :try_start_ca
    iget-object v8, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    iget v9, v13, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v8, v6, v9}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v8

    .line 1344
    .local v8, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v8, :cond_1c5

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v9

    if-eq v9, v14, :cond_1c5

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v9

    if-nez v9, :cond_1c5

    .line 1345
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPackageInfo;->setIsInUsageStats(Z)V

    .line 1346
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v9
    :try_end_e8
    .catchall {:try_start_ca .. :try_end_e8} :catchall_1cf

    const-wide/16 v22, 0x0

    cmp-long v9, v9, v22

    if-eqz v9, :cond_102

    :try_start_ee
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v9
    :try_end_f2
    .catchall {:try_start_ee .. :try_end_f2} :catchall_fd

    sub-long v9, v11, v9

    cmp-long v9, v9, v18

    if-lez v9, :cond_f9

    goto :goto_102

    :cond_f9
    move-object/from16 v9, v26

    goto/16 :goto_1c7

    .line 1367
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_fd
    move-exception v0

    :goto_fe
    move-object/from16 v9, v26

    goto/16 :goto_1d2

    .line 1347
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_102
    :goto_102
    :try_start_102
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide v9
    :try_end_106
    .catchall {:try_start_102 .. :try_end_106} :catchall_1cf

    const-wide/16 v22, 0x0

    cmp-long v9, v9, v22

    if-lez v9, :cond_116

    :try_start_10c
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide v9

    cmp-long v9, v9, v18

    if-gez v9, :cond_116

    .line 1348
    monitor-exit v7
    :try_end_115
    .catchall {:try_start_10c .. :try_end_115} :catchall_fd

    goto :goto_b7

    .line 1350
    :cond_116
    :try_start_116
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z
    :try_end_118
    .catchall {:try_start_116 .. :try_end_118} :catchall_1cf

    if-eqz v9, :cond_146

    .line 1351
    :try_start_11a
    const-string v9, "MARsPolicyManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "queryUsageStatsForUser : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", LastUsedTime : "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v0

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_141
    .catchall {:try_start_11a .. :try_end_141} :catchall_142

    goto :goto_146

    .line 1367
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :catchall_142
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_fe

    .line 1352
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_146
    :goto_146
    :try_start_146
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v0

    .line 1353
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v9

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v10

    .line 1352
    const/4 v14, 0x7

    invoke-virtual {v0, v14, v1, v9, v10}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v0
    :try_end_15b
    .catchall {:try_start_146 .. :try_end_15b} :catchall_1c1

    if-nez v0, :cond_1bc

    .line 1354
    const/4 v0, 0x4

    move-object/from16 v1, p0

    :try_start_160
    invoke-virtual {v1, v0, v8}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v9

    if-eqz v9, :cond_1b9

    .line 1355
    new-instance v0, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1356
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1357
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1358
    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v0

    .line 1359
    invoke-virtual {v0}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v0
    :try_end_19b
    .catchall {:try_start_160 .. :try_end_19b} :catchall_1cf

    .line 1361
    .local v0, "value":Lcom/android/server/am/mars/database/FASEntity;
    move-object/from16 v9, v26

    .end local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .local v9, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :try_start_19d
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1362
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1c7

    .line 1354
    .end local v0    # "value":Lcom/android/server/am/mars/database/FASEntity;
    .end local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_1b9
    move-object/from16 v9, v26

    .end local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    goto :goto_1c7

    .line 1352
    .end local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_1bc
    move-object/from16 v1, p0

    move-object/from16 v9, v26

    .end local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    goto :goto_1c7

    .line 1367
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :catchall_1c1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1d0

    .line 1344
    .restart local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_1c5
    move-object/from16 v9, v26

    .line 1367
    .end local v8    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :goto_1c7
    monitor-exit v7

    .line 1368
    .end local v5    # "stat":Landroid/app/usage/UsageStats;
    .end local v6    # "packageName":Ljava/lang/String;
    move-object/from16 v26, v9

    const/4 v0, 0x7

    const/16 v14, 0x100

    goto/16 :goto_b7

    .line 1367
    .end local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v5    # "stat":Landroid/app/usage/UsageStats;
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :catchall_1cf
    move-exception v0

    :goto_1d0
    move-object/from16 v9, v26

    .end local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :goto_1d2
    monitor-exit v7
    :try_end_1d3
    .catchall {:try_start_19d .. :try_end_1d3} :catchall_1d4

    throw v0

    :catchall_1d4
    move-exception v0

    goto :goto_1d2

    .line 1340
    .end local v5    # "stat":Landroid/app/usage/UsageStats;
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_1d6
    move-object/from16 v9, v26

    .line 1333
    .end local v3    # "stats":Ljava/util/List;, "Ljava/util/List<Landroid/app/usage/UsageStats;>;"
    .end local v13    # "info":Landroid/content/pm/UserInfo;
    .end local v26    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :goto_1d8
    add-int/lit8 v6, v20, 0x1

    move-object v10, v9

    move-object/from16 v8, v24

    move/from16 v9, v25

    const-wide/16 v13, 0x0

    .end local v20    # "i":I
    .local v6, "i":I
    goto/16 :goto_73

    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "userCount":I
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v9, "userCount":I
    .restart local v10    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    :cond_1e3
    move/from16 v20, v6

    move-object/from16 v24, v8

    move/from16 v25, v9

    move-object v9, v10

    .line 1371
    .end local v6    # "i":I
    .end local v8    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v10    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .local v9, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v25    # "userCount":I
    const-string v0, " |"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1372
    sget-object v3, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v3

    .line 1373
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f3
    :try_start_1f3
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v0, v4, :cond_2c5

    .line 1374
    iget-object v4, v1, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 1375
    .local v4, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_20c
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_2bd

    .line 1376
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 1378
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getIsInUsageStats()Z

    move-result v7

    if-nez v7, :cond_2b5

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getFasType()I

    move-result v7

    const/16 v8, 0x100

    if-eq v7, v8, :cond_2b5

    .line 1379
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v7

    if-nez v7, :cond_2b0

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v7

    if-eqz v7, :cond_2b0

    .line 1380
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide v13

    const-wide/16 v22, 0x0

    cmp-long v7, v13, v22

    if-lez v7, :cond_24b

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getLastUsedTime()J

    move-result-wide v13

    cmp-long v7, v13, v18

    if-gez v7, :cond_24b

    .line 1381
    const/4 v7, 0x4

    const/4 v8, 0x7

    goto :goto_2b9

    .line 1383
    :cond_24b
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v7

    .line 1384
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v14

    .line 1383
    const/4 v8, 0x7

    invoke-virtual {v7, v8, v10, v13, v14}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_2ae

    .line 1385
    const/4 v7, 0x4

    invoke-virtual {v1, v7, v6}, Lcom/android/server/am/MARsPolicyManager;->levelChange(ILcom/android/server/am/MARsPackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_2b9

    .line 1386
    new-instance v10, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 1387
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 1388
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v13

    invoke-static {v13}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v10

    .line 1389
    invoke-virtual {v10}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v10

    .line 1391
    .local v10, "value":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1392
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2b9

    .line 1383
    .end local v10    # "value":Lcom/android/server/am/mars/database/FASEntity;
    :cond_2ae
    const/4 v7, 0x4

    goto :goto_2b9

    .line 1379
    :cond_2b0
    const/4 v7, 0x4

    const/4 v8, 0x7

    const-wide/16 v22, 0x0

    goto :goto_2b9

    .line 1378
    :cond_2b5
    const/4 v7, 0x4

    const/4 v8, 0x7

    const-wide/16 v22, 0x0

    .line 1375
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_2b9
    :goto_2b9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_20c

    :cond_2bd
    const/4 v7, 0x4

    const/4 v8, 0x7

    const-wide/16 v22, 0x0

    .line 1373
    .end local v4    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v5    # "j":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1f3

    .line 1398
    .end local v0    # "i":I
    :cond_2c5
    monitor-exit v3
    :try_end_2c6
    .catchall {:try_start_1f3 .. :try_end_2c6} :catchall_2ee

    .line 1399
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2d3

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 1400
    :cond_2d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "D-Candi:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "NOTI"

    invoke-virtual {v1, v3, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .end local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .end local v15    # "timeInterval":J
    .end local v17    # "um":Landroid/os/UserManager;
    .end local v18    # "resetTimeForDeepSleep":J
    .end local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v25    # "userCount":I
    :cond_2ed
    return-void

    .line 1398
    .restart local v9    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .restart local v15    # "timeInterval":J
    .restart local v17    # "um":Landroid/os/UserManager;
    .restart local v18    # "resetTimeForDeepSleep":J
    .restart local v24    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .restart local v25    # "userCount":I
    :catchall_2ee
    move-exception v0

    :try_start_2ef
    monitor-exit v3
    :try_end_2f0
    .catchall {:try_start_2ef .. :try_end_2f0} :catchall_2ee

    throw v0
.end method

.method public removeRestrictListForCalmMode(Ljava/lang/StringBuilder;)V
    .registers 11
    .param p1, "actionUids"    # Ljava/lang/StringBuilder;

    .line 3950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3951
    .local v0, "actionCalmUids":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3952
    .local v1, "deleteList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPackageInfo;>;"
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 3953
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5a

    .line 3954
    iget-object v4, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 3955
    .local v4, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_27
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_57

    .line 3956
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/MARsPackageInfo;

    .line 3957
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 3958
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    if-eqz v7, :cond_4b

    .line 3959
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    iget v7, v7, Lcom/android/server/am/MARsPolicyManager$Policy;->num:I

    const/16 v8, 0x9

    if-ne v7, v8, :cond_4b

    .line 3960
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 3963
    :cond_4b
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v7

    if-nez v7, :cond_54

    .line 3964
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3955
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_54
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 3953
    .end local v4    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v5    # "j":I
    :cond_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 3968
    .end local v3    # "i":I
    :cond_5a
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_90

    .line 3969
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPackageInfo;

    .line 3970
    .local v4, "ps":Lcom/android/server/am/MARsPackageInfo;
    iget-object v5, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/MARsPkgMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 3971
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3968
    nop

    .end local v4    # "ps":Lcom/android/server/am/MARsPackageInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_5b

    .line 3973
    .end local v3    # "i":I
    :cond_90
    monitor-exit v2
    :try_end_91
    .catchall {:try_start_e .. :try_end_91} :catchall_b8

    .line 3974
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CancelPolicy-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " UFZ-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Calm"

    invoke-virtual {p0, v3, v2}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 3975
    return-void

    .line 3973
    :catchall_b8
    move-exception v3

    :try_start_b9
    monitor-exit v2
    :try_end_ba
    .catchall {:try_start_b9 .. :try_end_ba} :catchall_b8

    throw v3
.end method

.method public reportStatusWithMARs(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 14
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "isFreezed"    # Z

    .line 2067
    const/4 v0, 0x0

    .line 2068
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 2069
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    move-object v0, v2

    .line 2070
    if-eqz v0, :cond_f4

    .line 2071
    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz p4, :cond_54

    .line 2072
    iget-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v7, :cond_f4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v7

    if-ne v7, v2, :cond_f4

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 2073
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    if-eqz v2, :cond_f4

    .line 2074
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aget-wide v7, v2, v6

    cmp-long v2, v7, v3

    if-eqz v2, :cond_4a

    .line 2075
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aget-wide v7, v2, v5

    cmp-long v2, v7, v3

    if-eqz v2, :cond_40

    .line 2076
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    iget-object v3, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aget-wide v3, v3, v5

    aput-wide v3, v2, v6

    .line 2078
    :cond_40
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, v2, v5

    goto/16 :goto_f4

    .line 2080
    :cond_4a
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    aput-wide v3, v2, v6

    goto/16 :goto_f4

    .line 2085
    :cond_54
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPackageInfo;->setCurLevel(I)V

    .line 2086
    iget-boolean v7, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    if-nez v7, :cond_ec

    .line 2087
    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v3

    if-eqz v3, :cond_f4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v3

    if-ne v3, v2, :cond_f4

    .line 2088
    const-string v2, "Binder(1)-free_buffer_full"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_9a

    .line 2089
    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2090
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    .line 2091
    const-string v2, "LVU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Binder(1)-free_buffer_full! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 2093
    :cond_9a
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result v2

    iget v4, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorUnfreezedCount:I

    if-lt v2, v4, :cond_e3

    .line 2094
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    .line 2095
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aget-wide v7, v2, v6

    sub-long/2addr v4, v7

    iget-wide v7, p0, Lcom/android/server/am/MARsPolicyManager;->mDetectBadBehaviorInterval:J

    cmp-long v2, v4, v7

    if-gez v2, :cond_f4

    .line 2096
    invoke-virtual {v0, v3}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2097
    invoke-virtual {v0, v6}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    .line 2098
    const-string v2, "LVU"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UFZ counts excceed! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 2101
    :cond_e3
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getunfreezedCount()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsPackageInfo;->setunfreezedCount(I)V

    goto :goto_f4

    .line 2105
    :cond_ec
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aput-wide v3, v2, v6

    .line 2106
    iget-object v2, v0, Lcom/android/server/am/MARsPackageInfo;->freezedTimeForLevelUp:[J

    aput-wide v3, v2, v5

    .line 2110
    :cond_f4
    :goto_f4
    monitor-exit v1

    .line 2111
    return-void

    .line 2110
    :catchall_f6
    move-exception v2

    monitor-exit v1
    :try_end_f8
    .catchall {:try_start_4 .. :try_end_f8} :catchall_f6

    throw v2
.end method

.method public resetAutoDisabledAppState(Ljava/lang/String;IZ)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "isPackageEnabled"    # Z

    .line 3841
    const/4 v0, 0x0

    .line 3842
    .local v0, "isManualDisable":Z
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 3843
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v2

    .line 3844
    .local v2, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/4 v3, 0x0

    if-eqz p3, :cond_27

    if-eqz v2, :cond_27

    invoke-virtual {v2}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_27

    .line 3845
    invoke-virtual {v2, v3}, Lcom/android/server/am/MARsPackageInfo;->setDisableReason(I)V

    .line 3846
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v4

    if-nez v4, :cond_27

    .line 3847
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPackageInfo;->setFasType(I)V

    .line 3848
    invoke-virtual {v2, v4}, Lcom/android/server/am/MARsPackageInfo;->setState(I)V

    .line 3849
    const/4 v0, 0x1

    .line 3852
    .end local v2    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_30

    .line 3853
    if-eqz v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v3, p3

    :goto_2c
    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->changeAutoDisabledAppState(Ljava/lang/String;IZ)V

    .line 3854
    return-void

    .line 3852
    :catchall_30
    move-exception v2

    :try_start_31
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw v2
.end method

.method public restrictBySEP(IIZLjava/lang/String;I)Z
    .registers 11
    .param p1, "type"    # I
    .param p2, "state"    # I
    .param p3, "byUser"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .line 4229
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 4230
    return v1

    .line 4233
    :cond_a
    invoke-static {p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 4234
    .local v0, "userId":I
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v2

    if-nez v2, :cond_15

    return v1

    .line 4235
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4236
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    const-string v2, "default"

    .line 4237
    .local v2, "reason":Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_28

    .line 4238
    if-eqz p3, :cond_24

    const-string v3, "added_from_user_manual"

    goto :goto_26

    .line 4239
    :cond_24
    const-string v3, "added_from_mars_auto"

    :goto_26
    move-object v2, v3

    goto :goto_33

    .line 4240
    :cond_28
    const/4 v3, 0x2

    if-ne p2, v3, :cond_33

    .line 4241
    if-eqz p3, :cond_30

    const-string v3, "deleted_from_user_manual"

    goto :goto_32

    .line 4242
    :cond_30
    const-string v3, "deleted_from_mars_auto"

    :goto_32
    move-object v2, v3

    .line 4244
    :cond_33
    :goto_33
    new-instance v3, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;

    invoke-direct {v3, p1, p2, v2}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;-><init>(IILjava/lang/String;)V

    .line 4245
    .local v3, "info":Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    new-instance v4, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;

    invoke-direct {v4, p4, p5, v3}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;-><init>(Ljava/lang/String;ILcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4246
    invoke-virtual {p0, v3, v1}, Lcom/android/server/am/MARsPolicyManager;->updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z

    move-result v4

    return v4
.end method

.method public setAllPoliciesOnOffState(IZ)V
    .registers 6
    .param p1, "on"    # I
    .param p2, "boot"    # Z

    .line 642
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    if-eqz v0, :cond_32

    .line 643
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllPoliciesOnOffState on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spcm_switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_32
    iget v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    if-eq v0, p1, :cond_8a

    .line 648
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_7c

    if-eq p1, v1, :cond_62

    const/4 v2, 0x3

    if-eq p1, v2, :cond_52

    const v2, 0x98967f

    if-eq p1, v2, :cond_45

    goto :goto_88

    .line 673
    :cond_45
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 674
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_88

    .line 666
    :cond_52
    sput-boolean v1, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 667
    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 668
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v0

    if-nez v0, :cond_88

    .line 669
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    goto :goto_88

    .line 656
    :cond_62
    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->isChinaModel:Z

    if-nez v2, :cond_6f

    sget-boolean v2, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    if-eqz v2, :cond_6f

    .line 657
    sput-boolean v0, Lcom/android/server/am/MARsPolicyManager;->GlobalModelWithChinaSIM:Z

    .line 658
    invoke-direct {p0, v1, p2}, Lcom/android/server/am/MARsPolicyManager;->switchPolicies(IZ)V

    .line 660
    :cond_6f
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v2

    if-nez v2, :cond_78

    .line 661
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 663
    :cond_78
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 664
    goto :goto_88

    .line 650
    :cond_7c
    invoke-virtual {p0, v1}, Lcom/android/server/am/MARsPolicyManager;->setIsManualMode(Z)V

    .line 651
    invoke-virtual {p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 652
    invoke-virtual {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->setPackageDisablerEnabled(Z)V

    .line 679
    :cond_88
    :goto_88
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mAllPoliciesOn:I

    .line 681
    :cond_8a
    return-void
.end method

.method public declared-synchronized setCarModeOnState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    monitor-enter p0

    .line 460
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mCarModeOn:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 461
    monitor-exit p0

    return-void

    .line 459
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "onoff":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setChargingMode(Z)V
    .registers 4
    .param p1, "charging"    # Z

    .line 437
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsCharging:Z

    .line 438
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_1c

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Charging Mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_1c
    return-void
.end method

.method public declared-synchronized setDeviceIdleModeState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    monitor-enter p0

    .line 468
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsDeviceIdleMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 469
    monitor-exit p0

    return-void

    .line 467
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "onoff":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDualAppEnabled(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    monitor-enter p0

    .line 492
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppEnabled:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 493
    monitor-exit p0

    return-void

    .line 491
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "onoff":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized setDualAppUserId(I)V
    .registers 2
    .param p1, "userId"    # I

    monitor-enter p0

    .line 484
    :try_start_1
    iput p1, p0, Lcom/android/server/am/MARsPolicyManager;->mDualAppUserId:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 485
    monitor-exit p0

    return-void

    .line 483
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "userId":I
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFakeTopActivityList(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;",
            ">;)V"
        }
    .end annotation

    .line 1026
    .local p1, "restrictionValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/MARsVersionManager$AdjustRestriction;>;"
    return-void
.end method

.method public setFirstNotiSentTimeForSleep(J)V
    .registers 3
    .param p1, "time"    # J

    .line 1578
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstNotiSentTimeForSleep:J

    .line 1579
    return-void
.end method

.method public setFirstNotiSentTimeForSleepDismiss(J)V
    .registers 5
    .param p1, "time"    # J

    .line 1586
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->mIsFirstNotiSentForSleepDismiss:Z

    .line 1587
    return-void
.end method

.method public declared-synchronized setFirstTimeUpdatePkgsState(Z)V
    .registers 2
    .param p1, "onoff"    # Z

    monitor-enter p0

    .line 476
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 477
    monitor-exit p0

    return-void

    .line 475
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    .end local p1    # "onoff":Z
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setIsManualMode(Z)V
    .registers 5
    .param p1, "onoff"    # Z

    monitor-enter p0

    .line 425
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mIsManualMode:Z

    .line 426
    if-nez p1, :cond_21

    .line 427
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setFirstNotiSentTimeForSleep(J)V

    .line 428
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->setLastNotiSentTimeForDisabled(J)V

    .line 430
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 431
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsHandler;->sendUpdatePkgMsgToMainHandler(Z)V

    .line 433
    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :cond_21
    const-string v0, "DEV"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ManualMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_32

    const-string v2, "ON"

    goto :goto_34

    :cond_32
    const-string v2, "OFF"

    :goto_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catchall {:try_start_1 .. :try_end_3e} :catchall_40

    .line 434
    monitor-exit p0

    return-void

    .line 424
    .end local p1    # "onoff":Z
    :catchall_40
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setKeyguardPkgInfo(Ljava/lang/String;I)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 816
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/LockScreenFilter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/mars/filter/filter/LockScreenFilter;->setKeyguardInfo(Ljava/lang/String;I)V

    .line 817
    return-void
.end method

.method public setLastNotiSentTimeForDisabled(J)V
    .registers 3
    .param p1, "time"    # J

    .line 1582
    iput-wide p1, p0, Lcom/android/server/am/MARsPolicyManager;->mLastNotiSentTimeForDisabled:J

    .line 1583
    return-void
.end method

.method declared-synchronized setManagedProfileEnabled(ZI)V
    .registers 5
    .param p1, "onoff"    # Z
    .param p2, "userId"    # I

    monitor-enter p0

    .line 500
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mManagedProfileEnabled:Z

    .line 501
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    monitor-enter v0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_21

    .line 502
    if-eqz p1, :cond_11

    .line 503
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    goto :goto_19

    .line 505
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    invoke-static {v1, p2}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mEnabledProfileUserIds:[I

    .line 507
    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_8 .. :try_end_1a} :catchall_1c

    .line 508
    monitor-exit p0

    return-void

    .line 507
    :catchall_1c
    move-exception v1

    :goto_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1f

    :try_start_1e
    throw v1
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_21

    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :catchall_1f
    move-exception v1

    goto :goto_1d

    .line 499
    .end local p1    # "onoff":Z
    .end local p2    # "userId":I
    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setPackageDisablerEnabled(Z)V
    .registers 4
    .param p1, "onoff"    # Z

    .line 531
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    if-eqz v0, :cond_41

    iget-boolean v0, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    if-eq v0, p1, :cond_41

    .line 532
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iput-boolean p1, v0, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    .line 533
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_2b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPackageDisablerEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->disablePolicy:Lcom/android/server/am/MARsPolicyManager$Policy;

    iget-boolean v1, v1, Lcom/android/server/am/MARsPolicyManager$Policy;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MARsPolicyManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disabler_switch : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DEV"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :cond_41
    return-void
.end method

.method public setPackagesUnusedLockingTime(I)V
    .registers 10
    .param p1, "hours"    # I

    .line 684
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    const-string v1, "MARsPolicyManager"

    if-eqz v0, :cond_1b

    .line 685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPackagesUnusedLockingTime hours = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    :cond_1b
    iget-wide v2, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    int-to-long v4, p1

    const-wide/32 v6, 0x36ee80

    mul-long/2addr v4, v6

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-eqz v0, :cond_29

    .line 689
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->mLockingTimeChanged:Z

    .line 692
    :cond_29
    int-to-long v3, p1

    mul-long/2addr v3, v6

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mUnusedLockingTime:J

    .line 693
    sub-long/2addr v3, v6

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mCalibrationResetTime:J

    .line 696
    if-ne p1, v2, :cond_5e

    .line 697
    invoke-direct {p0}, Lcom/android/server/am/MARsPolicyManager;->callRestrictAppForAllPkgs()V

    .line 698
    const-string v0, "DEV"

    const-string v3, "Auto restriction\'s battery condition changed !"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    .line 700
    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 702
    iput-boolean v2, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 703
    iput-wide v6, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoSleepTimeForDebug:J

    .line 704
    const-wide/32 v3, 0x6ddd00

    iput-wide v3, p0, Lcom/android/server/am/MARsPolicyManager;->mAutoDeepSleepTimeForDebug:J

    .line 705
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 706
    sget-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v0, :cond_6c

    .line 707
    const-string v0, "DEBUGGING mode turned on, skip to check battery usage !"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 710
    :cond_5e
    iget-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE_BACKUP:D

    iput-wide v0, p0, Lcom/android/server/am/MARsPolicyManager;->THRESHOLD_POWER_USAGE:D

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsPolicyManager;->isTimeChangedForDebug:Z

    .line 712
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/MARsHandler;->sendUpdateDisableMsgToMainHandler(Z)V

    .line 714
    :cond_6c
    :goto_6c
    return-void
.end method

.method public declared-synchronized setScreenOnState(Z)V
    .registers 5
    .param p1, "onoff"    # Z

    monitor-enter p0

    .line 451
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/MARsPolicyManager;->mScreenOn:Z

    .line 452
    const-string v0, "SYS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SCR "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_14

    const-string v2, "ON"

    goto :goto_16

    .end local p0    # "this":Lcom/android/server/am/MARsPolicyManager;
    :cond_14
    const-string v2, "OFF"

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_22

    .line 453
    monitor-exit p0

    return-void

    .line 450
    .end local p1    # "onoff":Z
    :catchall_22
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public switchUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .line 274
    const-string v0, "DEV"

    const-string/jumbo v1, "switchUser"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getScreenOnFreecessEnabled()Z

    move-result v0

    .line 276
    .local v0, "prevScreenOnFreezeEnabled":Z
    if-eqz v0, :cond_21

    .line 277
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 278
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->removeBgTriggerMsg()V

    .line 281
    :cond_21
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 282
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    const-string v2, "MUM"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;)V

    .line 285
    :cond_34
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFirstTimeUpdatePackages:Z

    .line 287
    if-eqz v0, :cond_40

    .line 288
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/FreecessController;->setScreenOnFreecessEnabled(Z)V

    .line 291
    :cond_40
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/FilterManager;->deInit()V

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->initCurrentUser(I)V

    .line 293
    invoke-static {}, Lcom/android/server/am/MARsHandler;->getInstance()Lcom/android/server/am/MARsHandler;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/MARsHandler;->sendInitDisabledMsgToMainHandler(I)V

    .line 294
    return-void
.end method

.method triggerAction()V
    .registers 32

    .line 2525
    move-object/from16 v7, p0

    const-string v0, "MARsPolicyManager"

    const-string/jumbo v1, "triggerAction called!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    .line 2528
    .local v8, "tempTargetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;>;"
    const-string v0, ""

    const-string v1, "[FRZ]"

    const-string v2, "[FAS]"

    const-string v3, "[FOS]"

    const-string v4, "[DIS]"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 2529
    .local v9, "actionUids":[Ljava/lang/String;
    const-string v0, ""

    const-string v1, "[FRZ]"

    const-string v2, "[FAS]"

    const-string v3, "[FOS]"

    const-string v4, "[DIS]"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 2530
    .local v10, "impUids":[Ljava/lang/String;
    const/4 v0, 0x0

    new-array v11, v0, [I

    .line 2532
    .local v11, "closeSocketTargetUids":[I
    const/4 v12, 0x0

    .line 2533
    .local v12, "isActionUidExist":Z
    const/4 v13, 0x0

    .line 2536
    .local v13, "isNeededCloseSocket":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v7, Lcom/android/server/am/MARsPolicyManager;->mLastTriggerTime:J

    .line 2538
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateBTUsingPackages()V

    .line 2539
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateRunningLocationPackages()V

    .line 2540
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->updateJobSchedulerPackages()V

    .line 2542
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/OngoingNotiPackageFilter;->getActiveNotifications()V

    .line 2543
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/mars/filter/filter/ActiveMusicRecordFilter;->getUidListUsingAudio()V

    .line 2544
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getScreenOnState()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v1

    if-nez v1, :cond_77

    .line 2545
    return-void

    .line 2547
    :cond_77
    sget-object v14, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v14

    .line 2548
    const/4 v1, 0x0

    move v15, v1

    .local v15, "i":I
    :goto_7c
    :try_start_7c
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1
    :try_end_86
    .catchall {:try_start_7c .. :try_end_86} :catchall_82f

    const/4 v5, 0x2

    const/4 v4, 0x4

    if-ge v15, v1, :cond_57c

    .line 2549
    :try_start_8a
    iget-object v1, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v1}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    move-object v2, v1

    .line 2550
    .local v2, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_98
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_561

    .line 2551
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MARsPackageInfo;

    .line 2552
    .local v0, "pi":Lcom/android/server/am/MARsPackageInfo;
    const/16 v16, 0x0

    .line 2553
    .local v16, "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    if-eqz v0, :cond_544

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/android/server/am/MARsPolicyManager;->isCurrentUser(I)Z

    move-result v3

    if-eqz v3, :cond_544

    .line 2554
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    .line 2555
    .local v3, "uid":I
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v18
    :try_end_ba
    .catchall {:try_start_8a .. :try_end_ba} :catchall_572

    move/from16 v19, v18

    .line 2558
    .local v19, "maxLevel":I
    move/from16 v6, v19

    .end local v19    # "maxLevel":I
    .local v6, "maxLevel":I
    if-le v6, v5, :cond_df

    :try_start_c0
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v5

    if-eq v6, v5, :cond_c7

    goto :goto_df

    :cond_c7
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_550

    .line 2673
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v1    # "j":I
    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "uid":I
    .end local v6    # "maxLevel":I
    .end local v15    # "i":I
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :catchall_d5
    move-exception v0

    move-object v5, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_837

    .line 2558
    .restart local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .restart local v1    # "j":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "uid":I
    .restart local v6    # "maxLevel":I
    .restart local v15    # "i":I
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_df
    :goto_df
    if-le v6, v4, :cond_ef

    .line 2559
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_550

    .line 2562
    :cond_ef
    if-ne v6, v4, :cond_115

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getDisabled()Z

    move-result v5

    if-nez v5, :cond_115

    .line 2564
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-nez v5, :cond_133

    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidActive(I)Z

    move-result v5
    :try_end_105
    .catchall {:try_start_c0 .. :try_end_105} :catchall_d5

    if-eqz v5, :cond_133

    .line 2565
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_550

    .line 2567
    :cond_115
    :try_start_115
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isFirstTimeTriggerAutorun()Z

    move-result v5
    :try_end_119
    .catchall {:try_start_115 .. :try_end_119} :catchall_572

    if-nez v5, :cond_133

    :try_start_11b
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidRunning(I)Z

    move-result v5
    :try_end_123
    .catchall {:try_start_11b .. :try_end_123} :catchall_d5

    if-nez v5, :cond_133

    .line 2568
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_550

    .line 2570
    :cond_133
    :try_start_133
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v5
    :try_end_13b
    .catchall {:try_start_133 .. :try_end_13b} :catchall_572

    if-eqz v5, :cond_14c

    :try_start_13d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getDeviceIdleModeState()Z

    move-result v5

    if-eqz v5, :cond_14c

    const/4 v5, 0x3

    if-ge v6, v5, :cond_14c

    iget v5, v0, Lcom/android/server/am/MARsPackageInfo;->optionFlag:I
    :try_end_148
    .catchall {:try_start_13d .. :try_end_148} :catchall_d5

    and-int/2addr v5, v4

    if-nez v5, :cond_14c

    goto :goto_16a

    .line 2572
    :cond_14c
    :try_start_14c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5
    :try_end_150
    .catchall {:try_start_14c .. :try_end_150} :catchall_572

    if-nez v5, :cond_16a

    :try_start_152
    invoke-static {}, Lcom/android/server/am/mars/util/UidStateMgr;->getInstance()Lcom/android/server/am/mars/util/UidStateMgr;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/am/mars/util/UidStateMgr;->isUidIdle(I)Z

    move-result v5
    :try_end_15a
    .catchall {:try_start_152 .. :try_end_15a} :catchall_d5

    if-nez v5, :cond_16a

    .line 2573
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    goto/16 :goto_550

    .line 2575
    :cond_16a
    :goto_16a
    :try_start_16a
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2576
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v20
    :try_end_172
    .catchall {:try_start_16a .. :try_end_172} :catchall_572

    move/from16 v21, v20

    .line 2577
    .local v21, "userId":I
    const/16 v20, 0x0

    .line 2578
    .local v20, "impValue":I
    const/4 v4, 0x1

    if-eq v6, v4, :cond_39a

    move-object/from16 v17, v11

    const/4 v11, 0x2

    .end local v11    # "closeSocketTargetUids":[I
    .local v17, "closeSocketTargetUids":[I
    if-eq v6, v11, :cond_389

    const/4 v11, 0x3

    if-eq v6, v11, :cond_245

    const/4 v4, 0x4

    if-eq v6, v4, :cond_198

    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v22, v6

    move-object/from16 v30, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move-object/from16 v1, v16

    move/from16 v11, v21

    move v13, v3

    move-object v12, v5

    goto/16 :goto_532

    .line 2580
    :cond_198
    :try_start_198
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v4

    const/16 v11, 0x15

    move/from16 v27, v1

    const/4 v1, 0x0

    .end local v1    # "j":I
    .local v27, "j":I
    invoke-virtual {v4, v11, v5, v1, v1}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1fb

    .line 2581
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v4, 0x7

    move/from16 v11, v21

    .end local v21    # "userId":I
    .local v11, "userId":I
    invoke-virtual {v1, v4, v5, v11, v3}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    move/from16 v20, v1

    if-nez v1, :cond_1ec

    .line 2583
    new-instance v21, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v23

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v24
    :try_end_1c4
    .catchall {:try_start_198 .. :try_end_1c4} :catchall_23d

    const/16 v25, 0x0

    move-object/from16 v1, v21

    move-object/from16 v28, v2

    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v28, "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    move-object/from16 v2, p0

    move/from16 v29, v3

    .end local v3    # "uid":I
    .local v29, "uid":I
    move-object v3, v4

    move/from16 v4, v23

    move/from16 v18, v12

    move/from16 v19, v13

    const/4 v13, 0x2

    move-object v12, v5

    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v13    # "isNeededCloseSocket":Z
    .local v12, "pkgName":Ljava/lang/String;
    .local v18, "isActionUidExist":Z
    .local v19, "isNeededCloseSocket":Z
    move/from16 v5, v24

    move/from16 v22, v6

    const/4 v13, 0x3

    .end local v6    # "maxLevel":I
    .local v22, "maxLevel":I
    move-object/from16 v6, v25

    :try_start_1de
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v21

    .line 2584
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .local v1, "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move-object/from16 v30, v9

    move/from16 v13, v29

    goto/16 :goto_532

    .line 2581
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v22    # "maxLevel":I
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v29    # "uid":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "uid":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "maxLevel":I
    .local v12, "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_1ec
    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v22, v6

    move/from16 v18, v12

    move/from16 v19, v13

    const/4 v13, 0x3

    move-object v12, v5

    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "uid":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "maxLevel":I
    .end local v13    # "isNeededCloseSocket":Z
    .local v12, "pkgName":Ljava/lang/String;
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v22    # "maxLevel":I
    .restart local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v29    # "uid":I
    move/from16 v1, v20

    goto :goto_20b

    .line 2580
    .end local v11    # "userId":I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v22    # "maxLevel":I
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v29    # "uid":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "uid":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "maxLevel":I
    .local v12, "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    .restart local v21    # "userId":I
    :cond_1fb
    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v22, v6

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v11, v21

    const/4 v13, 0x3

    move-object v12, v5

    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "uid":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "maxLevel":I
    .end local v13    # "isNeededCloseSocket":Z
    .end local v21    # "userId":I
    .restart local v11    # "userId":I
    .local v12, "pkgName":Ljava/lang/String;
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v22    # "maxLevel":I
    .restart local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v29    # "uid":I
    move/from16 v1, v20

    .line 2586
    .end local v20    # "impValue":I
    .local v1, "impValue":I
    :goto_20b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v10, v22

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v22
    :try_end_22f
    .catchall {:try_start_1de .. :try_end_22f} :catchall_239

    .line 2588
    move/from16 v20, v1

    move-object/from16 v30, v9

    move-object/from16 v1, v16

    move/from16 v13, v29

    goto/16 :goto_532

    .line 2673
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v1    # "impValue":I
    .end local v11    # "userId":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v15    # "i":I
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v22    # "maxLevel":I
    .end local v27    # "j":I
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v29    # "uid":I
    :catchall_239
    move-exception v0

    move-object v5, v9

    goto/16 :goto_837

    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .local v12, "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    :catchall_23d
    move-exception v0

    move/from16 v18, v12

    move/from16 v19, v13

    move-object v5, v9

    .end local v12    # "isActionUidExist":Z
    .end local v13    # "isNeededCloseSocket":Z
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    goto/16 :goto_837

    .line 2590
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .restart local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v1, "j":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "uid":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "maxLevel":I
    .restart local v12    # "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    .restart local v15    # "i":I
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v20    # "impValue":I
    .restart local v21    # "userId":I
    :cond_245
    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v29, v3

    move/from16 v22, v6

    move/from16 v18, v12

    move/from16 v19, v13

    move-object v12, v5

    move v13, v11

    move/from16 v11, v21

    .end local v1    # "j":I
    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "uid":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "maxLevel":I
    .end local v13    # "isNeededCloseSocket":Z
    .end local v21    # "userId":I
    .restart local v11    # "userId":I
    .local v12, "pkgName":Ljava/lang/String;
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v22    # "maxLevel":I
    .restart local v27    # "j":I
    .restart local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v29    # "uid":I
    :try_start_255
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_32c

    .line 2591
    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v12, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_266
    .catchall {:try_start_255 .. :try_end_266} :catchall_385

    if-eqz v1, :cond_29b

    .line 2592
    :try_start_268
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    move/from16 v6, v29

    const/16 v2, 0xd

    .end local v29    # "uid":I
    .local v6, "uid":I
    invoke-virtual {v1, v2, v12, v11, v6}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_299

    .line 2594
    new-instance v21, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/16 v23, 0x0

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    move v13, v6

    .end local v6    # "uid":I
    .local v13, "uid":I
    move-object/from16 v6, v23

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v21

    .line 2595
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .local v1, "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V
    :try_end_295
    .catchall {:try_start_268 .. :try_end_295} :catchall_239

    .line 2596
    move-object/from16 v30, v9

    goto/16 :goto_532

    .line 2592
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v13    # "uid":I
    .restart local v6    # "uid":I
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_299
    move v13, v6

    .end local v6    # "uid":I
    .restart local v13    # "uid":I
    goto :goto_29d

    .line 2591
    .end local v13    # "uid":I
    .restart local v29    # "uid":I
    :cond_29b
    move/from16 v13, v29

    .line 2599
    .end local v29    # "uid":I
    .restart local v13    # "uid":I
    :goto_29d
    :try_start_29d
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v12, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    move v6, v1

    .end local v20    # "impValue":I
    .local v6, "impValue":I
    if-nez v1, :cond_2ce

    .line 2601
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5
    :try_end_2b7
    .catchall {:try_start_29d .. :try_end_2b7} :catchall_385

    const/16 v21, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move-object/from16 v30, v9

    move v9, v6

    .end local v6    # "impValue":I
    .local v9, "impValue":I
    .local v30, "actionUids":[Ljava/lang/String;
    move-object/from16 v6, v21

    :try_start_2c2
    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v20

    .line 2602
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move/from16 v20, v9

    goto/16 :goto_532

    .line 2604
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v6    # "impValue":I
    .local v9, "actionUids":[Ljava/lang/String;
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_2ce
    move-object/from16 v30, v9

    move v9, v6

    .end local v6    # "impValue":I
    .local v9, "impValue":I
    .restart local v30    # "actionUids":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v22

    .line 2605
    const/16 v1, 0xe

    if-ne v1, v9, :cond_326

    .line 2606
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2607
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "triggerAction: can\'t force stop, then continue to freeze package for lock screen app "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2608
    goto/16 :goto_550

    .line 2605
    :cond_326
    move/from16 v20, v9

    move-object/from16 v1, v16

    goto/16 :goto_532

    .line 2612
    .end local v13    # "uid":I
    .end local v30    # "actionUids":[Ljava/lang/String;
    .local v9, "actionUids":[Ljava/lang/String;
    .restart local v20    # "impValue":I
    .restart local v29    # "uid":I
    :cond_32c
    move-object/from16 v30, v9

    move/from16 v13, v29

    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v29    # "uid":I
    .restart local v13    # "uid":I
    .restart local v30    # "actionUids":[Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v12, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    move v9, v1

    .end local v20    # "impValue":I
    .local v9, "impValue":I
    if-nez v1, :cond_35b

    .line 2614
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v20

    .line 2615
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move/from16 v20, v9

    goto/16 :goto_532

    .line 2617
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_35b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v22

    .line 2620
    move/from16 v20, v9

    move-object/from16 v1, v16

    goto/16 :goto_532

    .line 2673
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v11    # "userId":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v15    # "i":I
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v22    # "maxLevel":I
    .end local v27    # "j":I
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v30    # "actionUids":[Ljava/lang/String;
    .local v9, "actionUids":[Ljava/lang/String;
    :catchall_385
    move-exception v0

    move-object v5, v9

    .end local v9    # "actionUids":[Ljava/lang/String;
    .restart local v30    # "actionUids":[Ljava/lang/String;
    goto/16 :goto_837

    .line 2578
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v1, "j":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "uid":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    .local v6, "maxLevel":I
    .restart local v9    # "actionUids":[Ljava/lang/String;
    .local v12, "isActionUidExist":Z
    .local v13, "isNeededCloseSocket":Z
    .restart local v15    # "i":I
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v20    # "impValue":I
    .restart local v21    # "userId":I
    :cond_389
    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v22, v6

    move-object/from16 v30, v9

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v11, v21

    move v13, v3

    move-object v12, v5

    .end local v1    # "j":I
    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "uid":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "maxLevel":I
    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v21    # "userId":I
    .restart local v11    # "userId":I
    .local v12, "pkgName":Ljava/lang/String;
    .local v13, "uid":I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v22    # "maxLevel":I
    .restart local v27    # "j":I
    .restart local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v30    # "actionUids":[Ljava/lang/String;
    goto :goto_3ac

    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v22    # "maxLevel":I
    .end local v27    # "j":I
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v1    # "j":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v3    # "uid":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    .restart local v6    # "maxLevel":I
    .restart local v9    # "actionUids":[Ljava/lang/String;
    .local v11, "closeSocketTargetUids":[I
    .local v12, "isActionUidExist":Z
    .local v13, "isNeededCloseSocket":Z
    .restart local v21    # "userId":I
    :cond_39a
    move/from16 v27, v1

    move-object/from16 v28, v2

    move/from16 v22, v6

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v11, v21

    move v13, v3

    move-object v12, v5

    .line 2623
    .end local v1    # "j":I
    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v3    # "uid":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "maxLevel":I
    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v21    # "userId":I
    .local v11, "userId":I
    .local v12, "pkgName":Ljava/lang/String;
    .local v13, "uid":I
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v22    # "maxLevel":I
    .restart local v27    # "j":I
    .restart local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v30    # "actionUids":[Ljava/lang/String;
    :goto_3ac
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v1

    if-eqz v1, :cond_3ea

    invoke-static {}, Lcom/android/server/am/mars/database/MARsVersionManager;->getInstance()Lcom/android/server/am/mars/database/MARsVersionManager;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v12, v3, v3}, Lcom/android/server/am/mars/database/MARsVersionManager;->isAdjustRestrictionMatch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3ea

    .line 2624
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v12, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_3ea

    .line 2626
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2627
    new-instance v9, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object v1, v9

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object v1, v9

    .line 2628
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .local v1, "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2629
    goto/16 :goto_532

    .line 2632
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_3ea
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/FreecessController;->isInFreecessExcludeList(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_41c

    .line 2633
    invoke-direct {v7, v0}, Lcom/android/server/am/MARsPolicyManager;->isNeedOptimizedApp(Lcom/android/server/am/MARsPackageInfo;)Z

    move-result v1

    if-eqz v1, :cond_550

    .line 2634
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/am/MARsPackageInfo;->setMaxLevel(I)V

    .line 2635
    const-string v1, "MARsPolicyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Level up freecess excluded app : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "|userId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_550

    .line 2639
    :cond_41c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getRageBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_47c

    .line 2640
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v12, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    move v9, v1

    .end local v20    # "impValue":I
    .local v9, "impValue":I
    if-nez v1, :cond_452

    .line 2642
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v20

    .line 2643
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move/from16 v20, v9

    goto/16 :goto_532

    .line 2645
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v22

    move/from16 v20, v9

    move-object/from16 v1, v16

    goto/16 :goto_532

    .line 2647
    .end local v9    # "impValue":I
    .restart local v20    # "impValue":I
    :cond_47c
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/FreecessController;->getAngryBirdEnabled()Z

    move-result v1

    if-eqz v1, :cond_4db

    .line 2648
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v12, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    move v9, v1

    .end local v20    # "impValue":I
    .restart local v9    # "impValue":I
    if-nez v1, :cond_4b2

    .line 2650
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v20

    .line 2651
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move/from16 v20, v9

    goto/16 :goto_532

    .line 2653
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_4b2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v22

    move/from16 v20, v9

    move-object/from16 v1, v16

    goto :goto_532

    .line 2656
    .end local v9    # "impValue":I
    .restart local v20    # "impValue":I
    :cond_4db
    invoke-static {}, Lcom/android/server/am/mars/filter/FilterManager;->getInstance()Lcom/android/server/am/mars/filter/FilterManager;

    move-result-object v1

    const/4 v9, 0x4

    invoke-virtual {v1, v9, v12, v11, v13}, Lcom/android/server/am/mars/filter/FilterManager;->filterForSpecificPolicy(ILjava/lang/String;II)I

    move-result v1

    move v6, v1

    .end local v20    # "impValue":I
    .local v6, "impValue":I
    if-nez v1, :cond_509

    .line 2658
    new-instance v20, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v5

    const/16 v21, 0x0

    move-object/from16 v1, v20

    move-object/from16 v2, p0

    move v9, v6

    .end local v6    # "impValue":I
    .restart local v9    # "impValue":I
    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;IILcom/android/server/am/MARsPolicyManager$1;)V

    move-object/from16 v1, v20

    .line 2659
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-direct {v7, v0, v1}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToPkgStatus(Lcom/android/server/am/MARsPackageInfo;Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    move/from16 v20, v9

    goto :goto_532

    .line 2661
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v9    # "impValue":I
    .restart local v6    # "impValue":I
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_509
    move v9, v6

    .end local v6    # "impValue":I
    .restart local v9    # "impValue":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v10, v22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v22

    move/from16 v20, v9

    move-object/from16 v1, v16

    .line 2666
    .end local v9    # "impValue":I
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v20    # "impValue":I
    :goto_532
    if-eqz v1, :cond_550

    .line 2667
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->maxLevel:I
    invoke-static {v1}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1500(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v2

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I
    invoke-static {v1, v2}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1402(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 2668
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_53e
    .catchall {:try_start_2c2 .. :try_end_53e} :catchall_53f

    goto :goto_550

    .line 2673
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v1    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v11    # "userId":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "uid":I
    .end local v15    # "i":I
    .end local v20    # "impValue":I
    .end local v22    # "maxLevel":I
    .end local v27    # "j":I
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    :catchall_53f
    move-exception v0

    move-object/from16 v5, v30

    goto/16 :goto_837

    .line 2553
    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .local v1, "j":I
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .local v9, "actionUids":[Ljava/lang/String;
    .local v11, "closeSocketTargetUids":[I
    .local v12, "isActionUidExist":Z
    .local v13, "isNeededCloseSocket":Z
    .restart local v15    # "i":I
    .restart local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_544
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    .line 2550
    .end local v0    # "pi":Lcom/android/server/am/MARsPackageInfo;
    .end local v1    # "j":I
    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v11    # "closeSocketTargetUids":[I
    .end local v12    # "isActionUidExist":Z
    .end local v13    # "isNeededCloseSocket":Z
    .end local v16    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v27    # "j":I
    .restart local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v30    # "actionUids":[Ljava/lang/String;
    :cond_550
    :goto_550
    add-int/lit8 v1, v27, 0x1

    move-object/from16 v11, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move-object/from16 v2, v28

    move-object/from16 v9, v30

    const/4 v0, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x2

    .end local v27    # "j":I
    .restart local v1    # "j":I
    goto/16 :goto_98

    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v28    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .restart local v9    # "actionUids":[Ljava/lang/String;
    .restart local v11    # "closeSocketTargetUids":[I
    .restart local v12    # "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    :cond_561
    move/from16 v27, v1

    move-object/from16 v28, v2

    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    .line 2548
    .end local v1    # "j":I
    .end local v2    # "userIdsPkgStatus":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v11    # "closeSocketTargetUids":[I
    .end local v12    # "isActionUidExist":Z
    .end local v13    # "isNeededCloseSocket":Z
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v30    # "actionUids":[Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x0

    goto/16 :goto_7c

    .line 2673
    .end local v15    # "i":I
    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v9    # "actionUids":[Ljava/lang/String;
    .restart local v11    # "closeSocketTargetUids":[I
    .restart local v12    # "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    :catchall_572
    move-exception v0

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    move-object v5, v9

    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v11    # "closeSocketTargetUids":[I
    .end local v12    # "isActionUidExist":Z
    .end local v13    # "isNeededCloseSocket":Z
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v30    # "actionUids":[Ljava/lang/String;
    goto/16 :goto_837

    .line 2548
    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v9    # "actionUids":[Ljava/lang/String;
    .restart local v11    # "closeSocketTargetUids":[I
    .restart local v12    # "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    .restart local v15    # "i":I
    :cond_57c
    move-object/from16 v30, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    .line 2673
    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v11    # "closeSocketTargetUids":[I
    .end local v12    # "isActionUidExist":Z
    .end local v13    # "isNeededCloseSocket":Z
    .end local v15    # "i":I
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    .restart local v30    # "actionUids":[Ljava/lang/String;
    :try_start_584
    monitor-exit v14
    :try_end_585
    .catchall {:try_start_584 .. :try_end_585} :catchall_82b

    .line 2674
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getFirstTimeUpdatePkgsState()Z

    move-result v0

    if-eqz v0, :cond_590

    .line 2675
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/am/MARsPolicyManager;->setFirstTimeUpdatePkgsState(Z)V

    goto :goto_591

    .line 2674
    :cond_590
    const/4 v0, 0x0

    .line 2678
    :goto_591
    const/4 v1, 0x0

    move-object/from16 v2, v17

    move/from16 v3, v18

    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .local v1, "i":I
    .local v2, "closeSocketTargetUids":[I
    .local v3, "isActionUidExist":Z
    :goto_596
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6ff

    .line 2679
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2681
    .local v4, "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v5

    if-nez v5, :cond_5da

    .line 2682
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v5, :cond_5da

    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->hasFloatingOrOnScreenWindow(I)Z

    move-result v5

    if-eqz v5, :cond_5da

    .line 2683
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has floating or onScreen window, skip to freeze"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MARsPolicyManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const/4 v9, 0x1

    const/4 v11, 0x3

    goto/16 :goto_6f5

    .line 2688
    :cond_5da
    iget-object v5, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v5

    :try_start_5dd
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2689
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1400(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    const/4 v9, 0x1

    if-eq v6, v9, :cond_654

    const/4 v11, 0x2

    if-eq v6, v11, :cond_654

    const/4 v11, 0x3

    if-eq v6, v11, :cond_632

    const/4 v12, 0x4

    if-eq v6, v12, :cond_5f2

    goto/16 :goto_6c9

    .line 2692
    :cond_5f2
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v6

    if-eqz v6, :cond_620

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v12

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v6, v12, v13}, Lcom/android/server/am/FreecessController;->isFreezedPackage(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_620

    .line 2693
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v6

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v12

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    const-string/jumbo v14, "triggerAction"

    invoke-virtual {v6, v12, v13, v14}, Lcom/android/server/am/FreecessController;->unFreezePackage(Ljava/lang/String;ILjava/lang/String;)V

    .line 2695
    :cond_620
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->getPackageDisablerEnabled()Z

    move-result v6

    if-eqz v6, :cond_62c

    invoke-direct {v7, v4}, Lcom/android/server/am/MARsPolicyManager;->disableAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v6

    if-nez v6, :cond_6c9

    .line 2696
    :cond_62c
    monitor-exit v5
    :try_end_62d
    .catchall {:try_start_5dd .. :try_end_62d} :catchall_6f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_6f5

    .line 2699
    :cond_632
    :try_start_632
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/MARsPolicyManager;->isChinaPolicyEnabled()Z

    move-result v6

    if-eqz v6, :cond_64f

    .line 2700
    invoke-direct {v7, v4}, Lcom/android/server/am/MARsPolicyManager;->forceStopAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v6

    if-nez v6, :cond_644

    .line 2701
    monitor-exit v5
    :try_end_63f
    .catchall {:try_start_632 .. :try_end_63f} :catchall_6f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_6f5

    .line 2703
    :cond_644
    :try_start_644
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v6

    move-object v2, v6

    goto/16 :goto_6c9

    .line 2706
    :cond_64f
    invoke-direct {v7, v4}, Lcom/android/server/am/MARsPolicyManager;->killAction(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)V

    .line 2708
    goto/16 :goto_6c9

    .line 2689
    :cond_654
    const/4 v11, 0x3

    .line 2711
    const/4 v6, 0x0

    .line 2712
    .local v6, "isFreezed":Z
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v13

    if-eqz v13, :cond_662

    move v13, v0

    goto :goto_663

    :cond_662
    move v13, v9

    :goto_663
    invoke-virtual {v12, v13}, Lcom/android/server/am/FreecessController;->getMonitorPacketFlag(I)Z

    move-result v25

    .line 2713
    .local v25, "monitorPacketFlag":Z
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->isFASEnabled:Z
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$600(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Z

    move-result v13

    if-eqz v13, :cond_673

    move v13, v0

    goto :goto_674

    :cond_673
    move v13, v9

    :goto_674
    invoke-virtual {v12, v13}, Lcom/android/server/am/FreecessController;->getRestrictNetworkFlag(I)Z

    move-result v26

    .line 2715
    .local v26, "restrictNetworkFlag":Z
    iget-object v12, v7, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityManagerService;->isPendingBroadcastPackageLocked(I)Z

    move-result v12

    if-eqz v12, :cond_6a3

    .line 2716
    const-string v12, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " has pending broadcast, skip to freeze"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2717
    monitor-exit v5
    :try_end_69f
    .catchall {:try_start_644 .. :try_end_69f} :catchall_6f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6f5

    .line 2720
    :cond_6a3
    :try_start_6a3
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v12

    if-eqz v12, :cond_6c2

    .line 2721
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v20

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v21

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v22

    const-string v23, "LEV"

    const/16 v24, 0x2

    invoke-virtual/range {v20 .. v26}, Lcom/android/server/am/FreecessController;->freezePackage(Ljava/lang/String;ILjava/lang/String;IZZ)Z

    move-result v12

    move v6, v12

    .line 2725
    :cond_6c2
    if-nez v6, :cond_6c9

    .line 2726
    monitor-exit v5
    :try_end_6c5
    .catchall {:try_start_6a3 .. :try_end_6c5} :catchall_6f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_6f5

    .line 2729
    .end local v6    # "isFreezed":Z
    .end local v25    # "monitorPacketFlag":Z
    .end local v26    # "restrictNetworkFlag":Z
    :cond_6c9
    :goto_6c9
    :try_start_6c9
    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->possibleLevel:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1400(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v6

    # setter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {v4, v6}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1302(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;I)I

    .line 2730
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->currentLevel:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1300(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v12

    aget-object v13, v30, v12

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->uid:I
    invoke-static {v4}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$1000(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v30, v12

    .line 2731
    const/4 v3, 0x1

    .line 2732
    monitor-exit v5
    :try_end_6f2
    .catchall {:try_start_6c9 .. :try_end_6f2} :catchall_6f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2678
    .end local v4    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :goto_6f5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_596

    .line 2732
    .restart local v4    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :catchall_6f9
    move-exception v0

    :try_start_6fa
    monitor-exit v5
    :try_end_6fb
    .catchall {:try_start_6fa .. :try_end_6fb} :catchall_6f9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2735
    .end local v1    # "i":I
    .end local v4    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    :cond_6ff
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 2738
    .local v1, "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    sget-object v4, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v4

    .line 2739
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_709
    :try_start_709
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5
    :try_end_70d
    .catchall {:try_start_709 .. :try_end_70d} :catchall_824

    if-ge v0, v5, :cond_7fb

    .line 2740
    :try_start_70f
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;

    .line 2741
    .local v5, "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    iget-object v6, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$700(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)Ljava/lang/String;

    move-result-object v9

    # getter for: Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->userId:I
    invoke-static {v5}, Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;->access$800(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;)I

    move-result v11

    invoke-virtual {v7, v6, v9, v11}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v6

    .line 2743
    .local v6, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v6, :cond_7f1

    .line 2744
    invoke-direct {v7, v5, v6}, Lcom/android/server/am/MARsPolicyManager;->updateInfoToMARsPkgStatus(Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;Lcom/android/server/am/MARsPackageInfo;)V

    .line 2745
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v9

    const/4 v11, 0x4

    if-ne v9, v11, :cond_78b

    .line 2746
    new-instance v9, Lcom/android/server/am/mars/database/FASEntityBuilder;

    invoke-direct {v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrPkgName(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2747
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrUid(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2748
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getState()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertStateToDBExtrasValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrExtras(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2749
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getResetTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrResetTime(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2750
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrLevel(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2751
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableType()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableType(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2752
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getDisableReason()I

    move-result v12

    invoke-static {v12}, Lcom/android/server/am/mars/database/FASTableContract;->convertDisableReasonToDBValue(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/android/server/am/mars/database/FASEntityBuilder;->setStrDisableReason(Ljava/lang/String;)Lcom/android/server/am/mars/database/FASEntityBuilder;

    move-result-object v9

    .line 2753
    invoke-virtual {v9}, Lcom/android/server/am/mars/database/FASEntityBuilder;->build()Lcom/android/server/am/mars/database/FASEntity;

    move-result-object v9

    .line 2754
    .local v9, "value":Lcom/android/server/am/mars/database/FASEntity;
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2757
    .end local v9    # "value":Lcom/android/server/am/mars/database/FASEntity;
    :cond_78b
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v9

    const/4 v12, 0x2

    if-le v9, v12, :cond_7f3

    .line 2758
    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v9

    invoke-direct {v7, v9}, Lcom/android/server/am/MARsPolicyManager;->convertLevelToPolicy(I)Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/am/MARsPackageInfo;->setAppliedPolicy(Lcom/android/server/am/MARsPolicyManager$Policy;)V

    .line 2760
    iget-object v9, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v9, v13, v14}, Lcom/android/server/am/MARsPkgMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_7ba

    .line 2761
    iget-object v9, v7, Lcom/android/server/am/MARsPolicyManager;->mMARsRestrictedPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getUserId()I

    move-result v14

    invoke-virtual {v9, v13, v14, v6}, Lcom/android/server/am/MARsPkgMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2763
    :cond_7ba
    sget-boolean v9, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_ENG:Z

    if-eqz v9, :cond_7f3

    .line 2764
    const-string v9, "MARsPolicyManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add mMARsRestrictedPackages "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " level : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getCurLevel()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " policy --"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/android/server/am/MARsPackageInfo;->getAppliedPolicy()Lcom/android/server/am/MARsPolicyManager$Policy;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f0
    .catchall {:try_start_70f .. :try_end_7f0} :catchall_7f7

    goto :goto_7f3

    .line 2743
    :cond_7f1
    const/4 v11, 0x4

    const/4 v12, 0x2

    .line 2739
    .end local v5    # "tempPsInfo":Lcom/android/server/am/MARsPolicyManager$PkgStatusInfo;
    .end local v6    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_7f3
    :goto_7f3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_709

    .line 2768
    .end local v0    # "i":I
    :catchall_7f7
    move-exception v0

    move-object/from16 v5, v30

    goto :goto_827

    :cond_7fb
    :try_start_7fb
    monitor-exit v4
    :try_end_7fc
    .catchall {:try_start_7fb .. :try_end_7fc} :catchall_824

    .line 2770
    array-length v0, v2

    if-lez v0, :cond_806

    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/FreecessController;->destroySocketsForTargetUids([I)V

    .line 2772
    :cond_806
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_813

    invoke-static {}, Lcom/android/server/am/mars/database/MARsDBManager;->getInstance()Lcom/android/server/am/mars/database/MARsDBManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->sendUpdateResetTimeMsgToDBHandler(Ljava/util/ArrayList;)V

    .line 2774
    :cond_813
    if-eqz v3, :cond_821

    .line 2775
    move-object/from16 v5, v30

    .end local v30    # "actionUids":[Ljava/lang/String;
    .local v5, "actionUids":[Ljava/lang/String;
    invoke-direct {v7, v5, v10}, Lcom/android/server/am/MARsPolicyManager;->convertLevelChangeInfoToString([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "LEV"

    invoke-virtual {v7, v4, v0}, Lcom/android/server/am/MARsPolicyManager;->addDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_823

    .line 2774
    .end local v5    # "actionUids":[Ljava/lang/String;
    .restart local v30    # "actionUids":[Ljava/lang/String;
    :cond_821
    move-object/from16 v5, v30

    .line 2777
    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v5    # "actionUids":[Ljava/lang/String;
    :goto_823
    return-void

    .line 2768
    .end local v5    # "actionUids":[Ljava/lang/String;
    .restart local v30    # "actionUids":[Ljava/lang/String;
    :catchall_824
    move-exception v0

    move-object/from16 v5, v30

    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v5    # "actionUids":[Ljava/lang/String;
    :goto_827
    :try_start_827
    monitor-exit v4
    :try_end_828
    .catchall {:try_start_827 .. :try_end_828} :catchall_829

    throw v0

    :catchall_829
    move-exception v0

    goto :goto_827

    .line 2673
    .end local v1    # "updateValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    .end local v2    # "closeSocketTargetUids":[I
    .end local v3    # "isActionUidExist":Z
    .end local v5    # "actionUids":[Ljava/lang/String;
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v30    # "actionUids":[Ljava/lang/String;
    :catchall_82b
    move-exception v0

    move-object/from16 v5, v30

    .end local v30    # "actionUids":[Ljava/lang/String;
    .restart local v5    # "actionUids":[Ljava/lang/String;
    goto :goto_837

    .end local v5    # "actionUids":[Ljava/lang/String;
    .end local v17    # "closeSocketTargetUids":[I
    .end local v18    # "isActionUidExist":Z
    .end local v19    # "isNeededCloseSocket":Z
    .local v9, "actionUids":[Ljava/lang/String;
    .restart local v11    # "closeSocketTargetUids":[I
    .restart local v12    # "isActionUidExist":Z
    .restart local v13    # "isNeededCloseSocket":Z
    :catchall_82f
    move-exception v0

    move-object v5, v9

    move-object/from16 v17, v11

    move/from16 v18, v12

    move/from16 v19, v13

    .end local v9    # "actionUids":[Ljava/lang/String;
    .end local v11    # "closeSocketTargetUids":[I
    .end local v12    # "isActionUidExist":Z
    .end local v13    # "isNeededCloseSocket":Z
    .restart local v5    # "actionUids":[Ljava/lang/String;
    .restart local v17    # "closeSocketTargetUids":[I
    .restart local v18    # "isActionUidExist":Z
    .restart local v19    # "isNeededCloseSocket":Z
    :goto_837
    :try_start_837
    monitor-exit v14
    :try_end_838
    .catchall {:try_start_837 .. :try_end_838} :catchall_839

    throw v0

    :catchall_839
    move-exception v0

    goto :goto_837
.end method

.method public updateBigdataInfo()V
    .registers 21

    .line 4047
    move-object/from16 v12, p0

    const/4 v1, 0x0

    .line 4048
    .local v1, "totalSize":I
    const-string v13, ""

    .line 4049
    .local v13, "packageName":Ljava/lang/String;
    const/4 v14, 0x0

    .line 4050
    .local v14, "basicCustom":Ljava/lang/String;
    const-string v15, ""

    .line 4051
    .local v15, "exTras":Ljava/lang/String;
    const-string v16, ""

    .line 4052
    .local v16, "reason":Ljava/lang/String;
    const/4 v0, 0x4

    new-array v11, v0, [Lcom/android/server/am/MARsPolicyManager$LevelInfo;

    .line 4053
    .local v11, "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_1a

    new-instance v3, Lcom/android/server/am/MARsPolicyManager$LevelInfo;

    invoke-direct {v3, v12}, Lcom/android/server/am/MARsPolicyManager$LevelInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;)V

    aput-object v3, v11, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 4055
    .end local v2    # "i":I
    :cond_1a
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 4056
    :try_start_1d
    iget-object v3, v12, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v3
    :try_end_23
    .catchall {:try_start_1d .. :try_end_23} :catchall_d8

    move/from16 v17, v3

    .line 4057
    .end local v1    # "totalSize":I
    .local v17, "totalSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_26
    :try_start_26
    iget-object v3, v12, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_d2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ge v1, v3, :cond_8c

    .line 4058
    :try_start_36
    iget-object v3, v12, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v3}, Lcom/android/server/am/MARsPkgMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 4059
    .local v3, "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_43
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_82

    .line 4060
    invoke-virtual {v3, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/MARsPackageInfo;

    .line 4061
    .local v9, "pi":Lcom/android/server/am/MARsPackageInfo;
    invoke-virtual {v9}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v10

    if-eqz v10, :cond_76

    if-eq v10, v7, :cond_76

    if-eq v10, v6, :cond_6e

    if-eq v10, v5, :cond_66

    if-eq v10, v0, :cond_5e

    goto :goto_7e

    .line 4073
    :cond_5e
    aget-object v10, v11, v5

    iget v0, v10, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    add-int/2addr v0, v7

    iput v0, v10, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    goto :goto_7e

    .line 4070
    :cond_66
    aget-object v0, v11, v6

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    .line 4071
    goto :goto_7e

    .line 4067
    :cond_6e
    aget-object v0, v11, v7

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    .line 4068
    goto :goto_7e

    .line 4064
    :cond_76
    aget-object v0, v11, v4

    iget v10, v0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    add-int/2addr v10, v7

    iput v10, v0, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I
    :try_end_7d
    .catchall {:try_start_36 .. :try_end_7d} :catchall_86

    .line 4065
    nop

    .line 4059
    .end local v9    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :goto_7e
    add-int/lit8 v8, v8, 0x1

    const/4 v0, 0x4

    goto :goto_43

    .line 4057
    .end local v3    # "userIdsPkgInfo":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/MARsPackageInfo;>;"
    .end local v8    # "j":I
    :cond_82
    add-int/lit8 v1, v1, 0x1

    const/4 v0, 0x4

    goto :goto_26

    .line 4078
    .end local v1    # "i":I
    :catchall_86
    move-exception v0

    move-object/from16 v18, v11

    move/from16 v1, v17

    goto :goto_db

    :cond_8c
    :try_start_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_8c .. :try_end_8d} :catchall_d2

    .line 4081
    new-instance v0, Lcom/android/server/am/MARsPolicyManager$UsageInfo;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aget-object v1, v11, v4

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aget-object v1, v11, v7

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aget-object v1, v11, v6

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    .line 4082
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    aget-object v1, v11, v5

    iget v1, v1, Lcom/android/server/am/MARsPolicyManager$LevelInfo;->totalSize:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v13

    move-object v4, v8

    move-object v5, v9

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v8, v18

    move-object/from16 v9, v16

    move-object v10, v15

    move-object/from16 v18, v11

    .end local v11    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    .local v18, "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    move-object/from16 v11, v19

    invoke-direct/range {v1 .. v11}, Lcom/android/server/am/MARsPolicyManager$UsageInfo;-><init>(Lcom/android/server/am/MARsPolicyManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/am/MARsPolicyManager$1;)V

    .line 4084
    .local v0, "uData":Lcom/android/server/am/MARsPolicyManager$UsageInfo;
    nop

    .line 4085
    invoke-virtual {v0}, Lcom/android/server/am/MARsPolicyManager$UsageInfo;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4087
    .end local v14    # "basicCustom":Ljava/lang/String;
    .local v1, "basicCustom":Ljava/lang/String;
    invoke-direct {v12, v1}, Lcom/android/server/am/MARsPolicyManager;->sendBigDataInfoFromMARsToHQM(Ljava/lang/String;)V

    .line 4088
    return-void

    .line 4078
    .end local v0    # "uData":Lcom/android/server/am/MARsPolicyManager$UsageInfo;
    .end local v1    # "basicCustom":Ljava/lang/String;
    .end local v18    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    .restart local v11    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    .restart local v14    # "basicCustom":Ljava/lang/String;
    :catchall_d2
    move-exception v0

    move-object/from16 v18, v11

    move/from16 v1, v17

    .end local v11    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    .restart local v18    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    goto :goto_db

    .end local v17    # "totalSize":I
    .end local v18    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    .local v1, "totalSize":I
    .restart local v11    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    :catchall_d8
    move-exception v0

    move-object/from16 v18, v11

    .end local v11    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    .restart local v18    # "Level":[Lcom/android/server/am/MARsPolicyManager$LevelInfo;
    :goto_db
    :try_start_db
    monitor-exit v2
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dd

    throw v0

    :catchall_dd
    move-exception v0

    goto :goto_db
.end method

.method updateFasState(Ljava/lang/String;II)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .line 1894
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-nez v0, :cond_c

    .line 1895
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 1898
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    if-eqz v0, :cond_17

    .line 1899
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    const/16 v1, 0x46

    invoke-interface {v0, v1, p2, p1, p3}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_17} :catch_18

    .line 1903
    :cond_17
    goto :goto_30

    .line 1901
    :catch_18
    move-exception v0

    .line 1902
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateFasState exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_30
    return-void
.end method

.method public updateForegroundPackageToPkgStatus(Ljava/lang/String;IIZ)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "isForeground"    # Z

    .line 792
    iget-object v0, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 793
    if-eqz p4, :cond_1b

    .line 794
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 795
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_30

    .line 798
    :cond_1b
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 799
    iget-object v1, p0, Lcom/android/server/am/MARsPolicyManager;->mFGServiceList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 802
    :cond_30
    :goto_30
    monitor-exit v0

    .line 803
    return-void

    .line 802
    :catchall_32
    move-exception v1

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_5 .. :try_end_34} :catchall_32

    throw v1
.end method

.method public updateMARsTargetPackages(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/mars/database/FASEntity;",
            ">;)V"
        }
    .end annotation

    .line 1070
    .local p1, "fasEntityList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/mars/database/FASEntity;>;"
    const/4 v0, 0x0

    .line 1071
    .local v0, "marsTargetSize":I
    sget-object v1, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v1

    .line 1072
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {v2}, Lcom/android/server/am/MARsPkgMap;->totalSize()I

    move-result v2

    move v0, v2

    .line 1073
    monitor-exit v1
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_33

    .line 1074
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v1, v0, :cond_18

    .line 1075
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->getPkgInfoFromSMToMARs(Ljava/util/ArrayList;)V

    goto :goto_1b

    .line 1077
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/am/MARsPolicyManager;->deletePkgInfoInMARs(Ljava/util/ArrayList;)V

    .line 1079
    :goto_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMARsTargetPackages mMARsTargetPackages.size-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MARsPolicyManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void

    .line 1073
    :catchall_33
    move-exception v2

    :try_start_34
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    throw v2
.end method

.method public updateRestrictionInfo(Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;Ljava/util/List;)Z
    .registers 9
    .param p1, "info"    # Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;",
            ">;)Z"
        }
    .end annotation

    .line 4548
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/sdhms/SemAppRestrictionManager$AppRestrictionInfo;>;"
    const-string v0, "com.samsung.android.permission.SEM_APP_RESTRICTION"

    invoke-direct {p0, v0}, Lcom/android/server/am/MARsPolicyManager;->hasPermission(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz p1, :cond_60

    if-nez p2, :cond_d

    goto :goto_60

    .line 4552
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getType()I

    move-result v0

    .line 4553
    .local v0, "type":I
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getState()I

    move-result v1

    .line 4554
    .local v1, "state":I
    invoke-virtual {p1}, Lcom/samsung/android/sdhms/SemAppRestrictionManager$RestrictionInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    .line 4555
    .local v2, "reason":Ljava/lang/String;
    const-string v3, "default"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_4f

    if-eq v0, v5, :cond_3f

    if-eq v0, v4, :cond_33

    const/4 v4, 0x3

    if-eq v0, v4, :cond_27

    goto :goto_5f

    .line 4580
    :cond_27
    if-ne v1, v5, :cond_2f

    .line 4581
    const-string v3, "deleted_from_user_manual"

    invoke-direct {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5f

    .line 4583
    :cond_2f
    invoke-direct {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5f

    .line 4573
    :cond_33
    if-ne v1, v5, :cond_39

    .line 4575
    invoke-direct {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->updateDisableCandidateInfo(Ljava/util/List;)V

    goto :goto_5f

    .line 4576
    :cond_39
    if-ne v1, v4, :cond_5f

    .line 4577
    invoke-direct {p0, p2}, Lcom/android/server/am/MARsPolicyManager;->updateDoNotDisableInfo(Ljava/util/List;)V

    goto :goto_5f

    .line 4557
    :cond_3f
    if-ne v1, v5, :cond_45

    .line 4558
    invoke-direct {p0, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->sleepPackageList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5f

    .line 4559
    :cond_45
    if-ne v1, v4, :cond_4b

    .line 4560
    invoke-direct {p0, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->awakePackageList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5f

    .line 4562
    :cond_4b
    invoke-direct {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)V

    .line 4563
    goto :goto_5f

    .line 4565
    :cond_4f
    if-ne v1, v5, :cond_55

    .line 4566
    invoke-direct {p0, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->disablePackageList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5f

    .line 4567
    :cond_55
    if-ne v1, v4, :cond_5b

    .line 4568
    invoke-direct {p0, p2, v2}, Lcom/android/server/am/MARsPolicyManager;->enablePackageList(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_5f

    .line 4570
    :cond_5b
    invoke-direct {p0, p2, v3}, Lcom/android/server/am/MARsPolicyManager;->removeRestrictedInfo(Ljava/util/List;Ljava/lang/String;)V

    .line 4571
    nop

    .line 4586
    :cond_5f
    :goto_5f
    return v5

    .line 4549
    .end local v0    # "type":I
    .end local v1    # "state":I
    .end local v2    # "reason":Ljava/lang/String;
    :cond_60
    :goto_60
    const/4 v0, 0x0

    return v0
.end method

.method public updateSpecificPolicyTargetPackages(Ljava/util/ArrayList;II)V
    .registers 10
    .param p2, "policyNum"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .line 1911
    .local p1, "packageList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3d

    .line 1912
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1913
    .local v1, "packageName":Ljava/lang/String;
    if-eqz v1, :cond_3a

    .line 1914
    sget-object v2, Lcom/android/server/am/MARsPolicyManager;->MARsLock:Lcom/android/server/am/MARsPolicyManager$Lock;

    monitor-enter v2

    .line 1915
    :try_start_12
    iget-object v3, p0, Lcom/android/server/am/MARsPolicyManager;->mMARsTargetPackages:Lcom/android/server/am/MARsPkgMap;

    invoke-virtual {p0, v3, v1, p3}, Lcom/android/server/am/MARsPolicyManager;->getMARsPackageInfo(Lcom/android/server/am/MARsPkgMap;Ljava/lang/String;I)Lcom/android/server/am/MARsPackageInfo;

    move-result-object v3

    .line 1916
    .local v3, "pi":Lcom/android/server/am/MARsPackageInfo;
    if-eqz v3, :cond_35

    .line 1917
    invoke-virtual {v3}, Lcom/android/server/am/MARsPackageInfo;->getMaxLevel()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_35

    .line 1918
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ne p2, v4, :cond_28

    .line 1919
    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsPackageInfo;->setUds(I)V

    .line 1921
    :cond_28
    const/4 v4, 0x6

    if-ne p2, v4, :cond_2e

    .line 1922
    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsPackageInfo;->setSBike(I)V

    .line 1924
    :cond_2e
    const/16 v4, 0xa

    if-ne p2, v4, :cond_35

    .line 1925
    invoke-virtual {v3, v5}, Lcom/android/server/am/MARsPackageInfo;->setMpsm(I)V

    .line 1929
    .end local v3    # "pi":Lcom/android/server/am/MARsPackageInfo;
    :cond_35
    monitor-exit v2

    goto :goto_3a

    :catchall_37
    move-exception v3

    monitor-exit v2
    :try_end_39
    .catchall {:try_start_12 .. :try_end_39} :catchall_37

    throw v3

    .line 1911
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1932
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method
