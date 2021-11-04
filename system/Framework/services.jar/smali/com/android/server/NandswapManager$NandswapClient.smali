.class Lcom/android/server/NandswapManager$NandswapClient;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NandswapClient"
.end annotation


# static fields
.field static final STATE_DISABLED:I = 0x0

.field static final STATE_ENABLED:I = 0x1

.field static final STATE_UNKNOWN:I = -0x1


# instance fields
.field bdStatMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field bigdataPersistPropMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field dailyQuota:I

.field dailyQuotaLimit:I

.field name:Ljava/lang/String;

.field normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

.field state:I

.field supportBigdataState:Z

.field weight:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->weight:I

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 329
    new-instance v0, Lcom/android/server/NandswapManager$ProcessingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>(Lcom/android/server/NandswapManager$1;)V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 330
    new-instance v0, Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-direct {v0, v1}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>(Lcom/android/server/NandswapManager$1;)V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 332
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 319
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->weight:I

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    .line 326
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    .line 327
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    .line 329
    new-instance v0, Lcom/android/server/NandswapManager$ProcessingManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>(Lcom/android/server/NandswapManager$1;)V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 330
    new-instance v0, Lcom/android/server/NandswapManager$ProcessingManager;

    invoke-direct {v0, v1}, Lcom/android/server/NandswapManager$ProcessingManager;-><init>(Lcom/android/server/NandswapManager$1;)V

    iput-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    .line 335
    iput-object p1, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    .line 336
    return-void
.end method

.method private isWritebackEnabled()Z
    .registers 8

    .line 346
    const-string v0, "NandswapManager"

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Ljava/io/File;

    const-string v3, "/sys/block/%s/backing_dev"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    aput-object v6, v5, v1

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 347
    .local v2, "backDevFile":Ljava/io/File;
    const/16 v3, 0x80

    const-string v5, ""

    invoke-static {v2, v3, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "backingDev":Ljava/lang/String;
    const-string/jumbo v5, "none"

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_31

    goto :goto_38

    .line 352
    :cond_31
    const-string v4, "Writeback device is not set"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_36} :catch_39

    .line 356
    nop

    .end local v2    # "backDevFile":Ljava/io/File;
    .end local v3    # "backingDev":Ljava/lang/String;
    goto :goto_50

    .line 350
    .restart local v2    # "backDevFile":Ljava/io/File;
    .restart local v3    # "backingDev":Ljava/lang/String;
    :cond_38
    :goto_38
    return v4

    .line 354
    .end local v2    # "backDevFile":Ljava/io/File;
    .end local v3    # "backingDev":Ljava/lang/String;
    :catch_39
    move-exception v2

    .line 355
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Writeback is not enabled on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .end local v2    # "e":Ljava/io/IOException;
    :goto_50
    return v1
.end method


# virtual methods
.method public clearAverageList()V
    .registers 2

    .line 579
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_e

    .line 580
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->clearAllList()V
    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1400(Lcom/android/server/NandswapManager$ProcessingManager;)V

    .line 581
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->clearAllList()V
    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1400(Lcom/android/server/NandswapManager$ProcessingManager;)V

    .line 583
    :cond_e
    return-void
.end method

