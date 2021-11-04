.class Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector$AgingDataQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAfterSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAverageAfterSlgInfoData:Ljava/lang/String;

.field private mAverageBeforeSlgInfoData:Ljava/lang/String;

.field private mAverageIoInfoData:Ljava/lang/String;

.field private mAverageLaunchTime:J

.field private mAveragePss:J

.field private mAverageSwapPss:J

.field private mAverageThroughputInfoData:Ljava/lang/String;

.field private mBeforeSlgInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIoInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLaunchTimeStandardDeviation:D

.field private mPssList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mPssSlope:D

.field private mRunCount:J

.field private mShortComponentName:Ljava/lang/String;

.field private mSwapUsedList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mThroughputInfoDataList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 1785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "shortComponentName"    # Ljava/lang/String;

    .line 1809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1786
    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    .line 1796
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    .line 1798
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    .line 1800
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    .line 1801
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    .line 1802
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    .line 1803
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageBeforeSlgInfoData:Ljava/lang/String;

    .line 1804
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageAfterSlgInfoData:Ljava/lang/String;

    .line 1805
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    .line 1806
    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageThroughputInfoData:Ljava/lang/String;

    .line 1807
    iput-wide v3, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    .line 1814
    iput-object p1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    .line 1815
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->init()V

    .line 1816
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 3
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 1783
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    return-wide v0
.end method

.method static synthetic access$2300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    return-wide v0
.end method

.method static synthetic access$2500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    return-wide v0
.end method

.method static synthetic access$3300(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;II)V
    .registers 10
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p8, "x5"    # I
    .param p9, "x6"    # I

    .line 1783
    invoke-direct/range {p0 .. p9}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;II)V

    return-void
.end method

.method static synthetic access$7600(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;JJJLcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    .registers 13
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # J
    .param p7, "x4"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p8, "x5"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p9, "x6"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p10, "x7"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p11, "x8"    # I
    .param p12, "x9"    # I

    .line 1783
    invoke-direct/range {p0 .. p12}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(JJJLcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;JJII)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .line 1783
    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(JJII)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->refreshPssSlope()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)D
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    return-wide v0
.end method

.method static synthetic access$8000(Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;

    .line 1783
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->toDumpString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private add(JJII)V
    .registers 11
    .param p1, "pss"    # J
    .param p3, "swapUsed"    # J
    .param p5, "maximumElementListCount"    # I
    .param p6, "minimumElementListCount"    # I

    .line 1948
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1949
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->init()V

    .line 1951
    :cond_9
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    .line 1953
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1, p2, p5}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1956
    invoke-direct {p0, p6}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->refreshPss(I)V

    .line 1957
    return-void
.end method

.method private add(JJJLcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;II)V
    .registers 14
    .param p1, "launchTime"    # J
    .param p3, "pss"    # J
    .param p5, "swapUsed"    # J
    .param p7, "ioInfoData"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p8, "maximumElementListCount"    # I
    .param p9, "minimumElementListCount"    # I

    .line 1929
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1930
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->init()V

    .line 1932
    :cond_9
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    .line 1934
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1, p2, p8}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1935
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p3, p4, p8}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p5, p6, p8}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1937
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p7, p8}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;I)V

    .line 1938
    invoke-direct {p0, p9}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->refresh(I)V

    .line 1939
    return-void
.end method

