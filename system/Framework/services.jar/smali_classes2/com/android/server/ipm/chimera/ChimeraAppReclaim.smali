.class public Lcom/android/server/ipm/chimera/ChimeraAppReclaim;
.super Ljava/lang/Object;
.source "ChimeraAppReclaim.java"


# static fields
.field public static final MIN_TARGET_PSS:J = 0x2800L

.field private static final PKG_CACHE_GC_MAP_MAX_SIZE:I = 0x32

.field private static final PKG_CACHE_RECLAIMABLE_MAP_MAX_SIZE:I = 0x32

.field public static final RECLAIM_TARGET:J = 0x7800L


# instance fields
.field private TAG:Ljava/lang/String;

.field public mActionGcCnt:I

.field public mActionReclaimCnt:I

.field protected mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

.field private mPkgCacheReclaimable:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgGcList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mSkipReclaimCnt:I

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/ChimeraAppManager;)V
    .registers 4
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;
    .param p2, "appManager"    # Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "ChimeraAppReclaim"

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    .line 23
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    .line 24
    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    .line 30
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 31
    iput-object p2, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 32
    return-void
.end method

.method private performCompaction(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/reclaim"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_32

    .line 36
    .local v0, "fos":Ljava/io/FileOutputStream;
    :try_start_1b
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_22
    .catchall {:try_start_1b .. :try_end_22} :catchall_28

    .line 37
    :try_start_22
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_32

    .line 40
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    nop

    .line 41
    const/4 v0, 0x1

    return v0

    .line 35
    .restart local v0    # "fos":Ljava/io/FileOutputStream;
    :catchall_28
    move-exception v1

    :try_start_29
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2d

    goto :goto_31

    :catchall_2d
    move-exception v2

    :try_start_2e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/ipm/chimera/ChimeraAppReclaim;
    .end local p1    # "action":Ljava/lang/String;
    .end local p2    # "pid":I
    :goto_31
    throw v1
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_32} :catch_32

    .line 37
    .end local v0    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/server/ipm/chimera/ChimeraAppReclaim;
    .restart local p1    # "action":Ljava/lang/String;
    .restart local p2    # "pid":I
    :catch_32
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception performCompaction, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public performGc(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 111
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "performGc"

    invoke-interface {v0, v1, v2}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "gcCount":I
    :try_start_b
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_aa

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 115
    .local v2, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    iget-object v4, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 116
    goto :goto_f

    .line 119
    :cond_26
    iget-object v3, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 120
    .local v4, "pInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v5, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v6, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v5, v6}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v5

    .line 122
    .local v5, "pss":J
    const-wide/16 v7, 0x2800

    cmp-long v7, v5, v7

    if-gez v7, :cond_60

    .line 123
    iget-object v7, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v8, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performGc skiped pss "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    goto :goto_2c

    .line 126
    :cond_60
    iget-object v7, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v8, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "performGc before "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v7, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v8, v4, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-interface {v7, v8}, Lcom/android/server/ipm/chimera/SystemRepository;->forceGc(I)V

    .line 128
    .end local v4    # "pInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    .end local v5    # "pss":J
    goto :goto_2c

    .line 129
    :cond_95
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    iget-object v4, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 131
    iget v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionGcCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionGcCnt:I
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_a2} :catch_ab

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 133
    const/4 v3, 0x2

    if-lt v0, v3, :cond_a8

    .line 134
    goto :goto_aa

    .line 136
    .end local v2    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    :cond_a8
    goto/16 :goto_f

    .line 139
    .end local v0    # "gcCount":I
    :cond_aa
    :goto_aa
    goto :goto_c4

    .line 137
    :catch_ab
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception performGc, e: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_c4
    return-void
.end method

