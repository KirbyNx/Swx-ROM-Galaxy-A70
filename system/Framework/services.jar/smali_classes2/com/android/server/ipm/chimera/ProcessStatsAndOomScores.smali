.class Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;
.super Ljava/lang/Object;
.source "ProcessStatsAndOomScores.java"


# instance fields
.field public mPids:[I

.field public mScores:[I

.field public mStates:[I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 11
    iput-object v0, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 12
    iput-object v0, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 15
    return-void
.end method

.method public static create(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;
    .registers 10
    .param p0, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 18
    if-eqz p0, :cond_4f

    if-nez p1, :cond_5

    goto :goto_4f

    .line 22
    :cond_5
    new-instance v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

    invoke-direct {v0}, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;-><init>()V

    .line 23
    .local v0, "instance":Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 24
    .local v1, "pidSize":I
    new-array v2, v1, [I

    iput-object v2, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 26
    const/4 v2, 0x0

    .line 27
    .local v2, "i":I
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 28
    .local v4, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    add-int/lit8 v6, v2, 0x1

    .end local v2    # "i":I
    .local v6, "i":I
    iget v7, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    aput v7, v5, v2

    .line 29
    .end local v4    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    move v2, v6

    goto :goto_1b

    .line 31
    .end local v6    # "i":I
    .restart local v2    # "i":I
    :cond_31
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    invoke-interface {p1, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    move-result-object v3

    .line 32
    .local v3, "stateAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    if-eqz v3, :cond_46

    .line 33
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [I

    iput-object v4, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 34
    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, [I

    iput-object v4, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    goto :goto_4e

    .line 36
    :cond_46
    new-array v4, v1, [I

    iput-object v4, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 37
    new-array v4, v1, [I

    iput-object v4, v0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 40
    :goto_4e
    return-object v0

    .line 19
    .end local v0    # "instance":Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;
    .end local v1    # "pidSize":I
    .end local v2    # "i":I
    .end local v3    # "stateAndScores":Landroid/util/Pair;, "Landroid/util/Pair<[I[I>;"
    :cond_4f
    :goto_4f
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$hasCachedProcess$0(I)Z
    .registers 2
    .param p0, "score"    # I

    .line 48
    const/16 v0, 0x352

    if-lt p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method


# virtual methods
.method public hasCachedProcess()Z
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    if-nez v0, :cond_6

    .line 45
    const/4 v0, 0x0

    return v0

    .line 48
    :cond_6
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    sget-object v1, Lcom/android/server/ipm/chimera/-$$Lambda$ProcessStatsAndOomScores$HIKoM_yqm_k_88fP8bxxDi1C2-o;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$ProcessStatsAndOomScores$HIKoM_yqm_k_88fP8bxxDi1C2-o;

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->anyMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    return v0
.end method

.method public isAllCachedEmptyProcess()Z
    .registers 7

    .line 52
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 53
    return v1

    .line 56
    :cond_6
    array-length v2, v0

    move v3, v1

    :goto_8
    if-ge v3, v2, :cond_14

    aget v4, v0, v3

    .line 57
    .local v4, "state":I
    const/16 v5, 0x13

    if-ge v4, v5, :cond_11

    .line 58
    return v1

    .line 56
    .end local v4    # "state":I
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 62
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "pids: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mPids:[I

    array-length v3, v2

    const-string v4, " "

    if-ge v1, v3, :cond_1e

    .line 71
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 75
    .end local v1    # "i":I
    :cond_1e
    const-string v1, "/ stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_24
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mStates:[I

    array-length v3, v2

    if-ge v1, v3, :cond_34

    .line 77
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 81
    .end local v1    # "i":I
    :cond_34
    const-string v1, "/ adjs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_3a
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;->mScores:[I

    array-length v3, v2

    if-ge v1, v3, :cond_4a

    .line 83
    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 87
    .end local v1    # "i":I
    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
