.class public Lcom/android/server/wm/SluggishDetector;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishDetector$LockContentionInfo;,
        Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;,
        Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;,
        Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;,
        Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;,
        Lcom/android/server/wm/SluggishDetector$OccurredReport;,
        Lcom/android/server/wm/SluggishDetector$AgingDataQueue;,
        Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;,
        Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;,
        Lcom/android/server/wm/SluggishDetector$MemoryInfo;,
        Lcom/android/server/wm/SluggishDetector$SystemPropertyInfo;,
        Lcom/android/server/wm/SluggishDetector$SettingInfo;,
        Lcom/android/server/wm/SluggishDetector$IoInfo;,
        Lcom/android/server/wm/SluggishDetector$ThroughputInfo;,
        Lcom/android/server/wm/SluggishDetector$NetworkInfo;,
        Lcom/android/server/wm/SluggishDetector$DetectInfo;,
        Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;
    }
.end annotation


# static fields
.field private static Before_Store_time:J = 0x0L

.field private static final DATA_FORMAT:Ljava/lang/String; = "[shortComponentName] [runCount] [averageLaunchTime] [averagePss] [averageSwapUsed] [averageIoInfoData] [launchTimeStandardDeviation]"

.field private static final DEBUG:Z = false

.field public static ENABLE:Z = false

.field private static final NO_CONTEXT:I = -0x63

.field private static final NO_VALUE:I = -0x1

.field private static final PROC_KPERF_OLOG:Ljava/lang/String; = "/proc/kperfmon"

.field private static final PROC_STORE_OLOG:Ljava/lang/String; = "/data/log/remaining_olog"

.field private static final PROC_STORE_OLOG_NOW:Ljava/lang/String; = "/data/log/remaining_olog_now"

.field private static PerfmondSocketName:Ljava/lang/String; = null

.field private static final SIMPLE_Store_Time:J = 0xdbba00L

.field private static final TAG:Ljava/lang/String;

.field private static final VERSION_NAME:Ljava/lang/String; = "1.2.0"

.field private static mContext:Landroid/content/Context;

.field private static mReceiver:Lcom/android/server/wm/SluggishDetector$PerfmondReceiver;