.method private add(JJJLcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;II)V
    .registers 26
    .param p1, "launchTime"    # J
    .param p3, "pss"    # J
    .param p5, "swapUsed"    # J
    .param p7, "beforeSlgInfoData"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p8, "afterSlgInfoData"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p9, "ioInfoData"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p10, "throughputInfoData"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p11, "maximumElementListCount"    # I
    .param p12, "minimumElementListCount"    # I

    .line 1905
    move-object v0, p0

    move/from16 v1, p11

    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v2

    if-nez v2, :cond_c

    .line 1906
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->init()V

    .line 1908
    :cond_c
    iget-wide v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    .line 1910
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    move-wide v3, p1

    invoke-direct {p0, v2, p1, p2, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1911
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    move-wide/from16 v5, p3

    invoke-direct {p0, v2, v5, v6, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1912
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    move-wide/from16 v7, p5

    invoke-direct {p0, v2, v7, v8, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;JI)V

    .line 1913
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mBeforeSlgInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v9, p7

    invoke-direct {p0, v2, v9, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;I)V

    .line 1914
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAfterSlgInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v10, p8

    invoke-direct {p0, v2, v10, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;I)V

    .line 1915
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v11, p9

    invoke-direct {p0, v2, v11, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;I)V

    .line 1916
    iget-object v2, v0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mThroughputInfoDataList:Ljava/util/LinkedList;

    move-object/from16 v12, p10

    invoke-direct {p0, v2, v12, v1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V

    .line 1917
    move/from16 v2, p12

    invoke-direct {p0, v2}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->refresh(I)V

    .line 1918
    return-void
.end method

.method private add(Ljava/util/LinkedList;JI)V
    .registers 6
    .param p2, "value"    # J
    .param p4, "maximumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;JI)V"
        }
    .end annotation

    .line 1857
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1858
    if-lez p4, :cond_13

    .line 1859
    :goto_9
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p4, :cond_13

    .line 1860
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_9

    .line 1861
    :cond_13
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;I)V
    .registers 5
    .param p2, "value"    # Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .param p3, "maximumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;",
            ">;",
            "Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;",
            "I)V"
        }
    .end annotation

    .line 1877
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;>;"
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1878
    if-lez p3, :cond_f

    .line 1879
    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    .line 1880
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    .line 1881
    :cond_f
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V
    .registers 5
    .param p2, "value"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p3, "maximumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            "I)V"
        }
    .end annotation

    .line 1887
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;>;"
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1888
    if-lez p3, :cond_f

    .line 1889
    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    .line 1890
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    .line 1891
    :cond_f
    return-void
.end method

.method private add(Ljava/util/LinkedList;Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;I)V
    .registers 5
    .param p2, "value"    # Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .param p3, "maximumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;",
            ">;",
            "Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;",
            "I)V"
        }
    .end annotation

    .line 1867
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;>;"
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1868
    if-lez p3, :cond_f

    .line 1869
    :goto_5
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-le v0, p3, :cond_f

    .line 1870
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_5

    .line 1871
    :cond_f
    return-void
.end method

.method private checkStatus()Z
    .registers 2

    .line 1834
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method private getAverage(Ljava/util/LinkedList;I)J
    .registers 8
    .param p2, "minimumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;I)J"
        }
    .end annotation

    .line 1961
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 1963
    .local v0, "average":J
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lez v2, :cond_2a

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-lt v2, p2, :cond_2a

    .line 1964
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1965
    .local v3, "value":J
    add-long/2addr v0, v3

    .end local v3    # "value":J
    goto :goto_12

    .line 1967
    :cond_24
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v2

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 1970
    :cond_2a
    return-wide v0
.end method

.method private getAverageForIoInfoData(Ljava/util/LinkedList;I)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    .registers 6
    .param p2, "minimumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;",
            ">;I)",
            "Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;"
        }
    .end annotation

    .line 2007
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;>;"
    new-instance v0, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2009
    .local v0, "averageIoInfoData":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, p2, :cond_2d

    .line 2010
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    .line 2011
    .local v2, "data":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    # invokes: Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->add(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V
    invoke-static {v0, v2}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->access$5100(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;)V

    .end local v2    # "data":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    goto :goto_16

    .line 2013
    :cond_26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    # invokes: Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->divide(I)V
    invoke-static {v0, v1}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->access$7100(Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;I)V

    .line 2016
    :cond_2d
    return-object v0
.end method

