.class public abstract Lcom/android/server/ipm/chimera/PolicyHandler;
.super Ljava/lang/Object;
.source "PolicyHandler.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;
.implements Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;
.implements Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;
.implements Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;
.implements Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;
.implements Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    }
.end annotation


# static fields
.field protected static final B_SERVICE_OOM_ADJ:I = 0x320

.field protected static final HISTORY_BUFFER_SIZE:I = 0xc8

.field private static final LOCKSCREEN_APP_PSS_GAIN_KB:I = 0x19000

.field private static final LOCKSCREEN_APP_PSS_MULTIPLE:F = 1.2f

.field protected static final MAX_DISTINCT_OOM_ADJ:I = 0x20

.field protected static final MAX_OOM_ADJ:I = 0x3e8

.field protected static final MIN_OOM_ADJ:I = -0x3e8

.field protected static final PERCEPTIBLE_OOM_ADJ_MAX:I = 0x12c

.field protected static final PERCEPTIBLE_OOM_ADJ_MIN:I = 0xc8

.field protected static final PROTECTED_NORMAL_SERVICE_MAX_OOM_ADJ:I = 0x352

.field protected static final VISIBLE_OOM_ADJ:I = 0x64

.field protected static final VMPRESS_LEVEL_CRITICAL:I = 0x2

.field protected static final VMPRESS_LEVEL_LOW:I = 0x0

.field protected static final VMPRESS_LEVEL_MEDIUM:I = 0x1

.field protected static final VMPRESS_LEVEL_REAL_CRITICAL:I = 0x3


# instance fields
.field private TAG:Ljava/lang/String;

.field protected mActionCnt:I