.field private static mReceiverThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 70
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    .line 85
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    .line 93
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    .line 96
    const-string/jumbo v1, "perfmon_send"

    sput-object v1, Lcom/android/server/wm/SluggishDetector;->PerfmondSocketName:Ljava/lang/String;

    .line 101
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/kperfmon"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v1, "lk_proc":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 108
    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    goto :goto_31

    .line 111
    :cond_27
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    const-string v2, " [SD] kperfmon nonexist"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    .line 115
    :goto_31
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_49

    .line 120
    # invokes: Lcom/android/server/wm/SluggishDetector$OccurredReport;->init()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->access$000()V

    .line 121
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->init()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$100()V

    .line 122
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->init()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$200()V

    .line 123
    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->init()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$300()V

    .line 130
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->init()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$400()V

    .line 135
    :try_start_44
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->step()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$500()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_48

    .line 139
    goto :goto_49

    .line 136
    :catch_48
    move-exception v0

    .line 141
    .end local v1    # "lk_proc":Ljava/io/File;
    :cond_49
    :goto_49
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4400(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 67
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9400()J
    .registers 2

    .line 67
    sget-wide v0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    return-wide v0
.end method

.method static synthetic access$9402(J)J
    .registers 2
    .param p0, "x0"    # J

    .line 67
    sput-wide p0, Lcom/android/server/wm/SluggishDetector;->Before_Store_time:J

    return-wide p0
.end method

.method static synthetic access$9500()Ljava/lang/String;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->PerfmondSocketName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$9600()Ljava/lang/Thread;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mReceiverThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$9700()Landroid/content/Context;
    .registers 1

    .line 67
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static clear(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 4045
    # invokes: Lcom/android/server/wm/SluggishDetector$OccurredReport;->clear()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->access$10000()V

    .line 4046
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->clear()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$10100()V

    .line 4047
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->clear()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$10200()V

    .line 4048
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->clear()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$10300()V

    .line 4050
    if-eqz p0, :cond_13

    .line 4051
    const-string v0, "CLEAR SLUGGISH DETECTOR"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4052
    :cond_13
    return-void
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 4118
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_1a

    .line 4123
    if-nez p0, :cond_e

    .line 4124
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    const-string v1, "dump() - pw is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4125
    return-void

    .line 4131
    :cond_e
    # invokes: Lcom/android/server/wm/SluggishDetector$OccurredReport;->dump(Ljava/io/PrintWriter;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->access$10700(Ljava/io/PrintWriter;)V

    .line 4132
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->dump(Ljava/io/PrintWriter;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$10800(Ljava/io/PrintWriter;)V

    .line 4133
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->dump(Ljava/io/PrintWriter;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$10900(Ljava/io/PrintWriter;)V

    .line 4134
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->dump(Ljava/io/PrintWriter;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$11000(Ljava/io/PrintWriter;)V

    .line 4139
    :cond_1a
    return-void
.end method

.method public static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "cmd"    # Ljava/lang/String;

    .line 4056
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_49

    .line 4061
    if-eqz p0, :cond_41

    if-nez p1, :cond_9

    goto :goto_41

    .line 4095
    :cond_9
    const-string/jumbo v0, "slgdetect_occurred"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 4096
    # invokes: Lcom/android/server/wm/SluggishDetector$OccurredReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->access$10400(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_49

    .line 4098
    :cond_16
    const-string/jumbo v0, "slgdetect_periodic_launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4099
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$10500(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_49

    .line 4101
    :cond_23
    const-string/jumbo v0, "slgdetect_periodic_memory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 4102
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$10600(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_49

    .line 4104
    :cond_30
    const-string/jumbo v0, "slgdetect_periodic_olog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 4105
    invoke-static {p0, p1}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_49

    .line 4108
    :cond_3d
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector;->dump(Ljava/io/PrintWriter;)V

    goto :goto_49

    .line 4062
    :cond_41
    :goto_41
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;

    const-string v1, "executeCommand() - pw or cmd is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4063
    return-void

    .line 4114
    :cond_49
    :goto_49
    return-void
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .registers 5
    .param p0, "br"    # Ljava/io/BufferedReader;

    .line 3821
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 3822
    return-object v0

    .line 3828
    :cond_4
    :try_start_4
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 3831
    .local v1, "Lines":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    :goto_9
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "line":Ljava/lang/String;
    if-eqz v2, :cond_14

    .line 3832
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 3834
    :cond_14
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_20} :catch_24
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_20} :catch_22

    move-object v0, v2

    .line 3839
    .local v0, "result":[Ljava/lang/String;
    return-object v0

    .line 3844
    .end local v0    # "result":[Ljava/lang/String;
    .end local v1    # "Lines":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    .end local v3    # "line":Ljava/lang/String;
    :catch_22
    move-exception v1

    goto :goto_26

    .line 3841
    :catch_24
    move-exception v1

    .line 3847
    nop

    .line 3852
    :goto_26
    return-object v0
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "path"    # Ljava/lang/String;

    .line 3861
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 3862
    .local v0, "fr":Ljava/io/FileReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 3864
    .local v1, "br":Ljava/io/BufferedReader;
    invoke-static {v1}, Lcom/android/server/wm/SluggishDetector;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v2

    .line 3866
    .local v2, "Lines":[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    .line 3867
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_14} :catch_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 3872
    return-object v2

    .line 3880
    .end local v0    # "fr":Ljava/io/FileReader;
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "Lines":[Ljava/lang/String;
    :catch_15
    move-exception v0

    goto :goto_1b

    .line 3877
    :catch_17
    move-exception v0

    goto :goto_1a

    .line 3874
    :catch_19
    move-exception v0

    .line 3883
    :goto_1a
    nop

    .line 3888
    :goto_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getModifyTimeFromFile(Ljava/lang/String;)J
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .line 3898
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3901
    .local v0, "LmkFile":Ljava/io/File;
    const-wide/16 v1, -0x1

    .line 3903
    .local v1, "LMKTime":J
    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 3904
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    move-wide v1, v3

    .line 3912
    :cond_15
    return-wide v1

    .line 3914
    .end local v1    # "LMKTime":J
    :catch_16
    move-exception v1

    .line 3922
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method static reportLaunch(Lcom/android/server/wm/ActivityRecord;J)V
    .registers 15
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;
    .param p1, "launchTime"    # J

    .line 3984
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_36

    .line 3986
    if-eqz p0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v0, :cond_15

    goto :goto_35

    .line 3996
    :cond_15
    :try_start_15
    new-instance v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object v1, v0

    move-wide v5, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/wm/SluggishDetector$1;)V

    .line 3997
    .local v0, "info":Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    const/16 v1, 0xc

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8400(ILjava/lang/Object;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_32} :catch_33

    .line 4001
    .end local v0    # "info":Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    goto :goto_36

    .line 3998
    :catch_33
    move-exception v0

    goto :goto_36

    .line 3987
    :cond_35
    :goto_35
    return-void

    .line 4006
    :cond_36
    :goto_36
    return-void
.end method

.method public static reportStoreOLOGNow()V
    .registers 2

    .line 3927
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_e

    .line 3934
    const-string/jumbo v0, "reportStoreOLOGNow"

    .line 3938
    .local v0, "OLOG_N":Ljava/lang/String;
    const/16 v1, 0x16

    :try_start_9
    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8400(ILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_c} :catch_d

    .line 3942
    goto :goto_e

    .line 3939
    :catch_d
    move-exception v1

    .line 3947
    .end local v0    # "OLOG_N":Ljava/lang/String;
    :cond_e
    :goto_e
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .registers 1
    .param p0, "c"    # Landroid/content/Context;

    .line 3951
    sput-object p0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    .line 3954
    return-void
.end method

.method static setLaunch(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p0, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 3958
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_20

    .line 3960
    if-eqz p0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez v0, :cond_b

    goto :goto_1f

    .line 3970
    :cond_b
    :try_start_b
    new-instance v0, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;-><init>(Ljava/lang/String;ILcom/android/server/wm/SluggishDetector$1;)V

    .line 3971
    .local v0, "info":Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;
    const/16 v1, 0xb

    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V
    invoke-static {v1, v0}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8400(ILjava/lang/Object;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1c} :catch_1d

    .line 3975
    .end local v0    # "info":Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;
    goto :goto_20

    .line 3972
    :catch_1d
    move-exception v0

    goto :goto_20

    .line 3961
    :cond_1f
    :goto_1f
    return-void

    .line 3980
    :cond_20
    :goto_20
    return-void
.end method

.method private static setLockContentionInfo(SLjava/lang/String;)V
    .registers 3
    .param p0, "wait_ms"    # S
    .param p1, "lcInfo"    # Ljava/lang/String;

    .line 4019
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector;->ENABLE:Z

    if-eqz v0, :cond_13

    .line 4027
    const/16 v0, 0xd

    :try_start_6
    # invokes: Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->sendDataToHandler(ILjava/lang/Object;)V
    invoke-static {v0, p1}, Lcom/android/server/wm/SluggishDetector$SluggishDetectorHandler;->access$8400(ILjava/lang/Object;)V

    .line 4028
    const/16 v0, 0xe

    invoke-static {v0, p0, p1}, Landroid/util/PerfLog;->d(ISLjava/lang/String;)V

    .line 4029
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->step()V
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$PeriodicStoreOLOG;->access$500()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    .line 4033
    goto :goto_13

    .line 4030
    :catch_12
    move-exception v0

    .line 4038
    :cond_13
    :goto_13
    return-void
.end method

.method private static setReboot()V
    .registers 2

    .line 4009
    sget-object v0, Lcom/android/server/wm/SluggishDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4014
    .local v0, "pM":Landroid/os/PowerManager;
    const-string v1, " [OLOG] setReboot "

    invoke-static {v1}, Landroid/util/PerfLog;->d(Ljava/lang/String;)V

    .line 4015
    const-string v1, "OLOG Reboot"

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 4016
    return-void
.end method
