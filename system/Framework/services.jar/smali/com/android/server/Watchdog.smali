.class public Lcom/android/server/Watchdog;
.super Ljava/lang/Thread;
.source "Watchdog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/Watchdog$OpenFdMonitor;,
        Lcom/android/server/Watchdog$Monitor;,
        Lcom/android/server/Watchdog$FileDescriptorWatcher;,
        Lcom/android/server/Watchdog$BinderThreadMonitor;,
        Lcom/android/server/Watchdog$RebootRequestReceiver;,
        Lcom/android/server/Watchdog$HandlerChecker;
    }
.end annotation


# static fields
.field static final BIGDATA_INTERVAL:J = 0x2d0L

.field private static final CHECK_INTERVAL:J = 0x7530L

.field private static final COMPLETED:I = 0x0

.field static final CONVERT_TIME_AND_SIZE:J = 0x100000L

.field private static final DB:Z = false

.field public static final DEBUG:Z = false

.field public static final DEBUG_LEVEL_LOW:Z

.field private static final DEFAULT_TIMEOUT:J = 0xea60L

.field static final FD_RLIMT_1024:J = 0x400L

.field public static final HAL_INTERFACES_OF_INTEREST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

.field static final OLOG_INTERVAL:J = 0x14L

.field private static final OVERDUE:I = 0x3

.field static final RESET_INTERVAL:J = 0x14L

.field static final SCREEN_OFF_INTERVAL:J = 0x2L

.field static final SDOG_MAX_SYNCTIME:I = 0x64

.field static final TAG:Ljava/lang/String; = "Watchdog"

.field private static final WAITED_HALF:I = 0x2

.field private static final WAITING:I = 0x1

.field static WSyncCount:J

.field static currentBlockGcCount:J

.field static currentLongWaitTimeCount:J

.field static currentTimeGc:D

.field private static mContext:Landroid/content/Context;

.field static mFdCount:J

.field static mMaxHeap:J

.field static mMinHeap:J

.field static mOverThresholdCnt:I

.field static mPrevBlockingGcCount:J

.field static mPrevLongWaitTimeCount:J

.field static mPrevTotalTimeGc:D

.field static mScreenOffCount:I

.field static mThresholdOfHeapSize:J

.field static mTraceDateFormat:Ljava/text/SimpleDateFormat;

.field private static sWatchdog:Lcom/android/server/Watchdog;

.field static sdogFd:I

.field static sdogWay:Ljava/lang/String;


# instance fields
.field final fdWatcher:Lcom/android/server/Watchdog$FileDescriptorWatcher;

.field private mActivity:Lcom/android/server/am/ActivityManagerService;

.field private mAllowRestart:Z

.field private mController:Landroid/app/IActivityController;

.field mControllerDescription:Ljava/lang/String;

.field private final mHandlerCheckers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterestingJavaPids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

.field private final mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

.field mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 29

    .line 103
    sget-boolean v0, Lcom/android/server/BinderCallsStatsService;->DEBUG_LEVEL_LOW:Z

    sput-boolean v0, Lcom/android/server/Watchdog;->DEBUG_LEVEL_LOW:Z

    .line 125
    const-string v1, "/system/bin/audioserver"

    const-string v2, "/system/bin/cameraserver"

    const-string v3, "/system/bin/drmserver"

    const-string v4, "/system/bin/mediadrmserver"

    const-string v5, "/system/bin/mediaserver"

    const-string v6, "/system/bin/netd"

    const-string v7, "/system/bin/sdcard"

    const-string v8, "/system/bin/spqr"

    const-string v9, "/system/bin/surfaceflinger"

    const-string v10, "/system/bin/installd"

    const-string v11, "/system/bin/vold"

    const-string v12, "/apex/com.android.art/bin/dex2oat32"

    const-string/jumbo v13, "media.extractor"

    const-string/jumbo v14, "media.metrics"

    const-string/jumbo v15, "media.codec"

    const-string/jumbo v16, "media.swcodec"

    const-string/jumbo v17, "media.hwcodec"

    const-string v18, "/vendor/bin/hw/samsung.hardware.media.c2@1.0-service"

    const-string v19, "com.android.bluetooth"

    const-string v20, "/vendor/bin/hw/vendor.samsung.hardware.camera.provider@4.0-service_64"

    const-string v21, "/apex/com.android.os.statsd/bin/statsd"

    const-string/jumbo v22, "zygote64"

    const-string/jumbo v23, "zygote"

    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    .line 151
    const-string v1, "android.hardware.audio@2.0::IDevicesFactory"

    const-string v2, "android.hardware.audio@4.0::IDevicesFactory"

    const-string v3, "android.hardware.audio@5.0::IDevicesFactory"

    const-string v4, "android.hardware.audio@6.0::IDevicesFactory"

    const-string v5, "android.hardware.biometrics.face@1.0::IBiometricsFace"

    const-string v6, "android.hardware.biometrics.fingerprint@2.1::IBiometricsFingerprint"

    const-string v7, "android.hardware.bluetooth@1.0::IBluetoothHci"

    const-string v8, "android.hardware.camera.provider@2.4::ICameraProvider"

    const-string v9, "android.hardware.gnss@1.0::IGnss"

    const-string v10, "android.hardware.graphics.allocator@2.0::IAllocator"

    const-string v11, "android.hardware.graphics.allocator@3.0::IAllocator"

    const-string v12, "android.hardware.graphics.allocator@4.0::IAllocator"

    const-string v13, "android.hardware.graphics.composer@2.1::IComposer"

    const-string v14, "android.hardware.graphics.composer@2.2::IComposer"

    const-string v15, "android.hardware.graphics.composer@2.3::IComposer"

    const-string v16, "android.hardware.graphics.composer@2.4::IComposer"

    const-string v17, "android.hardware.health@2.0::IHealth"

    const-string v18, "android.hardware.light@2.0::ILight"

    const-string v19, "android.hardware.media.c2@1.0::IComponentStore"

    const-string v20, "android.hardware.media.omx@1.0::IOmx"

    const-string v21, "android.hardware.media.omx@1.0::IOmxStore"

    const-string v22, "android.hardware.neuralnetworks@1.0::IDevice"

    const-string v23, "android.hardware.power.stats@1.0::IPowerStats"

    const-string v24, "android.hardware.sensors@1.0::ISensors"

    const-string v25, "android.hardware.sensors@2.0::ISensors"

    const-string v26, "android.hardware.sensors@2.1::ISensors"

    const-string v27, "android.hardware.vr@1.0::IVr"

    const-string v28, "android.system.suspend@1.0::ISystemSuspend"

    filled-new-array/range {v1 .. v28}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    .line 203
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/Watchdog;->WSyncCount:J

    .line 204
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    .line 206
    const/4 v2, -0x1

    sput v2, Lcom/android/server/Watchdog;->sdogFd:I

    .line 207
    const-string v2, "None"

    sput-object v2, Lcom/android/server/Watchdog;->sdogWay:Ljava/lang/String;

    .line 817
    const/4 v2, 0x0

    sput v2, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    .line 818
    sput v2, Lcom/android/server/Watchdog;->mScreenOffCount:I

    .line 819
    sput-wide v0, Lcom/android/server/Watchdog;->mFdCount:J

    .line 820
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/Watchdog;->mPrevTotalTimeGc:D

    .line 821
    sput-wide v0, Lcom/android/server/Watchdog;->mPrevBlockingGcCount:J

    .line 822
    sput-wide v0, Lcom/android/server/Watchdog;->mPrevLongWaitTimeCount:J

    .line 823
    sput-wide v0, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    .line 824
    sput-wide v2, Lcom/android/server/Watchdog;->currentTimeGc:D

    .line 825
    sput-wide v0, Lcom/android/server/Watchdog;->currentBlockGcCount:J

    .line 826
    sput-wide v0, Lcom/android/server/Watchdog;->currentLongWaitTimeCount:J

    .line 827
    const-wide v2, 0x7fffffffffffffffL

    sput-wide v2, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 828
    sput-wide v0, Lcom/android/server/Watchdog;->mMaxHeap:J

    return-void
