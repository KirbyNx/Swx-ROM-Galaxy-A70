.class final Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicLaunchReport"
.end annotation


# static fields
.field private static final MAXIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = 0x1f4

.field private static final MAXIMUM_QUEUE_COUNT_FOR_PERIODIC:I = 0xc8

.field private static final MINIMUM_ELEMENT_COUNT_FOR_PERIODIC:I = -0x1

.field private static final REPORT_COUNT_FOR_PERIODIC:I = 0x9

.field private static final REPORT_COUNT_IN_MESSAGE_FOR_PERIODIC:I = 0x3

.field private static REPORT_FLAG_FOR_PERIODIC:Z = false

.field private static REPORT_INTERVAL_FOR_PERIODIC:J = 0x0L

.field private static final REPORT_WAIT_INTERVAL_FOR_PERIODIC:J = 0x7530L

.field private static final TAG:Ljava/lang/String;

.field private static sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 2623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    .line 2635
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    .line 2637
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2621
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()V
    .registers 0

    .line 2621
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->init()V

    return-void
.end method

.method static synthetic access$10100()V
    .registers 0

    .line 2621
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->clear()V

    return-void
.end method

.method static synthetic access$10500(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/io/PrintWriter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2621
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10800(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 2621
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300()V
    .registers 0

    .line 2621
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2621
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method static synthetic access$700()V
    .registers 0

    .line 2621
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method private static check()Z
    .registers 1

    .line 2657
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static clear()V
    .registers 1

    .line 2753
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2754
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->init()V

    .line 2756
    :cond_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->clear()V
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V

    .line 2757
    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2761
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->clear()V

    .line 2763
    if-eqz p0, :cond_a

    .line 2764
    const-string v0, "CLEAR SLUGGISH DETECTOR - PERIODIC LAUNCH REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2765
    :cond_a
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 2822
    const-string v0, "======================================================================"

    if-nez p0, :cond_c

    .line 2823
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-string v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2824
    return-void

    .line 2830
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->check()Z

    move-result v1

    if-nez v1, :cond_15

    .line 2831
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->init()V

    .line 2834
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2835
    const-string v1, "SLUGGISH DETECTOR - PERIODIC LAUNCH REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_periodic_launch)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2846
    const-string v1, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageIoInfoData] [launchTimeStandardDeviation]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2848
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2849
    sget-object v1, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v1, p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    .line 2850
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2851
    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC LAUNCH REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36

    .line 2854
    goto :goto_3e

    .line 2852
    :catch_36
    move-exception v0

    .line 2853
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-string v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2769
    if-eqz p0, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    .line 2810
    :cond_5
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->dump(Ljava/io/PrintWriter;)V

    .line 2815
    return-void

    .line 2770
    :cond_9
    :goto_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->TAG:Ljava/lang/String;

    const-string v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    return-void
.end method

.method private static init()V
    .registers 2

    .line 2643
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_c

    .line 2648
    new-instance v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    .line 2650
    :cond_c
    return-void
.end method

.method private static makePeriodicReport(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2712
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sendPeriodicReportToHandler(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 2713
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->clear()V

    .line 2717
    return-void
.end method

.method private static sendPeriodicReportToHandler(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 9
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2727
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    const-wide/16 v1, 0x9

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getElementListForPeriodicLaunchReport(J)Ljava/util/LinkedList;
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$9000(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;J)Ljava/util/LinkedList;

    move-result-object v0

    .line 2729
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_9
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 2731
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 2732
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    .local v2, "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    goto :goto_26

    .line 2734
    .end local v2    # "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    :cond_1e
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 2736
    .restart local v2    # "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    :goto_26
    new-instance v3, Lcom/android/server/wm/SluggishDetector$DetectInfo;

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/android/server/wm/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2741
    .local v3, "detectInfo":Lcom/android/server/wm/SluggishDetector$DetectInfo;
    const-wide/16 v6, 0x7530

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    invoke-static {v5, v3, v6, v7}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$9200(ILjava/lang/Object;J)V

    .line 2729
    .end local v2    # "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    .end local v3    # "detectInfo":Lcom/android/server/wm/SluggishDetector$DetectInfo;
    add-int/lit8 v1, v1, 0x3

    goto :goto_9

    .line 2746
    .end local v1    # "count":I
    :cond_35
    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .registers 1

    .line 2701
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    .line 2702
    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .registers 3

    .line 2693
    sget-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3e9

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8900(IJ)V

    .line 2694
    return-void
.end method

.method private static step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 14
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2668
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2669
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->init()V

    .line 2671
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_16

    .line 2672
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->REPORT_FLAG_FOR_PERIODIC:Z

    .line 2673
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->setReportFlagForPeriodicWithDelay()V

    .line 2674
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->makePeriodicReport(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 2677
    :cond_16
    sget-object v1, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;

    move-result-object v2

    .line 2678
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v3

    .line 2679
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v5

    .line 2680
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$2600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J

    move-result-wide v7

    .line 2681
    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$3200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v9

    const/16 v10, 0xc8

    const/16 v11, 0x1f4

    const/4 v12, -0x1

    .line 2677
    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->add(Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V
    invoke-static/range {v1 .. v12}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8600(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/lang/String;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;III)V

    .line 2686
    return-void
.end method
