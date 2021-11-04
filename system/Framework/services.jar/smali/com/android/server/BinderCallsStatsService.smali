.class public Lcom/android/server/BinderCallsStatsService;
.super Landroid/os/Binder;
.source "BinderCallsStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BinderCallsStatsService$LifeCycle;,
        Lcom/android/server/BinderCallsStatsService$Internal;,
        Lcom/android/server/BinderCallsStatsService$SettingsObserver;,
        Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;
    }
.end annotation


# static fields
.field public static final DEBUG_LEVEL_LOW:Z

.field private static final ENABLE_STATS_PER_PACKAGE:Z = true

.field public static final MAX_CALL_STATS_NUM:I = 0x5

.field private static final PERSIST_SYS_BINDER_CALLS_DETAILED_TRACKING:Ljava/lang/String; = "persist.sys.binder_calls_detailed_tracking"

.field private static final SERVICE_NAME:Ljava/lang/String; = "binder_calls_stats"

.field private static final TAG:Ljava/lang/String; = "BinderCallsStatsService"


# instance fields
.field private final mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

.field private mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

.field private final mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 63
    nop

    .line 64
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "Unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4f4c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BinderCallsStatsService;->DEBUG_LEVEL_LOW:Z

    .line 63
    return-void
.end method

.method constructor <init>(Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V
    .registers 3
    .param p1, "binderCallsStats"    # Lcom/android/internal/os/BinderCallsStats;
    .param p2, "workSourceProvider"    # Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 347
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 348
    iput-object p1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    .line 349
    iput-object p2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    .line 350
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 363
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const-string v1, "binder_calls_stats"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 365
    return-void

    .line 368
    :cond_d
    const/4 v0, 0x0

    .line 369
    .local v0, "verbose":Z
    if-eqz p3, :cond_176

    .line 370
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, p3

    if-ge v1, v2, :cond_176

    .line 371
    aget-object v2, p3, v1

    .line 372
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 373
    const/4 v0, 0x1

    goto/16 :goto_172

    .line 374
    :cond_21
    const-string v3, "--reset"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    .line 375
    invoke-virtual {p0}, Lcom/android/server/BinderCallsStatsService;->reset()V

    .line 376
    const-string v3, "binder_calls_stats reset."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 377
    return-void

    .line 378
    :cond_32
    const-string v3, "--enable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 379
    iget-object v3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {v3}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 380
    return-void

    .line 381
    :cond_40
    const-string v3, "--disable"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    .line 382
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Binder;->setObserver(Lcom/android/internal/os/BinderInternal$Observer;)V

    .line 383
    return-void

    .line 384
    :cond_4d
    const-string v3, "--no-sampling"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5c

    .line 385
    iget-object v3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 386
    return-void

    .line 387
    :cond_5c
    const-string v3, "--enable-detailed-tracking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "persist.sys.binder_calls_detailed_tracking"

    if-eqz v3, :cond_77

    .line 388
    const-string v3, "1"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    iget-object v3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 390
    const-string v3, "Detailed tracking enabled"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 391
    return-void

    .line 392
    :cond_77
    const-string v3, "--disable-detailed-tracking"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    .line 393
    const-string v3, ""

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/os/BinderCallsStats;->setDetailedTracking(Z)V

    .line 395
    const-string v3, "Detailed tracking disabled"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 396
    return-void

    .line 397
    :cond_90
    const-string v3, "--dump-worksource-provider"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 398
    iget-object v3, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;)V

    .line 399
    return-void

    .line 400
    :cond_a2
    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d3

    .line 401
    const-string v3, "binder_calls_stats commands:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 402
    const-string v3, "  --reset: Reset stats"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 403
    const-string v3, "  --enable: Enable tracking binder calls"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 404
    const-string v3, "  --disable: Disables tracking binder calls"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 405
    const-string v3, "  --no-sampling: Tracks all calls"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    const-string v3, "  --enable-detailed-tracking: Enables detailed tracking"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 407
    const-string v3, "  --disable-detailed-tracking: Disables detailed tracking"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 408
    const-string v3, "  --history: Dump all the collected binder_calls_stats"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    return-void

    .line 410
    :cond_d3
    const-string v3, "--history"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e1

    .line 411
    iget-object v3, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v3, p2}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    .line 412
    return-void

    .line 413
    :cond_e1
    const-string v3, "--set-cpu-threshold"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "BinderCallsStatsService"

    if-eqz v3, :cond_11b

    .line 414
    sget-boolean v3, Lcom/android/server/BinderCallsStatsService;->DEBUG_LEVEL_LOW:Z

    if-nez v3, :cond_11a

    .line 416
    add-int/lit8 v1, v1, 0x1

    :try_start_f1
    aget-object v3, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 417
    .local v3, "newCpuThreshold":I
    iget-object v4, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BinderCallsStats;->setCpuUsageThreshold(I)Z

    move-result v4

    if-eqz v4, :cond_113

    .line 418
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cpu usage threshold is set to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_113
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f1 .. :try_end_113} :catch_114
    .catch Ljava/lang/NumberFormatException; {:try_start_f1 .. :try_end_113} :catch_114

    .line 422
    .end local v3    # "newCpuThreshold":I
    :cond_113
    goto :goto_11a

    .line 420
    :catch_114
    move-exception v3

    .line 421
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "--set-cpu-threshold execution failed"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :cond_11a
    :goto_11a
    return-void

    .line 425
    :cond_11b
    const-string v3, "--set-sampling"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14c

    .line 427
    add-int/2addr v1, v4

    :try_start_124
    aget-object v3, p3, v1

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 428
    .local v3, "newSampling":I
    iget-object v4, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v4, v3}, Lcom/android/internal/os/BinderCallsStats;->setSamplingInterval(I)V

    .line 429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "sampling internal is set to "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_144
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_124 .. :try_end_144} :catch_145
    .catch Ljava/lang/NumberFormatException; {:try_start_124 .. :try_end_144} :catch_145

    .line 432
    .end local v3    # "newSampling":I
    goto :goto_14b

    .line 430
    :catch_145
    move-exception v3

    .line 431
    .local v3, "e":Ljava/lang/RuntimeException;
    const-string v4, "--set-sampling execution failed"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 433
    .end local v3    # "e":Ljava/lang/RuntimeException;
    :goto_14b
    return-void

    .line 434
    :cond_14c
    const-string v3, "--dumpheap"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15e

    .line 435
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/16 v4, 0xc

    invoke-static {v3, v4}, Landroid/os/Process;->sendSignal(II)V

    .line 436
    return-void

    .line 438
    :cond_15e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown option: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 370
    .end local v2    # "arg":Ljava/lang/String;
    :goto_172
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_11

    .line 450
    .end local v1    # "i":I
    :cond_176
    sget-boolean v1, Lcom/android/server/BinderCallsStatsService;->DEBUG_LEVEL_LOW:Z

    if-nez v1, :cond_180

    .line 451
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v1, p2}, Lcom/android/internal/os/BinderCallsStats;->dumpStats(Ljava/io/PrintWriter;)V

    goto :goto_189

    .line 453
    :cond_180
    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-static {}, Lcom/android/internal/os/AppIdToPackageMap;->getSnapshot()Lcom/android/internal/os/AppIdToPackageMap;

    move-result-object v2

    invoke-virtual {v1, p2, v2, v0}, Lcom/android/internal/os/BinderCallsStats;->dump(Ljava/io/PrintWriter;Lcom/android/internal/os/AppIdToPackageMap;Z)V

    .line 455
    :goto_189
    return-void
.end method

.method public reset()V
    .registers 3

    .line 357
    const-string v0, "BinderCallsStatsService"

    const-string v1, "Resetting stats"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    invoke-virtual {v0}, Lcom/android/internal/os/BinderCallsStats;->reset()V

    .line 359
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 353
    new-instance v0, Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/BinderCallsStatsService;->mBinderCallsStats:Lcom/android/internal/os/BinderCallsStats;

    iget-object v2, p0, Lcom/android/server/BinderCallsStatsService;->mWorkSourceProvider:Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/BinderCallsStatsService$SettingsObserver;-><init>(Landroid/content/Context;Lcom/android/internal/os/BinderCallsStats;Lcom/android/server/BinderCallsStatsService$AuthorizedWorkSourceProvider;)V

    iput-object v0, p0, Lcom/android/server/BinderCallsStatsService;->mSettingsObserver:Lcom/android/server/BinderCallsStatsService$SettingsObserver;

    .line 354
    return-void
.end method
