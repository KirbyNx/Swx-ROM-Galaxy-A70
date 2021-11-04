.class final Lcom/android/server/wm/SluggishDetector$DetectInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DetectInfo"
.end annotation


# static fields
.field private static final DETECT_TYPE_AVERAGE_OVER:I = 0x1

.field private static final DETECT_TYPE_PERIODIC_LAUNCH_REPORT:I = 0x2

.field private static final DETECT_TYPE_PERIODIC_MEMORY_REPORT:I = 0x3

.field private static final DETECT_TYPE_PERIODIC_OLOG_REPORT:I = 0x4

.field private static final DIV:Ljava/lang/String; = "|"

.field private static final DIV_EXP:Ljava/lang/String; = "\\|"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoData:Ljava/lang/String;

.field private mAverageAfterSlgInfoData:[Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:[Ljava/lang/String;

.field private mAverageIoInfoData:[Ljava/lang/String;

.field private mAverageLaunchTime:[J

.field private mAveragePss:[J

.field private mAverageSwapPss:[J

.field private mAverageThroughputInfoData:[Ljava/lang/String;

.field private mBeforeSlgInfoData:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDetectType:I

.field private mInstalledPackageCount:I

.field private mIoInfoData:Ljava/lang/String;

.field private mLastLMKTime:J

.field private mLaunchTime:J

.field private mLaunchTimeStandardDeviation:[D

.field private mMeminfo:Ljava/lang/String;

.field private mMeminfoExtra:Ljava/lang/String;

.field private mPerformanceMode:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mPst:I

.field private mResolution:Ljava/lang/String;

.field private mRunCount:[J

.field private mShortComponentName:[Ljava/lang/String;

.field private mShortComponentVersionName:[Ljava/lang/String;

.field private mSwapPss:J

.field private mThroughputInfoData:Ljava/lang/String;

.field private mUptime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$DetectInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)V
    .registers 10
    .param p1, "detectType"    # I
    .param p2, "reportLaunchInfo"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    .param p3, "element"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    .line 477
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mDetectType:I

    .line 478
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    .line 479
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    .line 480
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mRunCount:[J

    .line 481
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTime:J

    .line 482
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    .line 483
    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPss:J

    .line 484
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAveragePss:[J

    .line 485
    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mSwapPss:J

    .line 486
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    .line 487
    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    .line 488
    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPerformanceMode:I

    .line 489
    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    .line 490
    const/16 v5, -0x270f

    iput v5, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPst:I

    .line 493
    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    .line 494
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    .line 495
    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mUptime:J

    .line 496
    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    .line 497
    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    .line 498
    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    .line 499
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    .line 500
    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLastLMKTime:J

    .line 502
    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    .line 503
    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    .line 504
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    .line 505
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    .line 506
    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    .line 507
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    .line 513
    # invokes: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refreshForReport()V
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$1700(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 514
    # invokes: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refreshForOccurredReport()V
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$1800(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 516
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$1900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    .line 517
    iput p1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mDetectType:I

    .line 518
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    .line 519
    new-array v1, v0, [J

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J
    invoke-static {p3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2100(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mRunCount:[J

    .line 520
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTime:J

    .line 521
    new-array v1, v0, [J

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J
    invoke-static {p3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    .line 522
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPss:J

    .line 523
    new-array v1, v0, [J

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J
    invoke-static {p3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAveragePss:[J

    .line 524
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mSwapPss:J

    .line 525
    new-array v1, v0, [J

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J
    invoke-static {p3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v4

    aput-wide v4, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    .line 526
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2800(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    .line 527
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPerformanceMode:I

    .line 528
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    .line 529
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPst:I
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3100(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPst:I

    .line 532
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    .line 533
    new-array v1, v0, [Ljava/lang/String;

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    .line 534
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mUptime:J

    .line 535
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3500(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    .line 536
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    .line 537
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    invoke-static {p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3700(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    .line 538
    new-array v0, v0, [D

    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D
    invoke-static {p3}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v1

    aput-wide v1, v0, v3

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    .line 542
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    .param p3, "x2"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .param p4, "x3"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)V

    return-void
.end method

.method private constructor <init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Ljava/util/List;)V
    .registers 24
    .param p1, "detectType"    # I
    .param p2, "reportLaunchInfo"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;",
            ">;)V"
        }
    .end annotation

    .line 548
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 475
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    .line 477
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mDetectType:I

    .line 478
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    .line 479
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    .line 480
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mRunCount:[J

    .line 481
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTime:J

    .line 482
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    .line 483
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPss:J

    .line 484
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAveragePss:[J

    .line 485
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mSwapPss:J

    .line 486
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    .line 487
    iput v2, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    .line 488
    iput v2, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPerformanceMode:I

    .line 489
    const-string/jumbo v5, "null"

    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    .line 490
    const/16 v6, -0x270f

    iput v6, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPst:I

    .line 493
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    .line 494
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    .line 495
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mUptime:J

    .line 496
    iput v2, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    .line 497
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    .line 498
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    .line 499
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    .line 500
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLastLMKTime:J

    .line 502
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mBeforeSlgInfoData:Ljava/lang/String;

    .line 503
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAfterSlgInfoData:Ljava/lang/String;

    .line 504
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageBeforeSlgInfoData:[Ljava/lang/String;

    .line 505
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageAfterSlgInfoData:[Ljava/lang/String;

    .line 506
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mThroughputInfoData:Ljava/lang/String;

    .line 507
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageThroughputInfoData:[Ljava/lang/String;

    .line 549
    # invokes: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refreshForReport()V
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$1700(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 551
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    .line 552
    .local v1, "shortComponentName":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [J

    .line 553
    .local v7, "runCount":[J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [J

    .line 554
    .local v8, "averageLaunchTime":[J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [J

    .line 555
    .local v9, "averagePss":[J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v10

    new-array v10, v10, [J

    .line 556
    .local v10, "averageSwapPss":[J
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    .line 557
    .local v11, "averageBeforeSlgInfoData":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v12

    new-array v12, v12, [Ljava/lang/String;

    .line 558
    .local v12, "averageAfterSlgInfoData":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v13

    new-array v13, v13, [Ljava/lang/String;

    .line 559
    .local v13, "averageIoInfoData":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/String;

    .line 560
    .local v14, "averageThroughputInfoData":[Ljava/lang/String;
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v15

    new-array v15, v15, [D

    .line 562
    .local v15, "launchTimeStandardDeviation":[D
    const/16 v16, 0x0

    move/from16 v6, v16

    .local v6, "i":I
    :goto_8b
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_c7

    .line 563
    move-object/from16 v2, p3

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 564
    .local v17, "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v1, v6

    .line 565
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2100(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v18

    aput-wide v18, v7, v6

    .line 566
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v18

    aput-wide v18, v8, v6

    .line 567
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v18

    aput-wide v18, v9, v6

    .line 568
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$2700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J

    move-result-wide v18

    aput-wide v18, v10, v6

    .line 569
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v13, v6

    .line 570
    # getter for: Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D
    invoke-static/range {v17 .. v17}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->access$3800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)D

    move-result-wide v18

    aput-wide v18, v15, v6

    .line 562
    .end local v17    # "e":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    add-int/lit8 v6, v6, 0x1

    const/4 v2, -0x1

    goto :goto_8b

    :cond_c7
    move-object/from16 v2, p3

    .line 573
    .end local v6    # "i":I
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$1900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;

    move-result-object v6

    iput-object v6, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    .line 574
    move/from16 v6, p1

    iput v6, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mDetectType:I

    .line 575
    iput-object v1, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    .line 576
    iput-object v7, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mRunCount:[J

    .line 577
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTime:J

    .line 578
    iput-object v8, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    .line 579
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPss:J

    .line 580
    iput-object v9, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAveragePss:[J

    .line 581
    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mSwapPss:J

    .line 582
    iput-object v10, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    .line 583
    const/4 v3, -0x1

    iput v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    .line 584
    iput v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPerformanceMode:I

    .line 585
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    .line 586
    const/16 v3, -0x270f

    iput v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPst:I

    .line 589
    iput-object v5, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    .line 590
    iput-object v13, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    .line 591
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v3

    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mUptime:J

    .line 592
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3500(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I

    move-result v3

    iput v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    .line 593
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    .line 594
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3700(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    .line 595
    iput-object v15, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    .line 596
    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLastLMKTime:J

    .line 600
    return-void
.end method

.method synthetic constructor <init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 5
    .param p1, "x0"    # I
    .param p2, "x1"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 465
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Ljava/util/List;)V

    return-void
.end method

.method private SluggishInfo_Logging()V
    .registers 5

    .line 805
    invoke-virtual {p0}, Lcom/android/server/wm/SluggishDetector$DetectInfo;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    .local v0, "SluggishInfo":Ljava/lang/String;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SluggishInfo_Logging() - SluggishInfo : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wm/SluggishDetector$DetectInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$DetectInfo;

    .line 465
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$DetectInfo;->SluggishInfo_Logging()V

    return-void
.end method

.method private process()V
    .registers 11

    .line 766
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    if-nez v0, :cond_d

    .line 767
    sget-object v0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "process() - mContext is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void

    .line 775
    :cond_d
    :try_start_d
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 776
    .local v0, "shortComponentVersionName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 777
    .local v1, "pm":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1d
    if-ge v5, v3, :cond_47

    aget-object v6, v2, v5
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_21} :catch_55

    .line 779
    .local v6, "shortComponentName":Ljava/lang/String;
    :try_start_21
    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v4

    .line 780
    .local v7, "packageName":Ljava/lang/String;
    const/16 v8, 0x80

    invoke-virtual {v1, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    .line 781
    .local v8, "info":Landroid/content/pm/PackageInfo;
    iget-object v9, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3c} :catch_3d

    .line 786
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "info":Landroid/content/pm/PackageInfo;
    goto :goto_44

    .line 782
    :catch_3d
    move-exception v7

    .line 785
    .local v7, "e":Ljava/lang/Exception;
    :try_start_3e
    const-string/jumbo v8, "null"

    invoke-virtual {v0, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 777
    .end local v6    # "shortComponentName":Ljava/lang/String;
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_1d

    .line 788
    :cond_47
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_54} :catch_55

    .line 793
    .end local v0    # "shortComponentVersionName":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v1    # "pm":Landroid/content/pm/PackageManager;
    goto :goto_59

    .line 789
    :catch_55
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    .line 797
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_59
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 14

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 607
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "\"SDVR\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "1.2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v2, ",\"DTYP\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mDetectType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    const-string v2, ",\"SNAM\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 614
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    const-string/jumbo v3, "|"

    const-string v4, ""

    const-string v5, "\\|"

    const/4 v6, 0x0

    const-string/jumbo v7, "null"

    if-eqz v2, :cond_57

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .local v2, "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentName:[Ljava/lang/String;

    array-length v9, v8

    move v10, v6

    :goto_3e
    if-ge v10, v9, :cond_4b

    aget-object v11, v8, v10

    .line 617
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    .end local v11    # "value":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_3e

    .line 618
    :cond_4b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_5a

    .line 621
    :cond_57
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    :goto_5a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 626
    const-string v2, ",\"SVER\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    if-eqz v2, :cond_88

    .line 628
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mShortComponentVersionName:[Ljava/lang/String;

    array-length v9, v8

    move v10, v6

    :goto_6f
    if-ge v10, v9, :cond_7c

    aget-object v11, v8, v10

    .line 630
    .restart local v11    # "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    .end local v11    # "value":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_6f

    .line 631
    :cond_7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_8b

    .line 634
    :cond_88
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    const-string v2, ",\"RCNT\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mRunCount:[J

    if-eqz v2, :cond_b9

    .line 641
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 642
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mRunCount:[J

    array-length v9, v8

    move v10, v6

    :goto_a0
    if-ge v10, v9, :cond_ad

    aget-wide v11, v8, v10

    .line 643
    .local v11, "value":J
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 642
    .end local v11    # "value":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_a0

    .line 644
    :cond_ad
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_bc

    .line 647
    :cond_b9
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :goto_bc
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v2, ",\"LANT\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTime:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 655
    const-string v2, ",\"ALNT\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    if-eqz v2, :cond_f7

    .line 657
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 658
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageLaunchTime:[J

    array-length v9, v8

    move v10, v6

    :goto_de
    if-ge v10, v9, :cond_eb

    aget-wide v11, v8, v10

    .line 659
    .restart local v11    # "value":J
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 658
    .end local v11    # "value":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_de

    .line 660
    :cond_eb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_fa

    .line 663
    :cond_f7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    :goto_fa
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v2, ",\"PSSV\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPss:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 671
    const-string v2, ",\"APSS\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAveragePss:[J

    if-eqz v2, :cond_135

    .line 673
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAveragePss:[J

    array-length v9, v8

    move v10, v6

    :goto_11c
    if-ge v10, v9, :cond_129

    aget-wide v11, v8, v10

    .line 675
    .restart local v11    # "value":J
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 674
    .end local v11    # "value":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_11c

    .line 676
    :cond_129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_138

    .line 679
    :cond_135
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    :goto_138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    const-string v2, ",\"SWPS\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mSwapPss:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    const-string v2, ",\"ASWP\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    if-eqz v2, :cond_173

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 690
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageSwapPss:[J

    array-length v9, v8

    move v10, v6

    :goto_15a
    if-ge v10, v9, :cond_167

    aget-wide v11, v8, v10

    .line 691
    .restart local v11    # "value":J
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 690
    .end local v11    # "value":J
    add-int/lit8 v10, v10, 0x1

    goto :goto_15a

    .line 692
    :cond_167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_176

    .line 695
    :cond_173
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    :goto_176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    const-string v2, ",\"PSMD\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPowerSavingMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    const-string v2, ",\"PFMD\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPerformanceMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    const-string v2, ",\"RESO\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 709
    const-string v2, ",\"PSTV\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mPst:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    const-string v2, ",\"IOAM\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mIoInfoData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 721
    const-string v2, ",\"AIOA\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    if-eqz v2, :cond_1e5

    .line 723
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 724
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mAverageIoInfoData:[Ljava/lang/String;

    array-length v9, v8

    move v10, v6

    :goto_1cc
    if-ge v10, v9, :cond_1d9

    aget-object v11, v8, v10

    .line 725
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    .end local v11    # "value":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_1cc

    .line 726
    :cond_1d9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_1e8

    .line 729
    :cond_1e5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 731
    :goto_1e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const-string v2, ",\"UTIM\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mUptime:J

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const-string v2, ",\"PKGC\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mInstalledPackageCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const-string v2, ",\"MINF\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const-string v2, ",\"MIEX\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mMeminfoExtra:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v2, ",\"LTSD\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    if-eqz v2, :cond_249

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 749
    .restart local v2    # "data":Ljava/lang/StringBuilder;
    iget-object v7, p0, Lcom/android/server/wm/SluggishDetector$DetectInfo;->mLaunchTimeStandardDeviation:[D

    array-length v8, v7

    :goto_230
    if-ge v6, v8, :cond_23d

    aget-wide v9, v7, v6

    .line 750
    .local v9, "value":D
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 749
    .end local v9    # "value":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_230

    .line 751
    :cond_23d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    .end local v2    # "data":Ljava/lang/StringBuilder;
    goto :goto_24c

    .line 754
    :cond_249
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :goto_24c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
