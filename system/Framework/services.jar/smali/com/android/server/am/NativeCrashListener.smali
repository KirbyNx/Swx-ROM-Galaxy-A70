.class final Lcom/android/server/am/NativeCrashListener;
.super Ljava/lang/Thread;
.source "NativeCrashListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;,
        Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;,
        Lcom/android/server/am/NativeCrashListener$CrashPackage;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final DEBUGGERD_SOCKET_PATH:Ljava/lang/String; = "/data/system/ndebugsocket"

.field static final MORE_DEBUG:Z = false

.field static final SOCKET_TIMEOUT_MILLIS:J = 0x2710L

.field static final TAG:Ljava/lang/String; = "NativeCrashListener"

.field private static lock:Ljava/lang/Object;

.field private static mCrashPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/NativeCrashListener$CrashPackage;",
            ">;"
        }
    .end annotation
.end field

.field private static mDexOptedPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/NativeCrashListener;->lock:Ljava/lang/Object;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/NativeCrashListener;->mDexOptedPackage:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;

    .line 262
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 263
    iput-object p1, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 264
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/server/am/NativeCrashListener;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/server/am/NativeCrashListener;->mCrashPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .line 55
    sget-object v0, Lcom/android/server/am/NativeCrashListener;->mDexOptedPackage:Ljava/util/ArrayList;

    return-object v0
.end method

