.class final Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ReportLaunchInfo"
.end annotation


# static fields
.field private static final LMKINFO_PATH:Ljava/lang/String; = "/sys/module/lowmemorykiller/parameters/lmkd_count"

.field private static final TAG:Ljava/lang/String;

.field private static isReady:Z


# instance fields
.field private isRefreshedForReport:Z

.field private mAfterSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

.field private mBeforeSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

.field private mContext:Landroid/content/Context;

.field private mCurTime:J

.field private mInstalledPackageCount:I

.field private mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

.field private mLastLMKTime:J

.field private mLastPss:J

.field private mLastSwapPss:J

.field private mLaunchTime:J

.field private mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

.field private mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

.field private mPerformanceMode:I

.field private mPid:I

.field private mPowerSavingMode:I

.field private mPss:J

.field private mPst:I

.field private mResolution:Ljava/lang/String;

.field private mSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapPss:J

.field private mThroughputInfoData:Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

.field private mUptime:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->TAG:Ljava/lang/String;

    .line 1576
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJ)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I
    .param p3, "shortComponentName"    # Ljava/lang/String;
    .param p4, "launchTime"    # J
    .param p6, "lastPss"    # J
    .param p8, "lastSwapPss"    # J

    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1578
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    .line 1582
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1583
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    .line 1584
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    .line 1585
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPid:I

    .line 1586
    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 1587
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    .line 1588
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J

    .line 1589
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    .line 1590
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    .line 1591
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    .line 1592
    iput v3, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    .line 1593
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mBeforeSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    .line 1594
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mAfterSlgInfoData:Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    .line 1595
    iput v3, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    .line 1596
    const-string/jumbo v4, "null"

    iput-object v4, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    .line 1597
    const/16 v4, -0x270f

    iput v4, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPst:I

    .line 1600
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    .line 1601
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mThroughputInfoData:Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    .line 1602
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    .line 1603
    iput v3, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    .line 1604
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    .line 1605
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    .line 1606
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastLMKTime:J

    .line 1610
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    .line 1611
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    .line 1612
    iput p2, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPid:I

    .line 1613
    iput-object p3, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    .line 1614
    iput-wide p4, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    .line 1615
    iput-wide p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    iput-wide p6, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J

    .line 1616
    iput-wide p8, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    iput-wide p8, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    .line 1621
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter v0

    .line 1622
    const/4 v1, 0x1

    :try_start_5a
    sput-boolean v1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    .line 1623
    monitor-exit v0

    .line 1624
    return-void

    .line 1623
    :catchall_5e
    move-exception v1

    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5a .. :try_end_60} :catchall_5e

    throw v1
.end method

.method synthetic constructor <init>(Landroid/content/Context;ILjava/lang/String;JJJLcom/android/server/wm/SluggishDetector$1;)V
    .registers 11
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # I
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # J
    .param p6, "x4"    # J
    .param p8, "x5"    # J
    .param p10, "x6"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1572
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;-><init>(Landroid/content/Context;ILjava/lang/String;JJJ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;
    .param p1, "x1"    # Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1572
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->reportLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refreshForReport()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refreshForOccurredReport()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$2400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    return-wide v0
.end method

.method static synthetic access$2800(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPst:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    return-wide v0
.end method

.method static synthetic access$3500(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;

    .line 1572
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    return-object v0
.end method

.method static synthetic access$4800()Z
    .registers 1

    .line 1572
    sget-boolean v0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    return v0
.end method

.method private refresh()V
    .registers 3

    .line 1640
    const-wide/16 v0, -0x1

    :try_start_2
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_5

    .line 1644
    goto :goto_6

    .line 1641
    :catch_5
    move-exception v0

    .line 1651
    :goto_6
    return-void
.end method

.method private refreshForOccurredReport()V
    .registers 3

    .line 1661
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/wm/SluggishDetector$SettingInfo;->getContentResolver(Landroid/content/Context;)Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->access$5800(Landroid/content/Context;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 1662
    .local v0, "cr":Landroid/content/ContentResolver;
    # invokes: Lcom/android/server/wm/SluggishDetector$SettingInfo;->getPowerSavingMode(Landroid/content/ContentResolver;)I
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->access$5900(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    .line 1663
    # invokes: Lcom/android/server/wm/SluggishDetector$SettingInfo;->getPerformanceMode(Landroid/content/ContentResolver;)I
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->access$6000(Landroid/content/ContentResolver;)I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    .line 1664
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/wm/SluggishDetector$SettingInfo;->getResolution(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->access$6100(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    .line 1665
    # invokes: Lcom/android/server/wm/SluggishDetector$SystemPropertyInfo;->getPst()I
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SystemPropertyInfo;->access$6200()I

    move-result v1

    iput v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPst:I

    .line 1674
    return-void
.end method

.method private refreshForReport()V
    .registers 5

    .line 1684
    iget-boolean v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    if-nez v0, :cond_22

    .line 1685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isRefreshedForReport:Z

    .line 1686
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    .line 1687
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    # invokes: Lcom/android/server/wm/SluggishDetector$SettingInfo;->getInstalledPackageCount(Landroid/content/Context;)I
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$SettingInfo;->access$6300(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    .line 1688
    # invokes: Lcom/android/server/wm/SluggishDetector$MemoryInfo;->getMeminfo()Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$MemoryInfo;->access$6400()Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    .line 1689
    # invokes: Lcom/android/server/wm/SluggishDetector$MemoryInfo;->getMeminfoExtra()Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$MemoryInfo;->access$6500()Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    .line 1697
    :cond_22
    return-void
.end method

.method private reportLaunch(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)V
    .registers 6
    .param p1, "info"    # Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1707
    const-class v0, Lcom/android/server/wm/SluggishDetector;

    monitor-enter v0

    .line 1708
    const/4 v1, 0x0

    :try_start_4
    sput-boolean v1, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z

    .line 1709
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3e

    .line 1711
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSetLaunchInfo:Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;

    .line 1712
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    if-eqz v0, :cond_3d

    if-eqz p1, :cond_3d

    .line 1715
    # getter for: Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->access$6600(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3d

    .line 1716
    # getter for: Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mShortComponentName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->access$6600(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 1717
    # getter for: Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->mCurTime:J
    invoke-static {p1}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->access$6700(Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mCurTime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_3d

    .line 1720
    :try_start_2f
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->refresh()V

    .line 1722
    # invokes: Lcom/android/server/wm/SluggishDetector$OccurredReport;->step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$OccurredReport;->access$6800(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 1723
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicLaunchReport;->access$6900(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V

    .line 1724
    # invokes: Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->step(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    invoke-static {p0}, Lcom/android/server/wm/SluggishDetector$PeriodicMemoryReport;->access$7000(Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3b} :catch_3c

    .line 1728
    goto :goto_3d

    .line 1725
    :catch_3c
    move-exception v0

    .line 1747
    :cond_3d
    :goto_3d
    return-void

    .line 1709
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 4

    .line 1752
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mShortComponentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLaunchTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLaunchTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLastSwapPss:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mLastSwapPss:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPowerSavingMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPowerSavingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPerformanceMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPerformanceMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mResolution:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mResolution:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mPst:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIoInfoData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mIoInfoData:Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mUptime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mUptime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mInstalledPackageCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mInstalledPackageCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMeminfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfo:Lcom/android/server/wm/SluggishDetector$MemoryInfo$Meminfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMeminfoExtra:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->mMeminfoExtra:Lcom/android/server/wm/SluggishDetector$MemoryInfo$MeminfoExtra;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
