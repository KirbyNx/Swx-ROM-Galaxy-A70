.class final Lcom/android/server/wm/SluggishDetector$ThroughputInfo;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;,
        Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final TP_INTERVAL:J = 0x64L

.field private static final TP_INTERVAL_COUNT:I = 0x5

.field private static final TP_MAXIMUM_CHECK_COUNT:I = 0x14

.field private static final XT_QTAGUID_STATS_PATH:Ljava/lang/String; = "/proc/net/xt_qtaguid/stats"


# instance fields
.field private mThroughputInfoData:Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/SluggishDetector;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/wm/SluggishDetector;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(I)V
    .registers 3
    .param p1, "uid"    # I

    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->mUid:I

    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    .line 1096
    iput p1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->mUid:I

    .line 1097
    return-void
.end method

.method private calcThroughputInfoData(Ljava/util/LinkedList;)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;",
            ">;)",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;"
        }
    .end annotation

    .line 1037
    .local p1, "elementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;>;"
    new-instance v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 1038
    .local v0, "throughputInfoData":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    # invokes: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->calcThroughputInfoData(Ljava/util/LinkedList;)V
    invoke-static {v0, p1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$4600(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;Ljava/util/LinkedList;)V

    .line 1043
    return-object v0
.end method

.method private getThroughputInfoData(I)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .registers 7
    .param p1, "uid"    # I

    .line 1054
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1055
    .local v0, "elementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;>;"
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->getThroughputInfoElement(I)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1057
    const/16 v1, 0x14

    .local v1, "count":I
    :goto_e
    if-lez v1, :cond_40

    # getter for: Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->access$4700()Z

    move-result v2

    if-nez v2, :cond_40

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$4800()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1059
    const/4 v2, 0x5

    .local v2, "sub_count":I
    :goto_1d
    if-lez v2, :cond_35

    :try_start_1f
    # getter for: Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$SetLaunchInfo;->access$4700()Z

    move-result v3

    if-nez v3, :cond_35

    # getter for: Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->isReady:Z
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$ReportLaunchInfo;->access$4800()Z

    move-result v3

    if-nez v3, :cond_35

    .line 1060
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_30} :catch_33

    .line 1059
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 1061
    .end local v2    # "sub_count":I
    :catch_33
    move-exception v2

    goto :goto_36

    .line 1064
    :cond_35
    nop

    .line 1066
    :goto_36
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->getThroughputInfoElement(I)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1057
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 1069
    .end local v1    # "count":I
    :cond_40
    invoke-direct {p0, v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->calcThroughputInfoData(Ljava/util/LinkedList;)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v1

    .line 1074
    .local v1, "throughputInfoData":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    return-object v1
.end method

.method private getThroughputInfoElement(I)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .registers 15
    .param p1, "uid"    # I

    .line 996
    new-instance v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;-><init>(Lcom/android/server/wm/SluggishDetector$1;)V

    .line 997
    .local v0, "element":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    const-wide/16 v1, 0x0

    .line 998
    .local v1, "rx_bytes":J
    const-wide/16 v3, 0x0

    .line 999
    .local v3, "tx_bytes":J
    const-string v5, "/proc/net/xt_qtaguid/stats"

    # invokes: Lcom/android/server/wm/SluggishDetector;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/wm/SluggishDetector;->access$4400(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1000
    .local v5, "lines":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    # setter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J
    invoke-static {v0, v6, v7}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4102(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    .line 1001
    if-eqz v5, :cond_4f

    .line 1002
    array-length v6, v5

    const/4 v7, 0x0

    :goto_1b
    if-ge v7, v6, :cond_4f

    aget-object v8, v5, v7

    .line 1003
    .local v8, "line":Ljava/lang/String;
    const-string/jumbo v9, "idx"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_29

    .line 1004
    goto :goto_4c

    .line 1006
    :cond_29
    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1008
    .local v9, "tokens":[Ljava/lang/String;
    const/4 v10, 0x3

    :try_start_30
    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1009
    .local v10, "current_uid":I
    if-ne v10, p1, :cond_4a

    .line 1010
    const/4 v11, 0x5

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v1, v11

    .line 1011
    const/4 v11, 0x7

    aget-object v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_48} :catch_4b

    int-to-long v11, v11

    add-long/2addr v3, v11

    .line 1014
    .end local v10    # "current_uid":I
    :cond_4a
    goto :goto_4c

    .line 1013
    :catch_4b
    move-exception v10

    .line 1002
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "tokens":[Ljava/lang/String;
    :goto_4c
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 1017
    :cond_4f
    # setter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J
    invoke-static {v0, v1, v2}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4002(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    .line 1018
    # setter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J
    invoke-static {v0, v3, v4}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4202(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;J)J

    .line 1026
    return-object v0
.end method

.method private refresh()V
    .registers 2

    .line 1085
    iget v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->getThroughputInfoData(I)Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    .line 1089
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 8

    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo;->mThroughputInfoData:Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    if-eqz v0, :cond_9

    .line 1103
    invoke-virtual {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1106
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1107
    .local v0, "sb":Ljava/lang/StringBuilder;
    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D
    invoke-static {}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->access$4900()[D

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_20

    aget-wide v4, v1, v3

    .line 1108
    .local v4, "ignored":D
    const-string v6, "-1/"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    .end local v4    # "ignored":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    .line 1109
    :cond_20
    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
