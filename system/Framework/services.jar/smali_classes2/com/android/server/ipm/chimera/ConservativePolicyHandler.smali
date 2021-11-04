.class public Lcom/android/server/ipm/chimera/ConservativePolicyHandler;
.super Lcom/android/server/ipm/chimera/PolicyHandler;
.source "ConservativePolicyHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ConservativePolicyHandler"


# instance fields
.field mKillAllOnHomeTrigger:Z

.field private mPkgKillIntervalDefault:I

.field mReclaimOnHomeTrigger:Z

.field private final mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

.field mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V
    .registers 6
    .param p1, "appManager"    # Lcom/android/server/ipm/chimera/ChimeraAppManager;
    .param p2, "strategy"    # Lcom/android/server/ipm/chimera/ChimeraStrategy;
    .param p3, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p4, "settingRepository"    # Lcom/android/server/ipm/chimera/SettingRepository;

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/ipm/chimera/PolicyHandler;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    .line 17
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 19
    const v0, 0x1b7740

    iput v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    .line 26
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-direct {v0, p3}, Lcom/android/server/ipm/chimera/SkipReasonLogger;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    .line 27
    return-void
.end method

.method private hasProtectedServices(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I
    .registers 6
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 213
    if-eqz p1, :cond_3a

    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v0, :cond_3a

    .line 214
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3a

    .line 215
    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v1, v1, v0

    const/16 v2, 0x352

    if-gt v1, v2, :cond_37

    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v1, v1, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    aget v1, v1, v0

    const/16 v2, -0x3e8

    if-lt v1, v2, :cond_37

    .line 217
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    iget-object v2, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result v1

    .line 218
    .local v1, "protectProcState":I
    if-lez v1, :cond_37

    .line 219
    return v1

    .line 214
    .end local v1    # "protectProcState":I
    :cond_37
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 224
    .end local v0    # "i":I
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$calculateKillGain$0(Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)J
    .registers 5
    .param p0, "proc"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 231
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->avgPss:J

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->initialIdlePss:J

    :goto_d
    return-wide v0
.end method

.method static synthetic lambda$killTopProfit$1(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I
    .registers 4
    .param p0, "app1"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .param p1, "app2"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 249
    iget v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->finalScore:F

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->finalScore:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    return v0
.end method


# virtual methods
.method calculateKillGain(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 228
    iget-wide v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    iput-wide v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    .line 229
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {p1, v0}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-virtual {p1}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasActivity()Z

    move-result v0

    if-nez v0, :cond_39

    .line 230
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$bRyyw2haMYaOB-ZFPswB_GDSvwA;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    .line 231
    invoke-interface {v0}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v0

    .line 232
    .local v0, "avgPssSum":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2b

    .line 233
    iput-wide v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    goto :goto_39

    .line 235
    :cond_2b
    iget-wide v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    long-to-double v2, v2

    long-to-double v4, v0

    const-wide v6, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    double-to-long v2, v2

    iput-wide v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    .line 239
    .end local v0    # "avgPssSum":J
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PSS gain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hasRestartService: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 240
    invoke-virtual {p1, v2}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 239
    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v0, v2, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    .line 33
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 34
    const-string v0, "************** adjinfo ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    .line 36
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 37
    const-string v0, "************** appinfo ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    .line 39
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 40
    const-string v0, "************** kill history ****************"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    goto :goto_76

    .line 42
    :cond_30
    aget-object v0, p2, v0

    const-string v1, "-chimera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 43
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_76

    .line 44
    aget-object v0, p2, v1

    .line 45
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpCommonInfo(Ljava/io/PrintWriter;)V

    goto :goto_76

    .line 47
    :cond_4d
    const-string v1, "appinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpAppInfo(Ljava/io/PrintWriter;)V

    goto :goto_76

    .line 49
    :cond_59
    const-string v1, "adjinfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpAdjInfo(Ljava/io/PrintWriter;)V

    goto :goto_76

    .line 51
    :cond_65
    const-string/jumbo v1, "history"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 52
    const-string v1, "Chimera Kill History:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->dumpHistoryBuffer(Ljava/io/PrintWriter;)V

    .line 57
    .end local v0    # "type":Ljava/lang/String;
    :cond_76
    :goto_76
    return-void
.end method

.method public executePolicy(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;I)V
    .registers 6
    .param p1, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .param p2, "lmkdLevel"    # I

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->prepareForTrigger(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 62
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v1, "ConservativePolicyHandler"

    const-string v2, "executePolicy() - prepareForTrigger fails"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void

    .line 66
    :cond_10
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 68
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_20

    .line 69
    if-le p2, v2, :cond_1c

    .line 70
    iput-boolean v2, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    .line 73
    :cond_1c
    invoke-virtual {p0, v1, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->executePolicyInternal(ZLcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_3d

    .line 74
    :cond_20
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne p1, v0, :cond_3d

    .line 75
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    if-eqz v0, :cond_2e

    .line 76
    invoke-virtual {p0, v2, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->executePolicyInternal(ZLcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 77
    iput-boolean v1, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mKillAllOnHomeTrigger:Z

    goto :goto_3d

    .line 78
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->isGcReclaimEnabled()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    if-eqz v0, :cond_3d

    .line 79
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->performGcAndReclaim()V

    .line 80
    iput-boolean v1, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    .line 83
    :cond_3d
    :goto_3d
    return-void
.end method

.method public executePolicyInternal(ZLcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V
    .registers 21
    .param p1, "killAll"    # Z
    .param p2, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 86
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "executePolicy() :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", killAll : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ConservativePolicyHandler"

    invoke-interface {v2, v4, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v2, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-virtual {v2}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->clear()V

    .line 89
    iget-object v2, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    iget-object v3, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    iget-object v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 90
    invoke-virtual {v5}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->getProtectedCountOnHomeTrigger()I

    move-result v5

    .line 89
    move-object/from16 v6, p2

    invoke-virtual {v2, v3, v5, v6}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppsToKill(Lcom/android/server/ipm/chimera/SkipReasonLogger;ILcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;

    move-result-object v2

    .line 93
    .local v2, "srcList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    if-nez v2, :cond_45

    .line 94
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v5, "executePolicy() - getAppsToKill return null"

    invoke-interface {v3, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void

    .line 98
    :cond_45
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, "killTargetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    iget v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerCnt:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerCnt:I

    .line 101
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerCntSrc:[I

    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v8}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v8

    aget v9, v5, v8

    add-int/2addr v9, v7

    aput v9, v5, v8

    .line 103
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_238

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 104
    .local v8, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget v9, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    if-ge v9, v7, :cond_79

    .line 105
    iget-object v9, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v10, "Invalid app group id"

    invoke-interface {v9, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    goto :goto_61

    .line 109
    :cond_79
    iget v9, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    const/4 v10, 0x4

    if-lt v9, v10, :cond_88

    .line 110
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string/jumbo v9, "killing stopped to group 4"

    invoke-interface {v5, v4, v9}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    goto/16 :goto_238

    .line 114
    :cond_88
    iget-object v9, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v8, v9}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->create(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    move-result-object v9

    iput-object v9, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    .line 116
    iget-object v9, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    if-eqz v9, :cond_234

    iget-object v9, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    invoke-virtual {v9}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->hasCachedProcess()Z

    move-result v9

    if-eqz v9, :cond_9d

    .line 117
    goto :goto_61

    .line 120
    :cond_9d
    iget-object v9, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v10, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v9, v10, v13}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 122
    .local v9, "lastKilledTimeMs":Ljava/lang/Long;
    if-eqz v9, :cond_bb

    iget-object v10, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v10}, Lcom/android/server/ipm/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    sub-long/2addr v13, v15

    goto :goto_be

    :cond_bb
    iget v10, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    int-to-long v13, v10

    .line 124
    .local v13, "killInterval":J
    :goto_be
    iget v10, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    int-to-long v11, v10

    cmp-long v10, v13, v11

    if-gez v10, :cond_10d

    .line 125
    iget-object v10, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v11, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v10, v8, v11}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 126
    iget-object v10, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skipped by interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", elapsed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v0, v13, v14}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", interval: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mPkgKillIntervalDefault:I

    move-object/from16 v17, v8

    .end local v8    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .local v17, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    int-to-long v7, v12

    .line 128
    invoke-virtual {v0, v7, v8}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->toHHmmss(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    move-object/from16 v7, v17

    .end local v17    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .local v7, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 126
    invoke-interface {v10, v4, v8}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 133
    .end local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .restart local v8    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_10d
    move-object v7, v8

    .end local v8    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .restart local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v10, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {v8, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->isOnScreenWindow(I)Z

    move-result v8

    if-eqz v8, :cond_13a

    .line 134
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v8, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 135
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped by visible screen : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 139
    :cond_13a
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mWakeLockManager:Lcom/android/server/ipm/chimera/WakeLockManager;

    iget-object v10, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/android/server/ipm/chimera/WakeLockManager;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_166

    .line 140
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v8, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 141
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped by wakelock       : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 145
    :cond_166
    iget v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v10, 0x20000

    and-int/2addr v8, v10

    if-lez v8, :cond_1b0

    .line 146
    invoke-direct {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->hasProtectedServices(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)I

    move-result v8

    .line 147
    .local v8, "protectedProcState":I
    invoke-static {}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->values()[Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    move-result-object v10

    aget-object v10, v10, v8

    .line 148
    .local v10, "protectedReason":Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    sget-object v11, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    if-eq v10, v11, :cond_1b0

    sget-object v11, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    if-eq v10, v11, :cond_1b0

    .line 149
    iget-object v11, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v12, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v11, v7, v12}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 150
    iget-object v11, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Skipped by Normal Service condition: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->toAppInfoDescription(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " reason: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 156
    .end local v8    # "protectedProcState":I
    .end local v10    # "protectedReason":Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    :cond_1b0
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->hasImportantAdjWithSystemUid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_1d8

    .line 157
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v8, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 158
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped by uid     : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 162
    :cond_1d8
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->isReusedPid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_1f9

    .line 163
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Skipped by Thread Group Leader condition: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 167
    :cond_1f9
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->isSystemPid(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_209

    .line 168
    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v10, "Skipped by system server process id"

    invoke-interface {v8, v4, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 172
    :cond_209
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->hasProtectedAdjOrProcState(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z

    move-result v8

    if-eqz v8, :cond_212

    .line 173
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 178
    :cond_212
    invoke-virtual {v7}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasActivity()Z

    move-result v8

    if-eqz v8, :cond_223

    iget-object v8, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {v7, v8}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v8

    if-nez v8, :cond_223

    .line 179
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 182
    :cond_223
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->calculateKillGain(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V

    .line 183
    iget-wide v10, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    const-wide/16 v15, 0x0

    cmp-long v8, v10, v15

    if-lez v8, :cond_231

    .line 184
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v9    # "lastKilledTimeMs":Ljava/lang/Long;
    .end local v13    # "killInterval":J
    :cond_231
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 116
    .local v8, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_234
    move-object v7, v8

    .end local v8    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .restart local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    const/4 v7, 0x1

    goto/16 :goto_61

    .line 188
    .end local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_238
    :goto_238
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSkipReasonLogger:Lcom/android/server/ipm/chimera/SkipReasonLogger;

    invoke-virtual {v5, v4}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->printLog(Ljava/lang/String;)V

    .line 190
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_252

    .line 191
    if-eqz v1, :cond_249

    .line 192
    invoke-virtual {v0, v3}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->killAll(Ljava/util/List;)V

    goto :goto_24c

    .line 194
    :cond_249
    invoke-virtual {v0, v3}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->killTopProfit(Ljava/util/List;)V

    .line 196
    :goto_24c
    iget-object v4, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v0, v4}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->updateActionStatistics(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    goto :goto_276

    .line 198
    :cond_252
    iget v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mNoActionCnt:I

    const/4 v7, 0x1

    add-int/2addr v5, v7

    iput v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mNoActionCnt:I

    .line 199
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string/jumbo v7, "killTargetList is empty"

    invoke-interface {v5, v4, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->isGcReclaimEnabled()Z

    move-result v4

    if-eqz v4, :cond_276

    .line 202
    iget-object v4, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mTriggerSource:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v5, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    if-ne v4, v5, :cond_270

    .line 203
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    goto :goto_276

    .line 205
    :cond_270
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->performGcAndReclaim()V

    .line 206
    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mReclaimOnHomeTrigger:Z

    .line 210
    :cond_276
    :goto_276
    return-void
.end method

.method hasProtectedAdjOrProcState(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)Z
    .registers 11
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 284
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    const/4 v4, 0x5

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2f

    aget v6, v0, v3

    .line 285
    .local v6, "score":I
    const/16 v7, 0xc8

    if-ge v6, v7, :cond_12

    .line 286
    return v5

    .line 287
    :cond_12
    const/16 v8, 0x12c

    if-ge v6, v8, :cond_2c

    .line 288
    if-ne v6, v7, :cond_27

    iget v7, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_27

    iget-object v7, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 290
    invoke-virtual {p1, v7}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v7

    if-nez v7, :cond_27

    .line 291
    return v5

    .line 294
    :cond_27
    iget v7, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    if-ne v7, v4, :cond_2c

    .line 295
    return v5

    .line 284
    .end local v6    # "score":I
    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 300
    :cond_2f
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    iget-object v0, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length v1, v0

    move v3, v2

    :goto_35
    if-ge v3, v1, :cond_43

    aget v6, v0, v3

    .line 301
    .local v6, "state":I
    const/4 v7, 0x3

    if-eq v6, v7, :cond_42

    if-ne v6, v4, :cond_3f

    goto :goto_42

    .line 300
    .end local v6    # "state":I
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    .line 303
    .restart local v6    # "state":I
    :cond_42
    :goto_42
    return v5

    .line 307
    .end local v6    # "state":I
    :cond_43
    return v2
.end method

.method public killAll(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 262
    .local p1, "killTargetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v1, "ConservativePolicyHandler"

    const-string/jumbo v2, "killAll"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_15

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 267
    :cond_15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 268
    .local v1, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    const-string v2, "LMKD CRI"

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->killApp(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Ljava/lang/String;)V

    .line 269
    .end local v1    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_19

    .line 270
    :cond_2b
    return-void
.end method

.method public killApp(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Ljava/lang/String;)V
    .registers 10
    .param p1, "app"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .param p2, "description"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Kill : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Pss : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ConservativePolicyHandler"

    invoke-interface {v0, v2, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->updateKillStatistics(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V

    .line 275
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->addRescheduleExceptionPackage(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mLastKilledTimeMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v2}, Lcom/android/server/ipm/chimera/SystemRepository;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_43
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 279
    .local v1, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v3, v1, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Chimera "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    .line 280
    .end local v1    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    goto :goto_43

    .line 281
    :cond_6a
    return-void
.end method

.method public killTopProfit(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 244
    .local p1, "killTargetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v1, "ConservativePolicyHandler"

    const-string/jumbo v2, "killTopProfit"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->calcAppScores(Ljava/util/List;)V

    .line 249
    sget-object v0, Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$z_szbRVvwo_aH0GN9HA_EfjEfrg;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$ConservativePolicyHandler$z_szbRVvwo_aH0GN9HA_EfjEfrg;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->isUserShipBuild()Z

    move-result v0

    if-nez v0, :cond_24

    .line 252
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    const-string v2, "after sorting:"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->printAllAppInfo(Ljava/util/List;)V

    .line 256
    :cond_24
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 257
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    const-string v1, "LMKD MED"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;->killApp(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Ljava/lang/String;)V

    .line 259
    :cond_36
    return-void
.end method
