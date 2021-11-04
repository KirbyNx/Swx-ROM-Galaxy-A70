.class Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;
.super Ljava/lang/Object;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProcessMemoryUsageInfo"
.end annotation


# instance fields
.field final PROCS_STATS_COUNT:I

.field final PROCS_STATS_PSS:I

.field final PROCS_STATS_SWAP_PSS:I

.field private mProcDumpMemThread:Ljava/lang/Thread;

.field procMemDumpInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/app/MemDumpInfo;",
            ">;"
        }
    .end annotation
.end field

.field procsMemoryPssKbByADJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/am/KillPolicyManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/KillPolicyManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/KillPolicyManager;

    .line 1834
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_PSS:I

    .line 1837
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_SWAP_PSS:I

    .line 1838
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->PROCS_STATS_COUNT:I

    .line 1840
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 1841
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 1834
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->clearAdjPss()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 1834
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->getProcDumpMemInfo()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 1834
    invoke-direct {p0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->showDebugAdjPss()V

    return-void
.end method

.method private clearAdjPss()V
    .registers 2

    .line 1918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 1919
    return-void
.end method

.method private getAdjPss()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[J>;"
        }
    .end annotation

    .line 1914
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    return-object v0
.end method

.method private getProcDumpMemInfo()V
    .registers 16

    .line 1869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1870
    .local v0, "before":J
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    # getter for: Lcom/android/server/am/KillPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;
    invoke-static {v2}, Lcom/android/server/am/KillPolicyManager;->access$4000(Lcom/android/server/am/KillPolicyManager;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getDumpMemoryInfo()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    .line 1871
    const-string v3, "ActivityManager_KPM"

    if-eqz v2, :cond_b1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b1

    .line 1872
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procMemDumpInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/MemDumpInfo;

    .line 1873
    .local v4, "proc":Lcom/android/internal/app/MemDumpInfo;
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iget-object v6, v4, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-wide/16 v6, 0x1

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_50

    .line 1874
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iget-object v11, v4, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    const/4 v12, 0x3

    new-array v12, v12, [J

    iget-wide v13, v4, Lcom/android/internal/app/MemDumpInfo;->pss:J

    aput-wide v13, v12, v10

    iget-wide v13, v4, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    aput-wide v13, v12, v9

    aput-wide v6, v12, v8

    invoke-virtual {v5, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    .line 1878
    :cond_50
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    iget-object v11, v4, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 1879
    .local v5, "stats":[J
    aget-wide v11, v5, v10

    iget-wide v13, v4, Lcom/android/internal/app/MemDumpInfo;->pss:J

    add-long/2addr v11, v13

    aput-wide v11, v5, v10

    .line 1880
    aget-wide v10, v5, v9

    iget-wide v12, v4, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    add-long/2addr v10, v12

    aput-wide v10, v5, v9

    .line 1881
    aget-wide v9, v5, v8

    add-long/2addr v9, v6

    aput-wide v9, v5, v8

    .line 1883
    .end local v5    # "stats":[J
    :goto_6d
    sget-boolean v5, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v5, :cond_af

    .line 1884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getProcDumpMemInfo() proc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/app/MemDumpInfo;->procName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", adj: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lcom/android/internal/app/MemDumpInfo;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", pss: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/app/MemDumpInfo;->pss:J

    const-wide/16 v8, 0x400

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mb, swap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/internal/app/MemDumpInfo;->swap_out:J

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " mb"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    .end local v4    # "proc":Lcom/android/internal/app/MemDumpInfo;
    :cond_af
    goto/16 :goto_20

    .line 1890
    :cond_b1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 1891
    .local v4, "elapsedTime":J
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz v2, :cond_d4

    .line 1892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getProcDumpMemInfo() elapsed time "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1894
    :cond_d4
    return-void
.end method

.method private showDebugAdjPss()V
    .registers 19

    .line 1897
    move-object/from16 v0, p0

    sget-object v1, Lcom/android/server/am/ActivityManagerService;->DUMP_MEM_OOM_COMPACT_LABEL:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_7
    if-ge v4, v2, :cond_8d

    aget-object v5, v1, v4

    .line 1898
    .local v5, "label":Ljava/lang/String;
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "[ADJ Label] : "

    const-string v8, "ActivityManager_KPM"

    if-eqz v6, :cond_70

    .line 1899
    iget-object v6, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [J

    .line 1900
    .local v6, "stats":[J
    aget-wide v9, v6, v3

    const/4 v11, 0x1

    aget-wide v12, v6, v11

    add-long/2addr v9, v12

    .line 1901
    .local v9, "usedMem":J
    const-wide/16 v12, 0x0

    cmp-long v12, v9, v12

    if-gez v12, :cond_2d

    .line 1902
    const-wide/16 v9, 0x0

    .line 1904
    :cond_2d
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - total: "

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x400

    move v15, v4

    div-long v3, v9, v13

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mb, pss: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    aget-wide v16, v6, v3

    div-long v3, v16, v13

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mb, swap: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v3, v6, v11

    div-long/2addr v3, v13

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " mb, count: "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-wide v3, v6, v3

    invoke-virtual {v12, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    .end local v6    # "stats":[J
    .end local v9    # "usedMem":J
    goto :goto_88

    .line 1908
    :cond_70
    move v15, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - this ADJ not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    .end local v5    # "label":Ljava/lang/String;
    :goto_88
    add-int/lit8 v4, v15, 0x1

    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1911
    :cond_8d
    return-void
.end method


# virtual methods
.method getProcDumpMemInfoThread(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .registers 4
    .param p1, "lastCycle"    # Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 1846
    new-instance v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;

    const-string v1, "KPMProcessMemoryDumpThread"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;-><init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Ljava/lang/String;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcDumpMemThread:Ljava/lang/Thread;

    .line 1865
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1866
    return-void
.end method