.method public performReclaimCache(Ljava/util/List;)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;)V"
        }
    .end annotation

    .line 45
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v2, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    const-string v3, "Start performReclaimCache"

    invoke-interface {v0, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :try_start_b
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getTotalMemFree()J

    move-result-wide v2

    .line 48
    .local v2, "memFreeBefore":J
    const/4 v0, 0x0

    .line 49
    .local v0, "reclaimCount":I
    const-wide/16 v4, 0x0

    .line 51
    .local v4, "reclaimMem":J
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 52
    .local v7, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-object v8, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    iget-object v9, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2d

    .line 53
    goto :goto_16

    .line 56
    :cond_2d
    const-wide/16 v8, 0x0

    .line 57
    .local v8, "pss":J
    const-wide/16 v10, 0x0

    .line 58
    .local v10, "pssAfter":J
    iget-object v12, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_37
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 59
    .local v13, "pInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v14, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v15, v13, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v14, v15}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v14

    move-wide v8, v14

    .line 61
    const-wide/16 v14, 0x2800

    cmp-long v14, v8, v14

    if-gez v14, :cond_70

    .line 62
    iget-object v14, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v15, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    move-object/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v17, v10

    .end local v10    # "pssAfter":J
    .local v17, "pssAfter":J
    const-string/jumbo v10, "performReclaimCache skiped pss "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v14, v15, v6}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    goto :goto_7f

    .line 65
    .end local v17    # "pssAfter":J
    .restart local v10    # "pssAfter":J
    :cond_70
    move-object/from16 v16, v6

    move-wide/from16 v17, v10

    .end local v10    # "pssAfter":J
    .restart local v17    # "pssAfter":J
    const-string v6, "file"

    iget v10, v13, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-direct {v1, v6, v10}, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->performCompaction(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_84

    .line 66
    nop

    .line 58
    .end local v13    # "pInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :goto_7f
    move-object/from16 v6, v16

    move-wide/from16 v10, v17

    goto :goto_37

    .line 68
    .restart local v13    # "pInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_84
    add-int/lit8 v0, v0, 0x1

    .line 69
    iget v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mActionReclaimCnt:I

    .line 70
    iget-object v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v10, v13, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v6, v10}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v10

    .line 71
    .end local v17    # "pssAfter":J
    .restart local v10    # "pssAfter":J
    iget-object v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v14, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v19, v0

    .end local v0    # "reclaimCount":I
    .local v19, "reclaimCount":I
    const-string/jumbo v0, "performReclaimCache "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v13, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pss before "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " pss after "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v14, v0}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    cmp-long v0, v8, v10

    if-ltz v0, :cond_d2

    .line 73
    sub-long v14, v8, v10

    add-long/2addr v4, v14

    .line 75
    :cond_d2
    const-wide/16 v14, 0x7800

    cmp-long v0, v4, v14

    if-ltz v0, :cond_db

    .line 76
    move/from16 v0, v19

    goto :goto_e5

    .line 78
    .end local v13    # "pInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_db
    move-object/from16 v6, v16

    move/from16 v0, v19

    goto/16 :goto_37

    .line 58
    .end local v19    # "reclaimCount":I
    .restart local v0    # "reclaimCount":I
    :cond_e1
    move-object/from16 v16, v6

    move-wide/from16 v17, v10

    .line 79
    :goto_e5
    iget-object v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    iget-object v12, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v12}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 81
    const-wide/16 v12, 0x7800

    cmp-long v6, v4, v12

    if-ltz v6, :cond_f3

    .line 82
    goto :goto_f7

    .line 84
    .end local v7    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v8    # "pss":J
    .end local v10    # "pssAfter":J
    :cond_f3
    move-object/from16 v6, v16

    goto/16 :goto_16

    .line 85
    :cond_f7
    :goto_f7
    if-nez v0, :cond_100

    .line 86
    iget v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSkipReclaimCnt:I

    goto :goto_12f

    .line 88
    :cond_100
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getTotalMemFree()J

    move-result-wide v6

    .line 89
    .local v6, "memFreeAfter":J
    iget-object v8, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v9, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "memFreeBefore: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " memFreeAfter: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, " memFree delta: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v11, v6, v2

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_12f} :catch_130

    .line 93
    .end local v0    # "reclaimCount":I
    .end local v2    # "memFreeBefore":J
    .end local v4    # "reclaimMem":J
    .end local v6    # "memFreeAfter":J
    :goto_12f
    goto :goto_149

    .line 91
    :catch_130
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v3, v1, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception performReclaimCache, e: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/server/ipm/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_149
    return-void
.end method

.method public updateGcPackage(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_10

    .line 105
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 107
    :cond_10
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgGcList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public updatePackageCacheReclaimable(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 97
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_10

    .line 98
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 100
    :cond_10
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppReclaim;->mPkgCacheReclaimable:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method
