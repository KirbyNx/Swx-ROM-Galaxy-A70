.class final Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PeriodicMemoryReport"
.end annotation


# static fields
.field private static COLLECT_FLAG_FOR_PERIODIC:Z = false

.field private static COLLECT_INTERVAL_FOR_PERIODIC:J = 0x0L

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

    .line 2865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    .line 2877
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->COLLECT_INTERVAL_FOR_PERIODIC:J

    .line 2878
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    .line 2880
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    .line 2881
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 2863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$10200()V
    .registers 0

    .line 2863
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->clear()V

    return-void
.end method

.method static synthetic access$10600(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Ljava/io/PrintWriter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 2863
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$10900(Ljava/io/PrintWriter;)V
    .registers 1
    .param p0, "x0"    # Ljava/io/PrintWriter;

    .line 2863
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1400()V
    .registers 0

    .line 2863
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$1500()V
    .registers 0

    .line 2863
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setCollectFlagForPeriodic()V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 2863
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->init()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2863
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    return-void
.end method

.method static synthetic access$800()V
    .registers 0

    .line 2863
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V

    return-void
.end method

.method private static check()Z
    .registers 1

    .line 2901
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

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

    .line 3047
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3048
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->init()V

    .line 3050
    :cond_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->clear()V
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;)V

    .line 3051
    return-void
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3055
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->clear()V

    .line 3057
    if-eqz p0, :cond_a

    .line 3058
    const-string v0, "CLEAR SLUGGISH DETECTOR - PERIODIC MEMORY REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3059
    :cond_a
    return-void
.end method

.method private static dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 3129
    const-string v0, "======================================================================"

    if-nez p0, :cond_c

    .line 3130
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3131
    return-void

    .line 3137
    :cond_c
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v1

    if-nez v1, :cond_15

    .line 3138
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->init()V

    .line 3141
    :cond_15
    :try_start_15
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3142
    const-string v1, "SLUGGISH DETECTOR - PERIODIC MEMORY REPORT (dumpsys activity slgdetect or dumpsys activity slgdetect_periodic_memory)"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3143
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3155
    const-string v1, " DataFormat : [shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageIoInfoData] [launchTimeStandardDeviation]"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3157
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3158
    sget-object v1, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v1, p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$8800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;Ljava/io/PrintWriter;)V

    .line 3159
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3160
    const-string v0, "END OF SLUGGISH DETECTOR - PERIODIC MEMORY REPORT"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_35} :catch_36

    .line 3163
    goto :goto_3e

    .line 3161
    :catch_36
    move-exception v0

    .line 3162
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string v2, "dump() - Exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3e
    return-void
.end method

.method private static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 3063
    if-eqz p0, :cond_9

    if-nez p1, :cond_5

    goto :goto_9

    .line 3117
    :cond_5
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V

    .line 3122
    return-void

    .line 3064
    :cond_9
    :goto_9
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->TAG:Ljava/lang/String;

    const-string v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    return-void
.end method

.method private static init()V
    .registers 2

    .line 2887
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_c

    .line 2892
    new-instance v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    sput-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    .line 2894
    :cond_c
    return-void
.end method

.method private static makePeriodicReport(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 3009
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->sendPeriodicReportToHandler(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 3010
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->clear()V

    .line 3014
    return-void
.end method

.method private static sendPeriodicReportToHandler(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 8
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 3024
    sget-object v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->sQueue:Lcom/android/server/wm/SluggishDetector$AgingDataQueue;

    const-wide/16 v1, 0x9

    const-wide/16 v3, 0x12

    # invokes: Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->getElementListForPeriodicMemoryReport(JJ)Ljava/util/LinkedList;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue;->access$9300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue;JJ)Ljava/util/LinkedList;

    move-result-object v0

    .line 3026
    .local v0, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    const/4 v1, 0x0

    .local v1, "count":I
    :goto_b
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v1, v2, :cond_38

    .line 3028
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_20

    .line 3029
    add-int/lit8 v2, v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    .local v2, "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    goto :goto_28

    .line 3031
    .end local v2    # "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    :cond_20
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedList;->subList(II)Ljava/util/List;

    move-result-object v2

    .line 3033
    .restart local v2    # "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    :goto_28
    new-instance v3, Lcom/android/server/wm/SluggishDetector$DetectInfo;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-direct {v3, v5, p0, v2, v4}, Lcom/android/server/wm/SluggishDetector$DetectInfo;-><init>(ILcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Ljava/util/List;Lcom/android/server/wm/SluggishDetector$1;)V

    .line 3035
    .local v3, "detectInfo":Lcom/android/server/wm/SluggishDetector$DetectInfo;
    const/4 v4, 0x2

    const-wide/16 v5, 0x7530

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandlerWithDelay(ILjava/lang/Object;J)V
    invoke-static {v4, v3, v5, v6}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$9200(ILjava/lang/Object;J)V

    .line 3026
    .end local v2    # "sub_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;>;"
    .end local v3    # "detectInfo":Lcom/android/server/wm/SluggishDetector$DetectInfo;
    add-int/lit8 v1, v1, 0x3

    goto :goto_b

    .line 3040
    .end local v1    # "count":I
    :cond_38
    return-void
.end method

.method private static setCollectFlagForPeriodic()V
    .registers 1

    .line 2982
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->COLLECT_FLAG_FOR_PERIODIC:Z

    .line 2983
    return-void
.end method

.method private static setCollectFlagForPeriodicWithDelay()V
    .registers 3

    .line 2974
    sget-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->COLLECT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x65

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8900(IJ)V

    .line 2975
    return-void
.end method

.method private static setReportFlagForPeriodic()V
    .registers 1

    .line 2998
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    .line 2999
    return-void
.end method

.method private static setReportFlagForPeriodicWithDelay()V
    .registers 3

    .line 2990
    sget-wide v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->REPORT_INTERVAL_FOR_PERIODIC:J

    const/16 v2, 0x3ea

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendMessageToHandlerDelayed(IJ)V
    invoke-static {v2, v0, v1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8900(IJ)V

    .line 2991
    return-void
.end method

.method private static step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 2
    .param p0, "info"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 2912
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->check()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2913
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->init()V

    .line 2915
    :cond_9
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    if-eqz v0, :cond_16

    .line 2916
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->REPORT_FLAG_FOR_PERIODIC:Z

    .line 2917
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->setReportFlagForPeriodicWithDelay()V

    .line 2918
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->makePeriodicReport(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 2967
    :cond_16
    return-void
.end method