.end method

.method private constructor <init>()V
    .registers 11

    .line 548
    const-string/jumbo v0, "watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    .line 195
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 835
    iput-object v1, p0, Lcom/android/server/Watchdog;->semHqmManager:Landroid/os/SemHqmManager;

    .line 556
    new-instance v8, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v4

    const-string/jumbo v5, "foreground thread"

    const-wide/32 v6, 0xea60

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v8, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    .line 558
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/Watchdog$HandlerChecker;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v5, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string/jumbo v6, "main thread"

    const-wide/32 v7, 0xea60

    move-object v3, v9

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string/jumbo v6, "ui thread"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string/jumbo v6, "i/o thread"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/DisplayThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string v6, "display thread"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/AnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string v6, "animation thread"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v9, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-static {}, Lcom/android/server/wm/SurfaceAnimationThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const-string/jumbo v6, "surface animation thread"

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    new-instance v2, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v2, p0, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 581
    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 585
    new-instance v2, Lcom/android/server/Watchdog$BinderThreadMonitor;

    invoke-direct {v2, v1}, Lcom/android/server/Watchdog$BinderThreadMonitor;-><init>(Lcom/android/server/Watchdog$1;)V

    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->addMonitor(Lcom/android/server/Watchdog$Monitor;)V

    .line 587
    invoke-static {}, Lcom/android/server/Watchdog$OpenFdMonitor;->create()Lcom/android/server/Watchdog$OpenFdMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    .line 589
    iget-object v1, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    const-wide/32 v1, 0x100000

    const-wide/16 v4, 0x0

    :try_start_d2
    const-string v6, "dalvik.vm.heapsize"

    const-string v7, ""

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 593
    .local v6, "heapSize":Ljava/lang/String;
    if-eqz v6, :cond_f0

    .line 594
    const-string/jumbo v7, "m"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 595
    .local v7, "words":[Ljava/lang/String;
    if-eqz v7, :cond_f0

    array-length v8, v7

    if-lt v8, v0, :cond_f0

    .line 596
    aget-object v0, v7, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    sput-wide v8, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_f0} :catch_104
    .catchall {:try_start_d2 .. :try_end_f0} :catchall_102

    .line 602
    .end local v6    # "heapSize":Ljava/lang/String;
    .end local v7    # "words":[Ljava/lang/String;
    :cond_f0
    sget-wide v6, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_114

    .line 603
    :goto_f6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    div-long/2addr v3, v1

    sput-wide v3, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    goto :goto_114

    .line 602
    :catchall_102
    move-exception v0

    goto :goto_11c

    .line 599
    :catch_104
    move-exception v0

    .line 600
    .local v0, "e":Ljava/lang/Exception;
    :try_start_105
    const-string v3, "Watchdog"

    const-string v6, "Failed to read property"

    invoke-static {v3, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10c
    .catchall {:try_start_105 .. :try_end_10c} :catchall_102

    .line 602
    nop

    .end local v0    # "e":Ljava/lang/Exception;
    sget-wide v6, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_114

    .line 603
    goto :goto_f6

    .line 612
    :cond_114
    :goto_114
    new-instance v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;

    invoke-direct {v0}, Lcom/android/server/Watchdog$FileDescriptorWatcher;-><init>()V

    iput-object v0, p0, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/Watchdog$FileDescriptorWatcher;

    .line 613
    return-void

    .line 602
    :goto_11c
    sget-wide v6, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_12d

    .line 603
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    div-long/2addr v3, v1

    sput-wide v3, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    .line 605
    :cond_12d
    throw v0
.end method

.method private static GetFdCount()J
    .registers 3

    .line 813
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/self/fd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 814
    .local v0, "fds":[Ljava/io/File;
    if-eqz v0, :cond_10

    array-length v1, v0

    int-to-long v1, v1

    goto :goto_12

    :cond_10
    const-wide/16 v1, -0x1

    :goto_12
    return-wide v1
.end method

.method private PrintLogAndCheckReset(JJ)V
    .registers 30
    .param p1, "TotalMemory"    # J
    .param p3, "AllocatedMemory"    # J

    .line 839
    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    invoke-static {}, Lcom/android/server/Watchdog;->GetFdCount()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/Watchdog;->mFdCount:J

    .line 840
    sget-wide v2, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v12, 0x2

    if-lez v0, :cond_40

    sget-wide v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_40

    sget v0, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mThreadCount:I

    if-ge v0, v12, :cond_40

    .line 841
    new-instance v0, Ljava/lang/Thread;

    move-object/from16 v13, p0

    iget-object v1, v13, Lcom/android/server/Watchdog;->fdWatcher:Lcom/android/server/Watchdog$FileDescriptorWatcher;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fdWatcher-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/Watchdog$FileDescriptorWatcher;->mDumpedCount:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 842
    .local v0, "fdWatcherThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_42

    .line 840
    .end local v0    # "fdWatcherThread":Ljava/lang/Thread;
    :cond_40
    move-object/from16 v13, p0

    .line 846
    :goto_42
    sget-wide v0, Lcom/android/server/Watchdog;->WSyncCount:J

    const-wide/16 v14, 0x14

    rem-long v2, v0, v14

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-string v3, " ["

    const/4 v6, 0x1

    const/16 v16, 0x0

    const-string v7, "Watchdog"

    if-nez v2, :cond_16a

    cmp-long v0, v0, v4

    if-eqz v0, :cond_16a

    .line 847
    nop

    .line 848
    const-string v0, "art.gc.total-time-waiting-for-gc"

    invoke-static {v0}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 849
    .local v0, "totalTimeGc":D
    nop

    .line 850
    const-string v2, "art.gc.blocking-gc-count"

    invoke-static {v2}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 849
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    .line 851
    .local v17, "totalBlockGcCount":J
    nop

    .line 852
    const-string v2, "art.gc.long-wait-time-count"

    invoke-static {v2}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 851
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    .line 853
    .local v19, "totalLongWaitTimeCount":J
    sget-wide v21, Lcom/android/server/Watchdog;->mPrevTotalTimeGc:D

    sub-double v21, v0, v21

    sput-wide v21, Lcom/android/server/Watchdog;->currentTimeGc:D

    .line 854
    sget-wide v23, Lcom/android/server/Watchdog;->mPrevBlockingGcCount:J

    sub-long v23, v17, v23

    sput-wide v23, Lcom/android/server/Watchdog;->currentBlockGcCount:J

    .line 855
    sget-wide v23, Lcom/android/server/Watchdog;->mPrevLongWaitTimeCount:J

    sub-long v23, v19, v23

    sput-wide v23, Lcom/android/server/Watchdog;->currentLongWaitTimeCount:J

    .line 857
    sput-wide v0, Lcom/android/server/Watchdog;->mPrevTotalTimeGc:D

    .line 858
    sput-wide v17, Lcom/android/server/Watchdog;->mPrevBlockingGcCount:J

    .line 859
    sput-wide v19, Lcom/android/server/Watchdog;->mPrevLongWaitTimeCount:J

    .line 861
    const-wide/high16 v23, 0x4130000000000000L    # 1048576.0

    div-double v12, v21, v23

    sput-wide v12, Lcom/android/server/Watchdog;->currentTimeGc:D

    .line 862
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-gez v2, :cond_a4

    .line 863
    const-wide/16 v12, 0x0

    sput-wide v12, Lcom/android/server/Watchdog;->currentTimeGc:D

    .line 866
    :cond_a4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Sync:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v12, Lcom/android/server/Watchdog;->WSyncCount:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\theap:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\t/\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\tobjects:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 869
    const-string v12, "art.gc.objects-allocated"

    invoke-static {v12}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\tWaitTime:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v12, v6, [Ljava/lang/Object;

    sget-wide v13, Lcom/android/server/Watchdog;->currentTimeGc:D

    .line 870
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    aput-object v13, v12, v16

    const-string v13, "%.3f"

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\tGCcnt:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v12, Lcom/android/server/Watchdog;->currentBlockGcCount:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\tLongWaitCnt:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v12, Lcom/android/server/Watchdog;->currentLongWaitTimeCount:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "\tFullGC:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    const-string v12, "art.gc.full-gc-with-soft-ref-count"

    invoke-static {v12}, Landroid/os/Debug;->getRuntimeStat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\tFD:\t"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v12, Lcom/android/server/Watchdog;->mFdCount:J

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, "strForOlog":Ljava/lang/String;
    const/16 v12, 0x17

    invoke-static {v12, v2}, Landroid/util/PerfLog;->d(ILjava/lang/String;)V

    .line 876
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "!@"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "\t"

    const-string v14, " "

    invoke-virtual {v2, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v13, Ljava/util/Date;

    .line 877
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-direct {v13, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v13}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] sdogWay:"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/Watchdog;->sdogWay:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 876
    invoke-static {v7, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    sget-wide v12, Lcom/android/server/Watchdog;->mMinHeap:J

    cmp-long v3, v12, v10

    if-lez v3, :cond_161

    .line 881
    sput-wide v10, Lcom/android/server/Watchdog;->mMinHeap:J

    .line 883
    :cond_161
    sget-wide v12, Lcom/android/server/Watchdog;->mMaxHeap:J

    cmp-long v3, v12, v10

    if-gez v3, :cond_169

    .line 884
    sput-wide v10, Lcom/android/server/Watchdog;->mMaxHeap:J

    .line 886
    .end local v0    # "totalTimeGc":D
    .end local v2    # "strForOlog":Ljava/lang/String;
    .end local v17    # "totalBlockGcCount":J
    .end local v19    # "totalLongWaitTimeCount":J
    :cond_169
    goto :goto_1b9

    .line 887
    :cond_16a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@Sync: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/Watchdog;->WSyncCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " heap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    .line 889
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] sdogWay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/Watchdog;->sdogWay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FD: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/android/server/Watchdog;->mFdCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 887
    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :goto_1b9
    sget-wide v0, Lcom/android/server/Watchdog;->WSyncCount:J

    const-wide/16 v2, 0x2d0

    rem-long v2, v0, v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1e8

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1e8

    .line 895
    const-string/jumbo v0, "will send to HQM"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    new-instance v0, Lcom/android/server/Watchdog$1;

    const-string v3, "HQM_in_watchdog"

    move-object v1, v0

    move-object/from16 v2, p0

    move-wide/from16 v4, p3

    move v12, v6

    move-object v13, v7

    move-wide/from16 v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/Watchdog$1;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;JJ)V

    .line 923
    .local v1, "hqmThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 925
    const-wide/16 v2, 0x7d0

    :try_start_1e2
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_1e5
    .catch Ljava/lang/InterruptedException; {:try_start_1e2 .. :try_end_1e5} :catch_1e6

    .line 926
    :goto_1e5
    goto :goto_1ea

    :catch_1e6
    move-exception v0

    goto :goto_1e5

    .line 894
    .end local v1    # "hqmThread":Ljava/lang/Thread;
    :cond_1e8
    move v12, v6

    move-object v13, v7

    .line 929
    :goto_1ea
    sget-wide v0, Lcom/android/server/Watchdog;->WSyncCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/Watchdog;->WSyncCount:J

    .line 932
    sget-wide v0, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_1fc

    .line 933
    sput v16, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    .line 934
    sput v16, Lcom/android/server/Watchdog;->mScreenOffCount:I

    .line 935
    return-void

    .line 937
    :cond_1fc
    sget v0, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    add-int/2addr v0, v12

    sput v0, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    .line 939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "!@ The heap has been allocated excessively. OverThresholdCnt : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 942
    sget v0, Lcom/android/server/Watchdog;->mOverThresholdCnt:I

    int-to-long v0, v0

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    if-gez v0, :cond_227

    .line 943
    const-string/jumbo v0, "under RESET_INTERVAL"

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    return-void

    .line 949
    :cond_227
    sget-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 950
    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 951
    .local v0, "powerManager":Landroid/os/PowerManager;
    if-eqz v0, :cond_243

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_243

    .line 952
    const-string/jumbo v1, "screen is on now"

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    sput v16, Lcom/android/server/Watchdog;->mScreenOffCount:I

    goto :goto_248

    .line 955
    :cond_243
    sget v1, Lcom/android/server/Watchdog;->mScreenOffCount:I

    add-int/2addr v1, v12

    sput v1, Lcom/android/server/Watchdog;->mScreenOffCount:I

    .line 957
    :goto_248
    sget v1, Lcom/android/server/Watchdog;->mScreenOffCount:I

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    cmp-long v1, v1, v3

    if-gtz v1, :cond_295

    .line 958
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen is on now (or off few seconds ago) cnt : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/Watchdog;->mScreenOffCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    sget v1, Lcom/android/server/Watchdog;->mScreenOffCount:I

    int-to-long v1, v1

    cmp-long v1, v1, v3

    if-nez v1, :cond_294

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The heap usage of system_server exceeds max heap size("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/android/server/Watchdog;->mThresholdOfHeapSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "m). Dump Java Heap!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const/16 v2, 0xc

    invoke-static {v1, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 964
    :cond_294
    return-void

    .line 968
    :cond_295
    sget-object v1, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 969
    .local v1, "audioManager":Landroid/media/AudioManager;
    if-nez v1, :cond_2a7

    .line 970
    const-string v2, "Failed to get AudioManager"

    invoke-static {v13, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    return-void

    .line 973
    :cond_2a7
    invoke-virtual {v1}, Landroid/media/AudioManager;->getActivePlaybackConfigurations()Ljava/util/List;

    move-result-object v2

    .line 974
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioPlaybackConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2af
    :goto_2af
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2ea

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioPlaybackConfiguration;

    .line 975
    .local v4, "apc":Landroid/media/AudioPlaybackConfiguration;
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes;->getUsage()I

    move-result v5

    .line 977
    .local v5, "usage":I
    const/4 v6, 0x2

    if-eq v5, v6, :cond_2af

    const/4 v7, 0x6

    if-ne v5, v7, :cond_2ca

    .line 979
    goto :goto_2af

    .line 981
    :cond_2ca
    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->isActive()Z

    move-result v7

    if-eqz v7, :cond_2e9

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio is active by uid : "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/media/AudioPlaybackConfiguration;->getClientUid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v13, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    return-void

    .line 985
    .end local v4    # "apc":Landroid/media/AudioPlaybackConfiguration;
    .end local v5    # "usage":I
    :cond_2e9
    goto :goto_2af

    .line 988
    :cond_2ea
    sget-object v3, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 989
    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 990
    .local v3, "telecomManager":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_303

    invoke-virtual {v3}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v4

    if-eqz v4, :cond_303

    .line 991
    const-string v4, "In call"

    invoke-static {v13, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void

    .line 996
    :cond_303
    new-instance v4, Ljava/lang/OutOfMemoryError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HeapFull, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "MB was used"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static synthetic access$000()Landroid/content/Context;
    .registers 1

    .line 96
    sget-object v0, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/Watchdog;)Landroid/os/SemHqmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;

    .line 96
    iget-object v0, p0, Lcom/android/server/Watchdog;->semHqmManager:Landroid/os/SemHqmManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/Watchdog;Landroid/os/SemHqmManager;)Landroid/os/SemHqmManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;
    .param p1, "x1"    # Landroid/os/SemHqmManager;

    .line 96
    iput-object p1, p0, Lcom/android/server/Watchdog;->semHqmManager:Landroid/os/SemHqmManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/Watchdog;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/Watchdog;

    .line 96
    iget-object v0, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method private describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 765
    .local p1, "checkers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 766
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 767
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_19

    .line 768
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    :cond_19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->describeBlockedStateLocked()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 772
    .end local v1    # "i":I
    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private doSysRq(C)V
    .registers 5
    .param p1, "c"    # C

    .line 1315
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    const-string v1, "/proc/sysrq-trigger"

    invoke-direct {v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v0, "sysrq_trigger":Ljava/io/FileWriter;
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(I)V

    .line 1317
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    .line 1320
    .end local v0    # "sysrq_trigger":Ljava/io/FileWriter;
    goto :goto_16

    .line 1318
    :catch_e
    move-exception v0

    .line 1319
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "Watchdog"

    const-string v2, "Failed to write to /proc/sysrq-trigger"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1321
    .end local v0    # "e":Ljava/io/IOException;
    :goto_16
    return-void
.end method

.method private evaluateCheckerCompletionLocked()I
    .registers 5

    .line 745
    const/4 v0, 0x0

    .line 746
    .local v0, "state":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 747
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 748
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->getCompletionStateLocked()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 746
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 750
    .end local v1    # "i":I
    :cond_1d
    return v0
.end method

.method private getBlockedCheckersLocked()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;"
        }
    .end annotation

    .line 754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 755
    .local v0, "checkers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 756
    iget-object v2, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/Watchdog$HandlerChecker;

    .line 757
    .local v2, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v2}, Lcom/android/server/Watchdog$HandlerChecker;->isOverdueLocked()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 758
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 755
    .end local v2    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 761
    .end local v1    # "i":I
    :cond_22
    return-object v0
.end method

.method private getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;
    .registers 6
    .param p1, "mProcessCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1002
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1004
    .local v1, "anrTime":J
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 1005
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {p1}, Lcom/android/internal/os/ProcessCpuTracker;->printCpuCoreInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1009
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/android/server/Watchdog;
    .registers 1

    .line 540
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    if-nez v0, :cond_b

    .line 541
    new-instance v0, Lcom/android/server/Watchdog;

    invoke-direct {v0}, Lcom/android/server/Watchdog;-><init>()V

    sput-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    .line 544
    :cond_b
    sget-object v0, Lcom/android/server/Watchdog;->sWatchdog:Lcom/android/server/Watchdog;

    return-object v0
.end method

.method private static getInterestingHalPids()Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 777
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v0

    .line 778
    .local v0, "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    nop

    .line 779
    invoke-interface {v0}, Landroid/hidl/manager/V1_0/IServiceManager;->debugDump()Ljava/util/ArrayList;

    move-result-object v1

    .line 780
    .local v1, "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 781
    .local v2, "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;

    .line 782
    .local v4, "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_24

    .line 783
    goto :goto_12

    .line 786
    :cond_24
    sget-object v5, Lcom/android/server/Watchdog;->HAL_INTERFACES_OF_INTEREST:Ljava/util/List;

    iget-object v6, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->interfaceName:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2f

    .line 787
    goto :goto_12

    .line 790
    :cond_2f
    iget v5, v4, Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 791
    nop

    .end local v4    # "info":Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;
    goto :goto_12

    .line 792
    :cond_3a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3f} :catch_40

    return-object v3

    .line 793
    .end local v0    # "serviceManager":Landroid/hidl/manager/V1_0/IServiceManager;
    .end local v1    # "dump":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hidl/manager/V1_0/IServiceManager$InstanceDebugInfo;>;"
    .end local v2    # "pids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_40
    move-exception v0

    .line 794
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method static getInterestingNativePids()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 799
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingHalPids()Ljava/util/ArrayList;

    move-result-object v0

    .line 801
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-object v1, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object v1

    .line 802
    .local v1, "nativePids":[I
    if-eqz v1, :cond_25

    .line 803
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, v1

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 804
    array-length v2, v1

    const/4 v3, 0x0

    :goto_17
    if-ge v3, v2, :cond_25

    aget v4, v1, v3

    .line 805
    .local v4, "i":I
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    .end local v4    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 809
    :cond_25
    return-object v0
.end method

.method private static isInterestingJavaProcess(Ljava/lang/String;)Z
    .registers 2
    .param p0, "processName"    # Ljava/lang/String;

    .line 629
    sget-object v0, Lcom/android/server/StorageManagerService;->sMediaStoreAuthorityProcessName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 630
    const-string v0, "com.android.phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 629
    :goto_14
    return v0
.end method

.method private native native_sdogClose()V
.end method

.method private native native_sdogKick()V
.end method

.method private native native_sdogOpen()I
.end method

.method private native native_sdogSetTimeout(I)V
.end method


# virtual methods
.method public addMonitor(Lcom/android/server/Watchdog$Monitor;)V
    .registers 3
    .param p1, "monitor"    # Lcom/android/server/Watchdog$Monitor;

    .line 671
    monitor-enter p0

    .line 672
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mMonitorChecker:Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v0, p1}, Lcom/android/server/Watchdog$HandlerChecker;->addMonitorLocked(Lcom/android/server/Watchdog$Monitor;)V

    .line 673
    monitor-exit p0

    .line 674
    return-void

    .line 673
    :catchall_8
    move-exception v0

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw v0
.end method

.method public addThread(Landroid/os/Handler;)V
    .registers 4
    .param p1, "thread"    # Landroid/os/Handler;

    .line 677
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/Watchdog;->addThread(Landroid/os/Handler;J)V

    .line 678
    return-void
.end method

.method public addThread(Landroid/os/Handler;J)V
    .registers 12
    .param p1, "thread"    # Landroid/os/Handler;
    .param p2, "timeoutMillis"    # J

    .line 681
    monitor-enter p0

    .line 682
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 683
    .local v4, "name":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/server/Watchdog$HandlerChecker;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/Watchdog$HandlerChecker;-><init>(Lcom/android/server/Watchdog;Landroid/os/Handler;Ljava/lang/String;J)V

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    nop

    .end local v4    # "name":Ljava/lang/String;
    monitor-exit p0

    .line 685
    return-void

    .line 684
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Lcom/android/server/am/ActivityManagerService;

    .line 621
    iput-object p2, p0, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    .line 622
    sput-object p1, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    .line 623
    new-instance v0, Lcom/android/server/Watchdog$RebootRequestReceiver;

    invoke-direct {v0, p0}, Lcom/android/server/Watchdog$RebootRequestReceiver;-><init>(Lcom/android/server/Watchdog;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.REBOOT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.permission.REBOOT"

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 626
    return-void
.end method

.method public pauseWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 701
    monitor-enter p0

    .line 702
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 703
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 704
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->pauseLocked(Ljava/lang/String;)V

    .line 706
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_24
    goto :goto_7

    .line 707
    :cond_25
    monitor-exit p0

    .line 708
    return-void

    .line 707
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public processDied(Ljava/lang/String;I)V
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 650
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interesting Java process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " died. Pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    monitor-enter p0

    .line 653
    :try_start_25
    iget-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 654
    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v0

    .line 656
    :cond_33
    :goto_33
    return-void
.end method

.method public processStarted(Ljava/lang/String;I)V
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .line 638
    invoke-static {p1}, Lcom/android/server/Watchdog;->isInterestingJavaProcess(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interesting Java process "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " started. Pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    monitor-enter p0

    .line 641
    :try_start_25
    iget-object v0, p0, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 642
    monitor-exit p0

    goto :goto_33

    :catchall_30
    move-exception v0

    monitor-exit p0
    :try_end_32
    .catchall {:try_start_25 .. :try_end_32} :catchall_30

    throw v0

    .line 644
    :cond_33
    :goto_33
    return-void
.end method

.method rebootSystem(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rebooting system because: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const-string/jumbo v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/os/IPowerManager;

    .line 739
    .local v0, "pms":Landroid/os/IPowerManager;
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {v0, v1, p1, v1}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_23} :catch_24

    .line 741
    goto :goto_25

    .line 740
    :catch_24
    move-exception v1

    .line 742
    :goto_25
    return-void
.end method

.method public resumeWatchingCurrentThread(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 723
    monitor-enter p0

    .line 724
    :try_start_1
    iget-object v0, p0, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/Watchdog$HandlerChecker;

    .line 725
    .local v1, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 726
    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog$HandlerChecker;->resumeLocked(Ljava/lang/String;)V

    .line 728
    .end local v1    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    :cond_24
    goto :goto_7

    .line 729
    :cond_25
    monitor-exit p0

    .line 730
    return-void

    .line 729
    :catchall_27
    move-exception v0

    monitor-exit p0
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_27

    throw v0
.end method

.method public run()V
    .registers 27

    .line 1015
    move-object/from16 v8, p0

    const/4 v0, 0x0

    .line 1016
    .local v0, "waitedHalf":Z
    const/4 v1, 0x0

    .line 1017
    .local v1, "isHighTemp":Z
    const/4 v2, -0x1

    .line 1018
    .local v2, "temperature":I
    const-string v9, "/sys/class/power_supply/battery/temp"

    .line 1020
    .local v9, "TEMP_PATH":Ljava/lang/String;
    const-string/jumbo v3, "persist.vendor.softdog"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1021
    .local v10, "sdogProp":Ljava/lang/String;
    const-string/jumbo v3, "off"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1022
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->native_sdogOpen()I

    move-result v3

    sput v3, Lcom/android/server/Watchdog;->sdogFd:I

    goto :goto_25

    .line 1024
    :cond_1e
    const-string v3, "Watchdog"

    const-string v4, "!@persist.vendor.softdog is off, so do not turn on softdog"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    :goto_25
    sget v3, Lcom/android/server/Watchdog;->sdogFd:I

    const/16 v11, 0x64

    if-lez v3, :cond_33

    .line 1028
    const-string/jumbo v3, "softdog"

    sput-object v3, Lcom/android/server/Watchdog;->sdogWay:Ljava/lang/String;

    .line 1029
    invoke-direct {v8, v11}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    .line 1036
    :cond_33
    move v12, v0

    .end local v0    # "waitedHalf":Z
    .local v12, "waitedHalf":Z
    :goto_34
    const/4 v3, 0x0

    .line 1037
    .local v3, "debuggerWasConnected":I
    monitor-enter p0

    .line 1038
    const-wide/16 v4, 0x7530

    .line 1041
    .local v4, "timeout":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_39
    :try_start_39
    iget-object v6, v8, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_4f

    .line 1042
    iget-object v6, v8, Lcom/android/server/Watchdog;->mHandlerCheckers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/Watchdog$HandlerChecker;

    .line 1043
    .local v6, "hc":Lcom/android/server/Watchdog$HandlerChecker;
    invoke-virtual {v6}, Lcom/android/server/Watchdog$HandlerChecker;->scheduleCheckLocked()V

    .line 1041
    .end local v6    # "hc":Lcom/android/server/Watchdog$HandlerChecker;
    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    .line 1046
    .end local v0    # "i":I
    :cond_4f
    if-lez v3, :cond_53

    .line 1047
    add-int/lit8 v3, v3, -0x1

    .line 1050
    :cond_53
    sget v0, Lcom/android/server/Watchdog;->sdogFd:I

    const/4 v6, 0x0

    if-lez v0, :cond_b2

    .line 1051
    sget-boolean v0, Lcom/android/server/Watchdog;->DEBUG_LEVEL_LOW:Z

    if-eqz v0, :cond_60

    .line 1052
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->native_sdogKick()V
    :try_end_5f
    .catchall {:try_start_39 .. :try_end_5f} :catchall_453

    goto :goto_b2

    .line 1055
    :cond_60
    :try_start_60
    new-instance v0, Ljava/io/File;

    const-string v7, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x400

    invoke-static {v0, v7, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1056
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_78

    .line 1057
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 1059
    :cond_78
    if-nez v1, :cond_8c

    const/16 v7, 0x258

    if-le v2, v7, :cond_8c

    .line 1060
    const/4 v1, 0x1

    .line 1061
    const/16 v7, 0x3e8

    invoke-direct {v8, v7}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    .line 1062
    const-string v7, "Watchdog"

    const-string v13, "!@ softdog timeout : 1000"

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 1063
    :cond_8c
    if-eqz v1, :cond_9e

    const/16 v7, 0x226

    if-ge v2, v7, :cond_9e

    .line 1064
    const/4 v1, 0x0

    .line 1065
    invoke-direct {v8, v11}, Lcom/android/server/Watchdog;->native_sdogSetTimeout(I)V

    .line 1066
    const-string v7, "Watchdog"

    const-string v13, "!@ softdog timeout : 100"

    invoke-static {v7, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a1

    .line 1068
    :cond_9e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->native_sdogKick()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_a1} :catch_a4
    .catchall {:try_start_60 .. :try_end_a1} :catchall_453

    .line 1073
    .end local v0    # "value":Ljava/lang/String;
    :goto_a1
    move v13, v1

    move v14, v2

    goto :goto_b4

    .line 1070
    :catch_a4
    move-exception v0

    .line 1071
    .local v0, "e":Ljava/io/IOException;
    :try_start_a5
    const-string v7, "Watchdog"

    const-string v13, "FileUtils"

    invoke-static {v7, v13, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1072
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->native_sdogKick()V
    :try_end_af
    .catchall {:try_start_a5 .. :try_end_af} :catchall_453

    move v13, v1

    move v14, v2

    goto :goto_b4

    .line 1077
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b2
    :goto_b2
    move v13, v1

    move v14, v2

    .end local v1    # "isHighTemp":Z
    .end local v2    # "temperature":I
    .local v13, "isHighTemp":Z
    .local v14, "temperature":I
    :goto_b4
    :try_start_b4
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    const-wide/32 v15, 0x100000

    div-long/2addr v0, v15

    move-wide v1, v0

    .line 1078
    .local v1, "TotalMemory":J
    nop

    .line 1079
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v17

    div-long v17, v17, v15

    sub-long v6, v1, v17

    .line 1080
    .local v6, "AllocatedMemory":J
    invoke-direct {v8, v1, v2, v6, v7}, Lcom/android/server/Watchdog;->PrintLogAndCheckReset(JJ)V

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16
    :try_end_d5
    .catchall {:try_start_b4 .. :try_end_d5} :catchall_44f

    move/from16 v18, v3

    .line 1087
    .end local v3    # "debuggerWasConnected":I
    .local v16, "start":J
    .local v18, "debuggerWasConnected":I
    :goto_d7
    const-wide/16 v19, 0x0

    cmp-long v0, v4, v19

    if-lez v0, :cond_10f

    .line 1088
    :try_start_dd
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_e1
    .catchall {:try_start_dd .. :try_end_e1} :catchall_449

    if-eqz v0, :cond_e6

    .line 1089
    const/4 v0, 0x2

    move v3, v0

    .end local v18    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    goto :goto_e8

    .line 1088
    .end local v0    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    :cond_e6
    move/from16 v3, v18

    .line 1092
    .end local v18    # "debuggerWasConnected":I
    .restart local v3    # "debuggerWasConnected":I
    :goto_e8
    :try_start_e8
    invoke-virtual {v8, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_eb
    .catch Ljava/lang/InterruptedException; {:try_start_e8 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_44f

    .line 1096
    goto :goto_f6

    .line 1094
    :catch_ec
    move-exception v0

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    .line 1095
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_f1
    const-string v11, "Watchdog"

    invoke-static {v11, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1097
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_f6
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0
    :try_end_fa
    .catchall {:try_start_f1 .. :try_end_fa} :catchall_44f

    if-eqz v0, :cond_100

    .line 1098
    const/4 v0, 0x2

    move/from16 v18, v0

    .end local v3    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    goto :goto_102

    .line 1097
    .end local v0    # "debuggerWasConnected":I
    .restart local v3    # "debuggerWasConnected":I
    :cond_100
    move/from16 v18, v3

    .line 1100
    .end local v3    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    :goto_102
    const-wide/16 v20, 0x7530

    :try_start_104
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    sub-long v22, v22, v16

    sub-long v4, v20, v22

    const/16 v11, 0x64

    goto :goto_d7

    .line 1103
    :cond_10f
    const/4 v0, 0x0

    .line 1104
    .local v0, "fdLimitTriggered":Z
    iget-object v3, v8, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    if-eqz v3, :cond_11b

    .line 1105
    iget-object v3, v8, Lcom/android/server/Watchdog;->mOpenFdMonitor:Lcom/android/server/Watchdog$OpenFdMonitor;

    invoke-virtual {v3}, Lcom/android/server/Watchdog$OpenFdMonitor;->monitor()Z

    move-result v3

    move v0, v3

    .line 1108
    :cond_11b
    const/4 v11, 0x2

    if-nez v0, :cond_1f1

    .line 1109
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->evaluateCheckerCompletionLocked()I

    move-result v3

    .line 1110
    .local v3, "waitState":I
    if-nez v3, :cond_12c

    .line 1112
    const/4 v12, 0x0

    .line 1113
    monitor-exit p0

    move v1, v13

    move v2, v14

    const/16 v11, 0x64

    goto/16 :goto_34

    .line 1114
    :cond_12c
    const/4 v15, 0x1

    if-ne v3, v15, :cond_136

    .line 1116
    monitor-exit p0

    move v1, v13

    move v2, v14

    const/16 v11, 0x64

    goto/16 :goto_34

    .line 1117
    :cond_136
    if-ne v3, v11, :cond_1e0

    .line 1118
    if-nez v12, :cond_1d3

    .line 1119
    const-string v11, "Watchdog"

    const-string v15, "!@*** WAITED_HALF"

    invoke-static {v11, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    const-string v11, "Watchdog"

    iget-object v15, v8, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v8, v15}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v11, v15}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v11

    if-eqz v11, :cond_18b

    .line 1127
    const-string v11, "Watchdog"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    .end local v0    # "fdLimitTriggered":Z
    .local v22, "fdLimitTriggered":Z
    const-string v0, "!@*** unFreezeAllPackages for watchdog HALF debug! request time : "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    move-wide/from16 v23, v1

    .end local v1    # "TotalMemory":J
    .local v23, "TotalMemory":J
    new-instance v1, Ljava/util/Date;

    move/from16 v25, v3

    .end local v3    # "waitState":I
    .local v25, "waitState":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const-string v1, "Watchdog_HALF"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    goto :goto_191

    .line 1126
    .end local v22    # "fdLimitTriggered":Z
    .end local v23    # "TotalMemory":J
    .end local v25    # "waitState":I
    .restart local v0    # "fdLimitTriggered":Z
    .restart local v1    # "TotalMemory":J
    .restart local v3    # "waitState":I
    :cond_18b
    move/from16 v22, v0

    move-wide/from16 v23, v1

    move/from16 v25, v3

    .line 1133
    .end local v0    # "fdLimitTriggered":Z
    .end local v1    # "TotalMemory":J
    .end local v3    # "waitState":I
    .restart local v22    # "fdLimitTriggered":Z
    .restart local v23    # "TotalMemory":J
    .restart local v25    # "waitState":I
    :goto_191
    sget v0, Lcom/android/server/Watchdog;->sdogFd:I

    if-lez v0, :cond_198

    .line 1134
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->native_sdogKick()V

    .line 1139
    :cond_198
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1140
    .local v0, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/ActivityManagerService;->waited_half:Z

    .line 1141
    nop

    .line 1142
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v1

    .line 1141
    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1, v2}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;)Ljava/io/File;

    .line 1143
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/am/ActivityManagerService;->waited_half:Z

    .line 1144
    const/4 v12, 0x1

    .line 1145
    const-string v1, "Watchdog"

    const-string v2, "!@*** End dumpStackTraces"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v1, v8, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    if-eqz v1, :cond_1d9

    .line 1149
    const-string v1, "Watchdog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ActivityController description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v8, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d9

    .line 1118
    .end local v22    # "fdLimitTriggered":Z
    .end local v23    # "TotalMemory":J
    .end local v25    # "waitState":I
    .local v0, "fdLimitTriggered":Z
    .restart local v1    # "TotalMemory":J
    .restart local v3    # "waitState":I
    :cond_1d3
    move/from16 v22, v0

    move-wide/from16 v23, v1

    move/from16 v25, v3

    .line 1153
    .end local v0    # "fdLimitTriggered":Z
    .end local v1    # "TotalMemory":J
    .end local v3    # "waitState":I
    .restart local v22    # "fdLimitTriggered":Z
    .restart local v23    # "TotalMemory":J
    .restart local v25    # "waitState":I
    :cond_1d9
    :goto_1d9
    monitor-exit p0

    move v1, v13

    move v2, v14

    const/16 v11, 0x64

    goto/16 :goto_34

    .line 1157
    .end local v22    # "fdLimitTriggered":Z
    .end local v23    # "TotalMemory":J
    .end local v25    # "waitState":I
    .restart local v0    # "fdLimitTriggered":Z
    .restart local v1    # "TotalMemory":J
    .restart local v3    # "waitState":I
    :cond_1e0
    move/from16 v22, v0

    move-wide/from16 v23, v1

    move/from16 v25, v3

    .end local v0    # "fdLimitTriggered":Z
    .end local v1    # "TotalMemory":J
    .end local v3    # "waitState":I
    .restart local v22    # "fdLimitTriggered":Z
    .restart local v23    # "TotalMemory":J
    .restart local v25    # "waitState":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->getBlockedCheckersLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 1158
    .local v0, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    invoke-direct {v8, v0}, Lcom/android/server/Watchdog;->describeCheckersLocked(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    .line 1159
    .end local v25    # "waitState":I
    .local v1, "subject":Ljava/lang/String;
    move-object v15, v0

    move-object v3, v1

    goto :goto_1fd

    .line 1160
    .end local v22    # "fdLimitTriggered":Z
    .end local v23    # "TotalMemory":J
    .local v0, "fdLimitTriggered":Z
    .local v1, "TotalMemory":J
    :cond_1f1
    move/from16 v22, v0

    move-wide/from16 v23, v1

    .end local v0    # "fdLimitTriggered":Z
    .end local v1    # "TotalMemory":J
    .restart local v22    # "fdLimitTriggered":Z
    .restart local v23    # "TotalMemory":J
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 1161
    .local v0, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    const-string v1, "Open FD high water mark reached"

    move-object v15, v0

    move-object v3, v1

    .line 1163
    .end local v0    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .local v3, "subject":Ljava/lang/String;
    .local v15, "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    :goto_1fd
    iget-boolean v0, v8, Lcom/android/server/Watchdog;->mAllowRestart:Z

    move/from16 v16, v0

    .line 1164
    .end local v4    # "timeout":J
    .end local v6    # "AllocatedMemory":J
    .end local v22    # "fdLimitTriggered":Z
    .end local v23    # "TotalMemory":J
    .local v16, "allowRestart":Z
    monitor-exit p0
    :try_end_202
    .catchall {:try_start_104 .. :try_end_202} :catchall_449

    .line 1169
    const/16 v0, 0xaf2

    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1170
    const-string v0, "P|WD"

    invoke-static {v0, v3}, Landroid/os/Debug;->saveResetReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, v8, Lcom/android/server/Watchdog;->mInterestingJavaPids:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v7, v0

    .line 1174
    .local v7, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v6, v0

    .line 1175
    .local v6, "report":Ljava/lang/StringBuilder;
    invoke-static {}, Lcom/android/server/MemoryPressureUtil;->currentPsiState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1176
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    move-object v5, v0

    .line 1180
    .local v5, "tracesFileException":Ljava/io/StringWriter;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->getBinderTransactionInfo(I)Lcom/android/server/am/BinderTransaction$BinderProcsInfo;

    move-result-object v4

    .line 1181
    .local v4, "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    if-eqz v4, :cond_24d

    .line 1182
    iget-object v0, v4, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->javaPids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_237
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_24d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1183
    .local v1, "pid":Ljava/lang/Integer;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24c

    .line 1184
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1186
    .end local v1    # "pid":Ljava/lang/Integer;
    :cond_24c
    goto :goto_237

    .line 1189
    :cond_24d
    iget-object v0, v8, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1190
    invoke-static {}, Lcom/android/server/Watchdog;->getInterestingNativePids()Ljava/util/ArrayList;

    move-result-object v2

    .line 1189
    invoke-static {v7, v0, v1, v2, v5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(Ljava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;Ljava/util/ArrayList;Ljava/io/StringWriter;)Ljava/io/File;

    move-result-object v17

    .line 1195
    .local v17, "stack":Ljava/io/File;
    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 1198
    iget-object v0, v8, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v8, v0}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    invoke-virtual {v5}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    .line 1203
    const/16 v0, 0x77

    invoke-direct {v8, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1204
    const/16 v0, 0x6c

    invoke-direct {v8, v0}, Lcom/android/server/Watchdog;->doSysRq(C)V

    .line 1209
    new-instance v0, Lcom/android/server/Watchdog$2;

    const-string/jumbo v20, "watchdogWriteToDropbox"

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v21, v3

    .end local v3    # "subject":Ljava/lang/String;
    .local v21, "subject":Ljava/lang/String;
    move-object/from16 v3, v20

    move-object/from16 v20, v4

    .end local v4    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .local v20, "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    move-object/from16 v4, v21

    move-object/from16 v22, v5

    .end local v5    # "tracesFileException":Ljava/io/StringWriter;
    .local v22, "tracesFileException":Ljava/io/StringWriter;
    move-object v5, v6

    move-object/from16 v23, v6

    .end local v6    # "report":Ljava/lang/StringBuilder;
    .local v23, "report":Ljava/lang/StringBuilder;
    move-object/from16 v6, v17

    move-object/from16 v24, v7

    .end local v7    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local v24, "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object/from16 v7, v20

    invoke-direct/range {v1 .. v7}, Lcom/android/server/Watchdog$2;-><init>(Lcom/android/server/Watchdog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/io/File;Lcom/android/server/am/BinderTransaction$BinderProcsInfo;)V

    .line 1222
    .local v1, "dropboxThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1224
    const-wide/16 v2, 0x7d0

    :try_start_29e
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_2a1
    .catch Ljava/lang/InterruptedException; {:try_start_29e .. :try_end_2a1} :catch_2a2

    .line 1225
    :goto_2a1
    goto :goto_2a4

    :catch_2a2
    move-exception v0

    goto :goto_2a1

    .line 1229
    :goto_2a4
    const/4 v2, 0x0

    .line 1231
    .local v2, "description":Ljava/lang/String;
    monitor-enter p0

    .line 1232
    :try_start_2a6
    iget-object v0, v8, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    move-object v3, v0

    .line 1235
    .local v3, "controller":Landroid/app/IActivityController;
    iget-object v0, v8, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;
    :try_end_2ab
    .catchall {:try_start_2a6 .. :try_end_2ab} :catchall_43f

    move-object v2, v0

    .line 1238
    :try_start_2ac
    monitor-exit p0
    :try_end_2ad
    .catchall {:try_start_2ac .. :try_end_2ad} :catchall_436

    .line 1239
    if-eqz v3, :cond_2d8

    .line 1240
    const-string v0, "Watchdog"

    const-string v4, "Reporting stuck state to activity controller"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :try_start_2b6
    const-string v0, "Service dumps disabled due to hung system process."

    invoke-static {v0}, Landroid/os/Binder;->setDumpDisabled(Ljava/lang/String;)V
    :try_end_2bb
    .catch Landroid/os/RemoteException; {:try_start_2b6 .. :try_end_2bb} :catch_2d4

    .line 1244
    move-object/from16 v4, v21

    .end local v21    # "subject":Ljava/lang/String;
    .local v4, "subject":Ljava/lang/String;
    :try_start_2bd
    invoke-interface {v3, v4}, Landroid/app/IActivityController;->systemNotResponding(Ljava/lang/String;)I

    move-result v0

    .line 1245
    .local v0, "res":I
    if-ltz v0, :cond_2d1

    .line 1246
    const-string v5, "Watchdog"

    const-string v6, "!@ Activity controller requested to coninue to wait"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ca
    .catch Landroid/os/RemoteException; {:try_start_2bd .. :try_end_2ca} :catch_2d2

    .line 1247
    const/4 v12, 0x0

    .line 1248
    move v1, v13

    move v2, v14

    const/16 v11, 0x64

    goto/16 :goto_34

    .line 1251
    .end local v0    # "res":I
    :cond_2d1
    goto :goto_2da

    .line 1250
    :catch_2d2
    move-exception v0

    goto :goto_2da

    .end local v4    # "subject":Ljava/lang/String;
    .restart local v21    # "subject":Ljava/lang/String;
    :catch_2d4
    move-exception v0

    move-object/from16 v4, v21

    .end local v21    # "subject":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    goto :goto_2da

    .line 1239
    .end local v4    # "subject":Ljava/lang/String;
    .restart local v21    # "subject":Ljava/lang/String;
    :cond_2d8
    move-object/from16 v4, v21

    .line 1255
    .end local v21    # "subject":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    :goto_2da
    invoke-static {}, Landroid/os/Debug;->isDebuggerConnected()Z

    move-result v0

    if-eqz v0, :cond_2e5

    .line 1256
    const/16 v18, 0x2

    move/from16 v0, v18

    goto :goto_2e7

    .line 1255
    :cond_2e5
    move/from16 v0, v18

    .line 1258
    .end local v18    # "debuggerWasConnected":I
    .local v0, "debuggerWasConnected":I
    :goto_2e7
    if-lt v0, v11, :cond_2f9

    .line 1259
    const-string v5, "Watchdog"

    const-string v6, "!@ Debugger connected: Watchdog is *not* killing the system process"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v0

    move-object v11, v1

    move-object/from16 v5, v20

    move-object/from16 v20, v2

    goto/16 :goto_42f

    .line 1260
    :cond_2f9
    if-lez v0, :cond_30b

    .line 1261
    const-string v5, "Watchdog"

    const-string v6, "!@ Debugger was connected: Watchdog is *not* killing the system process"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v0

    move-object v11, v1

    move-object/from16 v5, v20

    move-object/from16 v20, v2

    goto/16 :goto_42f

    .line 1262
    :cond_30b
    if-nez v16, :cond_31d

    .line 1263
    const-string v5, "Watchdog"

    const-string v6, "!@ Restart not allowed: Watchdog is *not* killing the system process"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v0

    move-object v11, v1

    move-object/from16 v5, v20

    move-object/from16 v20, v2

    goto/16 :goto_42f

    .line 1265
    :cond_31d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@*** WATCHDOG KILLING SYSTEM PROCESS: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Watchdog"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    invoke-static {v15}, Lcom/android/server/WatchdogDiagnostics;->diagnoseCheckers(Ljava/util/List;)V

    .line 1267
    move-object/from16 v5, v20

    .end local v20    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .local v5, "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    if-eqz v5, :cond_352

    .line 1268
    iget-object v6, v5, Lcom/android/server/am/BinderTransaction$BinderProcsInfo;->rawInfo:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_340
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_352

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1269
    .local v7, "binderLog":Ljava/lang/String;
    const-string v11, "Watchdog"

    invoke-static {v11, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_340

    .line 1272
    .end local v7    # "binderLog":Ljava/lang/String;
    :cond_352
    if-eqz v2, :cond_36a

    .line 1273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ActivityController is set by "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Watchdog"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    :cond_36a
    iget-object v6, v8, Lcom/android/server/Watchdog;->mActivity:Lcom/android/server/am/ActivityManagerService;

    if-eqz v6, :cond_3b6

    .line 1276
    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPendingCmdedBroadcast()Ljava/util/ArrayList;

    move-result-object v6

    .line 1277
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3b3

    .line 1278
    const-string v7, "Watchdog"

    const-string/jumbo v11, "pending commanded broadcasts"

    invoke-static {v7, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_381
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_3b0

    .line 1280
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v0

    .end local v0    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    const-string v0, "#"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "Watchdog"

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v18

    goto :goto_381

    .end local v18    # "debuggerWasConnected":I
    .restart local v0    # "debuggerWasConnected":I
    :cond_3b0
    move/from16 v18, v0

    .end local v0    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    goto :goto_3b8

    .line 1277
    .end local v7    # "i":I
    .end local v18    # "debuggerWasConnected":I
    .restart local v0    # "debuggerWasConnected":I
    :cond_3b3
    move/from16 v18, v0

    .end local v0    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    goto :goto_3b8

    .line 1275
    .end local v6    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/StringBuilder;>;"
    .end local v18    # "debuggerWasConnected":I
    .restart local v0    # "debuggerWasConnected":I
    :cond_3b6
    move/from16 v18, v0

    .line 1287
    .end local v0    # "debuggerWasConnected":I
    .restart local v18    # "debuggerWasConnected":I
    :goto_3b8
    iget-object v0, v8, Lcom/android/server/Watchdog;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v8, v0}, Lcom/android/server/Watchdog;->getCpuInfo(Lcom/android/internal/os/ProcessCpuTracker;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "Watchdog"

    invoke-static {v6, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    invoke-static {}, Lcom/android/server/am/FreecessController;->getInstance()Lcom/android/server/am/FreecessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/FreecessController;->getFreecessEnabled()Z

    move-result v0

    if-eqz v0, :cond_3ff

    .line 1292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@*** unFreezeAllPackages for watchdog debug! request time : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/Watchdog;->mTraceDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    move-object v11, v1

    move-object/from16 v20, v2

    .end local v1    # "dropboxThread":Ljava/lang/Thread;
    .end local v2    # "description":Ljava/lang/String;
    .local v11, "dropboxThread":Ljava/lang/Thread;
    .local v20, "description":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v7, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    invoke-static {}, Lcom/android/server/am/FreecessHandler;->getInstance()Lcom/android/server/am/FreecessHandler;

    move-result-object v0

    const-string v1, "Watchdog"

    invoke-virtual {v0, v1}, Lcom/android/server/am/FreecessHandler;->sendResetAllStateMsg(Ljava/lang/String;)V

    goto :goto_402

    .line 1291
    .end local v11    # "dropboxThread":Ljava/lang/Thread;
    .end local v20    # "description":Ljava/lang/String;
    .restart local v1    # "dropboxThread":Ljava/lang/Thread;
    .restart local v2    # "description":Ljava/lang/String;
    :cond_3ff
    move-object v11, v1

    move-object/from16 v20, v2

    .line 1297
    .end local v1    # "dropboxThread":Ljava/lang/Thread;
    .end local v2    # "description":Ljava/lang/String;
    .restart local v11    # "dropboxThread":Ljava/lang/Thread;
    .restart local v20    # "description":Ljava/lang/String;
    :goto_402
    sget v0, Lcom/android/server/Watchdog;->sdogFd:I

    if-lez v0, :cond_40d

    .line 1298
    invoke-direct/range {p0 .. p0}, Lcom/android/server/Watchdog;->native_sdogClose()V

    .line 1299
    const-string v0, "None"

    sput-object v0, Lcom/android/server/Watchdog;->sdogWay:Ljava/lang/String;

    .line 1302
    :cond_40d
    new-instance v0, Landroid/os/BugreportParams;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/os/BugreportParams;-><init>(I)V

    .line 1303
    .local v0, "sys_watchdog":Landroid/os/BugreportParams;
    sget-object v1, Lcom/android/server/Watchdog;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "system_server"

    invoke-static {v0, v2, v1}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;Landroid/content/Context;)V

    .line 1304
    const-string v1, "Watchdog"

    const-string v2, "!@ *** GOODBYE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    .line 1306
    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 1309
    .end local v0    # "sys_watchdog":Landroid/os/BugreportParams;
    :goto_42f
    const/4 v12, 0x0

    .line 1310
    .end local v3    # "controller":Landroid/app/IActivityController;
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .end local v11    # "dropboxThread":Ljava/lang/Thread;
    .end local v15    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v16    # "allowRestart":Z
    .end local v17    # "stack":Ljava/io/File;
    .end local v18    # "debuggerWasConnected":I
    .end local v20    # "description":Ljava/lang/String;
    .end local v22    # "tracesFileException":Ljava/io/StringWriter;
    .end local v23    # "report":Ljava/lang/StringBuilder;
    .end local v24    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move v1, v13

    move v2, v14

    const/16 v11, 0x64

    goto/16 :goto_34

    .line 1238
    .restart local v1    # "dropboxThread":Ljava/lang/Thread;
    .restart local v2    # "description":Ljava/lang/String;
    .restart local v15    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .restart local v16    # "allowRestart":Z
    .restart local v17    # "stack":Ljava/io/File;
    .restart local v18    # "debuggerWasConnected":I
    .local v20, "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .restart local v21    # "subject":Ljava/lang/String;
    .restart local v22    # "tracesFileException":Ljava/io/StringWriter;
    .restart local v23    # "report":Ljava/lang/StringBuilder;
    .restart local v24    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_436
    move-exception v0

    move-object v11, v1

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    move-object/from16 v20, v2

    .end local v1    # "dropboxThread":Ljava/lang/Thread;
    .end local v2    # "description":Ljava/lang/String;
    .end local v21    # "subject":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    .restart local v5    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .restart local v11    # "dropboxThread":Ljava/lang/Thread;
    .local v20, "description":Ljava/lang/String;
    goto :goto_445

    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .end local v11    # "dropboxThread":Ljava/lang/Thread;
    .restart local v1    # "dropboxThread":Ljava/lang/Thread;
    .restart local v2    # "description":Ljava/lang/String;
    .local v20, "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .restart local v21    # "subject":Ljava/lang/String;
    :catchall_43f
    move-exception v0

    move-object v11, v1

    move-object/from16 v5, v20

    move-object/from16 v4, v21

    .end local v1    # "dropboxThread":Ljava/lang/Thread;
    .end local v20    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .end local v21    # "subject":Ljava/lang/String;
    .restart local v4    # "subject":Ljava/lang/String;
    .restart local v5    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .restart local v11    # "dropboxThread":Ljava/lang/Thread;
    :goto_445
    :try_start_445
    monitor-exit p0
    :try_end_446
    .catchall {:try_start_445 .. :try_end_446} :catchall_447

    throw v0

    :catchall_447
    move-exception v0

    goto :goto_445

    .line 1164
    .end local v2    # "description":Ljava/lang/String;
    .end local v4    # "subject":Ljava/lang/String;
    .end local v5    # "binderProcsInfo":Lcom/android/server/am/BinderTransaction$BinderProcsInfo;
    .end local v11    # "dropboxThread":Ljava/lang/Thread;
    .end local v15    # "blockedCheckers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/Watchdog$HandlerChecker;>;"
    .end local v16    # "allowRestart":Z
    .end local v17    # "stack":Ljava/io/File;
    .end local v22    # "tracesFileException":Ljava/io/StringWriter;
    .end local v23    # "report":Ljava/lang/StringBuilder;
    .end local v24    # "pids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_449
    move-exception v0

    move v1, v13

    move v2, v14

    move/from16 v3, v18

    goto :goto_454

    .end local v18    # "debuggerWasConnected":I
    .local v3, "debuggerWasConnected":I
    :catchall_44f
    move-exception v0

    move v1, v13

    move v2, v14

    goto :goto_454

    .end local v13    # "isHighTemp":Z
    .end local v14    # "temperature":I
    .local v1, "isHighTemp":Z
    .local v2, "temperature":I
    :catchall_453
    move-exception v0

    :goto_454
    :try_start_454
    monitor-exit p0
    :try_end_455
    .catchall {:try_start_454 .. :try_end_455} :catchall_453

    throw v0
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .registers 3
    .param p1, "controller"    # Landroid/app/IActivityController;

    .line 659
    monitor-enter p0

    .line 660
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mController:Landroid/app/IActivityController;

    .line 661
    monitor-exit p0

    .line 662
    return-void

    .line 661
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setActivityControllerDescription(Ljava/lang/String;)V
    .registers 3
    .param p1, "description"    # Ljava/lang/String;

    .line 1422
    monitor-enter p0

    .line 1423
    :try_start_1
    iput-object p1, p0, Lcom/android/server/Watchdog;->mControllerDescription:Ljava/lang/String;

    .line 1424
    monitor-exit p0

    .line 1425
    return-void

    .line 1424
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method public setAllowRestart(Z)V
    .registers 3
    .param p1, "allowRestart"    # Z

    .line 665
    monitor-enter p0

    .line 666
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/Watchdog;->mAllowRestart:Z

    .line 667
    monitor-exit p0

    .line 668
    return-void

    .line 667
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method
