.class final Lcom/android/server/wm/SluggishDetector$OccurredReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OccurredReport"
.end annotation


# static fields
.field private static DETECT_OVER_TIME:I = 0x0

.field private static final MAXIMUM_ELEMENT_COUNT_FOR_OCCURRED:I = 0xa

.field private static final MAXIMUM_QUEUE_COUNT_FOR_OCCURRED:I = 0x64

.field private static final MINIMUM_ELEMENT_COUNT_FOR_OCCURRED:I = 0x5

.field private static final TAG:Ljava/lang/String;

.field private static sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2422
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$OccurredReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    .line 2429
    const/16 v0, 0x7d0

    sput v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->DETECT_OVER_TIME:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .registers 0

    .line 2420
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->init()V

    return-void
.end method

.method static synthetic access$10000()V
    .registers 0

    .line 2420
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->clear()V

    return-void
.end method

.method static synthetic access$10400(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/io/PrintWriter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2420
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10700(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 2420
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2420
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method private static check()Z
    .registers 1

    .line 2449
    sget-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static checkSluggish(JJ)Z
    .registers 6
    .param p0, "launchTime"    # J
    .param p2, "averageLaunchTime"    # J

    .line 2457
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_10

    sget v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->DETECT_OVER_TIME:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    cmp-long v0, p0, v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static clear()V
    .registers 1

    .line 2516
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2517
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->init()V

    .line 2519
    :cond_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->clear()V
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V

    .line 2520
    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2524
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->clear()V

    .line 2526
    if-eqz p0, :cond_a

    .line 2527
    const-string v0, "CLEAR SLUGGISH DETECTOR - OCCURRED REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2528
    :cond_a
    return-void
.end method

.method private static detectedSluggish(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 5
    .param p0, "reportLaunchInfo"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2468
    sget-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->get(Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    invoke-static {v0, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8200(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;)Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    move-result-object v0

    .line 2469
    .local v0, "element":Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    if-eqz v0, :cond_17

    .line 2470
    new-instance v1, Lcom/android/server/wm/SluggishDetector$DetectInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, v0, v3}, Lcom/android/server/wm/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2472
    .local v1, "detectInfo":Lcom/android/server/wm/SluggishDetector$DetectInfo;
    const/4 v2, 0x2

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V
    invoke-static {v2, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8400(ILjava/lang/Object;)V

    .line 2477
    .end local v1    # "detectInfo":Lcom/android/server/wm/SluggishDetector$DetectInfo;
    :cond_17
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2581
    const-string v0, "======================================================================"

    if-nez p0, :cond_c

    .line 2582
    sget-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    return-void

    .line 2589
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->check()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2590
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->init()V

    .line 2593
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2594
    const-string v1, "SLUGGISH DETECTOR - OCCURRED REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_occurred)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2595
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2604
    const-string v1, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageIoInfoData] [launchTimeStandardDeviation]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2606
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    sget-object v1, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v1, p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    .line 2608
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    const-string v0, "END OF SLUGGISH DETECTOR - OCCURRED REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36

    .line 2612
    goto :goto_3e

    .line 2610
    :catch_36
    move-exception v0

    .line 2611
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2616
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2532
    if-eqz p0, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    .line 2569
    :cond_5
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V

    .line 2574
    return-void

    .line 2533
    :cond_9
    :goto_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->TAG:Ljava/lang/String;

    const-string v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    return-void
.end method

.method private static init()V
    .registers 2

    .line 2435
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_c

    .line 2440
    new-instance v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    .line 2442
    :cond_c
    return-void
.end method

.method private static step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 16
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2487
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2488
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->init()V

    .line 2490
    :cond_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getAverageLaunchTime(Ljava/lang/String;)J
    invoke-static {v0, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;)J

    move-result-wide v0

    .line 2491
    .local v0, "averageLaunchTime":J
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->checkSluggish(JJ)Z

    move-result v2

    .line 2496
    .local v2, "isSluggish":Z
    if-eqz v2, :cond_20

    .line 2497
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->detectedSluggish(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 2500
    :cond_20
    sget-object v3, Lcom/android/server/wm/SluggishDetector$OccurredReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v4

    .line 2501
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v5

    .line 2502
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v7

    .line 2503
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v9

    .line 2504
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v11

    const/16 v12, 0x64

    const/16 v13, 0xa

    const/4 v14, 0x5

    .line 2500
    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V
    invoke-static/range {v3 .. v14}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8600(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V

    .line 2509
    return-void
.end method