.method static readExactly(Ljava/io/FileDescriptor;[BII)I
    .registers 7
    .param p0, "fd"    # Ljava/io/FileDescriptor;
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "totalRead":I
    :goto_1
    if-lez p3, :cond_10

    .line 344
    add-int v1, p2, v0

    invoke-static {p0, p1, v1, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 345
    .local v1, "n":I
    if-gtz v1, :cond_d

    .line 349
    const/4 v2, -0x1

    return v2

    .line 351
    :cond_d
    sub-int/2addr p3, v1

    .line 352
    add-int/2addr v0, v1

    .line 353
    .end local v1    # "n":I
    goto :goto_1

    .line 354
    :cond_10
    return v0
.end method

.method static unpackInt([BI)I
    .registers 8
    .param p0, "buf"    # [B
    .param p1, "offset"    # I

    .line 333
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 334
    .local v0, "b0":I
    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    .line 335
    .local v1, "b1":I
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    .line 336
    .local v2, "b2":I
    add-int/lit8 v3, p1, 0x3

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    .line 337
    .local v3, "b3":I
    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    .registers 15
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 360
    const/16 v0, 0x1000

    new-array v1, v0, [B

    .line 361
    .local v1, "buf":[B
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    move-object v0, v2

    .line 364
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    const-wide/16 v2, 0x2710

    :try_start_c
    invoke-static {v2, v3}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v2

    .line 365
    .local v2, "timeout":Landroid/system/StructTimeval;
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_RCVTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 366
    sget v3, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v4, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    invoke-static {p1, v3, v4, v2}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 373
    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Lcom/android/server/am/NativeCrashListener;->readExactly(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    .line 374
    .local v5, "headerBytes":I
    if-eq v5, v3, :cond_2f

    .line 376
    const-string v3, "NativeCrashListener"

    const-string v4, "Unable to read from debuggerd"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 380
    :cond_2f
    invoke-static {v1, v4}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v6

    .line 381
    .local v6, "pid":I
    const/4 v7, 0x4

    invoke-static {v1, v7}, Lcom/android/server/am/NativeCrashListener;->unpackInt([BI)I

    move-result v8

    .line 387
    .local v8, "signal":I
    if-lez v6, :cond_ff

    .line 389
    iget-object v9, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v9
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_3f} :catch_107

    .line 390
    :try_start_3f
    iget-object v10, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v10, v6}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v10

    .line 391
    .local v10, "pr":Lcom/android/server/am/ProcessRecord;
    monitor-exit v9
    :try_end_48
    .catchall {:try_start_3f .. :try_end_48} :catchall_fc

    .line 392
    if-eqz v10, :cond_e5

    .line 397
    const/4 v9, 0x0

    .line 398
    .local v9, "isNeededPackage":Z
    :try_start_4b
    iget-object v11, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 399
    .local v11, "packageName":Ljava/lang/String;
    if-eqz v11, :cond_57

    .line 400
    new-instance v12, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;

    invoke-direct {v12, p0, v10}, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v12}, Lcom/android/server/am/NativeCrashListener$NativeCrashDexOpt;->start()V

    .line 406
    .end local v9    # "isNeededPackage":Z
    .end local v11    # "packageName":Ljava/lang/String;
    :cond_57
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v9

    const/4 v11, 0x1

    if-eqz v9, :cond_a4

    .line 413
    const/16 v9, 0x7557

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v4

    iget v12, v10, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 414
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const/4 v11, 0x2

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v12, v3, v11

    const/4 v11, 0x3

    .line 415
    if-nez v10, :cond_7e

    const/4 v12, -0x1

    goto :goto_82

    :cond_7e
    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_82
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    const-string v11, "Native crash"

    aput-object v11, v3, v7

    const/4 v7, 0x5

    .line 417
    invoke-static {v8}, Landroid/system/Os;->strsignal(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v3, v7

    const/4 v7, 0x6

    const-string/jumbo v11, "unknown"

    aput-object v11, v3, v7

    const/4 v7, 0x7

    .line 419
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    .line 413
    invoke-static {v9, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 421
    return-void

    .line 427
    :cond_a4
    array-length v3, v1

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v3

    .line 428
    .local v3, "bytes":I
    if-lez v3, :cond_ba

    .line 434
    add-int/lit8 v7, v3, -0x1

    aget-byte v7, v1, v7

    if-nez v7, :cond_b7

    .line 435
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v1, v4, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 436
    goto :goto_bc

    .line 439
    :cond_b7
    invoke-virtual {v0, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 441
    :cond_ba
    if-gtz v3, :cond_a4

    .line 450
    :goto_bc
    iget-object v4, p0, Lcom/android/server/am/NativeCrashListener;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_bf} :catch_107

    :try_start_bf
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 451
    invoke-virtual {v10, v11}, Lcom/android/server/am/ProcessRecord;->setCrashing(Z)V

    .line 452
    iput-boolean v11, v10, Lcom/android/server/am/ProcessRecord;->forceCrashReport:Z

    .line 453
    monitor-exit v4
    :try_end_c8
    .catchall {:try_start_bf .. :try_end_c8} :catchall_df

    :try_start_c8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 458
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    const-string v9, "UTF-8"

    invoke-direct {v4, v7, v9}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 459
    .local v4, "reportString":Ljava/lang/String;
    new-instance v7, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;

    invoke-direct {v7, p0, v10, v8, v4}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;-><init>(Lcom/android/server/am/NativeCrashListener;Lcom/android/server/am/ProcessRecord;ILjava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/am/NativeCrashListener$NativeCrashReporter;->start()V
    :try_end_de
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_de} :catch_107

    .line 460
    .end local v3    # "bytes":I
    .end local v4    # "reportString":Ljava/lang/String;
    goto :goto_fb

    .line 453
    .restart local v3    # "bytes":I
    :catchall_df
    move-exception v7

    :try_start_e0
    monitor-exit v4
    :try_end_e1
    .catchall {:try_start_e0 .. :try_end_e1} :catchall_df

    :try_start_e1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    throw v7

    .line 461
    .end local v3    # "bytes":I
    .restart local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :cond_e5
    const-string v3, "NativeCrashListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find ProcessRecord for pid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_fb} :catch_107

    .line 463
    .end local v10    # "pr":Lcom/android/server/am/ProcessRecord;
    :goto_fb
    goto :goto_106

    .line 391
    :catchall_fc
    move-exception v3

    :try_start_fd
    monitor-exit v9
    :try_end_fe
    .catchall {:try_start_fd .. :try_end_fe} :catchall_fc

    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "buf":[B
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    :try_start_fe
    throw v3

    .line 464
    .restart local v0    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "buf":[B
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    :cond_ff
    const-string v3, "NativeCrashListener"

    const-string v4, "Bogus pid!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_106
    .catch Ljava/lang/Exception; {:try_start_fe .. :try_end_106} :catch_107

    .line 469
    .end local v2    # "timeout":Landroid/system/StructTimeval;
    .end local v5    # "headerBytes":I
    .end local v6    # "pid":I
    .end local v8    # "signal":I
    :goto_106
    goto :goto_10f

    .line 466
    :catch_107
    move-exception v2

    .line 467
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "NativeCrashListener"

    const-string v4, "Exception dealing with report"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 470
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_10f
    return-void
.end method

.method public run()V
    .registers 10

    .line 268
    const-string v0, "NativeCrashListener"

    const/4 v1, 0x1

    new-array v2, v1, [B

    .line 276
    .local v2, "ackSignal":[B
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/system/ndebugsocket"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, "socketFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 283
    .end local v3    # "socketFile":Ljava/io/File;
    :cond_15
    :try_start_15
    sget v3, Landroid/system/OsConstants;->AF_UNIX:I

    sget v5, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 284
    .local v3, "serverFd":Ljava/io/FileDescriptor;
    invoke-static {v4}, Landroid/system/UnixSocketAddress;->createFileSystem(Ljava/lang/String;)Landroid/system/UnixSocketAddress;

    move-result-object v5

    .line 286
    .local v5, "sockAddr":Landroid/system/UnixSocketAddress;
    invoke-static {v3, v5}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 287
    invoke-static {v3, v1}, Landroid/system/Os;->listen(Ljava/io/FileDescriptor;I)V

    .line 288
    const/16 v7, 0x1ff

    invoke-static {v4, v7}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_2d} :catch_69

    .line 291
    :goto_2d
    const/4 v4, 0x0

    .line 294
    .local v4, "peerFd":Ljava/io/FileDescriptor;
    const/4 v7, 0x0

    :try_start_2f
    invoke-static {v3, v7}, Landroid/system/Os;->accept(Ljava/io/FileDescriptor;Ljava/net/InetSocketAddress;)Ljava/io/FileDescriptor;

    move-result-object v7

    move-object v4, v7

    .line 296
    if-eqz v4, :cond_39

    .line 299
    invoke-virtual {p0, v4}, Lcom/android/server/am/NativeCrashListener;->consumeNativeCrashData(Ljava/io/FileDescriptor;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_39} :catch_48
    .catchall {:try_start_2f .. :try_end_39} :catchall_46

    .line 306
    :cond_39
    if-eqz v4, :cond_5a

    .line 308
    :try_start_3b
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_3f

    .line 314
    goto :goto_40

    .line 309
    :catch_3f
    move-exception v7

    .line 316
    :goto_40
    :try_start_40
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_43
    .catch Landroid/system/ErrnoException; {:try_start_40 .. :try_end_43} :catch_44
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_43} :catch_69

    .line 321
    :goto_43
    goto :goto_5a

    .line 317
    :catch_44
    move-exception v7

    goto :goto_43

    .line 306
    :catchall_46
    move-exception v7

    goto :goto_5b

    .line 301
    :catch_48
    move-exception v7

    .line 302
    .local v7, "e":Ljava/lang/Exception;
    :try_start_49
    const-string v8, "Error handling connection"

    invoke-static {v0, v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_46

    .line 306
    nop

    .end local v7    # "e":Ljava/lang/Exception;
    if-eqz v4, :cond_5a

    .line 308
    :try_start_51
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_54} :catch_55

    .line 314
    goto :goto_56

    .line 309
    :catch_55
    move-exception v7

    .line 316
    :goto_56
    :try_start_56
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_59
    .catch Landroid/system/ErrnoException; {:try_start_56 .. :try_end_59} :catch_44
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_59} :catch_69

    goto :goto_43

    .line 324
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    :cond_5a
    :goto_5a
    goto :goto_2d

    .line 306
    .restart local v4    # "peerFd":Ljava/io/FileDescriptor;
    :goto_5b
    if-eqz v4, :cond_67

    .line 308
    :try_start_5d
    invoke-static {v4, v2, v6, v1}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    .line 314
    goto :goto_62

    .line 309
    :catch_61
    move-exception v1

    .line 316
    :goto_62
    :try_start_62
    invoke-static {v4}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_65
    .catch Landroid/system/ErrnoException; {:try_start_62 .. :try_end_65} :catch_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_65} :catch_69

    .line 321
    goto :goto_67

    .line 317
    :catch_66
    move-exception v1

    .line 323
    :cond_67
    :goto_67
    nop

    .end local v2    # "ackSignal":[B
    .end local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    :try_start_68
    throw v7
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_69} :catch_69

    .line 325
    .end local v3    # "serverFd":Ljava/io/FileDescriptor;
    .end local v4    # "peerFd":Ljava/io/FileDescriptor;
    .end local v5    # "sockAddr":Landroid/system/UnixSocketAddress;
    .restart local v2    # "ackSignal":[B
    .restart local p0    # "this":Lcom/android/server/am/NativeCrashListener;
    :catch_69
    move-exception v1

    .line 326
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Unable to init native debug socket!"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 328
    .end local v1    # "e":Ljava/lang/Exception;
    return-void
.end method
