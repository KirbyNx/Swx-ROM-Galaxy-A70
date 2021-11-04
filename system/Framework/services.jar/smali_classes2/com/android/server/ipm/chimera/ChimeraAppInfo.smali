.class public Lcom/android/server/ipm/chimera/ChimeraAppInfo;
.super Ljava/lang/Object;
.source "ChimeraAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/ChimeraAppInfo$AppType;,
        Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    }
.end annotation


# static fields
.field public static final MAX_GROUP_NUMBER:I = 0x4

.field private static final RESTART_SERVICE_EXIST:I = 0x1

.field private static final RESTART_SERVICE_NOT_EXIST:I = 0x0

.field private static final RESTART_SERVICE_NO_CHECKED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ChimeraAppInfo"


# instance fields
.field appType:I

.field cacStandbyBucket:I

.field curStandbyBucket:I

.field finalScore:F

.field group:I

.field killGain:J

.field lruIdx:I

.field packageName:Ljava/lang/String;

.field procList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field pss:J

.field private restartService:I

.field score:F

.field statsAndOomScores:Lcom/android/server/ipm/chimera/ProcessStatsAndOomScores;

.field uid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 15
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    .line 16
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 17
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 18
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    .line 19
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 30
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->restartService:I

    .line 103
    iput-object p2, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 104
    iput p1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    .line 105
    return-void
.end method

.method public static appType2group(I)I
    .registers 5
    .param p0, "appType"    # I

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    .line 92
    .local v0, "groupList":[I
    array-length v1, v0

    .line 93
    .local v1, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v1, :cond_15

    .line 94
    aget v3, v0, v2

    and-int/2addr v3, p0

    if-lez v3, :cond_12

    .line 95
    sub-int v3, v1, v2

    return v3

    .line 93
    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 99
    .end local v2    # "i":I
    :cond_15
    const/4 v2, 0x0

    return v2

    nop

    :array_18
    .array-data 4
        0xb57030
        0xec0
        0x2800c
        0x3
    .end array-data
.end method


# virtual methods
.method public addProcess(ILjava/lang/String;JJJ)V
    .registers 22
    .param p1, "pid"    # I
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "pss"    # J
    .param p5, "initialPss"    # J
    .param p7, "avgPss"    # J

    .line 108
    move-object v10, p0

    iget-object v11, v10, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    new-instance v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    move-object v0, v12

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppInfo;ILjava/lang/String;JJJ)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-wide v0, v10, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    add-long v0, v0, p3

    iput-wide v0, v10, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    .line 110
    return-void
.end method

.method public getPidList()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v0, "pids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 115
    .local v2, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget v3, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v2    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    goto :goto_b

    .line 117
    :cond_21
    return-object v0
.end method

.method public hasActivity()Z
    .registers 3

    .line 190
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method public hasRestartService(Lcom/android/server/ipm/chimera/SystemRepository;)Z
    .registers 6
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 179
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->restartService:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_20

    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    if-eqz v0, :cond_20

    .line 180
    nop

    .line 181
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;

    invoke-direct {v3, p0, p1}, Lcom/android/server/ipm/chimera/-$$Lambda$ChimeraAppInfo$K8jO23uDjRIbANE0npBSxBtVZH8;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppInfo;Lcom/android/server/ipm/chimera/SystemRepository;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 183
    move v0, v2

    goto :goto_1e

    :cond_1d
    move v0, v1

    :goto_1e
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->restartService:I

    .line 186
    :cond_20
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->restartService:I

    if-ne v0, v2, :cond_25

    move v1, v2

    :cond_25
    return v1
.end method

.method public isInPMMCriticalProtectedGroup()Z
    .registers 3

    .line 125
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-gtz v1, :cond_14

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-gtz v0, :cond_12

    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_12

    goto :goto_14

    :cond_12
    const/4 v0, 0x0

    goto :goto_15

    :cond_14
    :goto_14
    const/4 v0, 0x1

    :goto_15
    return v0
.end method

.method public isInProtectedGroup()Z
    .registers 3

    .line 121
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public isInProtectedStandbyBucket()Z
    .registers 3

    .line 130
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isInfoNotFeteched()Z
    .registers 5

    .line 135
    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    if-ltz v0, :cond_17

    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    if-ltz v0, :cond_17

    iget-wide v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    if-gez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public synthetic lambda$hasRestartService$0$ChimeraAppInfo(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;)Z
    .registers 5
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p2, "processInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 182
    iget-object v0, p2, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->processName:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-interface {p1, v0, v1}, Lcom/android/server/ipm/chimera/SystemRepository;->hasRestartService(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public toBriefString()Ljava/lang/String;
    .registers 7

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    .local v0, "sbPid":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 167
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 168
    .local v3, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget v4, v3, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2c

    .line 171
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .end local v3    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_2c
    goto :goto_c

    .line 175
    :cond_2d
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    aput-object v4, v2, v3

    iget v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-wide v4, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s %xH %d %d %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->toString(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .registers 10
    .param p1, "includePackageName"    # Z

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .local v0, "sbPid":Ljava/lang/StringBuilder;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 148
    .local v3, "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget v4, v3, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    add-int/lit8 v1, v1, 0x1

    .line 150
    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_31

    .line 151
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .end local v3    # "proc":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_31
    goto :goto_11

    .line 154
    :cond_32
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    if-eqz p1, :cond_4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4f

    :cond_4d
    const-string v2, ""

    .line 157
    .local v2, "appInfo":Ljava/lang/String;
    :goto_4f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x9

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    .line 158
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->score:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x5

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    iget v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/16 v5, 0x8

    iget-wide v6, p0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    .line 157
    const-string v5, "%d%s:G%d(0x%x) score=%3.1f(%d %d/%d %d)"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 160
    return-object v2
.end method
