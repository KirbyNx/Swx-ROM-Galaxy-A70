.class final Lcom/android/server/am/CachedAppOptimizer$ZramStats;
.super Ljava/lang/Object;
.source "CachedAppOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CachedAppOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ZramStats"
.end annotation


# static fields
.field private static final BDSTAT_COUNT:I = 0x1

.field private static final BDSTAT_EXPIRE:I = 0x0

.field private static final BDSTAT_MAX_LEN:I = 0x8

.field private static final BDSTAT_OBJCNT:I = 0x4

.field private static final BDSTAT_OBJCNT_PPR:I = 0x7

.field private static final BDSTAT_READS:I = 0x2

.field private static final BDSTAT_READS_PPR:I = 0x5

.field private static final BDSTAT_WRITES:I = 0x3

.field private static final BDSTAT_WRITES_PPR:I = 0x6

.field private static final ZRAM_BALANCE_RATIO_PATH:Ljava/lang/String; = "/sys/module/zram/parameters/zram_balance_ratio"

.field private static final ZRAM_BDSTAT_PATH:Ljava/lang/String; = "/sys/block/zram0/bd_stat"

.field private static final ZRAM_WRITEBACK_LIMIT_ENABLE_PATH:Ljava/lang/String; = "/sys/block/zram0/writeback_limit_enable"

.field private static final ZRAM_WRITEBACK_LIMIT_PATH:Ljava/lang/String; = "/sys/block/zram0/writeback_limit"

.field private static mWritebackEnabled:I

.field private static mWritebackLimitEnabled:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1336
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackEnabled:I

    .line 1337
    sput v0, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackLimitEnabled:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 1335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100()Z
    .registers 1

    .line 1335
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->isWritebackEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300()Z
    .registers 1

    .line 1335
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->isNandswapQuotaAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900()J
    .registers 2

    .line 1335
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramWritebackLimit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$3000()[J
    .registers 1

    .line 1335
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramBdstat()[J

    move-result-object v0

    return-object v0
.end method

.method private static isNandswapQuotaAvailable()Z
    .registers 5

    .line 1430
    const/4 v0, 0x1

    .line 1431
    .local v0, "available":Z
    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->isWritebackLimitEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-static {}, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->readZramWritebackLimit()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_12

    .line 1432
    const/4 v0, 0x0

    .line 1435
    :cond_12
    return v0
.end method

.method private static isWritebackEnabled()Z
    .registers 6

    .line 1393
    const-string v0, "ActivityManager"

    sget v1, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackEnabled:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_50

    .line 1394
    :try_start_9
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/block/zram0/writeback_limit_enable"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_46

    .line 1395
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_15
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackLimitEnabled:I

    .line 1396
    sput v3, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackEnabled:I

    .line 1397
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeback_limit_enable : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackLimitEnabled:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_15 .. :try_end_38} :catchall_3c

    .line 1398
    :try_start_38
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_3b} :catch_46

    .line 1402
    .end local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_50

    .line 1394
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_3c
    move-exception v4

    :try_start_3d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception v5

    :try_start_42
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_45
    throw v4
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_46

    .line 1398
    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_46
    move-exception v1

    .line 1399
    .local v1, "e":Ljava/lang/Exception;
    sput v2, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackEnabled:I

    .line 1400
    sput v2, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackLimitEnabled:I

    .line 1401
    const-string v4, "failed to read /sys/block/zram0/writeback_limit_enable"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_50
    :goto_50
    sget v0, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackEnabled:I

    if-ne v0, v3, :cond_55

    move v2, v3

    :cond_55
    return v2
.end method

.method private static isWritebackLimitEnabled()Z
    .registers 2

    .line 1409
    sget v0, Lcom/android/server/am/CachedAppOptimizer$ZramStats;->mWritebackLimitEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method

.method private static readZramBdstat()[J
    .registers 9

    .line 1355
    const-string v0, "ActivityManager"

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/sys/block/zram0/bd_stat"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_61

    .line 1356
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1357
    .local v2, "line":Ljava/lang/String;
    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;->INSTANCE:Lcom/android/server/am/-$$Lambda$WpKTPy3gWJOee3S1fj8MYLDPbdY;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v3

    .line 1364
    .local v3, "bdstat":[J
    array-length v4, v3

    const/16 v5, 0xa

    if-le v4, v5, :cond_4c

    .line 1365
    const/16 v4, 0x8

    new-array v5, v4, [J

    .line 1366
    .local v5, "ret":[J
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_34
    if-ge v6, v4, :cond_47

    .line 1367
    const/4 v7, 0x5

    if-ge v6, v7, :cond_3e

    .line 1368
    aget-wide v7, v3, v6

    aput-wide v7, v5, v6

    goto :goto_44

    .line 1370
    :cond_3e
    add-int/lit8 v7, v6, 0x4

    aget-wide v7, v3, v7

    aput-wide v7, v5, v6
    :try_end_44
    .catchall {:try_start_e .. :try_end_44} :catchall_57

    .line 1366
    :goto_44
    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    .line 1373
    .end local v6    # "i":I
    :cond_47
    nop

    .line 1378
    :try_start_48
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_4b} :catch_61

    .line 1373
    return-object v5

    .line 1376
    .end local v5    # "ret":[J
    :cond_4c
    if-eqz v3, :cond_53

    :try_start_4e
    array-length v4, v3
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_57

    const/4 v5, 0x7

    if-gt v4, v5, :cond_53

    .line 1377
    const/4 v3, 0x0

    .line 1378
    .end local v2    # "line":Ljava/lang/String;
    :cond_53
    :try_start_53
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_61

    .line 1383
    .end local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_6c

    .line 1355
    .end local v3    # "bdstat":[J
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_57
    move-exception v2

    :try_start_58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5c

    goto :goto_60

    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_60
    throw v2
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_61} :catch_61

    .line 1378
    .end local v1    # "br":Ljava/io/BufferedReader;
    :catch_61
    move-exception v1

    .line 1379
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 1380
    .restart local v3    # "bdstat":[J
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v2, :cond_6c

    .line 1381
    const-string v2, "failed to read /sys/block/zram0/bd_stat"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6c
    :goto_6c
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v1, :cond_88

    .line 1386
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bdstats : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    :cond_88
    return-object v3
.end method

.method private static readZramWritebackLimit()J
    .registers 6

    .line 1413
    const-string v0, "ActivityManager"

    const-wide/16 v1, 0x0

    .line 1414
    .local v1, "writebackLimit":J
    :try_start_4
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    const-string v5, "/sys/block/zram0/writeback_limit"

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_27

    .line 1415
    .local v3, "br":Ljava/io/BufferedReader;
    :try_start_10
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1d

    move-wide v1, v4

    .line 1416
    :try_start_19
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_1c} :catch_27

    .line 1420
    .end local v3    # "br":Ljava/io/BufferedReader;
    goto :goto_31

    .line 1414
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catchall_1d
    move-exception v4

    :try_start_1e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_22

    goto :goto_26

    :catchall_22
    move-exception v5

    :try_start_23
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "writebackLimit":J
    :goto_26
    throw v4
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_27} :catch_27

    .line 1416
    .end local v3    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "writebackLimit":J
    :catch_27
    move-exception v3

    .line 1417
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v4, :cond_31

    .line 1418
    const-string v4, "failed to read /sys/block/zram0/writeback_limit"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_COMPACTION:Z

    if-eqz v3, :cond_4a

    .line 1423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeback limit : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_4a
    return-wide v1
.end method
