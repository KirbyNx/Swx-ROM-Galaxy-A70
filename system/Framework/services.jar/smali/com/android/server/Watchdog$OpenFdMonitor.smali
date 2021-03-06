.class public final Lcom/android/server/Watchdog$OpenFdMonitor;
.super Ljava/lang/Object;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/Watchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OpenFdMonitor"
.end annotation


# static fields
.field private static final FD_HIGH_WATER_MARK:I = 0xc


# instance fields
.field private final mDumpDir:Ljava/io/File;

.field private final mFdHighWaterMark:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;)V
    .registers 3
    .param p1, "dumpDir"    # Ljava/io/File;
    .param p2, "fdThreshold"    # Ljava/io/File;

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1360
    iput-object p1, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    .line 1361
    iput-object p2, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    .line 1362
    return-void
.end method

.method public static create()Lcom/android/server/Watchdog$OpenFdMonitor;
    .registers 7

    .line 1336
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 1337
    return-object v1

    .line 1342
    :cond_6
    :try_start_6
    sget v0, Landroid/system/OsConstants;->RLIMIT_NOFILE:I

    invoke-static {v0}, Landroid/system/Os;->getrlimit(I)Landroid/system/StructRlimit;

    move-result-object v0
    :try_end_c
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_c} :catch_35

    .line 1346
    .local v0, "rlimit":Landroid/system/StructRlimit;
    nop

    .line 1355
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/proc/self/fd/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Landroid/system/StructRlimit;->rlim_cur:J

    const-wide/16 v5, 0xc

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1356
    .local v1, "fdThreshold":Ljava/io/File;
    new-instance v2, Lcom/android/server/Watchdog$OpenFdMonitor;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/anr"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lcom/android/server/Watchdog$OpenFdMonitor;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v2

    .line 1343
    .end local v0    # "rlimit":Landroid/system/StructRlimit;
    .end local v1    # "fdThreshold":Ljava/io/File;
    :catch_35
    move-exception v0

    .line 1344
    .local v0, "errno":Landroid/system/ErrnoException;
    const-string v2, "Watchdog"

    const-string v3, "Error thrown from getrlimit(RLIMIT_NOFILE)"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1345
    return-object v1
.end method

.method private dumpOpenDescriptors()V
    .registers 12

    .line 1371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1372
    .local v0, "dumpInfo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "/proc/%d/fd/"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1373
    .local v1, "fdDirPath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 1374
    .local v2, "fds":[Ljava/io/File;
    if-nez v2, :cond_39

    .line 1375
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to list "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6a

    .line 1377
    :cond_39
    array-length v4, v2

    move v5, v3

    :goto_3b
    if-ge v5, v4, :cond_6a

    aget-object v6, v2, v5

    .line 1378
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    .line 1379
    .local v7, "fdSymLink":Ljava/lang/String;
    const-string v8, ""

    .line 1381
    .local v8, "resolvedPath":Ljava/lang/String;
    :try_start_45
    invoke-static {v7}, Landroid/system/Os;->readlink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_49
    .catch Landroid/system/ErrnoException; {:try_start_45 .. :try_end_49} :catch_4b

    move-object v8, v9

    .line 1384
    goto :goto_50

    .line 1382
    :catch_4b
    move-exception v9

    .line 1383
    .local v9, "ex":Landroid/system/ErrnoException;
    invoke-virtual {v9}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 1385
    .end local v9    # "ex":Landroid/system/ErrnoException;
    :goto_50
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1377
    .end local v6    # "f":Ljava/io/File;
    .end local v7    # "fdSymLink":Ljava/lang/String;
    .end local v8    # "resolvedPath":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 1391
    :cond_6a
    :goto_6a
    :try_start_6a
    const-string v4, "anr_fd_"

    const-string v5, ""

    iget-object v6, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mDumpDir:Ljava/io/File;

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 1392
    .local v4, "dumpFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 1393
    .local v5, "out":Ljava/nio/file/Path;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    new-array v3, v3, [Ljava/nio/file/OpenOption;

    invoke-static {v5, v0, v6, v3}, Ljava/nio/file/Files;->write(Ljava/nio/file/Path;Ljava/lang/Iterable;Ljava/nio/charset/Charset;[Ljava/nio/file/OpenOption;)Ljava/nio/file/Path;
    :try_end_85
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_85} :catch_87

    .line 1396
    nop

    .end local v4    # "dumpFile":Ljava/io/File;
    .end local v5    # "out":Ljava/nio/file/Path;
    goto :goto_9e

    .line 1394
    :catch_87
    move-exception v3

    .line 1395
    .local v3, "ex":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write open descriptors to file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Watchdog"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    .end local v3    # "ex":Ljava/io/IOException;
    :goto_9e
    return-void
.end method


# virtual methods
.method public monitor()Z
    .registers 2

    .line 1404
    iget-object v0, p0, Lcom/android/server/Watchdog$OpenFdMonitor;->mFdHighWaterMark:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1405
    invoke-direct {p0}, Lcom/android/server/Watchdog$OpenFdMonitor;->dumpOpenDescriptors()V

    .line 1406
    const/4 v0, 0x1

    return v0

    .line 1409
    :cond_d
    const/4 v0, 0x0

    return v0
.end method
