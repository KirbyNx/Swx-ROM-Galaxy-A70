.class public Lcom/android/server/enterprise/application/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LOAD_AVERAGE_FORMAT:[I

.field private static final PROCESS_FULL_STATS_FORMAT:[I

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z = true

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorkingProcsMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    .line 68
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    .line 102
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_7e

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    .line 115
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    .line 236
    new-instance v0, Lcom/android/server/enterprise/application/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/application/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_2c
    .array-data 4
        0x20
        0x220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
    .end array-data

    :array_4e
    .array-data 4
        0x20
        0x1220
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x20
        0x2020
        0x20
        0x2020
        0x2020
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
    .end array-data

    :array_7e
    .array-data 4
        0x120
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
        0x2020
    .end array-data

    :array_92
    .array-data 4
        0x4020
        0x4020
        0x4020
    .end array-data
.end method

.method public constructor <init>(Z)V
    .registers 4
    .param p1, "includeThreads"    # Z

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x4

    new-array v1, v0, [J

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    .line 66
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    .line 99
    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 100
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    .line 113
    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    .line 121
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 126
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 127
    iput v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 157
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    .line 959
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    .line 260
    iput-boolean p1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    .line 261
    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .registers 47
    .param p1, "statsFile"    # Ljava/lang/String;
    .param p2, "parentPid"    # I
    .param p3, "first"    # Z
    .param p4, "curPids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/enterprise/application/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .line 356
    .local p5, "allProcs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/enterprise/application/ProcessStats$Stats;>;"
    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    invoke-static {v9, v10}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    .line 358
    .local v11, "pids":[I
    if-nez v11, :cond_12

    const/4 v0, 0x0

    goto :goto_13

    :cond_12
    array-length v0, v11

    :goto_13
    move v13, v0

    .line 359
    .local v13, "NP":I
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 360
    .local v0, "NS":I
    const/4 v1, 0x0

    .line 362
    .local v1, "curStatsIndex":I
    const/4 v2, 0x0

    move v14, v0

    move v15, v2

    .end local v0    # "NS":I
    .local v14, "NS":I
    .local v15, "i":I
    :goto_1c
    const-string v0, ": "

    const-string v2, "ProcessStats"

    if-ge v15, v13, :cond_3e7

    .line 363
    aget v4, v11, v15

    .line 365
    .local v4, "pid":I
    if-gez v4, :cond_30

    .line 366
    move v13, v4

    .line 367
    move-object/from16 v33, v11

    move/from16 v30, v13

    move v13, v7

    move-object v7, v8

    move-object v8, v6

    goto/16 :goto_3f2

    .line 370
    :cond_30
    if-ge v1, v14, :cond_39

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    goto :goto_3b

    :cond_39
    const/16 v16, 0x0

    :goto_3b
    move-object/from16 v17, v16

    .line 372
    .local v17, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    const-string v5, " majfaults="

    const-string v3, " minfaults="

    move-object/from16 v19, v3

    const-string v3, " stime="

    move-object/from16 v20, v3

    const-string v3, " utime="

    move-object/from16 v21, v3

    const-string v3, " pid="

    move-object/from16 v22, v3

    const-string v3, "Load"

    const/16 v23, 0x3

    const/16 v24, 0x2

    const-string v12, " pid "

    const-string/jumbo v25, "process"

    const-string/jumbo v26, "thread"

    move-object/from16 v27, v3

    move-object/from16 v3, v17

    .end local v17    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v3, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    if-eqz v3, :cond_22e

    move-object/from16 v17, v5

    iget v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    if-ne v5, v4, :cond_225

    .line 374
    const/4 v5, 0x0

    iput-boolean v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 375
    iput-boolean v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 376
    add-int/lit8 v28, v1, 0x1

    .line 378
    .end local v1    # "curStatsIndex":I
    .local v28, "curStatsIndex":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Existing "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    if-gez v7, :cond_7f

    move-object/from16 v5, v25

    goto :goto_81

    :cond_7f
    move-object/from16 v5, v26

    :goto_81
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-boolean v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_20b

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 384
    .local v1, "uptime":J
    iget-object v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcessStatsData:[J

    .line 386
    .local v12, "procStats":[J
    iget-object v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    move-wide/from16 v25, v1

    const/4 v1, 0x0

    .end local v1    # "uptime":J
    .local v25, "uptime":J
    invoke-static {v0, v5, v1, v12, v1}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-nez v0, :cond_bd

    .line 388
    move-object/from16 v33, v11

    move/from16 v30, v13

    move/from16 v29, v14

    move/from16 v19, v15

    const/4 v0, 0x1

    goto/16 :goto_217

    .line 391
    :cond_bd
    const/4 v0, 0x0

    aget-wide v1, v12, v0

    .line 392
    .local v1, "minfaults":J
    const/4 v0, 0x1

    aget-wide v9, v12, v0

    .line 393
    .local v9, "majfaults":J
    move/from16 v30, v13

    move/from16 v29, v14

    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .local v29, "NS":I
    .local v30, "NP":I
    aget-wide v13, v12, v24

    .line 394
    .local v13, "utime":J
    move-wide/from16 v31, v9

    .end local v9    # "majfaults":J
    .local v31, "majfaults":J
    aget-wide v8, v12, v23

    .line 396
    .local v8, "stime":J
    move-wide/from16 v33, v1

    .end local v1    # "minfaults":J
    .local v33, "minfaults":J
    iget-wide v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    cmp-long v0, v13, v0

    if-nez v0, :cond_f8

    iget-wide v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    cmp-long v0, v8, v0

    if-nez v0, :cond_f8

    .line 397
    const/4 v0, 0x0

    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 398
    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 399
    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 400
    iput v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 402
    iget-boolean v1, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-eqz v1, :cond_f1

    .line 403
    iput-boolean v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    move-object/from16 v33, v11

    move/from16 v19, v15

    const/4 v0, 0x1

    goto/16 :goto_217

    .line 402
    :cond_f1
    move-object/from16 v33, v11

    move/from16 v19, v15

    const/4 v0, 0x1

    goto/16 :goto_217

    .line 409
    :cond_f8
    iget-boolean v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    if-nez v0, :cond_100

    .line 410
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->active:Z

    goto :goto_101

    .line 409
    :cond_100
    const/4 v5, 0x1

    .line 413
    :goto_101
    if-gez v7, :cond_15e

    .line 414
    iget-object v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v6, v3, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 416
    iget-object v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_142

    .line 417
    iget-object v1, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v10, 0x0

    iget-object v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    iget-object v0, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-wide/from16 v35, v25

    move-wide/from16 v37, v33

    .end local v25    # "uptime":J
    .end local v33    # "minfaults":J
    .local v35, "uptime":J
    .local v37, "minfaults":J
    move-object/from16 v18, v2

    move v2, v4

    move-object/from16 v33, v11

    move-object/from16 v7, v21

    move-object/from16 v39, v27

    move-object v11, v3

    move-object/from16 v21, v19

    move/from16 v19, v15

    move-object/from16 v15, v22

    move-object/from16 v40, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v40

    .end local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v12    # "procStats":[J
    .end local v15    # "i":I
    .local v11, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v19, "i":I
    .local v20, "procStats":[J
    .local v33, "pids":[I
    move v3, v10

    move v10, v4

    .end local v4    # "pid":I
    .local v10, "pid":I
    move-object/from16 v4, v18

    move/from16 v22, v10

    move-object/from16 v10, v17

    .end local v10    # "pid":I
    .local v22, "pid":I
    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_179

    .line 416
    .end local v19    # "i":I
    .end local v20    # "procStats":[J
    .end local v22    # "pid":I
    .end local v35    # "uptime":J
    .end local v37    # "minfaults":J
    .restart local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v4    # "pid":I
    .local v11, "pids":[I
    .restart local v12    # "procStats":[J
    .restart local v15    # "i":I
    .restart local v25    # "uptime":J
    .local v33, "minfaults":J
    :cond_142
    move-object/from16 v10, v17

    move-object/from16 v7, v21

    move-wide/from16 v35, v25

    move-object/from16 v39, v27

    move-wide/from16 v37, v33

    move-object/from16 v33, v11

    move-object/from16 v21, v19

    move-object v11, v3

    move/from16 v19, v15

    move-object/from16 v15, v22

    move/from16 v22, v4

    move-object/from16 v40, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v40

    .end local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v4    # "pid":I
    .end local v12    # "procStats":[J
    .end local v15    # "i":I
    .end local v25    # "uptime":J
    .local v11, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v19    # "i":I
    .restart local v20    # "procStats":[J
    .restart local v22    # "pid":I
    .local v33, "pids":[I
    .restart local v35    # "uptime":J
    .restart local v37    # "minfaults":J
    goto :goto_179

    .line 413
    .end local v19    # "i":I
    .end local v20    # "procStats":[J
    .end local v22    # "pid":I
    .end local v35    # "uptime":J
    .end local v37    # "minfaults":J
    .restart local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v4    # "pid":I
    .local v11, "pids":[I
    .restart local v12    # "procStats":[J
    .restart local v15    # "i":I
    .restart local v25    # "uptime":J
    .local v33, "minfaults":J
    :cond_15e
    move-object/from16 v10, v17

    move-object/from16 v7, v21

    move-wide/from16 v35, v25

    move-object/from16 v39, v27

    move-wide/from16 v37, v33

    move-object/from16 v33, v11

    move-object/from16 v21, v19

    move-object v11, v3

    move/from16 v19, v15

    move-object/from16 v15, v22

    move/from16 v22, v4

    move-object/from16 v40, v20

    move-object/from16 v20, v12

    move-object/from16 v12, v40

    .line 422
    .end local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v4    # "pid":I
    .end local v12    # "procStats":[J
    .end local v15    # "i":I
    .end local v25    # "uptime":J
    .local v11, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v19    # "i":I
    .restart local v20    # "procStats":[J
    .restart local v22    # "pid":I
    .local v33, "pids":[I
    .restart local v35    # "uptime":J
    .restart local v37    # "minfaults":J
    :goto_179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats changed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v5, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v2, v37

    .end local v37    # "minfaults":J
    .local v2, "minfaults":J
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v31

    .end local v31    # "majfaults":J
    .local v4, "majfaults":J
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v6, v39

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    move-wide/from16 v6, v35

    .end local v35    # "uptime":J
    .local v6, "uptime":J
    sub-long v0, v6, v0

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    .line 429
    iput-wide v6, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    .line 430
    iget-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    sub-long v0, v13, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 431
    iget-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    sub-long v0, v8, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 432
    iput-wide v13, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 433
    iput-wide v8, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    .line 434
    iget-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    sub-long v0, v2, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 435
    iget-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    sub-long v0, v4, v0

    long-to-int v0, v0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 436
    iput-wide v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 437
    iput-wide v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 438
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 439
    .end local v2    # "minfaults":J
    .end local v4    # "majfaults":J
    .end local v6    # "uptime":J
    .end local v8    # "stime":J
    .end local v13    # "utime":J
    .end local v20    # "procStats":[J
    goto :goto_217

    .line 382
    .end local v19    # "i":I
    .end local v22    # "pid":I
    .end local v29    # "NS":I
    .end local v30    # "NP":I
    .end local v33    # "pids":[I
    .restart local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v4, "pid":I
    .local v11, "pids":[I
    .local v13, "NP":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    :cond_20b
    move/from16 v22, v4

    move-object/from16 v33, v11

    move/from16 v30, v13

    move/from16 v29, v14

    move/from16 v19, v15

    const/4 v0, 0x1

    move-object v11, v3

    .line 362
    .end local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v4    # "pid":I
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v19    # "i":I
    .restart local v29    # "NS":I
    .restart local v30    # "NP":I
    .restart local v33    # "pids":[I
    :goto_217
    move-object/from16 v8, p0

    move/from16 v13, p2

    move-object/from16 v7, p5

    move/from16 v15, v19

    move/from16 v1, v28

    move/from16 v14, v29

    goto/16 :goto_3d9

    .line 372
    .end local v19    # "i":I
    .end local v28    # "curStatsIndex":I
    .end local v29    # "NS":I
    .end local v30    # "NP":I
    .end local v33    # "pids":[I
    .local v1, "curStatsIndex":I
    .restart local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v4    # "pid":I
    .restart local v11    # "pids":[I
    .restart local v13    # "NP":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    :cond_225
    move-object/from16 v33, v11

    move/from16 v30, v13

    move/from16 v29, v14

    move-object/from16 v10, v17

    goto :goto_235

    :cond_22e
    move-object v10, v5

    move-object/from16 v33, v11

    move/from16 v30, v13

    move/from16 v29, v14

    :goto_235
    move-object/from16 v5, v19

    move-object/from16 v7, v21

    move-object/from16 v6, v27

    const/4 v8, 0x1

    move-object v11, v3

    move-object v3, v12

    move/from16 v19, v15

    move-object/from16 v12, v20

    move-object/from16 v15, v22

    move/from16 v22, v4

    .line 444
    .end local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v4    # "pid":I
    .end local v13    # "NP":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .local v11, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v19    # "i":I
    .restart local v22    # "pid":I
    .restart local v29    # "NS":I
    .restart local v30    # "NP":I
    .restart local v33    # "pids":[I
    if-eqz v11, :cond_298

    iget v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    move/from16 v9, v22

    .end local v22    # "pid":I
    .local v9, "pid":I
    if-le v4, v9, :cond_254

    move/from16 v13, p2

    move-object v14, v7

    move-object/from16 v7, p5

    goto :goto_29f

    .line 515
    :cond_254
    const/4 v4, 0x0

    iput v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 516
    iput v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 517
    iput v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 518
    iput v4, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 519
    iput-boolean v8, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 520
    iput-boolean v8, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 521
    move-object/from16 v7, p5

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 522
    add-int/lit8 v14, v29, -0x1

    .line 524
    .end local v29    # "NS":I
    .restart local v14    # "NS":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    move/from16 v13, p2

    if-gez v13, :cond_279

    move-object/from16 v5, v25

    goto :goto_27b

    :cond_279
    move-object/from16 v5, v26

    :goto_27b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    add-int/lit8 v15, v19, -0x1

    .line 531
    .end local v19    # "i":I
    .restart local v15    # "i":I
    move v0, v8

    move-object/from16 v8, p0

    goto/16 :goto_3d9

    .line 444
    .end local v9    # "pid":I
    .end local v14    # "NS":I
    .end local v15    # "i":I
    .restart local v19    # "i":I
    .restart local v22    # "pid":I
    .restart local v29    # "NS":I
    :cond_298
    move/from16 v13, p2

    move-object v14, v7

    move/from16 v9, v22

    move-object/from16 v7, p5

    .line 446
    .end local v22    # "pid":I
    .restart local v9    # "pid":I
    :goto_29f
    new-instance v4, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    move-object/from16 v8, p0

    move-object/from16 v21, v5

    iget-boolean v5, v8, Lcom/android/server/enterprise/application/ProcessStats;->mIncludeThreads:Z

    invoke-direct {v4, v9, v13, v5}, Lcom/android/server/enterprise/application/ProcessStats$Stats;-><init>(IIZ)V

    move-object v11, v4

    .line 447
    invoke-virtual {v7, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 448
    add-int/lit8 v16, v1, 0x1

    .line 449
    .end local v1    # "curStatsIndex":I
    .local v16, "curStatsIndex":I
    add-int/lit8 v17, v29, 0x1

    .line 451
    .end local v29    # "NS":I
    .local v17, "NS":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    if-gez v13, :cond_2c1

    move-object/from16 v4, v25

    goto :goto_2c3

    :cond_2c1
    move-object/from16 v4, v26

    :goto_2c3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v5, v8, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    .line 456
    .local v5, "procStatsString":[Ljava/lang/String;
    iget-object v4, v8, Lcom/android/server/enterprise/application/ProcessStats;->mProcessFullStatsData:[J

    .line 457
    .local v4, "procStats":[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_uptime:J

    .line 459
    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->statFile:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v1, v5, v4, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    if-eqz v0, :cond_30c

    .line 467
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    .line 468
    const/4 v1, 0x0

    aget-object v2, v5, v1

    iput-object v2, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 469
    aget-wide v1, v4, v0

    iput-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 470
    aget-wide v0, v4, v24

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    .line 471
    aget-wide v0, v4, v23

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 472
    const/4 v0, 0x4

    aget-wide v0, v4, v0

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    goto :goto_32e

    .line 479
    :cond_30c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping unknown process pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "<unknown>"

    iput-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 481
    const-wide/16 v0, 0x0

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    .line 482
    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    iput-wide v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    .line 485
    :goto_32e
    if-gez v13, :cond_367

    .line 486
    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    invoke-direct {v8, v11, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V

    .line 488
    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v0, :cond_35c

    .line 489
    iget-object v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v2, v8, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v2

    move v2, v9

    move-object/from16 v22, v4

    .end local v4    # "procStats":[J
    .local v22, "procStats":[J
    move-object/from16 v4, v20

    move-object/from16 v20, v5

    move-object/from16 v40, v21

    move/from16 v21, v9

    move-object/from16 v9, v40

    .end local v5    # "procStatsString":[Ljava/lang/String;
    .end local v9    # "pid":I
    .local v20, "procStatsString":[Ljava/lang/String;
    .local v21, "pid":I
    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v8, Lcom/android/server/enterprise/application/ProcessStats;->mCurThreadPids:[I

    goto :goto_381

    .line 488
    .end local v20    # "procStatsString":[Ljava/lang/String;
    .end local v21    # "pid":I
    .end local v22    # "procStats":[J
    .restart local v4    # "procStats":[J
    .restart local v5    # "procStatsString":[Ljava/lang/String;
    .restart local v9    # "pid":I
    :cond_35c
    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v40, v21

    move/from16 v21, v9

    move-object/from16 v9, v40

    .end local v4    # "procStats":[J
    .end local v5    # "procStatsString":[Ljava/lang/String;
    .end local v9    # "pid":I
    .restart local v20    # "procStatsString":[Ljava/lang/String;
    .restart local v21    # "pid":I
    .restart local v22    # "procStats":[J
    goto :goto_381

    .line 492
    .end local v20    # "procStatsString":[Ljava/lang/String;
    .end local v21    # "pid":I
    .end local v22    # "procStats":[J
    .restart local v4    # "procStats":[J
    .restart local v5    # "procStatsString":[Ljava/lang/String;
    .restart local v9    # "pid":I
    :cond_367
    move-object/from16 v22, v4

    move-object/from16 v20, v5

    move-object/from16 v40, v21

    move/from16 v21, v9

    move-object/from16 v9, v40

    .end local v4    # "procStats":[J
    .end local v5    # "procStatsString":[Ljava/lang/String;
    .end local v9    # "pid":I
    .restart local v20    # "procStatsString":[Ljava/lang/String;
    .restart local v21    # "pid":I
    .restart local v22    # "procStats":[J
    iget-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v0, :cond_381

    .line 493
    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    iput-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 494
    iget-object v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    .line 497
    :cond_381
    :goto_381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stats added "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_utime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_stime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_minfaults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->base_majfaults:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x0

    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 502
    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 503
    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 504
    iput v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    .line 507
    if-nez p3, :cond_3d3

    iget-boolean v1, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->interesting:Z

    if-eqz v1, :cond_3d3

    .line 508
    iput-boolean v0, v11, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 362
    .end local v11    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .end local v20    # "procStatsString":[Ljava/lang/String;
    .end local v21    # "pid":I
    .end local v22    # "procStats":[J
    :cond_3d3
    move/from16 v1, v16

    move/from16 v14, v17

    move/from16 v15, v19

    .end local v16    # "curStatsIndex":I
    .end local v17    # "NS":I
    .end local v19    # "i":I
    .restart local v1    # "curStatsIndex":I
    .restart local v14    # "NS":I
    .restart local v15    # "i":I
    :goto_3d9
    add-int/2addr v15, v0

    move-object/from16 v9, p1

    move-object/from16 v10, p4

    move-object v6, v8

    move-object/from16 v11, v33

    move-object v8, v7

    move v7, v13

    move/from16 v13, v30

    goto/16 :goto_1c

    .end local v30    # "NP":I
    .end local v33    # "pids":[I
    .local v11, "pids":[I
    .restart local v13    # "NP":I
    :cond_3e7
    move-object/from16 v33, v11

    move/from16 v30, v13

    move/from16 v29, v14

    move/from16 v19, v15

    move v13, v7

    move-object v7, v8

    move-object v8, v6

    .line 534
    .end local v11    # "pids":[I
    .end local v13    # "NP":I
    .end local v15    # "i":I
    .restart local v30    # "NP":I
    .restart local v33    # "pids":[I
    :goto_3f2
    if-ge v1, v14, :cond_42a

    .line 536
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 537
    .restart local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    const/4 v4, 0x0

    iput v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    .line 538
    iput v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    .line 539
    iput v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    .line 540
    iput v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    .line 541
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    .line 542
    iput-boolean v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    .line 543
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 544
    add-int/lit8 v14, v14, -0x1

    .line 547
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Removed pid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    .end local v3    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    goto :goto_3f2

    .line 551
    :cond_42a
    return-object v33
.end method

.method private getCpuSpeedTimes([J)[J
    .registers 20
    .param p1, "out"    # [J

    .line 595
    move-object/from16 v1, p0

    const-string v2, "ProcessStats"

    move-object/from16 v0, p1

    .line 596
    .local v0, "tempTimes":[J
    iget-object v3, v1, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    .line 597
    .local v3, "tempSpeeds":[J
    const/16 v4, 0x3c

    .line 599
    .local v4, "MAX_SPEEDS":I
    const/16 v5, 0x3c

    if-nez p1, :cond_15

    .line 600
    new-array v0, v5, [J

    .line 601
    new-array v3, v5, [J

    move-object v6, v3

    move-object v3, v0

    goto :goto_17

    .line 599
    :cond_15
    move-object v6, v3

    move-object v3, v0

    .line 604
    .end local v0    # "tempTimes":[J
    .local v3, "tempTimes":[J
    .local v6, "tempSpeeds":[J
    :goto_17
    const/4 v0, 0x0

    .line 605
    .local v0, "speed":I
    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/bus/cpu/devices/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 608
    .local v7, "f":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_2b

    .line 609
    invoke-direct {v1, v8, v10}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    .local v8, "file":Ljava/lang/String;
    goto :goto_31

    .line 611
    .end local v8    # "file":Ljava/lang/String;
    :cond_2b
    const-string v8, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {v1, v8, v10}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    .line 615
    .restart local v8    # "file":Ljava/lang/String;
    :goto_31
    if-eqz v8, :cond_9c

    .line 616
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v11, "\n "

    invoke-direct {v9, v8, v11}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move v11, v0

    .line 618
    .end local v0    # "speed":I
    .local v9, "st":Ljava/util/StringTokenizer;
    .local v11, "speed":I
    :goto_3b
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 619
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v12

    .line 622
    .local v12, "token":Ljava/lang/String;
    :try_start_45
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 623
    .local v13, "val":J
    aput-wide v13, v6, v11

    .line 624
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 625
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    move-wide v13, v15

    .line 626
    aput-wide v13, v3, v11
    :try_end_57
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_57} :catch_93

    .line 627
    add-int/lit8 v11, v11, 0x1

    .line 629
    if-ne v11, v5, :cond_5d

    .line 630
    move v0, v11

    goto :goto_9c

    .line 633
    :cond_5d
    if-nez p1, :cond_8e

    .line 634
    :try_start_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "First time : Speed/Time = "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_5f .. :try_end_69} :catch_8a

    add-int/lit8 v15, v11, -0x1

    move/from16 v17, v11

    .end local v11    # "speed":I
    .local v17, "speed":I
    :try_start_6d
    aget-wide v10, v6, v15

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "\t"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v11, v17, -0x1

    aget-wide v10, v3, v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catch Ljava/lang/NumberFormatException; {:try_start_6d .. :try_end_85} :catch_86

    goto :goto_90

    .line 637
    .end local v13    # "val":J
    :catch_86
    move-exception v0

    move/from16 v11, v17

    goto :goto_94

    .end local v17    # "speed":I
    .restart local v11    # "speed":I
    :catch_8a
    move-exception v0

    move/from16 v17, v11

    .end local v11    # "speed":I
    .restart local v17    # "speed":I
    goto :goto_94

    .line 633
    .end local v17    # "speed":I
    .restart local v11    # "speed":I
    .restart local v13    # "val":J
    :cond_8e
    move/from16 v17, v11

    .line 639
    .end local v11    # "speed":I
    .end local v13    # "val":J
    .restart local v17    # "speed":I
    :goto_90
    move/from16 v11, v17

    goto :goto_99

    .line 637
    .end local v17    # "speed":I
    .restart local v11    # "speed":I
    :catch_93
    move-exception v0

    .line 638
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    :goto_94
    const-string v10, "Unable to parse time_in_state"

    invoke-static {v2, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    .end local v12    # "token":Ljava/lang/String;
    :goto_99
    const/4 v10, 0x0

    goto :goto_3b

    .line 618
    :cond_9b
    move v0, v11

    .line 643
    .end local v9    # "st":Ljava/util/StringTokenizer;
    .end local v11    # "speed":I
    .local v0, "speed":I
    :cond_9c
    :goto_9c
    if-nez p1, :cond_ac

    .line 644
    new-array v2, v0, [J

    .line 645
    .end local p1    # "out":[J
    .local v2, "out":[J
    new-array v5, v0, [J

    iput-object v5, v1, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeeds:[J

    .line 646
    const/4 v9, 0x0

    invoke-static {v6, v9, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 647
    invoke-static {v3, v9, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_ae

    .line 643
    .end local v2    # "out":[J
    .restart local p1    # "out":[J
    :cond_ac
    move-object/from16 v2, p1

    .line 650
    .end local p1    # "out":[J
    .restart local v2    # "out":[J
    :goto_ae
    return-object v2
.end method

.method private getName(Lcom/android/server/enterprise/application/ProcessStats$Stats;Ljava/lang/String;)V
    .registers 8
    .param p1, "st"    # Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .param p2, "cmdlineFile"    # Ljava/lang/String;

    .line 932
    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 934
    .local v0, "newName":Ljava/lang/String;
    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v2, "app_process"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 935
    const-string v2, "<pre-initialized>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 936
    :cond_1a
    const/4 v1, 0x0

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/application/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "cmdName":Ljava/lang/String;
    if-eqz v1, :cond_3e

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3e

    .line 939
    move-object v0, v1

    .line 940
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 942
    .local v2, "i":I
    if-lez v2, :cond_3e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    if-ge v2, v4, :cond_3e

    .line 943
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 947
    .end local v2    # "i":I
    :cond_3e
    if-nez v0, :cond_42

    .line 948
    iget-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .line 952
    .end local v1    # "cmdName":Ljava/lang/String;
    :cond_42
    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v1, :cond_4e

    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 953
    :cond_4e
    iput-object v0, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    .line 954
    iget-object v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/server/enterprise/application/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v1

    iput v1, p1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->nameWidth:I

    .line 956
    :cond_58
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .registers 31
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "totalTime"    # I
    .param p6, "user"    # I
    .param p7, "system"    # I
    .param p8, "iowait"    # I
    .param p9, "irq"    # I
    .param p10, "softIrq"    # I
    .param p11, "minFaults"    # I
    .param p12, "majFaults"    # I

    .line 834
    move-object/from16 v6, p1

    move/from16 v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 836
    if-nez p5, :cond_1a

    .line 837
    const/4 v0, 0x1

    move v15, v0

    .end local p5    # "totalTime":I
    .local v0, "totalTime":I
    goto :goto_1c

    .line 836
    .end local v0    # "totalTime":I
    .restart local p5    # "totalTime":I
    :cond_1a
    move/from16 v15, p5

    .line 840
    .end local p5    # "totalTime":I
    .local v15, "totalTime":I
    :goto_1c
    add-int v0, v8, v9

    add-int/2addr v0, v10

    add-int/2addr v0, v11

    add-int/2addr v0, v12

    int-to-long v2, v0

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 841
    const-string v0, "% "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 843
    if-ltz v7, :cond_39

    .line 844
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 845
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    :cond_39
    move-object/from16 v4, p4

    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 849
    const-string v0, ": "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 850
    int-to-long v2, v8

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 851
    const-string v0, "% user + "

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 852
    int-to-long v2, v9

    int-to-long v4, v15

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 853
    const-string v0, "% kernel"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 855
    const-string v4, " + "

    if-lez v10, :cond_7c

    .line 856
    invoke-virtual {v6, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 857
    int-to-long v2, v10

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v7, v4

    move-wide/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 858
    const-string v0, "% iowait"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7d

    .line 855
    :cond_7c
    move-object v7, v4

    .line 861
    :goto_7d
    if-lez v11, :cond_90

    .line 862
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 863
    int-to-long v2, v11

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 864
    const-string v0, "% irq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 867
    :cond_90
    if-lez v12, :cond_a3

    .line 868
    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 869
    int-to-long v2, v12

    int-to-long v4, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    .line 870
    const-string v0, "% softirq"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    :cond_a3
    if-gtz v13, :cond_a7

    if-lez v14, :cond_c8

    .line 874
    :cond_a7
    const-string v0, " / faults:"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 876
    const-string v0, " "

    if-lez v13, :cond_bb

    .line 877
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 878
    invoke-virtual {v6, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 879
    const-string v1, " minor"

    invoke-virtual {v6, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 882
    :cond_bb
    if-lez v14, :cond_c8

    .line 883
    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 884
    invoke-virtual {v6, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 885
    const-string v0, " major"

    invoke-virtual {v6, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 889
    :cond_c8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 890
    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "numerator"    # J
    .param p4, "denominator"    # J

    .line 817
    const-wide/16 v0, 0x3e8

    mul-long/2addr v0, p2

    div-long/2addr v0, p4

    .line 818
    .local v0, "thousands":J
    const-wide/16 v2, 0xa

    div-long v4, v0, v2

    .line 819
    .local v4, "hundreds":J
    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 821
    cmp-long v6, v4, v2

    if-gez v6, :cond_20

    .line 822
    mul-long/2addr v2, v4

    sub-long v2, v0, v2

    .line 824
    .local v2, "remainder":J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_20

    .line 825
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 826
    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 829
    .end local v2    # "remainder":J
    :cond_20
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .registers 10
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "endChar"    # C

    .line 896
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 897
    .local v0, "savedPolicy":Landroid/os/StrictMode$ThreadPolicy;
    const/4 v1, 0x0

    .line 900
    .local v1, "is":Ljava/io/FileInputStream;
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 901
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 902
    .local v2, "len":I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 904
    if-lez v2, :cond_35

    .line 907
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    if-ge v3, v2, :cond_23

    .line 908
    iget-object v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    aget-byte v4, v4, v3

    if-ne v4, p2, :cond_20

    .line 909
    goto :goto_23

    .line 907
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 913
    :cond_23
    :goto_23
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/enterprise/application/ProcessStats;->mBuffer:[B

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_2b} :catch_51
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_2b} :catch_48
    .catchall {:try_start_5 .. :try_end_2b} :catchall_3c

    .line 918
    nop

    .line 920
    :try_start_2c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 922
    goto :goto_31

    .line 921
    :catch_30
    move-exception v5

    .line 925
    :goto_31
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 913
    return-object v4

    .line 918
    .end local v2    # "len":I
    .end local v3    # "i":I
    :cond_35
    nop

    .line 920
    :try_start_36
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_39} :catch_3a

    goto :goto_57

    .line 921
    :catch_3a
    move-exception v2

    goto :goto_59

    .line 918
    :catchall_3c
    move-exception v2

    if-eqz v1, :cond_44

    .line 920
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_43

    .line 922
    goto :goto_44

    .line 921
    :catch_43
    move-exception v3

    .line 925
    :cond_44
    :goto_44
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 926
    throw v2

    .line 916
    :catch_48
    move-exception v2

    .line 918
    if-eqz v1, :cond_59

    .line 920
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_4f

    goto :goto_57

    .line 921
    :catch_4f
    move-exception v2

    goto :goto_59

    .line 915
    :catch_51
    move-exception v2

    .line 918
    if-eqz v1, :cond_59

    .line 920
    :try_start_54
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 922
    :goto_57
    goto :goto_59

    .line 921
    :catch_58
    move-exception v2

    .line 925
    :cond_59
    :goto_59
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 926
    nop

    .line 928
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .registers 8

    .line 692
    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_65

    .line 693
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 694
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 696
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    const/4 v2, 0x1

    if-ge v1, v0, :cond_5c

    .line 697
    iget-object v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 699
    .local v3, "stats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-boolean v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v4, :cond_59

    .line 700
    iget-object v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v4, :cond_59

    iget-object v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v2, :cond_59

    .line 703
    iget-object v2, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 704
    iget-object v2, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 706
    .local v2, "M":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3c
    if-ge v4, v2, :cond_52

    .line 707
    iget-object v5, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 709
    .local v5, "tstats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/server/enterprise/application/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_4f

    .line 710
    iget-object v6, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    .end local v5    # "tstats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_4f
    add-int/lit8 v4, v4, 0x1

    goto :goto_3c

    .line 714
    .end local v4    # "j":I
    :cond_52
    iget-object v4, v3, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 696
    .end local v2    # "M":I
    .end local v3    # "stats":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_59
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 719
    .end local v1    # "i":I
    :cond_5c
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/enterprise/application/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 720
    iput-boolean v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 722
    .end local v0    # "N":I
    :cond_65
    return-void
.end method

.method public final buildWorkingProcsMap()V
    .registers 5

    .line 962
    iget-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v0, :cond_2e

    .line 963
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 964
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 966
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 967
    .local v1, "s":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    iget v3, v1, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 968
    .end local v1    # "s":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    goto :goto_12

    .line 970
    :cond_2e
    return-void
.end method

.method public final countStats()I
    .registers 2

    .line 725
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .registers 2

    .line 734
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 735
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .registers 8
    .param p1, "pid"    # I

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "statFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mSinglePidStatsData:[J

    .line 558
    .local v1, "statsData":[J
    sget-object v2, Lcom/android/server/enterprise/application/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1, v3}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 560
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    .line 562
    .local v2, "time":J
    return-wide v2

    .line 565
    .end local v2    # "time":J
    :cond_29
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getLastCpuSpeedTimes()[J
    .registers 10

    .line 574
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v0, :cond_20

    .line 575
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    .line 576
    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    .line 578
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 579
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v2, 0x1

    aput-wide v2, v1, v0

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .end local v0    # "i":I
    :cond_1f
    goto :goto_3b

    .line 582
    :cond_20
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ProcessStats;->getCpuSpeedTimes([J)[J

    .line 584
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_26
    iget-object v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mCpuSpeedTimes:[J

    array-length v2, v1

    if-ge v0, v2, :cond_3b

    .line 585
    iget-object v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v3, v2, v0

    .line 586
    .local v3, "temp":J
    aget-wide v5, v2, v0

    aget-wide v7, v1, v0

    sub-long/2addr v5, v7

    aput-wide v5, v2, v0

    .line 587
    aput-wide v3, v1, v0

    .line 584
    .end local v3    # "temp":J
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 591
    .end local v0    # "i":I
    :cond_3b
    :goto_3b
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v0
.end method

.method public final getLastIdleTime()I
    .registers 2

    .line 678
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .registers 2

    .line 664
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .registers 2

    .line 669
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .registers 2

    .line 673
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .registers 2

    .line 660
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .registers 2

    .line 655
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 729
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public final getTotalCpuPercent()F
    .registers 6

    .line 682
    iget v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int v2, v0, v1

    iget v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v2, v3

    iget v4, p0, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int/2addr v2, v4

    .line 684
    .local v2, "denom":I
    if-gtz v2, :cond_10

    .line 685
    const/4 v0, 0x0

    return v0

    .line 688
    :cond_10
    add-int/2addr v0, v1

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStatByPid(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 3
    .param p1, "pid"    # I

    .line 973
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .registers 3
    .param p1, "index"    # I

    .line 740
    iget-object v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    return-object v0
.end method

.method public init()V
    .registers 3

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 277
    invoke-virtual {p0}, Lcom/android/server/enterprise/application/ProcessStats;->update()V

    .line 278
    return-void
.end method

.method public onLoadChanged(FFF)V
    .registers 4
    .param p1, "load1"    # F
    .param p2, "load5"    # F
    .param p3, "load15"    # F

    .line 264
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .registers 5

    .line 744
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 745
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 746
    .local v1, "pw":Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 747
    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 748
    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 749
    iget v3, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(F)V

    .line 750
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 751
    iget v2, p0, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 752
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .registers 35
    .param p1, "now"    # J

    .line 756
    move-object/from16 v13, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ProcessStats;->buildWorkingProcs()V

    .line 757
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v14, v0

    .line 758
    .local v14, "sw":Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v14}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    move-object v15, v0

    .line 759
    .local v15, "pw":Ljava/io/PrintWriter;
    const-string v0, "CPU usage from "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 761
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    cmp-long v2, p1, v0

    const-string/jumbo v3, "ms to "

    if-lez v2, :cond_35

    .line 762
    sub-long v0, p1, v0

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 763
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 764
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v0, p1, v0

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 765
    const-string/jumbo v0, "ms ago"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4a

    .line 767
    :cond_35
    sub-long v0, v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 768
    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 769
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long v0, v0, p1

    invoke-virtual {v15, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 770
    const-string/jumbo v0, "ms later"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 773
    :goto_4a
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long v16, v0, v2

    .line 774
    .local v16, "sampleTime":J
    iget-wide v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iget-wide v2, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    sub-long v18, v0, v2

    .line 775
    .local v18, "sampleRealTime":J
    const-wide/16 v0, 0x0

    cmp-long v2, v18, v0

    const-wide/16 v3, 0x64

    if-lez v2, :cond_62

    mul-long v0, v16, v3

    div-long v0, v0, v18

    :cond_62
    move-wide v11, v0

    .line 777
    .local v11, "percAwake":J
    cmp-long v0, v11, v3

    if-eqz v0, :cond_74

    .line 778
    const-string v0, " with "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 779
    invoke-virtual {v15, v11, v12}, Ljava/io/PrintWriter;->print(J)V

    .line 780
    const-string v0, "% awake"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 783
    :cond_74
    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    iget v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    add-int/2addr v0, v1

    iget v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    add-int v10, v0, v1

    .line 787
    .local v10, "totalTime":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "totalTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " over sample time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v13, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iget-wide v3, v13, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProcessStats"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 792
    .local v9, "N":I
    const/4 v0, 0x0

    move v8, v0

    .local v8, "i":I
    :goto_b7
    if-ge v8, v9, :cond_18b

    .line 793
    iget-object v0, v13, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 794
    .local v7, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-boolean v0, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v0, :cond_ca

    const-string v0, " +"

    :goto_c8
    move-object v2, v0

    goto :goto_d4

    :cond_ca
    iget-boolean v0, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v0, :cond_d1

    const-string v0, " -"

    goto :goto_c8

    :cond_d1
    const-string v0, "  "

    goto :goto_c8

    :goto_d4
    iget v3, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    iget-object v4, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-wide v0, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    const-wide/16 v20, 0x5

    add-long v0, v0, v20

    long-to-int v0, v0

    div-int/lit8 v5, v0, 0xa

    iget v6, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v1, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    iget v0, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_minfaults:I

    move/from16 v25, v10

    .end local v10    # "totalTime":I
    .local v25, "totalTime":I
    iget v10, v7, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_majfaults:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v27, v1

    move-object v1, v15

    move-object/from16 v28, v7

    .end local v7    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v28, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move/from16 v7, v27

    move/from16 v27, v8

    .end local v8    # "i":I
    .local v27, "i":I
    move/from16 v8, v22

    move/from16 v22, v9

    .end local v9    # "N":I
    .local v22, "N":I
    move/from16 v9, v23

    move/from16 v23, v25

    move/from16 v25, v10

    .end local v25    # "totalTime":I
    .local v23, "totalTime":I
    move/from16 v10, v24

    move-wide/from16 v29, v11

    .end local v11    # "percAwake":J
    .local v29, "percAwake":J
    move/from16 v11, v26

    move/from16 v12, v25

    invoke-direct/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 798
    move-object/from16 v12, v28

    .end local v28    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v12, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    iget-boolean v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-nez v0, :cond_17f

    iget-object v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    if-eqz v0, :cond_17f

    .line 799
    iget-object v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 801
    .local v11, "M":I
    const/4 v0, 0x0

    move v10, v0

    .local v10, "j":I
    :goto_125
    if-ge v10, v11, :cond_178

    .line 802
    iget-object v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;

    .line 803
    .local v9, "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    nop

    .line 804
    iget-boolean v0, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->added:Z

    if-eqz v0, :cond_139

    const-string v0, "   +"

    :goto_137
    move-object v2, v0

    goto :goto_143

    :cond_139
    iget-boolean v0, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->removed:Z

    if-eqz v0, :cond_140

    const-string v0, "   -"

    goto :goto_137

    :cond_140
    const-string v0, "    "

    goto :goto_137

    :goto_143
    iget v3, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->pid:I

    iget-object v4, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-wide v0, v12, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_uptime:J

    add-long v0, v0, v20

    long-to-int v0, v0

    div-int/lit8 v5, v0, 0xa

    iget v6, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_utime:I

    iget v7, v9, Lcom/android/server/enterprise/application/ProcessStats$Stats;->rel_stime:I

    const/4 v8, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    .line 803
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v31, v9

    .end local v9    # "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v31, "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move/from16 v9, v24

    move/from16 v24, v10

    .end local v10    # "j":I
    .local v24, "j":I
    move/from16 v10, v25

    move/from16 v25, v11

    .end local v11    # "M":I
    .local v25, "M":I
    move/from16 v11, v26

    move-object/from16 v26, v12

    .end local v12    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .local v26, "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    move/from16 v12, v28

    invoke-direct/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 801
    .end local v31    # "tst":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    add-int/lit8 v10, v24, 0x1

    move/from16 v11, v25

    move-object/from16 v12, v26

    .end local v24    # "j":I
    .restart local v10    # "j":I
    goto :goto_125

    .end local v25    # "M":I
    .end local v26    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v11    # "M":I
    .restart local v12    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_178
    move/from16 v24, v10

    move/from16 v25, v11

    move-object/from16 v26, v12

    .end local v10    # "j":I
    .end local v11    # "M":I
    .end local v12    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v24    # "j":I
    .restart local v25    # "M":I
    .restart local v26    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    goto :goto_181

    .line 798
    .end local v24    # "j":I
    .end local v25    # "M":I
    .end local v26    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    .restart local v12    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :cond_17f
    move-object/from16 v26, v12

    .line 792
    .end local v12    # "st":Lcom/android/server/enterprise/application/ProcessStats$Stats;
    :goto_181
    add-int/lit8 v8, v27, 0x1

    move/from16 v9, v22

    move/from16 v10, v23

    move-wide/from16 v11, v29

    .end local v27    # "i":I
    .restart local v8    # "i":I
    goto/16 :goto_b7

    .end local v22    # "N":I
    .end local v23    # "totalTime":I
    .end local v29    # "percAwake":J
    .local v9, "N":I
    .local v10, "totalTime":I
    .local v11, "percAwake":J
    :cond_18b
    move/from16 v27, v8

    move/from16 v22, v9

    move/from16 v23, v10

    move-wide/from16 v29, v11

    .line 811
    .end local v8    # "i":I
    .end local v9    # "N":I
    .end local v10    # "totalTime":I
    .end local v11    # "percAwake":J
    .restart local v22    # "N":I
    .restart local v23    # "totalTime":I
    .restart local v29    # "percAwake":J
    const/4 v3, -0x1

    iget v6, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    iget v7, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    iget v8, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    iget v9, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    iget v10, v13, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v2, ""

    const-string v4, "TOTAL"

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v5, v23

    invoke-direct/range {v0 .. v12}, Lcom/android/server/enterprise/application/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    .line 813
    invoke-virtual {v14}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update()V
    .registers 25

    .line 283
    move-object/from16 v6, p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "ProcessStats"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleTime:J

    .line 287
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    .line 288
    iget-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLastSampleRealTime:J

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleRealTime:J

    .line 290
    iget-object v8, v6, Lcom/android/server/enterprise/application/ProcessStats;->mSystemCpuData:[J

    .line 292
    .local v8, "sysCpu":[J
    sget-object v0, Lcom/android/server/enterprise/application/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const-string v1, "/proc/stat"

    const/4 v9, 0x0

    invoke-static {v1, v0, v9, v8, v9}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v0

    const/4 v10, 0x2

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-eqz v0, :cond_11b

    .line 295
    aget-wide v0, v8, v12

    aget-wide v2, v8, v11

    add-long/2addr v0, v2

    .line 297
    .local v0, "usertime":J
    aget-wide v2, v8, v10

    .line 299
    .local v2, "systemtime":J
    const/4 v4, 0x3

    aget-wide v13, v8, v4

    .line 301
    .local v13, "idletime":J
    const/4 v5, 0x4

    aget-wide v9, v8, v5

    .line 302
    .local v9, "iowaittime":J
    const/16 v16, 0x5

    aget-wide v4, v8, v16

    .line 303
    .local v4, "irqtime":J
    const/16 v19, 0x6

    aget-wide v11, v8, v19

    .line 304
    .local v11, "softirqtime":J
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .end local v8    # "sysCpu":[J
    .local v21, "sysCpu":[J
    iget-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    sub-long v7, v0, v7

    long-to-int v7, v7

    iput v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    .line 305
    iget-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    sub-long v7, v2, v7

    long-to-int v7, v7

    iput v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    .line 306
    iget-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    sub-long v7, v9, v7

    long-to-int v7, v7

    iput v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIoWaitTime:I

    .line 307
    iget-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    sub-long v7, v4, v7

    long-to-int v7, v7

    iput v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    .line 308
    iget-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    sub-long v7, v11, v7

    long-to-int v7, v7

    iput v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSoftIrqTime:I

    .line 309
    iget-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    sub-long v7, v13, v7

    long-to-int v7, v7

    iput v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Total U:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v22, v13

    const/4 v8, 0x0

    .end local v13    # "idletime":J
    .local v22, "idletime":J
    aget-wide v13, v21, v8

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " N:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    aget-wide v13, v21, v8

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " S:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    aget-wide v14, v21, v13

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, " I:"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x3

    aget-wide v14, v21, v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " W:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x4

    aget-wide v14, v21, v14

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, " Q:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v17, v11

    .end local v11    # "softirqtime":J
    .local v17, "softirqtime":J
    aget-wide v11, v21, v16

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " O:"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v11, v21, v19

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v11, "Load"

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Rel U:"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelUserTime:I

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelSystemTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIdleTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lcom/android/server/enterprise/application/ProcessStats;->mRelIrqTime:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iput-wide v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseUserTime:J

    .line 321
    iput-wide v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSystemTime:J

    .line 322
    iput-wide v9, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIoWaitTime:J

    .line 323
    iput-wide v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIrqTime:J

    .line 324
    move-wide/from16 v7, v17

    .end local v17    # "softirqtime":J
    .local v7, "softirqtime":J
    iput-wide v7, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseSoftIrqTime:J

    .line 325
    move-wide/from16 v11, v22

    .end local v22    # "idletime":J
    .local v11, "idletime":J
    iput-wide v11, v6, Lcom/android/server/enterprise/application/ProcessStats;->mBaseIdleTime:J

    goto :goto_11f

    .line 292
    .end local v0    # "usertime":J
    .end local v2    # "systemtime":J
    .end local v4    # "irqtime":J
    .end local v7    # "softirqtime":J
    .end local v9    # "iowaittime":J
    .end local v11    # "idletime":J
    .end local v21    # "sysCpu":[J
    .restart local v8    # "sysCpu":[J
    :cond_11b
    move-object/from16 v20, v7

    move-object/from16 v21, v8

    .line 328
    .end local v8    # "sysCpu":[J
    .restart local v21    # "sysCpu":[J
    :goto_11f
    const/4 v2, -0x1

    iget-boolean v3, v6, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    iget-object v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    iget-object v5, v6, Lcom/android/server/enterprise/application/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    const-string v1, "/proc"

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/application/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v0

    iput-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurPids:[I

    .line 329
    iget-object v0, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoadAverageData:[F

    .line 331
    .local v0, "loadAverages":[F
    sget-object v1, Lcom/android/server/enterprise/application/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const-string v2, "/proc/loadavg"

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3, v0}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v1

    if-eqz v1, :cond_161

    .line 333
    const/4 v1, 0x0

    aget v2, v0, v1

    .line 334
    .local v2, "load1":F
    const/4 v1, 0x1

    aget v1, v0, v1

    .line 335
    .local v1, "load5":F
    const/4 v3, 0x2

    aget v3, v0, v3

    .line 337
    .local v3, "load15":F
    iget v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    cmpl-float v4, v2, v4

    if-nez v4, :cond_158

    iget v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    cmpl-float v4, v1, v4

    if-nez v4, :cond_158

    iget v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_161

    .line 338
    :cond_158
    iput v2, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad1:F

    .line 339
    iput v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad5:F

    .line 340
    iput v3, v6, Lcom/android/server/enterprise/application/ProcessStats;->mLoad15:F

    .line 341
    invoke-virtual {v6, v2, v1, v3}, Lcom/android/server/enterprise/application/ProcessStats;->onLoadChanged(FFF)V

    .line 345
    .end local v1    # "load5":F
    .end local v2    # "load1":F
    .end local v3    # "load15":F
    :cond_161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** TIME TO COLLECT STATS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v6, Lcom/android/server/enterprise/application/ProcessStats;->mCurrentSampleTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 345
    move-object/from16 v2, v20

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    const/4 v1, 0x0

    iput-boolean v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mWorkingProcsSorted:Z

    .line 349
    iput-boolean v1, v6, Lcom/android/server/enterprise/application/ProcessStats;->mFirst:Z

    .line 350
    return-void
.end method