.method private getAverageForSlgInfoData(Ljava/util/LinkedList;I)Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    .registers 22
    .param p2, "minimumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;",
            ">;I)",
            "Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;"
        }
    .end annotation

    .line 1976
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;>;"
    const-wide/16 v0, 0x0

    .line 1977
    .local v0, "averageMemFree":J
    const-wide/16 v2, 0x0

    .line 1978
    .local v2, "averageCached":J
    const-wide/16 v4, 0x0

    .line 1979
    .local v4, "averageSwapFree":J
    const/4 v6, 0x0

    .line 1980
    .local v6, "averageNumCached":I
    const/4 v7, 0x0

    .line 1982
    .local v7, "averageNumEmpty":I
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-lez v8, :cond_60

    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    move/from16 v9, p2

    if-lt v8, v9, :cond_62

    .line 1983
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_43

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    .line 1984
    .local v10, "data":Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    iget-object v11, v10, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v12, 0x0

    aget-wide v13, v11, v12

    add-long/2addr v0, v13

    .line 1985
    iget-object v11, v10, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v13, 0x1

    aget-wide v14, v11, v13

    add-long/2addr v2, v14

    .line 1986
    iget-object v11, v10, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mMeminfo:[J

    const/4 v14, 0x2

    aget-wide v14, v11, v14

    add-long/2addr v4, v14

    .line 1987
    iget-object v11, v10, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    aget v11, v11, v12

    add-int/2addr v6, v11

    .line 1988
    iget-object v11, v10, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;->mDha:[I

    aget v11, v11, v13

    add-int/2addr v7, v11

    .line 1989
    .end local v10    # "data":Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;
    goto :goto_1a

    .line 1991
    :cond_43
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v10, v8

    div-long/2addr v0, v10

    .line 1992
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v10, v8

    div-long/2addr v2, v10

    .line 1993
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    int-to-long v10, v8

    div-long/2addr v4, v10

    .line 1994
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    div-int/2addr v6, v8

    .line 1995
    invoke-virtual/range {p1 .. p1}, Ljava/util/LinkedList;->size()I

    move-result v8

    div-int/2addr v7, v8

    goto :goto_62

    .line 1982
    :cond_60
    move/from16 v9, p2

    .line 1998
    :cond_62
    :goto_62
    new-instance v8, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;

    move-object v10, v8

    move-wide v11, v0

    move-wide v13, v2

    move-wide v15, v4

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-direct/range {v10 .. v18}, Lcom/android/server/wm/SluggishInfo$SimpleSluggishInfo;-><init>(JJJII)V

    return-object v8
.end method

.method private getAverageForThroughputInfoData(Ljava/util/LinkedList;I)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 6
    .param p2, "minimumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;",
            ">;I)",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;"
        }
    .end annotation

    .line 2022
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;>;"
    new-instance v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 2023
    .local v0, "averageThroughputInfoData":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_2d

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lt v1, p2, :cond_2d

    .line 2024
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    .line 2025
    .local v2, "data":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    # invokes: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->add(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    invoke-static {v0, v2}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$7200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    .end local v2    # "data":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    goto :goto_16

    .line 2027
    :cond_26
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    # invokes: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->divide(I)V
    invoke-static {v0, v1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$7300(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V

    .line 2030
    :cond_2d
    return-object v0
.end method

.method private getStandardDeviation(Ljava/util/LinkedList;JI)D
    .registers 16
    .param p2, "average"    # J
    .param p4, "minimumElementListCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;JI)D"
        }
    .end annotation

    .line 2035
    .local p1, "list":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/Long;>;"
    const-wide/16 v0, 0x0

    .line 2037
    .local v0, "c":J
    const-wide/16 v2, 0x0

    .line 2039
    .local v2, "standardDeviation":D
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_46

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lt v4, p4, :cond_46

    .line 2040
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_14
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 2041
    .local v5, "value":J
    sub-long v7, v5, p2

    .line 2042
    .local v7, "v":J
    mul-long v9, v7, v7

    add-long/2addr v0, v9

    .line 2043
    .end local v5    # "value":J
    goto :goto_14

    .line 2045
    .end local v7    # "v":J
    :cond_2a
    long-to-double v4, v0

    :try_start_2b
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v6

    int-to-double v6, v6

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    move-wide v2, v4

    .line 2046
    const-wide v4, 0x408f400000000000L    # 1000.0

    mul-double v6, v2, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_45

    long-to-double v6, v6

    div-double v2, v6, v4

    .line 2049
    goto :goto_46

    .line 2048
    :catch_45
    move-exception v4

    .line 2052
    :cond_46
    :goto_46
    return-wide v2
.end method

.method private init()V
    .registers 2

    .line 1823
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    .line 1824
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    .line 1825
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    .line 1826
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    .line 1827
    return-void
.end method

.method private refresh(I)V
    .registers 15
    .param p1, "minimumElementListCount"    # I

    .line 2060
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2061
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->init()V

    .line 2063
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v0

    .line 2064
    .local v0, "averageLaunchTime":J
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v2

    .line 2065
    .local v2, "averagePss":J
    iget-object v4, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v4, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v4

    .line 2066
    .local v4, "averageSwapPss":J
    iget-object v6, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mIoInfoDataList:Ljava/util/LinkedList;

    invoke-direct {p0, v6, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getAverageForIoInfoData(Ljava/util/LinkedList;I)Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;

    move-result-object v6

    .line 2068
    .local v6, "averageIoInfoData":Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;
    iget-object v7, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeList:Ljava/util/LinkedList;

    invoke-direct {p0, v7, v0, v1, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getStandardDeviation(Ljava/util/LinkedList;JI)D

    move-result-wide v7

    .line 2070
    .local v7, "launchTimeStandardDeviation":D
    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    .line 2071
    const-wide/16 v9, 0x400

    div-long v11, v2, v9

    iput-wide v11, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    .line 2072
    div-long v9, v4, v9

    iput-wide v9, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    .line 2073
    invoke-virtual {v6}, Lcom/android/server/wm/SluggishDetector$IoInfo$IoInfoData;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    .line 2074
    iput-wide v7, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    .line 2076
    return-void
.end method

.method private refreshPss(I)V
    .registers 10
    .param p1, "minimumElementListCount"    # I

    .line 2083
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->checkStatus()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2084
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->init()V

    .line 2086
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v0

    .line 2087
    .local v0, "averagePss":J
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-direct {p0, v2, p1}, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->getAverage(Ljava/util/LinkedList;I)J

    move-result-wide v2

    .line 2089
    .local v2, "averageSwapPss":J
    const-wide/16 v4, 0x400

    div-long v6, v0, v4

    iput-wide v6, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    .line 2090
    div-long v4, v2, v4

    iput-wide v4, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    .line 2091
    return-void
.end method

.method private refreshPssSlope()V
    .registers 10

    .line 2098
    const-wide/16 v0, 0x0

    .line 2099
    .local v0, "sum":J
    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_a
    if-lez v2, :cond_48

    .line 2100
    iget-object v3, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    invoke-virtual {v5, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    add-long/2addr v3, v5

    .line 2101
    .local v3, "e1":J
    iget-object v5, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iget-object v7, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mSwapUsedList:Ljava/util/LinkedList;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    add-long/2addr v5, v7

    .line 2102
    .local v5, "e0":J
    sub-long v7, v3, v5

    add-long/2addr v0, v7

    .line 2099
    .end local v3    # "e1":J
    .end local v5    # "e0":J
    add-int/lit8 v2, v2, -0x1

    goto :goto_a

    .line 2105
    .end local v2    # "i":I
    :cond_48
    long-to-double v2, v0

    iget-object v4, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    int-to-double v4, v4

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mPssSlope:D

    .line 2106
    return-void
.end method

.method private toDumpString()Ljava/lang/String;
    .registers 5

    .line 1845
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mShortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mRunCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageLaunchTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAveragePss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageSwapPss:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mAverageIoInfoData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$AgingDataQueue$Element;->mLaunchTimeStandardDeviation:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