.field protected mActionCntSrc:[I

.field protected mAdjKillCnt:Landroid/util/SparseIntArray;

.field protected mAppKillCnt:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

.field protected mAvgAvailableMem:J

.field protected mAvgReleasedMem:J

.field protected final mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

.field protected mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

.field protected mIsCarMode:Z

.field protected mIsKillBoostModeOnHeavy:Z

.field protected mIsKillBoostModeOnNormal:Z

.field protected mKillCnt:I

.field protected mKillCntByGrp:[I

.field protected mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/RingBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastKilledTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field protected mNoActionCnt:I

.field protected mPMMKillCnt:I

.field protected mPMMTriggerCnt:I

.field protected mPmmStateHistory:Lcom/android/server/ipm/chimera/PmmStateHistory;

.field protected final mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

.field protected final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

.field protected mTriggerCnt:I

.field protected mTriggerCntSrc:[I

.field protected mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

.field protected mWeightLru:F

.field protected mWeightMem:F

.field protected mWeightStandbyBucket:F


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V
    .registers 8
    .param p1, "appManager"    # Lcom/android/server/ipm/chimera/ChimeraAppManager;
    .param p2, "strategy"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;
    .param p3, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p4, "settingRepository"    # Lcom/android/server/ipm/chimera/SettingRepository;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    .line 35
    const-string v0, "PolicyHandler"

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    .line 63
    const v0, 0x3e99999a    # 0.3f

    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightLru:F

    .line 64
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightStandbyBucket:F

    .line 65
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightMem:F

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 69
    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 72
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMTriggerCnt:I

    .line 73
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMKillCnt:I

    .line 79
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCnt:I

    .line 80
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_8c

    iput-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCntSrc:[I

    .line 81
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCnt:I

    .line 82
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mNoActionCnt:I

    .line 83
    new-array v2, v1, [I

    fill-array-data v2, :array_96

    iput-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCntSrc:[I

    .line 84
    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCnt:I

    .line 85
    new-array v1, v1, [I

    fill-array-data v1, :array_a0

    iput-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCntByGrp:[I

    .line 86
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAvgAvailableMem:J

    .line 87
    iput-wide v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAvgReleasedMem:J

    .line 89
    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsCarMode:Z

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    .line 95
    iput-object p1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 96
    iput-object p2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 97
    iput-object p3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 98
    new-instance v0, Lcom/android/server/ipm/chimera/PmmStateHistory;

    invoke-direct {v0, p3}, Lcom/android/server/ipm/chimera/PmmStateHistory;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPmmStateHistory:Lcom/android/server/ipm/chimera/PmmStateHistory;

    .line 99
    new-instance v0, Lcom/android/server/ipm/chimera/WakeLockManager;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-direct {v0, v1}, Lcom/android/server/ipm/chimera/WakeLockManager;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

    .line 100
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-direct {v0, v1, v2}, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/ChimeraAppManager;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    .line 101
    new-instance v0, Lcom/android/internal/util/RingBuffer;

    const-class v1, Ljava/lang/String;

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/util/RingBuffer;-><init>(Ljava/lang/Class;I)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    .line 102
    iput-object p4, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    .line 104
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/PolicyHandler;->registerProcessObserver()V

    .line 105
    return-void

    nop

    :array_8c
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_96
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_a0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private addPmmKillInfoToHistory(Ljava/lang/String;IIJ)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "adj"    # I
    .param p4, "pss"    # J

    .line 515
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    if-nez v0, :cond_5

    .line 516
    return-void

    .line 518
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 519
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/ipm/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/ipm/chimera/PolicyHandler;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [PMM] packageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", pid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", adj: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", pss: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 525
    return-void
.end method

.method private clearRescheduleExceptionPackages()V
    .registers 2

    .line 326
    invoke-static {}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->clearAll()V

    .line 327
    return-void
.end method

.method private formatDateTimeWithoutYear(J)Ljava/lang/String;
    .registers 6
    .param p1, "dateTime"    # J

    .line 532
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

    .line 533
    :cond_16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 534
    .local v0, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 535
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static synthetic lambda$isSystemPid$2(ILcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 3
    .param p0, "systemPid"    # I
    .param p1, "processInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 644
    iget v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private registerProcessObserver()V
    .registers 3

    .line 574
    new-instance v0, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$8VGFQ75npbh5aNPRMb-9IJHrigc;

    .local v0, "processObserver":Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;
    invoke-direct {v0, p0}, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$8VGFQ75npbh5aNPRMb-9IJHrigc;-><init>(Lcom/android/server/ipm/chimera/PolicyHandler;)V

    .line 587
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v1, v0}, Lcom/android/server/ipm/chimera/SystemRepository;->registerProcessObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;)V

    .line 588
    return-void
.end method


# virtual methods
.method protected addKillInfoToHistory(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V
    .registers 5
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 493
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    if-eqz v0, :cond_56

    if-eqz p1, :cond_56

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v1}, Lcom/android/server/ipm/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/ipm/chimera/PolicyHandler;->formatDateTimeWithoutYear(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {p1}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->toBriefString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_4d

    .line 501
    const/4 v1, 0x0

    .local v1, "c":I
    :goto_2c
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4d

    .line 502
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 504
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_4a

    .line 505
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 510
    .end local v1    # "c":I
    :cond_4d
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/util/RingBuffer;->append(Ljava/lang/Object;)V

    .line 512
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_56
    return-void
.end method

.method protected addRescheduleExceptionPackage(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 528
    invoke-static {}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->addPackage(Ljava/lang/String;)V

    .line 529
    return-void
.end method

.method protected calcAppScores(Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 592
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    const-wide/16 v0, 0x0

    .line 593
    .local v0, "maxGain":J
    const/4 v2, 0x1

    .line 595
    .local v2, "maxLru":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 596
    .local v4, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-wide v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    cmp-long v5, v5, v0

    if-lez v5, :cond_1b

    .line 597
    iget-wide v0, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    .line 600
    :cond_1b
    iget v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    if-le v5, v2, :cond_21

    .line 601
    iget v2, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    .line 603
    .end local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_21
    goto :goto_7

    .line 605
    :cond_22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 607
    .restart local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget v5, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightLru:F

    iget v6, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightStandbyBucket:F

    iget v7, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    const/high16 v7, 0x42480000    # 50.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightMem:F

    iget-wide v7, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    long-to-float v7, v7

    mul-float/2addr v6, v7

    long-to-float v7, v0

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->score:F

    .line 610
    iget v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    rsub-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->score:F

    add-float/2addr v5, v6

    iput v5, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->finalScore:F

    .line 611
    .end local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_26

    .line 612
    :cond_5e
    return-void
.end method

.method public abstract dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method protected dumpAdjInfo(Ljava/io/PrintWriter;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/PolicyHandler;->getKillCntByAdj()[I

    move-result-object v0

    .line 174
    .local v0, "killCnt":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, v0

    if-ge v1, v2, :cond_2e

    .line 175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "kills at or below oom_adj "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 178
    .end local v1    # "i":I
    :cond_2e
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 179
    const-string v1, "details:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .restart local v1    # "i":I
    :goto_3e
    if-ltz v1, :cond_6c

    .line 181
    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 182
    .local v2, "adj":I
    iget-object v3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 183
    .local v3, "cnt":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "killed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " at adj "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    .end local v2    # "adj":I
    .end local v3    # "cnt":I
    add-int/lit8 v1, v1, -0x1

    goto :goto_3e

    .line 185
    .end local v1    # "i":I
    :cond_6c
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 186
    return-void
.end method

.method protected dumpAppInfo(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 212
    const-string v0, "App-KillCount List :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 214
    .local v1, "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    .end local v1    # "m":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_f

    .line 216
    :cond_3d
    return-void
.end method

.method dumpCommonInfo(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[Chimera Stats]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isConservativeMode()Z

    move-result v0

    .line 133
    .local v0, "isConsMode":Z
    if-eqz v0, :cond_26

    .line 134
    const-string v1, "Using Conservative mode"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2b

    .line 136
    :cond_26
    const-string v1, "Using Aggressive mode"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total Trigger Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triggered by LMKD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triggered by BottleneckHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 141
    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Triggered by HomeIdle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCntSrc:[I

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action by LMKD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCntSrc:[I

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action by BottleneckHint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCntSrc:[I

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 147
    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Action by HomeIdle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCntSrc:[I

    sget-object v3, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KillCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_122
    const/4 v2, 0x3

    if-ge v1, v2, :cond_148

    .line 152
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCntByGrp:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string v3, "     G%d: %d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_122

    .line 155
    .end local v1    # "i":I
    :cond_148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NoActionCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mNoActionCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmmCriticalTrigger: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMTriggerCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PmmCriticalKillCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMKillCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvgAvailableMem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAvgAvailableMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AvgReleasedMem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAvgReleasedMem:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastPmmState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPmmStateHistory:Lcom/android/server/ipm/chimera/PmmStateHistory;

    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/PmmStateHistory;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsGcenable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v2}, Lcom/android/server/ipm/chimera/SettingRepository;->isGcEnabled()Z

    move-result v2

    const-string/jumbo v3, "on"

    const-string/jumbo v4, "off"

    if-eqz v2, :cond_1eb

    move-object v2, v3

    goto :goto_1ec

    :cond_1eb
    move-object v2, v4

    :goto_1ec
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsReclaimPageCache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v2}, Lcom/android/server/ipm/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_20a

    goto :goto_20b

    :cond_20a
    move-object v3, v4

    :goto_20b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mActionGcCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    iget v2, v2, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ActionReclaimCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    iget v2, v2, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SkipReclaimCnt: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    iget v2, v2, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method protected dumpHistoryBuffer(Ljava/io/PrintWriter;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 539
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->size()I

    move-result v0

    if-lez v0, :cond_26

    .line 540
    const-string v0, "Date Time PackageName AppType PSS PIDs:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillHistoryBuffer:Lcom/android/internal/util/RingBuffer;

    invoke-virtual {v0}, Lcom/android/internal/util/RingBuffer;->toArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_17
    if-ge v2, v1, :cond_21

    aget-object v3, v0, v2

    .line 543
    .local v3, "record":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 542
    .end local v3    # "record":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 546
    :cond_21
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 548
    :cond_26
    return-void
.end method

.method public abstract executePolicy(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;I)V
.end method

.method public getChimeraStat()Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    .registers 7

    .line 255
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;-><init>()V

    .line 256
    .local v0, "chimeraDataInfo":Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setTriggerCntSrc([I)V

    .line 257
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setActionCntSrc([I)V

    .line 258
    iget v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCnt:I

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setKillCnt(I)V

    .line 259
    iget-wide v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAvgReleasedMem:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setAvgReleasedMem(J)V

    .line 260
    iget-wide v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAvgAvailableMem:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setAvgAvaMem(J)V

    .line 261
    iget v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightLru:F

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setLruWight(F)V

    .line 262
    iget v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightStandbyBucket:F

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setStdBktWeight(F)V

    .line 263
    iget v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWeightMem:F

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setMemWeight(F)V

    .line 265
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/ipm/chimera/SystemRepository;)J

    move-result-wide v1

    .line 266
    .local v1, "memAvailable":J
    iget-object v3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v3

    .line 267
    .local v3, "memFreeTarget":J
    invoke-virtual {v0, v3, v4}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setTargetAvaMem(J)V

    .line 268
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setDynamicStrategyUse(Z)V

    .line 269
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/PolicyHandler;->getKillCntByAdj()[I

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setAdjKillCnt([I)V

    .line 270
    iget-object v5, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCntByGrp:[I

    invoke-virtual {v0, v5}, Lcom/android/server/ipm/chimera/ChimeraDataInfo;->setGroupKillCnt([I)V

    .line 271
    return-object v0
.end method

.method public getKillCntByAdj()[I
    .registers 7

    .line 189
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 190
    .local v0, "adjIdx":I
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    array-length v1, v1

    new-array v1, v1, [I

    .line 191
    .local v1, "killCnt":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    array-length v3, v1

    if-ge v2, v3, :cond_14

    .line 192
    const/4 v3, 0x0

    aput v3, v1, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 195
    .end local v2    # "i":I
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_15
    iget-object v3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_48

    .line 196
    iget-object v3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 197
    .local v3, "adj":I
    :goto_23
    if-ltz v0, :cond_37

    sget-object v4, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->ADJ_LEVELS:[I

    aget v4, v4, v0

    if-le v3, v4, :cond_37

    .line 198
    add-int/lit8 v0, v0, -0x1

    .line 199
    if-gez v0, :cond_30

    goto :goto_37

    .line 200
    :cond_30
    add-int/lit8 v4, v0, 0x1

    aget v4, v1, v4

    aput v4, v1, v0

    goto :goto_23

    .line 203
    :cond_37
    :goto_37
    if-gez v0, :cond_3a

    goto :goto_48

    .line 205
    :cond_3a
    aget v4, v1, v0

    iget-object v5, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v0

    .line 195
    .end local v3    # "adj":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 208
    .end local v2    # "i":I
    :cond_48
    :goto_48
    return-object v1
.end method

.method public getWakeLockManager()Lcom/android/server/ipm/chimera/WakeLockManager;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

    return-object v0
.end method

.method handlePMMCritical()V
    .registers 5

    .line 370
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/PolicyHandler;->prepareForTrigger(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 371
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handlePMMCritical() - prepareForTrigger fails"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void

    .line 375
    :cond_13
    iget v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMTriggerCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMTriggerCnt:I

    .line 376
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppsForPMMCritical()Landroid/util/Pair;

    move-result-object v0

    .line 377
    .local v0, "ret":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;>;"
    if-nez v0, :cond_2b

    .line 378
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string v3, "getAppsForPMMCritical fail!"

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    .line 382
    :cond_2b
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/ipm/chimera/PolicyHandler;->handlePMMCriticalLockScreenApps(Ljava/util/List;)V

    .line 383
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0, v1}, Lcom/android/server/ipm/chimera/PolicyHandler;->handlePMMCriticalOtherApps(Ljava/util/List;)V

    .line 384
    return-void
.end method

.method handlePMMCriticalLockScreenApps(Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 446
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handlePMMCriticalLockScreenApps enter"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const/4 v0, 0x0

    .line 448
    .local v0, "killCnt":I
    const-wide/16 v1, 0x0

    .line 449
    .local v1, "totalReleased":J
    if-eqz p1, :cond_d5

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d5

    .line 450
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 451
    .local v11, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v4, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePMMCriticalLockScreenApps "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v3, v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move v13, v0

    move-wide v14, v1

    .end local v0    # "killCnt":I
    .end local v1    # "totalReleased":J
    .local v13, "killCnt":I
    .local v14, "totalReleased":J
    :goto_4b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 453
    .local v8, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-wide v0, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_cd

    .line 454
    iget-object v0, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v1, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v6

    .line 455
    .local v6, "pss":J
    iget-object v0, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handlePMMCriticalLockScreenApps : pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-wide v0, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    sub-long v0, v6, v0

    const-wide/32 v2, 0x19000

    cmp-long v0, v0, v2

    if-lez v0, :cond_c8

    iget-wide v0, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    long-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-lez v0, :cond_c8

    .line 460
    iget-object v1, v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget v2, v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    iget-object v3, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    const/4 v5, -0x1

    const/16 v16, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v17, v6

    .end local v6    # "pss":J
    .local v17, "pss":J
    move-object/from16 v19, v8

    .end local v8    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    .local v19, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    move/from16 v8, v16

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/ipm/chimera/PolicyHandler;->killProcessForPMMCritical(Ljava/lang/String;ILjava/lang/String;IIJZ)V

    .line 462
    add-int/lit8 v13, v13, 0x1

    .line 463
    add-long v14, v14, v17

    goto :goto_cf

    .line 458
    .end local v17    # "pss":J
    .end local v19    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    .restart local v6    # "pss":J
    .restart local v8    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_c8
    move-wide/from16 v17, v6

    move-object/from16 v19, v8

    .end local v6    # "pss":J
    .end local v8    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    .restart local v17    # "pss":J
    .restart local v19    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    goto :goto_cf

    .line 453
    .end local v17    # "pss":J
    .end local v19    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    .restart local v8    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_cd
    move-object/from16 v19, v8

    .line 466
    .end local v8    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :goto_cf
    goto/16 :goto_4b

    .line 467
    .end local v11    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_d1
    move v0, v13

    move-wide v1, v14

    goto/16 :goto_1b

    .line 470
    .end local v13    # "killCnt":I
    .end local v14    # "totalReleased":J
    .restart local v0    # "killCnt":I
    .restart local v1    # "totalReleased":J
    :cond_d5
    iget v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMKillCnt:I

    add-int/2addr v3, v0

    iput v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMKillCnt:I

    .line 471
    iget-object v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v4, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePMMCriticalLockScreenApps end. killed count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " released:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    return-void
.end method

.method handlePMMCriticalOtherApps(Ljava/util/List;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 387
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "handlePMMCriticalOtherApps enter"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const/4 v0, 0x0

    .line 389
    .local v0, "killCnt":I
    const-wide/16 v1, 0x0

    .line 390
    .local v1, "totalReleased":J
    if-eqz p1, :cond_10f

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10f

    .line 391
    const/4 v3, 0x0

    .line 392
    .local v3, "pidSize":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v10, v3

    .end local v3    # "pidSize":I
    .local v10, "pidSize":I
    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 393
    .local v3, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v5, v3, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v10, v5

    .line 394
    .end local v3    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_1d

    .line 396
    :cond_31
    if-lez v10, :cond_10a

    .line 397
    new-array v11, v10, [I

    .line 398
    .local v11, "pids":[I
    new-array v12, v10, [I

    .line 399
    .local v12, "pidIdx":[I
    new-array v13, v10, [J

    .line 400
    .local v13, "pss":[J
    new-array v14, v10, [I

    .line 401
    .local v14, "uid":[I
    new-array v15, v10, [Ljava/lang/String;

    .line 402
    .local v15, "processName":[Ljava/lang/String;
    new-array v8, v10, [Ljava/lang/String;

    .line 404
    .local v8, "packageName":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 405
    .local v3, "i":I
    const/4 v4, 0x0

    .line 406
    .local v4, "appIdx":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move/from16 v16, v4

    .end local v4    # "appIdx":I
    .local v16, "appIdx":I
    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 407
    .local v4, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v6, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_59
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_87

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 408
    .local v7, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    aput v16, v12, v3

    .line 409
    move/from16 v17, v0

    move-wide/from16 v18, v1

    .end local v0    # "killCnt":I
    .end local v1    # "totalReleased":J
    .local v17, "killCnt":I
    .local v18, "totalReleased":J
    iget-wide v0, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pss:J

    aput-wide v0, v13, v3

    .line 410
    iget v0, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    aput v0, v11, v3

    .line 411
    iget v0, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    aput v0, v14, v3

    .line 412
    iget-object v0, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    aput-object v0, v15, v3

    .line 413
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "i":I
    .local v0, "i":I
    iget-object v1, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    aput-object v1, v8, v3

    .line 414
    .end local v7    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    move v3, v0

    move/from16 v0, v17

    move-wide/from16 v1, v18

    goto :goto_59

    .line 415
    .end local v17    # "killCnt":I
    .end local v18    # "totalReleased":J
    .local v0, "killCnt":I
    .restart local v1    # "totalReleased":J
    .restart local v3    # "i":I
    :cond_87
    move/from16 v17, v0

    move-wide/from16 v18, v1

    .end local v0    # "killCnt":I
    .end local v1    # "totalReleased":J
    .end local v4    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .restart local v17    # "killCnt":I
    .restart local v18    # "totalReleased":J
    add-int/lit8 v16, v16, 0x1

    .line 416
    goto :goto_47

    .line 418
    .end local v17    # "killCnt":I
    .end local v18    # "totalReleased":J
    .restart local v0    # "killCnt":I
    .restart local v1    # "totalReleased":J
    :cond_8e
    move/from16 v17, v0

    move-wide/from16 v18, v1

    .end local v0    # "killCnt":I
    .end local v1    # "totalReleased":J
    .restart local v17    # "killCnt":I
    .restart local v18    # "totalReleased":J
    iget-object v0, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0, v11}, Lcom/android/server/ipm/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v6

    .line 419
    .local v6, "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    iget-object v0, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [I

    .line 420
    .local v20, "states":[I
    iget-object v0, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, [I

    .line 422
    .local v21, "scores":[I
    const/16 v22, 0x0

    .line 423
    .local v22, "isKilled":Z
    const/4 v0, 0x0

    move v7, v0

    .end local v3    # "i":I
    .local v7, "i":I
    :goto_a8
    if-ge v7, v10, :cond_ff

    .line 424
    aget v0, v21, v7

    const/16 v1, 0x64

    if-lt v0, v1, :cond_f2

    aget v0, v21, v7

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_f2

    .line 425
    iget-object v0, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    aget-object v1, v8, v7

    aget v2, v14, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v5

    .line 428
    .local v5, "standbybucket":I
    const/4 v0, 0x5

    if-ne v5, v0, :cond_ca

    .line 429
    move-object/from16 v23, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    goto :goto_f8

    .line 432
    :cond_ca
    aget-object v1, v8, v7

    aget v2, v14, v7

    aget-object v3, v15, v7

    aget v4, v11, v7

    aget v23, v21, v7

    aget-wide v24, v13, v7

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v27, v5

    .end local v5    # "standbybucket":I
    .local v27, "standbybucket":I
    move/from16 v5, v23

    move-object/from16 v23, v6

    move/from16 v28, v7

    .end local v6    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .end local v7    # "i":I
    .local v23, "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .local v28, "i":I
    move-wide/from16 v6, v24

    move-object/from16 v24, v8

    .end local v8    # "packageName":[Ljava/lang/String;
    .local v24, "packageName":[Ljava/lang/String;
    move/from16 v8, v26

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/ipm/chimera/PolicyHandler;->killProcessForPMMCritical(Ljava/lang/String;ILjava/lang/String;IIJZ)V

    .line 434
    add-int/lit8 v17, v17, 0x1

    .line 435
    aget-wide v0, v13, v28

    add-long v18, v18, v0

    goto :goto_f8

    .line 424
    .end local v23    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .end local v24    # "packageName":[Ljava/lang/String;
    .end local v27    # "standbybucket":I
    .end local v28    # "i":I
    .restart local v6    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .restart local v7    # "i":I
    .restart local v8    # "packageName":[Ljava/lang/String;
    :cond_f2
    move-object/from16 v23, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .line 423
    .end local v6    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .end local v7    # "i":I
    .end local v8    # "packageName":[Ljava/lang/String;
    .restart local v23    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .restart local v24    # "packageName":[Ljava/lang/String;
    .restart local v28    # "i":I
    :goto_f8
    add-int/lit8 v7, v28, 0x1

    move-object/from16 v6, v23

    move-object/from16 v8, v24

    .end local v28    # "i":I
    .restart local v7    # "i":I
    goto :goto_a8

    .end local v23    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .end local v24    # "packageName":[Ljava/lang/String;
    .restart local v6    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .restart local v8    # "packageName":[Ljava/lang/String;
    :cond_ff
    move-object/from16 v23, v6

    move/from16 v28, v7

    move-object/from16 v24, v8

    .end local v6    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .end local v7    # "i":I
    .end local v8    # "packageName":[Ljava/lang/String;
    .restart local v23    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .restart local v24    # "packageName":[Ljava/lang/String;
    .restart local v28    # "i":I
    move/from16 v0, v17

    move-wide/from16 v1, v18

    goto :goto_117

    .line 396
    .end local v11    # "pids":[I
    .end local v12    # "pidIdx":[I
    .end local v13    # "pss":[J
    .end local v14    # "uid":[I
    .end local v15    # "processName":[Ljava/lang/String;
    .end local v16    # "appIdx":I
    .end local v17    # "killCnt":I
    .end local v18    # "totalReleased":J
    .end local v20    # "states":[I
    .end local v21    # "scores":[I
    .end local v22    # "isKilled":Z
    .end local v23    # "statesAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    .end local v24    # "packageName":[Ljava/lang/String;
    .end local v28    # "i":I
    .restart local v0    # "killCnt":I
    .restart local v1    # "totalReleased":J
    :cond_10a
    move/from16 v17, v0

    move-wide/from16 v18, v1

    .end local v0    # "killCnt":I
    .end local v1    # "totalReleased":J
    .restart local v17    # "killCnt":I
    .restart local v18    # "totalReleased":J
    goto :goto_113

    .line 390
    .end local v10    # "pidSize":I
    .end local v17    # "killCnt":I
    .end local v18    # "totalReleased":J
    .restart local v0    # "killCnt":I
    .restart local v1    # "totalReleased":J
    :cond_10f
    move/from16 v17, v0

    move-wide/from16 v18, v1

    .line 440
    .end local v0    # "killCnt":I
    .end local v1    # "totalReleased":J
    .restart local v17    # "killCnt":I
    .restart local v18    # "totalReleased":J
    :goto_113
    move/from16 v0, v17

    move-wide/from16 v1, v18

    .end local v17    # "killCnt":I
    .end local v18    # "totalReleased":J
    .restart local v0    # "killCnt":I
    .restart local v1    # "totalReleased":J
    :goto_117
    iget v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMKillCnt:I

    add-int/2addr v3, v0

    iput v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mPMMKillCnt:I

    .line 441
    iget-object v3, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v4, v9, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handlePMMCriticalOtherApps end. killed count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " released:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public handlePmmStateChange(I)V
    .registers 3
    .param p1, "level"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mPmmStateHistory:Lcom/android/server/ipm/chimera/PmmStateHistory;

    invoke-virtual {v0, p1}, Lcom/android/server/ipm/chimera/PmmStateHistory;->onStateChanged(I)V

    .line 311
    return-void
.end method

.method protected hasImportantAdjWithSystemUid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 5
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 116
    iget v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_21

    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_21

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 118
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v1, v1, v0

    const/16 v2, 0x320

    if-ge v1, v2, :cond_1e

    .line 119
    const/4 v1, 0x1

    return v1

    .line 117
    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 123
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x0

    return v0
.end method

.method protected isGcReclaimEnabled()Z
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method protected isReusedPid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 4
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 637
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$pqi8TdNLZAHkOv0gzL_uILufhII;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$pqi8TdNLZAHkOv0gzL_uILufhII;-><init>(Lcom/android/server/ipm/chimera/PolicyHandler;)V

    .line 638
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    .line 637
    return v0
.end method

.method protected isSystemPid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 5
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 642
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemPid()I

    move-result v0

    .line 643
    .local v0, "systemPid":I
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$-9LiGif9kmJbdIBceyabCNZ9Ce8;

    invoke-direct {v2, v0}, Lcom/android/server/ipm/chimera/-$$Lambda$PolicyHandler$-9LiGif9kmJbdIBceyabCNZ9Ce8;-><init>(I)V

    .line 644
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v1

    .line 643
    return v1
.end method

.method killProcessForPMMCritical(Ljava/lang/String;ILjava/lang/String;IIJZ)V
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "adj"    # I
    .param p6, "pss"    # J
    .param p8, "isLockScreenApp"    # Z

    .line 477
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/PolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 479
    const-string v0, "Chimera PMM1"

    .line 480
    .local v0, "killDescription":Ljava/lang/String;
    if-eqz p8, :cond_9

    .line 481
    const-string v0, "Chimera PMM2"

    .line 483
    :cond_9
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v1, p3, p2, v0}, Lcom/android/server/ipm/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    .line 484
    move-object v1, p0

    move-object v2, p1

    move v3, p4

    move v4, p5

    move-wide v5, p6

    invoke-direct/range {v1 .. v6}, Lcom/android/server/ipm/chimera/PolicyHandler;->addPmmKillInfoToHistory(Ljava/lang/String;IIJ)V

    .line 485
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "killProcessForPMMCritical - killed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " adj:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pss:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 489
    if-eqz p8, :cond_45

    const-string v4, " LockScreenApp"

    goto :goto_47

    :cond_45
    const-string v4, ""

    :goto_47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 485
    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public synthetic lambda$isReusedPid$1$PolicyHandler(Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 4
    .param p1, "processInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 638
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v0, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->isThreadGroupLeader(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$registerProcessObserver$0$PolicyHandler(IIZI[Ljava/lang/String;Z)V
    .registers 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z
    .param p4, "userId"    # I
    .param p5, "packages"    # [Ljava/lang/String;
    .param p6, "isHomePackage"    # Z

    .line 576
    if-eqz p3, :cond_28

    if-nez p6, :cond_28

    .line 577
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 578
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    aget-object v2, p5, v1

    invoke-virtual {v0, v2}, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->updateGcPackage(Ljava/lang/String;)V

    .line 580
    :cond_14
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 581
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    aget-object v2, p5, v1

    invoke-virtual {v0, v2}, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->updatePackageCacheReclaimable(Ljava/lang/String;)V

    .line 584
    :cond_23
    aget-object v0, p5, v1

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/PolicyHandler;->resetLastKilledTime(Ljava/lang/String;)V

    .line 586
    :cond_28
    return-void
.end method

.method public onBottleNeckHintTriggered()V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onBottleNeckHintTriggered()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ipm/chimera/PolicyHandler;->executePolicy(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;I)V

    .line 290
    return-void
.end method

.method public onCarModeChanged(Z)V
    .registers 2
    .param p1, "isCarMode"    # Z

    .line 294
    iput-boolean p1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsCarMode:Z

    .line 295
    return-void
.end method

.method public onHomeLaunched()V
    .registers 4

    .line 321
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onHomeLaunched()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ipm/chimera/PolicyHandler;->executePolicy(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;I)V

    .line 323
    return-void
.end method

.method public onLmkdEventTriggered(II)V
    .registers 7
    .param p1, "lmkdLevel"    # I
    .param p2, "memPressure"    # I

    .line 315
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLmkdKillTriggered() - lmkdLevel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/ipm/chimera/PolicyHandler;->executePolicy(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;I)V

    .line 317
    return-void
.end method

.method public onPmmCriticalTriggered()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPmmCriticalTriggered()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/PolicyHandler;->handlePMMCritical()V

    .line 301
    return-void
.end method

.method public onPmmStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 305
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "onPmmStateChange()"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/PolicyHandler;->handlePmmStateChange(I)V

    .line 307
    return-void
.end method

.method protected performGcAndReclaim()V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 625
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppsToGc()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->performGc(Ljava/util/List;)V

    .line 627
    :cond_13
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 628
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraAppReclaim:Lcom/android/server/ipm/chimera/ChimeraAppReclaim;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppsToReclaim()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->performReclaimCache(Ljava/util/List;)V

    .line 630
    :cond_26
    return-void
.end method

.method protected prepareForTrigger(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Z
    .registers 6
    .param p1, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 330
    sget-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$1;->$SwitchMap$com$android$server$ipm$chimera$ChimeraCommonUtil$TriggerSource:[I

    invoke-virtual {p1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_10

    const/4 v3, 0x2

    if-eq v0, v3, :cond_10

    goto :goto_23

    .line 333
    :cond_10
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->isScreenOff()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 334
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareForTrigger() - skip reason: screen off"

    invoke-interface {v0, v1, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    return v2

    .line 342
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 343
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareForTrigger() - skip reason: incall"

    invoke-interface {v0, v1, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return v2

    .line 347
    :cond_36
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->isSmartSwitchWorking()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 348
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareForTrigger() - skip reason: smart switch"

    invoke-interface {v0, v1, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return v2

    .line 352
    :cond_49
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsCarMode:Z

    if-eqz v0, :cond_58

    .line 353
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "prepareForTrigger() - skip reason: car mode"

    invoke-interface {v0, v1, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return v2

    .line 357
    :cond_58
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/WakeLockManager;->update()V

    .line 359
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/PolicyHandler;->clearRescheduleExceptionPackages()V

    .line 361
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->isEnableDynamicFreeMem()Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 362
    iput-boolean v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 363
    iput-boolean v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 366
    :cond_6c
    return v1
.end method

.method protected printAllAppInfo(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 615
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 617
    .local v2, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 618
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .end local v2    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_9

    .line 620
    :cond_1e
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    return-void
.end method

.method protected resetLastKilledTime(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    return-void
.end method

.method public setWakeLockManager(Lcom/android/server/ipm/chimera/WakeLockManager;)V
    .registers 2
    .param p1, "wakeLockManager"    # Lcom/android/server/ipm/chimera/WakeLockManager;

    .line 112
    iput-object p1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

    .line 113
    return-void
.end method

.method protected toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;
    .registers 5
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 552
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_24

    .line 553
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v2, :cond_24

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected toHHmmss(J)Ljava/lang/String;
    .registers 8
    .param p1, "millis"    # J

    .line 565
    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    .line 566
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-wide/16 v1, 0xe10

    div-long v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    rem-long v1, p1, v1

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    rem-long v1, p1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%02d:%02d:%02d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updateActionStatistics(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 5
    .param p1, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 219
    iget v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCnt:I

    .line 220
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mActionCntSrc:[I

    invoke-virtual {p1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 221
    return-void
.end method

.method protected updateKillStatistics(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V
    .registers 8
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 225
    iget v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCnt:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCnt:I

    .line 228
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mKillCntByGrp:[I

    iget v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    sub-int/2addr v2, v1

    aget v3, v0, v2

    add-int/2addr v3, v1

    aput v3, v0, v2

    .line 231
    iget-object v0, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 232
    .local v0, "appCnt":Ljava/lang/Integer;
    if-nez v0, :cond_21

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2a

    .line 235
    :cond_21
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 237
    :goto_2a
    iget-object v1, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAppKillCnt:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_5b

    .line 241
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5b

    .line 242
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    .line 243
    .local v2, "oomAdj":I
    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_58

    const/16 v3, 0x3e8

    if-gt v2, v3, :cond_58

    .line 244
    iget-object v3, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    .line 245
    .local v3, "cnt":I
    iget-object v4, p0, Lcom/android/server/ipm/chimera/PolicyHandler;->mAdjKillCnt:Landroid/util/SparseIntArray;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 241
    .end local v2    # "oomAdj":I
    .end local v3    # "cnt":I
    :cond_58
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 250
    .end local v1    # "i":I
    :cond_5b
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/PolicyHandler;->addKillInfoToHistory(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V

    .line 251
    return-void
.end method
