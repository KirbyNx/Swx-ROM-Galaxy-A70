.class public Lcom/android/server/ipm/chimera/AggressivePolicyHandler;
.super Lcom/android/server/ipm/chimera/PolicyHandler;
.source "AggressivePolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;
    }
.end annotation


# static fields
.field private static final CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

.field private static final IDX_PKG_KILL_INTERVAL:I = 0x2

.field private static final IDX_PROTECTED_MAX_ADJ:I = 0x0

.field private static final IDX_PROTECTED_NORMAL_SERVICE_MAX_ADJ:I = 0x1

.field private static final KILL_BOOST_RAM_MAX:I = 0x3

.field private static PICKED_OOM_ADJ:I = 0x0

.field private static final RELEASE_TARGET_GAP:I = 0x5000

.field private static final RELEASE_TARGET_THRESHOLD:I = 0x2800

.field private static final TAG:Ljava/lang/String; = "AggressivePolicyHandler"

.field private static mCemPkgKillIntervalMs:I

.field private static mIsBubEnabled:Z


# instance fields
.field private mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

.field private mPkgKillIntervalDefault:I

.field private mPkgKillIntervalHeavy:I

.field private mPkgProtectedParameters:[[I

.field private mReleasedMemory:J

.field private final mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsBubEnabled:Z

    .line 30
    const/16 v0, 0x352

    sput v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->PICKED_OOM_ADJ:I

    .line 48
    const v0, 0x927c0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V
    .registers 7
    .param p1, "appManager"    # Lcom/android/server/ipm/chimera/ChimeraAppManager;
    .param p2, "strategy"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;
    .param p3, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p4, "settingRepository"    # Lcom/android/server/ipm/chimera/SettingRepository;

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ipm/chimera/PolicyHandler;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V

    .line 26
    const v0, 0x2932e00

    iput v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 27
    iput v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalHeavy:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    .line 46
    sget-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 55
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-direct {v0, p3}, Lcom/android/server/ipm/chimera/SkipReasonLogger;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    .line 56
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->readSystemProperties()V

    .line 57
    return-void
.end method

.method private doGcReclaimIfNecessary(ILcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;JJ)V
    .registers 8
    .param p1, "killCnt"    # I
    .param p2, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .param p3, "releasedMemory"    # J
    .param p5, "releaseTarget"    # J

    .line 488
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->isGcReclaimEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz p1, :cond_e

    invoke-direct {p0, p3, p4, p5, p6}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->isFreeTargetSatisfied(JJ)Z

    move-result v0

    if-nez v0, :cond_15

    .line 489
    :cond_e
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p2, v0, :cond_15

    .line 490
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->performGcAndReclaim()V

    .line 493
    :cond_15
    return-void
.end method

.method private dumpInfo(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ScoreWeight: lru="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightLru:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " standbybucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightStandbyBucket:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightMem:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Normal kill interval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v2, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v2

    aget-object v1, v1, v2

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-long v3, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Heavy kill interval : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v3, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    aget v1, v1, v2

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-nez v0, :cond_84

    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v0, :cond_7e

    goto :goto_84

    .line 476
    :cond_7e
    const-string v0, "Kill boost mode: off"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_ad

    .line 473
    :cond_84
    :goto_84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Kill boost mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnNormal:Z

    const-string v2, ""

    if-eqz v1, :cond_97

    const-string v1, " Normal"

    goto :goto_98

    :cond_97
    move-object v1, v2

    :goto_98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v1, :cond_a2

    .line 474
    const-string v2, " Heavy"

    goto :goto_a3

    :cond_a2
    nop

    :goto_a3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 473
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    :goto_ad
    return-void
.end method

.method private hasProtectedServices(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I
    .registers 6
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 389
    if-eqz p1, :cond_45

    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_45

    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_45

    .line 391
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget v2, v2, v3

    if-gt v1, v2, :cond_42

    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v1, v1, v0

    const/16 v2, -0x3e8

    if-lt v1, v2, :cond_42

    .line 393
    iget-object v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result v1

    .line 394
    .local v1, "protectProcState":I
    if-lez v1, :cond_42

    .line 395
    return v1

    .line 390
    .end local v1    # "protectProcState":I
    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 400
    .end local v0    # "i":I
    :cond_45
    const/4 v0, 0x0

    return v0
.end method

.method private isFreeTargetSatisfied(JJ)Z
    .registers 9
    .param p1, "released"    # J
    .param p3, "freeTarget"    # J

    .line 481
    cmp-long v0, p1, p3

    if-gez v0, :cond_f

    sub-long v0, p3, p1

    const-wide/16 v2, 0x5000

    cmp-long v0, v0, v2

    if-gez v0, :cond_d

    goto :goto_f

    .line 484
    :cond_d
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$executePolicy$2(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I
    .registers 4
    .param p0, "app1"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .param p1, "app2"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 158
    iget v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->finalScore:F

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$readSystemProperties$0(Ljava/lang/String;)Z
    .registers 2
    .param p0, "prop"    # Ljava/lang/String;

    .line 94
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$readSystemProperties$1(Ljava/lang/String;)Z
    .registers 2
    .param p0, "prop"    # Ljava/lang/String;

    .line 102
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private readSystemProperties()V
    .registers 15

    .line 62
    const-string/jumbo v0, "ro.slmk.chimera_kill_interval_ms"

    .line 63
    .local v0, "SYSTEM_PROPERTY_CHIMERA_KILL_INTERVAL":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string/jumbo v2, "ro.slmk.chimera_kill_interval_ms"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "killInterval":Ljava/lang/String;
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_32

    .line 65
    const-string v6, ","

    invoke-virtual {v1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "intervals":[Ljava/lang/String;
    array-length v7, v6

    if-ne v7, v2, :cond_32

    .line 67
    aget-object v7, v6, v5

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    .line 68
    aget-object v7, v6, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalHeavy:I

    .line 71
    .end local v6    # "intervals":[Ljava/lang/String;
    :cond_32
    iget-object v6, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PKG_KILL_INTERVAL_DEFAULT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "AggressivePolicyHandler"

    invoke-interface {v6, v8, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v6, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PKG_KILL_INTERVAL_HEAVY: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalHeavy:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v8, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v6, "persist.sys.chimera_pkg_kill_interval_ms"

    .line 76
    .local v6, "SYSTEM_PROPERTY_CHIMERA_PKG_KILL_INTERVAL":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v9, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalDefault:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 77
    const-string/jumbo v9, "persist.sys.chimera_pkg_kill_interval_ms"

    invoke-interface {v7, v9, v8}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 76
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 80
    .local v7, "pkgKillIntervalMs":I
    const-string/jumbo v8, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    .line 81
    .local v8, "SYSTEM_PROPERTY_CHIMERA_CEM_PKG_KILL_INTERVAL":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    sget-object v10, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->CEM_PKG_KILL_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 82
    const-string/jumbo v11, "ro.slmk.chimera_cem_pkg_kill_interval_ms"

    invoke-interface {v9, v11, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 81
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCemPkgKillIntervalMs:I

    .line 86
    new-array v9, v2, [[I

    const/4 v10, 0x3

    new-array v11, v10, [I

    const/16 v12, 0xc8

    aput v12, v11, v5

    const/16 v12, 0x352

    aput v12, v11, v4

    aput v7, v11, v2

    aput-object v11, v9, v5

    new-array v11, v10, [I

    const/16 v13, 0x64

    aput v13, v11, v5

    aput v12, v11, v4

    iget v12, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgKillIntervalHeavy:I

    aput v12, v11, v2

    aput-object v11, v9, v4

    iput-object v9, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    .line 91
    const-string/jumbo v2, "ro.slmk.chimera_kill_boost_on_normal"

    .line 92
    .local v2, "SYSTEM_PROPERTY_CHIMERA_BOOST_ON_NORMAL":Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 93
    const-string/jumbo v11, "ro.slmk.chimera_kill_boost_on_normal"

    invoke-interface {v9, v11, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v9

    sget-object v11, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Ez4v9Q0Nv2zsxcdu561mXU4FeYY;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Ez4v9Q0Nv2zsxcdu561mXU4FeYY;

    .line 94
    invoke-virtual {v9, v11}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v9

    sget-object v11, Lcom/android/server/ipm/chimera/-$$Lambda$rUq88PnMs86XAKp-4nheDyBJMAA;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$rUq88PnMs86XAKp-4nheDyBJMAA;

    .line 95
    invoke-virtual {v9, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    .line 96
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v11

    if-gt v11, v10, :cond_de

    move v11, v4

    goto :goto_df

    :cond_de
    move v11, v5

    :goto_df
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 99
    const-string/jumbo v9, "ro.slmk.chimera_kill_boost_on_heavy"

    .line 100
    .local v9, "SYSTEM_PROPERTY_CHIMERA_BOOST_ON_HEAVY":Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 101
    const-string/jumbo v12, "ro.slmk.chimera_kill_boost_on_heavy"

    invoke-interface {v11, v12, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    sget-object v11, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$fHFbi6xNQGVD1jqzFp65IWX-brI;

    .line 102
    invoke-virtual {v3, v11}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    sget-object v11, Lcom/android/server/ipm/chimera/-$$Lambda$rUq88PnMs86XAKp-4nheDyBJMAA;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$rUq88PnMs86XAKp-4nheDyBJMAA;

    .line 103
    invoke-virtual {v3, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 104
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getRamSizeGb()I

    move-result v11

    if-gt v11, v10, :cond_112

    goto :goto_113

    :cond_112
    move v4, v5

    :goto_113
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 107
    iget-object v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->isBubEnabled(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v3

    sput-boolean v3, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsBubEnabled:Z

    .line 108
    return-void
.end method


# virtual methods
.method doKill(Ljava/util/List;JJLcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)I
    .registers 27
    .param p2, "relTarget"    # J
    .param p4, "memAvailable"    # J
    .param p6, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;JJ",
            "Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;",
            ")I"
        }
    .end annotation

    .line 195
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 196
    .local v1, "cnt":I
    if-nez p1, :cond_6

    .line 197
    return v1

    .line 200
    :cond_6
    iget-object v2, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start doKill, protected policy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AggressivePolicyHandler"

    invoke-interface {v2, v4, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    const/4 v2, 0x0

    .line 202
    .local v2, "released":I
    const/4 v3, 0x4

    .line 203
    .local v3, "MAX_GROUP":I
    const/4 v5, 0x0

    .line 205
    .local v5, "numOfKilledRestartServices":I
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_27
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_361

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 206
    .local v7, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget v9, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    if-ge v9, v8, :cond_45

    .line 207
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v9, "Invalid app group id"

    invoke-interface {v8, v4, v9}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    move/from16 v16, v3

    move-object/from16 v17, v6

    goto/16 :goto_35b

    .line 211
    :cond_45
    iget v9, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    const/4 v10, 0x4

    if-lt v9, v10, :cond_56

    .line 212
    iget-object v6, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string/jumbo v9, "killing stopped to group 4"

    invoke-interface {v6, v4, v9}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    move/from16 v16, v3

    goto/16 :goto_363

    .line 216
    :cond_56
    iget-object v9, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v7, v9}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    move-result-object v9

    iput-object v9, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    .line 218
    iget-object v9, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v9, :cond_330

    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v9

    if-eqz v9, :cond_6e

    move/from16 v16, v3

    move-object/from16 v17, v6

    goto/16 :goto_334

    .line 224
    :cond_6e
    iget-object v9, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v10, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 226
    .local v9, "lastKilledTimeMs":Ljava/lang/Long;
    const/4 v10, 0x2

    if-eqz v9, :cond_8b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    sub-long/2addr v11, v13

    goto :goto_98

    :cond_8b
    iget-object v11, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v12, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v12}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v12

    aget-object v11, v11, v12

    aget v11, v11, v10

    int-to-long v11, v11

    .line 228
    .local v11, "killInterval":J
    :goto_98
    iget-object v13, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    invoke-virtual {v13}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->isAllCachedEmptyProcess()Z

    move-result v13

    if-eqz v13, :cond_a3

    sget v10, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCemPkgKillIntervalMs:I

    goto :goto_af

    :cond_a3
    iget-object v13, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v14, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v14}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v14

    aget-object v13, v13, v14

    aget v10, v13, v10

    :goto_af
    int-to-long v13, v10

    .line 230
    .local v13, "killIntervalThreshold":J
    cmp-long v10, v11, v13

    if-gez v10, :cond_f8

    .line 231
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v8, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 232
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipped by interval: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", elapsed: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0, v11, v12}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ", interval: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0, v13, v14}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 232
    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    move/from16 v16, v3

    move-object/from16 v17, v6

    goto/16 :goto_35b

    .line 244
    :cond_f8
    iget-object v10, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v10, v15}, Lcom/android/server/ipm/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v10

    if-eqz v10, :cond_12e

    .line 245
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v8, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 246
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipped by visible screen : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 246
    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    move/from16 v16, v3

    move-object/from16 v17, v6

    goto/16 :goto_35b

    .line 251
    :cond_12e
    iget-object v10, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

    iget-object v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Lcom/android/server/ipm/chimera/WakeLockManager;->contains(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_164

    .line 252
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v8, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 253
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipped by wakelock       : "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 253
    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    move/from16 v16, v3

    move-object/from16 v17, v6

    goto/16 :goto_35b

    .line 258
    :cond_164
    iget v10, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v15, 0x20000

    and-int/2addr v10, v15

    if-lez v10, :cond_1cf

    .line 259
    invoke-direct {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->hasProtectedServices(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I

    move-result v10

    .line 260
    .local v10, "protectedProcState":I
    invoke-static {}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    move-result-object v15

    aget-object v15, v15, v10

    .line 261
    .local v15, "protectedReason":Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    move/from16 v16, v3

    .end local v3    # "MAX_GROUP":I
    .local v16, "MAX_GROUP":I
    sget-object v3, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v8, v3, :cond_185

    sget-object v3, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ordinal()I

    move-result v3

    if-gt v10, v3, :cond_197

    :cond_185
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v8, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v3, v8, :cond_1cc

    sget-object v3, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 263
    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ordinal()I

    move-result v3

    if-le v10, v3, :cond_1c9

    sget-object v3, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    if-eq v15, v3, :cond_1c9

    .line 264
    :cond_197
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v8, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v3, v7, v8}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 265
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v6

    const-string v6, "Skipped by Normal Service condition: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " reason: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 265
    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    goto/16 :goto_35b

    .line 263
    :cond_1c9
    move-object/from16 v17, v6

    goto :goto_1d3

    .line 261
    :cond_1cc
    move-object/from16 v17, v6

    goto :goto_1d3

    .line 258
    .end local v10    # "protectedProcState":I
    .end local v15    # "protectedReason":Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    .end local v16    # "MAX_GROUP":I
    .restart local v3    # "MAX_GROUP":I
    :cond_1cf
    move/from16 v16, v3

    move-object/from16 v17, v6

    .line 272
    .end local v3    # "MAX_GROUP":I
    .restart local v16    # "MAX_GROUP":I
    :goto_1d3
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->hasImportantAdjWithSystemUid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v3

    if-eqz v3, :cond_201

    .line 273
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v6, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v3, v7, v6}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 274
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped by uid     : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    goto/16 :goto_35b

    .line 278
    :cond_201
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->isReusedPid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v3

    if-eqz v3, :cond_221

    .line 279
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    goto/16 :goto_35b

    .line 283
    :cond_221
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->isSystemPid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v3

    if-eqz v3, :cond_230

    .line 284
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v6, "Skipped by system server process id"

    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    goto/16 :goto_35b

    .line 288
    :cond_230
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {v7, v3}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v3

    if-eqz v3, :cond_264

    .line 289
    if-lez v5, :cond_262

    .line 290
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v6, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v3, v7, v6}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 291
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped by restart service kill count : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 291
    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    goto/16 :goto_35b

    .line 295
    :cond_262
    add-int/lit8 v5, v5, 0x1

    .line 298
    :cond_264
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v6, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v3, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Killed on trigger"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p6 .. p6}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", freed: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v10, v9

    .end local v9    # "lastKilledTimeMs":Ljava/lang/Long;
    .local v10, "lastKilledTimeMs":Ljava/lang/Long;
    iget-wide v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 300
    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object v3, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 309
    iget-object v3, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2e7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 310
    .local v6, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v9, v6, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    move-object/from16 v18, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v5

    .end local v5    # "numOfKilledRestartServices":I
    .local v19, "numOfKilledRestartServices":I
    const-string v5, "Chimera #"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    invoke-interface {v8, v9, v15, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    .line 312
    .end local v6    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    move-object/from16 v3, v18

    move/from16 v5, v19

    goto :goto_2b4

    .line 314
    .end local v19    # "numOfKilledRestartServices":I
    .restart local v5    # "numOfKilledRestartServices":I
    :cond_2e7
    move/from16 v19, v5

    .end local v5    # "numOfKilledRestartServices":I
    .restart local v19    # "numOfKilledRestartServices":I
    int-to-long v5, v2

    iget-wide v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    add-long/2addr v5, v8

    long-to-int v2, v5

    .line 315
    add-int/lit8 v1, v1, 0x1

    .line 317
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->updateKillStatistics(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V

    .line 319
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v5, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v3, v5, :cond_2fd

    iget-boolean v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-nez v3, :cond_328

    :cond_2fd
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v5, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v3, v5, :cond_308

    iget-boolean v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v3, :cond_308

    .line 320
    goto :goto_328

    .line 323
    :cond_308
    int-to-long v5, v2

    cmp-long v3, v5, p2

    if-lez v3, :cond_30e

    .line 324
    goto :goto_324

    .line 325
    :cond_30e
    int-to-long v5, v2

    sub-long v5, p2, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(J)J

    move-result-wide v5

    const-wide/16 v8, 0x5000

    cmp-long v3, v5, v8

    if-gez v3, :cond_327

    .line 326
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string/jumbo v5, "relTarget - released < 20480, stop kill"

    invoke-interface {v3, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    nop

    .line 332
    .end local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v10    # "lastKilledTimeMs":Ljava/lang/Long;
    .end local v11    # "killInterval":J
    .end local v13    # "killIntervalThreshold":J
    :goto_324
    move/from16 v5, v19

    goto :goto_363

    .line 329
    :cond_327
    nop

    .line 205
    :cond_328
    :goto_328
    move/from16 v3, v16

    move-object/from16 v6, v17

    move/from16 v5, v19

    goto/16 :goto_27

    .line 218
    .end local v16    # "MAX_GROUP":I
    .end local v19    # "numOfKilledRestartServices":I
    .restart local v3    # "MAX_GROUP":I
    .restart local v5    # "numOfKilledRestartServices":I
    .restart local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_330
    move/from16 v16, v3

    move-object/from16 v17, v6

    .line 219
    .end local v3    # "MAX_GROUP":I
    .restart local v16    # "MAX_GROUP":I
    :goto_334
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v6, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v3, v7, v6}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 220
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipped by adj     : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    nop

    .line 205
    .end local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v16    # "MAX_GROUP":I
    .restart local v3    # "MAX_GROUP":I
    :goto_35b
    move/from16 v3, v16

    move-object/from16 v6, v17

    .end local v3    # "MAX_GROUP":I
    .restart local v16    # "MAX_GROUP":I
    goto/16 :goto_27

    .end local v16    # "MAX_GROUP":I
    .restart local v3    # "MAX_GROUP":I
    :cond_361
    move/from16 v16, v3

    .line 332
    .end local v3    # "MAX_GROUP":I
    .restart local v16    # "MAX_GROUP":I
    :goto_363
    iget v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mActionCnt:I

    int-to-long v6, v3

    iget-wide v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mAvgReleasedMem:J

    mul-long/2addr v6, v8

    int-to-long v8, v2

    add-long/2addr v6, v8

    iget v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mActionCnt:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    int-to-long v8, v3

    div-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mAvgReleasedMem:J

    .line 333
    iget v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mActionCnt:I

    int-to-long v6, v3

    iget-wide v8, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mAvgAvailableMem:J

    mul-long/2addr v6, v8

    add-long v6, v6, p4

    int-to-long v8, v2

    add-long/2addr v6, v8

    iget v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mActionCnt:I

    const/4 v8, 0x1

    add-int/2addr v3, v8

    int-to-long v8, v3

    div-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mAvgAvailableMem:J

    .line 335
    iget-wide v6, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    int-to-long v8, v2

    add-long/2addr v6, v8

    iput-wide v6, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    .line 337
    iget-object v3, v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "kill complete: killed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " apps, freed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " KB"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v4, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    return v1
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 405
    if-eqz p2, :cond_1cd

    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_1cd

    .line 409
    :cond_7
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 410
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 411
    invoke-direct {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    .line 412
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 413
    const-string v0, "************** adjinfo ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 415
    const-string v0, "\n************** appinfo ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 417
    const-string v0, "\n************** kill history ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    goto/16 :goto_1cc

    .line 419
    :cond_35
    aget-object v0, p2, v0

    const-string v1, "-chimera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1cc

    .line 420
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_1cc

    .line 421
    aget-object v0, p2, v1

    .line 422
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "weight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_92

    array-length v1, p2

    const/4 v3, 0x3

    if-le v1, v3, :cond_92

    .line 424
    :try_start_53
    aget-object v1, p2, v2

    .line 425
    .local v1, "val1":Ljava/lang/String;
    aget-object v2, p2, v3

    .line 426
    .local v2, "val2":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 427
    .local v3, "wLru":F
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 428
    .local v4, "wStandbyBucket":F
    invoke-virtual {p0, v3, v4}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->setWeight(FF)V

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wLru: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " wStandbyBucket: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/NumberFormatException; {:try_start_53 .. :try_end_87} :catch_88

    .end local v1    # "val1":Ljava/lang/String;
    .end local v2    # "val2":Ljava/lang/String;
    .end local v3    # "wLru":F
    .end local v4    # "wStandbyBucket":F
    goto :goto_90

    .line 430
    :catch_88
    move-exception v1

    .line 431
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 432
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_90
    goto/16 :goto_1cc

    .line 433
    :cond_92
    const-string/jumbo v1, "set_normal_boost_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "on"

    if-eqz v1, :cond_cb

    array-length v1, p2

    if-le v1, v2, :cond_cb

    .line 434
    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnNormal:Z

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Normal kill boost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnNormal:Z

    if-eqz v2, :cond_bf

    move-object v3, v4

    :cond_bf
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 436
    :cond_cb
    const-string/jumbo v1, "set_heavy_boost_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    array-length v1, p2

    if-le v1, v2, :cond_fe

    .line 437
    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnHeavy:Z

    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Heavy kill boost : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsKillBoostModeOnHeavy:Z

    if-eqz v2, :cond_f2

    move-object v3, v4

    :cond_f2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 439
    :cond_fe
    const-string/jumbo v1, "set_normal_kill_interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_149

    array-length v1, p2

    if-le v1, v2, :cond_149

    .line 441
    :try_start_10a
    iget-object v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v3, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v1, v2
    :try_end_11e
    .catch Ljava/lang/NumberFormatException; {:try_start_10a .. :try_end_11e} :catch_11f

    .line 444
    goto :goto_127

    .line 442
    :catch_11f
    move-exception v1

    .line 443
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 445
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Normal kill interval : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v4, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1cc

    .line 446
    :cond_149
    const-string/jumbo v1, "set_heavy_kill_interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_193

    array-length v1, p2

    if-le v1, v2, :cond_193

    .line 448
    :try_start_155
    iget-object v1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v3, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v3}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v3

    aget-object v1, v1, v3

    aget-object v3, p2, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    aput v3, v1, v2
    :try_end_169
    .catch Ljava/lang/NumberFormatException; {:try_start_155 .. :try_end_169} :catch_16a

    .line 451
    goto :goto_172

    .line 449
    :catch_16a
    move-exception v1

    .line 450
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :goto_172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Heavy kill interval : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    sget-object v4, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1cc

    .line 453
    :cond_193
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 455
    invoke-direct {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpInfo(Ljava/io/PrintWriter;)V

    goto :goto_1cc

    .line 456
    :cond_1a3
    const-string v1, "appinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 457
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    goto :goto_1cc

    .line 458
    :cond_1af
    const-string v1, "adjinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1bb

    .line 459
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    goto :goto_1cc

    .line 460
    :cond_1bb
    const-string/jumbo v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1cc

    .line 461
    const-string v1, "Chimera Kill History:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 466
    .end local v0    # "type":Ljava/lang/String;
    :cond_1cc
    :goto_1cc
    return-void

    .line 406
    :cond_1cd
    :goto_1cd
    return-void
.end method

.method public executePolicy(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;I)V
    .registers 24
    .param p1, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .param p2, "lmkdLevel"    # I

    .line 121
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->prepareForTrigger(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    const-string v9, "AggressivePolicyHandler"

    if-nez v0, :cond_14

    .line 122
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v1, "executePolicy() - prepareForTrigger fails"

    invoke-interface {v0, v9, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void

    .line 126
    :cond_14
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePolicy() - triggerSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 130
    .local v10, "startTime":J
    iget v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mTriggerCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mTriggerCnt:I

    .line 131
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mTriggerCntSrc:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v1

    aget v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v1

    .line 134
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v0}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getAvailableMemoryKb(Lcom/android/server/ipm/chimera/SystemRepository;)J

    move-result-wide v12

    .line 135
    .local v12, "memAvailable":J
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-virtual {v0, v12, v13}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->getFreeMemTarget(J)J

    move-result-wide v14

    .line 136
    .local v14, "memFreeTarget":J
    sub-long v4, v14, v12

    .line 138
    .local v4, "releaseTarget":J
    const-wide/16 v0, 0x2800

    cmp-long v0, v4, v0

    if-gtz v0, :cond_78

    .line 139
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available memory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", free memory target: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", quit chimera"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void

    .line 143
    :cond_78
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v8, v0, :cond_83

    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->getProtectedCountOnLmkdTrigger()I

    move-result v0

    goto :goto_89

    :cond_83
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->getProtectedCountOnHomeTrigger()I

    move-result v0

    :goto_89
    move v6, v0

    .line 145
    .local v6, "protectedLruCount":I
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "memAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", memFreeTarget: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", releaseTarget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", protectedLruCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->clear()V

    .line 148
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    iget-object v1, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-virtual {v0, v1, v6, v8}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/ipm/chimera/SkipReasonLogger;ILcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object v2

    .line 150
    .local v2, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    if-eqz v2, :cond_177

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_d7

    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 v20, v6

    goto/16 :goto_17d

    .line 155
    :cond_d7
    invoke-virtual {v7, v2}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->calcAppScores(Ljava/util/List;)V

    .line 158
    sget-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$AggressivePolicyHandler$Zkdd7b5biJvDwxa6n3XwGb_6VVQ;

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 160
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_ea

    .line 161
    invoke-virtual {v7, v2}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 164
    :cond_ea
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->isGcReclaimEnabled()Z

    move-result v0

    if-eqz v0, :cond_ff

    const-wide/32 v0, 0xc800

    cmp-long v0, v4, v0

    if-gez v0, :cond_ff

    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v8, v0, :cond_ff

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->performGcAndReclaim()V

    .line 166
    return-void

    .line 170
    :cond_ff
    const/4 v0, 0x0

    .line 171
    .local v0, "killCnt":I
    move v3, v0

    .end local v0    # "killCnt":I
    .local v3, "killCnt":I
    const-wide/16 v0, 0x0

    iput-wide v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    move/from16 v16, v3

    .line 173
    .end local v3    # "killCnt":I
    .local v16, "killCnt":I
    :goto_107
    move-object/from16 v0, p0

    move-object v1, v2

    move-object/from16 v17, v2

    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .local v17, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    move-wide v2, v4

    move-wide/from16 v18, v4

    .end local v4    # "releaseTarget":J
    .local v18, "releaseTarget":J
    move-wide v4, v12

    move/from16 v20, v6

    .end local v6    # "protectedLruCount":I
    .local v20, "protectedLruCount":I
    move-object/from16 v6, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->doKill(Ljava/util/List;JJLcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)I

    move-result v16

    .line 174
    if-lez v16, :cond_12f

    .line 175
    iget-wide v3, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->doGcReclaimIfNecessary(ILcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;JJ)V

    .line 176
    sget-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 177
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->updateActionStatistics(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_14d

    .line 179
    :cond_12f
    iget v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mNoActionCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mNoActionCnt:I

    .line 180
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v1, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    if-ne v0, v1, :cond_149

    .line 181
    iget-wide v3, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mReleasedMemory:J

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, p1

    move-wide/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->doGcReclaimIfNecessary(ILcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;JJ)V

    .line 182
    goto :goto_14f

    .line 184
    :cond_149
    sget-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    iput-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 186
    :goto_14d
    if-eqz v16, :cond_170

    .line 188
    :goto_14f
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-virtual {v0, v9}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 190
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processing time(ms) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void

    .line 186
    :cond_170
    move-object/from16 v2, v17

    move-wide/from16 v4, v18

    move/from16 v6, v20

    goto :goto_107

    .line 150
    .end local v16    # "killCnt":I
    .end local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v18    # "releaseTarget":J
    .end local v20    # "protectedLruCount":I
    .restart local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v4    # "releaseTarget":J
    .restart local v6    # "protectedLruCount":I
    :cond_177
    move-object/from16 v17, v2

    move-wide/from16 v18, v4

    move/from16 v20, v6

    .line 151
    .end local v2    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v4    # "releaseTarget":J
    .end local v6    # "protectedLruCount":I
    .restart local v17    # "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v18    # "releaseTarget":J
    .restart local v20    # "protectedLruCount":I
    :goto_17d
    iget-object v0, v7, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executePolicy() - getAppsToKill return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v17, :cond_190

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_191

    :cond_190
    const/4 v2, 0x0

    :goto_191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-void
.end method

.method hasProtectedAdjOrProcState(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 9
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 342
    const/4 v0, 0x0

    if-eqz p1, :cond_a2

    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v1, :cond_a2

    .line 343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_a2

    .line 344
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mPkgProtectedParameters:[[I

    iget-object v4, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mCurProtectLevel:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v4}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->ordinal()I

    move-result v4

    aget-object v3, v3, v4

    aget v3, v3, v0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2f

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, -0x3e8

    if-lt v2, v3, :cond_2f

    .line 346
    return v4

    .line 349
    :cond_2f
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x64

    const/4 v5, 0x5

    if-lt v2, v3, :cond_71

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_71

    .line 351
    iget v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v2, v5, :cond_49

    .line 352
    return v4

    .line 356
    :cond_49
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_62

    iget v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const/16 v6, 0xa

    if-ne v2, v6, :cond_62

    iget-object v2, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 358
    invoke-virtual {p1, v2}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 359
    return v4

    .line 362
    :cond_62
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    if-ge v2, v3, :cond_71

    .line 364
    iget v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const/16 v3, 0x28

    if-ge v2, v3, :cond_71

    .line 365
    return v4

    .line 370
    :cond_71
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    aget v2, v2, v1

    const/4 v3, 0x3

    if-eq v2, v3, :cond_a1

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    aget v2, v2, v1

    if-ne v2, v5, :cond_83

    goto :goto_a1

    .line 376
    :cond_83
    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    const/16 v3, 0x3e9

    if-ne v2, v3, :cond_8e

    .line 377
    return v4

    .line 380
    :cond_8e
    sget-boolean v2, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mIsBubEnabled:Z

    if-nez v2, :cond_9d

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v2, v2, v1

    sget v3, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->PICKED_OOM_ADJ:I

    if-ne v2, v3, :cond_9d

    .line 381
    return v4

    .line 343
    :cond_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 373
    :cond_a1
    :goto_a1
    return v4

    .line 385
    .end local v1    # "i":I
    :cond_a2
    return v0
.end method

.method public setWeight(FF)V
    .registers 7
    .param p1, "wLru"    # F
    .param p2, "wStandbyBt"    # F

    .line 111
    iput p1, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightLru:F

    .line 112
    iput p2, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightStandbyBucket:F

    .line 113
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, "b1":Ljava/math/BigDecimal;
    new-instance v1, Ljava/math/BigDecimal;

    iget v2, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightLru:F

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 115
    .local v1, "b2":Ljava/math/BigDecimal;
    new-instance v2, Ljava/math/BigDecimal;

    iget v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightStandbyBucket:F

    invoke-static {v3}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 116
    .local v2, "b3":Ljava/math/BigDecimal;
    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    iput v3, p0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;->mWeightMem:F

    .line 117
    return-void
.end method