.method public getBdStat()Ljava/util/HashMap;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 415
    move-object/from16 v1, p0

    const-string v2, "expire"

    const-string v3, "count"

    const-string/jumbo v4, "reads"

    const-string/jumbo v5, "writes"

    const-string/jumbo v6, "objcnt"

    const-string/jumbo v7, "size"

    const-string/jumbo v8, "max_count"

    const-string/jumbo v9, "max_size"

    const-string/jumbo v10, "ppr_count"

    const-string/jumbo v11, "ppr_reads"

    const-string/jumbo v12, "ppr_writes"

    const-string/jumbo v13, "ppr_objcnt"

    const-string/jumbo v14, "ppr_size"

    const-string/jumbo v15, "ppr_max_count"

    const-string/jumbo v16, "ppr_max_size"

    const-string/jumbo v17, "objreads"

    const-string/jumbo v18, "objwrites"

    filled-new-array/range {v2 .. v18}, [Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    .line 423
    .local v2, "bdStatFormat":[Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, v1, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const-string v3, "/sys/block/%s/bd_stat"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "bdStat":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 427
    :try_start_4b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    const-string v5, ""

    invoke-static {v0, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "\\s+"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "readInfo":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_63
    array-length v5, v0

    if-ge v4, v5, :cond_7a

    .line 430
    iget-object v5, v1, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    aget-object v6, v2, v4

    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_77} :catch_7b

    .line 429
    add-int/lit8 v4, v4, 0x1

    goto :goto_63

    .line 434
    .end local v0    # "readInfo":[Ljava/lang/String;
    .end local v4    # "i":I
    :cond_7a
    goto :goto_92

    .line 432
    :catch_7b
    move-exception v0

    .line 433
    .local v0, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read stats from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NandswapManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    .end local v0    # "e":Ljava/io/IOException;
    :goto_92
    iget-object v0, v1, Lcom/android/server/NandswapManager$NandswapClient;->bdStatMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getBigdataInfoProp()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 505
    const-string/jumbo v0, "reads"

    const-string/jumbo v1, "writes"

    const-string/jumbo v2, "max_count"

    const-string/jumbo v3, "max_size"

    const-string/jumbo v4, "ppr_reads"

    const-string/jumbo v5, "ppr_writes"

    const-string/jumbo v6, "ppr_max_count"

    const-string/jumbo v7, "ppr_max_size"

    const-string/jumbo v8, "objreads"

    const-string/jumbo v9, "objwrites"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "persistFormat":[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 512
    iget-boolean v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v1, :cond_64

    .line 513
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string/jumbo v2, "persist.sys.%s.bigdata_info"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "bigdataInfoPath":Ljava/lang/String;
    const-string v2, "None"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 515
    .local v3, "readProp":Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 516
    const-string v2, ","

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "bigdataInfo":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4d
    array-length v5, v0

    if-ge v4, v5, :cond_64

    .line 519
    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    aget-object v6, v0, v4

    aget-object v7, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    add-int/lit8 v4, v4, 0x1

    goto :goto_4d

    .line 523
    .end local v1    # "bigdataInfoPath":Ljava/lang/String;
    .end local v2    # "bigdataInfo":[Ljava/lang/String;
    .end local v3    # "readProp":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_64
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->bigdataPersistPropMap:Ljava/util/HashMap;

    return-object v1
.end method

.method public getCountAverage()D
    .registers 3

    .line 469
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 470
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->calcCountAverage()D
    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->access$700(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    .line 472
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPprCountAverage()D
    .registers 3

    .line 481
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 482
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->calcCountAverage()D
    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->access$700(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    .line 484
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPprSizeAverage()D
    .registers 3

    .line 487
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 488
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->calcSizeAverage()D
    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->access$800(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    .line 490
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQuotaRemainingProp(I)I
    .registers 3
    .param p1, "defaultVal"    # I

    .line 399
    const-string/jumbo v0, "persist.sys.zram.daily_quota_remain"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuotaSysNode()I
    .registers 7

    .line 403
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/sys/block/%s/writeback_limit"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "wbLimitPath":Ljava/lang/String;
    :try_start_e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x80

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 406
    .local v2, "quota":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_23} :catch_24

    return v0

    .line 407
    .end local v2    # "quota":Ljava/lang/String;
    :catch_24
    move-exception v2

    .line 408
    .local v2, "e":Ljava/io/IOException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object v1, v4, v0

    const-string v0, "%s: Failed to read quota from %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "NandswapManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    .end local v2    # "e":Ljava/io/IOException;
    return v3
.end method

.method public getSizeAverage()D
    .registers 3

    .line 475
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_b

    .line 476
    iget-object v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->calcSizeAverage()D
    invoke-static {v0}, Lcom/android/server/NandswapManager$ProcessingManager;->access$800(Lcom/android/server/NandswapManager$ProcessingManager;)D

    move-result-wide v0

    return-wide v0

    .line 478
    :cond_b
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public init()V
    .registers 1

    .line 339
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initNandswapState()V

    .line 340
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataState()V

    .line 341
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 342
    return-void
.end method

.method public initBigdataInfoProp()V
    .registers 5

    .line 527
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_18

    .line 528
    const-string v0, "0,0,0,0,0,0,0,0,0,0"

    .line 529
    .local v0, "clearStr":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string/jumbo v2, "persist.sys.%s.bigdata_info"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "bigdataInfoPath":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    .end local v0    # "clearStr":Ljava/lang/String;
    .end local v1    # "bigdataInfoPath":Ljava/lang/String;
    :cond_18
    return-void
.end method

.method public initBigdataState()V
    .registers 7

    .line 377
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/sys/block/%s/bd_stat"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, "bdStat":Ljava/lang/String;
    :try_start_e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x1000

    const-string v5, ""

    invoke-static {v2, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "\\s+"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "readInfo":[Ljava/lang/String;
    array-length v4, v2

    const/16 v5, 0xa

    if-lt v4, v5, :cond_2d

    .line 385
    iput-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    goto :goto_2f

    .line 387
    :cond_2d
    iput-boolean v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2f} :catch_30

    .line 391
    .end local v2    # "readInfo":[Ljava/lang/String;
    :goto_2f
    goto :goto_47

    .line 389
    :catch_30
    move-exception v0

    .line 390
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read stats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NandswapManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v0    # "e":Ljava/io/IOException;
    :goto_47
    return-void
.end method

.method public initNandswapState()V
    .registers 2

    .line 361
    invoke-direct {p0}, Lcom/android/server/NandswapManager$NandswapClient;->isWritebackEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 362
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    goto :goto_d

    .line 364
    :cond_a
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    .line 366
    :goto_d
    return-void
.end method

.method public isExistBigdataInfoProp()Z
    .registers 6

    .line 494
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    .line 495
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    aput-object v3, v2, v1

    const-string/jumbo v3, "persist.sys.%s.bigdata_info"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 496
    .local v2, "bigdataInfoPath":Ljava/lang/String;
    const-string v3, "None"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 497
    .local v4, "readProp":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 498
    return v0

    .line 501
    .end local v2    # "bigdataInfoPath":Ljava/lang/String;
    .end local v4    # "readProp":Ljava/lang/String;
    :cond_20
    return v1
.end method

.method public isNandswapEnabled()Z
    .registers 3

    .line 369
    iget v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 370
    return v1

    .line 372
    :cond_6
    const/4 v0, 0x0

    return v0
.end method

.method public isSupportBigdata()Z
    .registers 2

    .line 395
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    return v0
.end method

.method public resetBdStatSysNode()V
    .registers 5

    .line 439
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "/sys/block/%s/bd_stat"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "bdStat":Ljava/lang/String;
    :try_start_e
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 444
    goto :goto_32

    .line 442
    :catch_1b
    move-exception v1

    .line 443
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to reset stats from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NandswapManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    .end local v1    # "e":Ljava/io/IOException;
    :goto_32
    return-void
.end method

.method public saveStorageUsage()V
    .registers 4

    .line 457
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_56

    .line 458
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    .line 460
    .local v0, "bdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string v2, "count"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->setCount(I)V
    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->access$500(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 461
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->setSize(I)V
    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->access$600(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 462
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "ppr_count"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->setCount(I)V
    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->access$500(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 463
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "ppr_size"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->setSize(I)V
    invoke-static {v1, v2}, Lcom/android/server/NandswapManager$ProcessingManager;->access$600(Lcom/android/server/NandswapManager$ProcessingManager;I)V

    .line 464
    const-string v1, "NandswapManager"

    const-string v2, "Saved storage usage successfully!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v0    # "bdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_56
    return-void
.end method

.method public setBigdataInfoProp()V
    .registers 13

    .line 542
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_25f

    .line 543
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "persist.sys.%s.bigdata_info"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 544
    .local v1, "bigdataInfoPath":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    move-result-object v2

    .line 545
    .local v2, "persistInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v4

    .line 547
    .local v4, "bdStatInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v5, ""

    .line 549
    .local v5, "propStr":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v8, "reads"

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v4, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v10, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousReads()I
    invoke-static {v10}, Lcom/android/server/NandswapManager$ProcessingManager;->access$900(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v10

    sub-int/2addr v8, v10

    add-int/2addr v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "%d,"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 550
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "writes"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousWrites()I
    invoke-static {v11}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1000(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 552
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "max_count"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 553
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "max_size"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 555
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "ppr_reads"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousReads()I
    invoke-static {v11}, Lcom/android/server/NandswapManager$ProcessingManager;->access$900(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 556
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "ppr_writes"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousWrites()I
    invoke-static {v11}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1000(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 558
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "ppr_max_count"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 559
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "ppr_max_size"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v0, [Ljava/lang/Object;

    const-string/jumbo v9, "objreads"

    invoke-virtual {v2, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    iget-object v11, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjReads()I
    invoke-static {v11}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1100(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v11

    sub-int/2addr v9, v11

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v3

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 562
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v0, [Ljava/lang/Object;

    const-string/jumbo v7, "objwrites"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->getPreviousObjWrites()I
    invoke-static {v9}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1200(Lcom/android/server/NandswapManager$ProcessingManager;)I

    move-result v9

    sub-int/2addr v7, v9

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 564
    .end local v5    # "propStr":Ljava/lang/String;
    .local v0, "propStr":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const-string v3, "NandswapManager"

    const-string v5, "Saved Bigdata Info successfully!!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    .end local v0    # "propStr":Ljava/lang/String;
    .end local v1    # "bigdataInfoPath":Ljava/lang/String;
    .end local v2    # "persistInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "bdStatInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_25f
    return-void
.end method

.method public setPreviousInfo()V
    .registers 9

    .line 570
    iget-boolean v0, p0, Lcom/android/server/NandswapManager$NandswapClient;->supportBigdataState:Z

    if-eqz v0, :cond_74

    .line 571
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v0

    .line 573
    .local v0, "bdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->normalStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "reads"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "writes"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "objreads"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const-string/jumbo v6, "objwrites"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->setPreviousValue(IIII)V
    invoke-static {v1, v2, v3, v5, v7}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1300(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V

    .line 574
    iget-object v1, p0, Lcom/android/server/NandswapManager$NandswapClient;->pprStat:Lcom/android/server/NandswapManager$ProcessingManager;

    const-string/jumbo v2, "ppr_reads"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string/jumbo v3, "ppr_writes"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    # invokes: Lcom/android/server/NandswapManager$ProcessingManager;->setPreviousValue(IIII)V
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/NandswapManager$ProcessingManager;->access$1300(Lcom/android/server/NandswapManager$ProcessingManager;IIII)V

    .line 576
    .end local v0    # "bdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_74
    return-void
.end method

.method public setQuotaSysNode(I)V
    .registers 8
    .param p1, "newQuota"    # I

    .line 448
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/sys/block/%s/writeback_limit"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 450
    .local v1, "wbLimitPath":Ljava/lang/String;
    :try_start_e
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1a} :catch_1b

    .line 453
    goto :goto_30

    .line 451
    :catch_1b
    move-exception v2

    .line 452
    .local v2, "e":Ljava/io/IOException;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/server/NandswapManager$NandswapClient;->name:Ljava/lang/String;

    aput-object v5, v4, v3

    aput-object v1, v4, v0

    const-string v0, "%s: Failed to write new quota to %s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "NandswapManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v2    # "e":Ljava/io/IOException;
    :goto_30
    return-void
.end method
