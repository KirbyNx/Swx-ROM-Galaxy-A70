.class Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
.super Ljava/lang/Object;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationNetworkStatsTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;,
        Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;
    }
.end annotation


# instance fields
.field private final MOBILE:I

.field private final NONMOBILE:I

.field private connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

.field private currentNetwork:Ljava/lang/String;

.field datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

.field networkDataUsageMap:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field networkDataUsageMapTemp:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation
.end field

.field private previousNetwork:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 4

    .line 1705
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1694
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    .line 1695
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    .line 1697
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 1698
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    .line 1700
    const/4 p1, 0x1

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->MOBILE:I

    .line 1701
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->NONMOBILE:I

    .line 1703
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1706
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "NetworkDatausageHandlerThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 1707
    .local p1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 1708
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->datausageHandler:Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$NetworkDatausageHandler;

    .line 1709
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->registerNetworkChangeReceiver()V

    .line 1710
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 1692
    invoke-direct {p0, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Landroid/net/NetworkInfo$State;

    .line 1692
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;

    .line 1692
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1692
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->previousNetwork:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1692
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1692
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    return-object p1
.end method

.method private calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 2081
    .local p1, "updatedMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    .local p2, "previousMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    const/4 v0, 0x0

    .line 2083
    .local v0, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :try_start_1
    invoke-virtual {p2}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2084
    return-object p1

    .line 2085
    :cond_8
    invoke-virtual {p1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2086
    const/4 v1, 0x0

    return-object v1

    .line 2087
    :cond_10
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    move-object v0, v1

    .line 2088
    invoke-virtual {p1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2089
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 2090
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2091
    .local v3, "updatedNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    nop

    .line 2092
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 2091
    invoke-virtual {p2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2093
    .local v4, "previousNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    new-instance v5, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v5}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 2094
    .local v5, "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    iget-wide v6, v3, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v8, v4, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 2096
    iget-wide v6, v3, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-wide v8, v4, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 2098
    iget-wide v6, v3, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v8, v4, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 2100
    iget-wide v6, v3, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-wide v8, v4, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v6, v8

    iput-wide v6, v5, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 2102
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v0, v6, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    nop

    .end local v3    # "updatedNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    .end local v4    # "previousNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    .end local v5    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    goto :goto_80

    .line 2104
    :cond_71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2105
    .restart local v3    # "updatedNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_80} :catch_82

    .line 2107
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    .end local v3    # "updatedNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    :goto_80
    goto :goto_1e

    .line 2111
    :cond_81
    goto :goto_86

    .line 2109
    :catch_82
    move-exception v1

    .line 2110
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2112
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_86
    return-object v0
.end method

.method private calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 2020
    .local p1, "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    .local p2, "updatedMinusPrevious":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 2022
    .local v0, "returnMap":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :try_start_5
    new-instance v1, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;

    invoke-direct {v1, p2, v0}, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$tisiGW6zsnyIqbKhX2FmParZ3rw;-><init>(Ljava/util/Hashtable;Ljava/util/Hashtable;)V

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    .line 2043
    invoke-virtual {p2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2044
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3a

    .line 2045
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2046
    .local v3, "updatedValue":Lcom/samsung/android/knox/application/NetworkStats;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_3c

    .line 2048
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    .end local v3    # "updatedValue":Lcom/samsung/android/knox/application/NetworkStats;
    :cond_3a
    goto :goto_15

    .line 2051
    :cond_3b
    goto :goto_40

    .line 2049
    :catch_3c
    move-exception v1

    .line 2050
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2052
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_40
    return-object v0
.end method

.method private collectStats()Ljava/util/Hashtable;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;",
            ">;"
        }
    .end annotation

    .line 1863
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 1865
    .local v0, "networkDataUsageMapLocal":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;>;"
    :try_start_5
    new-instance v1, Lcom/android/server/net/NetworkStatsFactory;

    invoke-direct {v1}, Lcom/android/server/net/NetworkStatsFactory;-><init>()V

    .line 1867
    .local v1, "mFactory":Lcom/android/server/net/NetworkStatsFactory;
    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/server/net/NetworkStatsFactory;->readNetworkStatsDetail(I[Ljava/lang/String;I)Landroid/net/NetworkStats;

    move-result-object v2

    .line 1868
    .local v2, "stats":Landroid/net/NetworkStats;
    new-instance v3, Landroid/net/NetworkStats$Entry;

    invoke-direct {v3}, Landroid/net/NetworkStats$Entry;-><init>()V

    .line 1872
    .local v3, "ent":Landroid/net/NetworkStats$Entry;
    invoke-virtual {v2}, Landroid/net/NetworkStats;->size()I

    move-result v5

    .line 1873
    .local v5, "size":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    if-ge v6, v5, :cond_66

    .line 1874
    invoke-virtual {v2, v6, v4}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v7

    move-object v3, v7

    .line 1875
    iget v7, v3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1876
    .local v7, "uid":I
    iget-wide v8, v3, Landroid/net/NetworkStats$Entry;->txBytes:J

    .line 1877
    .local v8, "tempTxByte":J
    iget-wide v10, v3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    .line 1879
    .local v10, "tempRxByte":J
    const-wide/16 v12, 0x0

    cmp-long v14, v8, v12

    if-gtz v14, :cond_32

    cmp-long v12, v10, v12

    if-lez v12, :cond_63

    :cond_32
    if-eqz v7, :cond_63

    .line 1881
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_53

    .line 1882
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    .line 1883
    .local v12, "obj":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
    iget-wide v13, v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    add-long/2addr v13, v8

    iput-wide v13, v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 1884
    iget-wide v13, v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    add-long/2addr v13, v10

    iput-wide v13, v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 1885
    .end local v12    # "obj":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
    goto :goto_63

    .line 1886
    :cond_53
    new-instance v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    invoke-direct {v12, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    .line 1887
    .restart local v12    # "obj":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
    iput-wide v8, v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    .line 1888
    iput-wide v10, v12, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    .line 1889
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_63} :catch_67

    .line 1873
    .end local v12    # "obj":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
    :cond_63
    :goto_63
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 1895
    .end local v1    # "mFactory":Lcom/android/server/net/NetworkStatsFactory;
    .end local v2    # "stats":Landroid/net/NetworkStats;
    .end local v3    # "ent":Landroid/net/NetworkStats$Entry;
    .end local v5    # "size":I
    .end local v6    # "i":I
    .end local v7    # "uid":I
    .end local v8    # "tempTxByte":J
    .end local v10    # "tempRxByte":J
    :cond_66
    goto :goto_6b

    .line 1893
    :catch_67
    move-exception v1

    .line 1894
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 1896
    .end local v1    # "e":Ljava/io/IOException;
    :goto_6b
    return-object v0
.end method

.method private getDataUsagesUids()[Ljava/lang/String;
    .registers 4

    .line 1938
    const/4 v0, 0x0

    .line 1940
    .local v0, "uid":[Ljava/lang/String;
    :try_start_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/proc/uid_stat/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1941
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1942
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_12} :catch_14

    move-object v0, v2

    .line 1945
    .end local v1    # "file":Ljava/io/File;
    :cond_13
    goto :goto_18

    .line 1943
    :catch_14
    move-exception v1

    .line 1944
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1947
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_18
    return-object v0
.end method

.method private getNetworkStateString(Landroid/net/NetworkInfo$State;)Ljava/lang/String;
    .registers 5
    .param p1, "state"    # Landroid/net/NetworkInfo$State;

    .line 1713
    const-string v0, "Unknown"

    .line 1715
    .local v0, "stateString":Ljava/lang/String;
    sget-object v1, Lcom/android/server/enterprise/application/ApplicationPolicy$16;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_16

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    .line 1723
    const-string v0, "Unknown"

    goto :goto_19

    .line 1720
    :cond_13
    const-string v0, "Disconnected"

    .line 1721
    goto :goto_19

    .line 1717
    :cond_16
    const-string v0, "Connected"

    .line 1718
    nop

    .line 1727
    :goto_19
    return-object v0
.end method

.method private getUserUpdateDataUsageMap(II)V
    .registers 14
    .param p1, "dataUsageForNetwork"    # I
    .param p2, "userId"    # I

    .line 1819
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mPackageManagerAdapter:Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;
    invoke-static {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1100(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1, p2}, Lcom/android/server/enterprise/adapterlayer/PackageManagerAdapter;->getInstalledApplications(II)Ljava/util/List;

    move-result-object v0

    .line 1820
    .local v0, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-eqz v0, :cond_8c

    .line 1821
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1822
    .local v2, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v3, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1823
    .local v3, "uid":I
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    .line 1824
    .local v4, "totalUsageTxPkg":J
    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    .line 1825
    .local v6, "totalUsageRxPkg":J
    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-gtz v10, :cond_32

    cmp-long v8, v6, v8

    if-lez v8, :cond_8b

    .line 1826
    :cond_32
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_67

    .line 1827
    iget-object v8, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    .line 1828
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/knox/application/NetworkStats;

    .line 1829
    .local v8, "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    if-ne p1, v9, :cond_5a

    .line 1830
    iget-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long v9, v4, v9

    iput-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1832
    iget-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long v9, v6, v9

    iput-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    goto :goto_66

    .line 1835
    :cond_5a
    iget-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long v9, v4, v9

    iput-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 1837
    iget-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long v9, v6, v9

    iput-wide v9, v8, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 1840
    .end local v8    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    :goto_66
    goto :goto_8b

    .line 1841
    :cond_67
    new-instance v8, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v8}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 1842
    .restart local v8    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    iput v3, v8, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 1843
    if-ne p1, v9, :cond_7e

    .line 1844
    iput-wide v4, v8, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1845
    iput-wide v6, v8, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 1846
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 1848
    :cond_7e
    iput-wide v4, v8, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 1849
    iput-wide v6, v8, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 1850
    iget-object v9, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1854
    .end local v2    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "uid":I
    .end local v4    # "totalUsageTxPkg":J
    .end local v6    # "totalUsageRxPkg":J
    .end local v8    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    :cond_8b
    :goto_8b
    goto :goto_12

    .line 1856
    :cond_8c
    return-void
.end method

.method private getUserUpdateDataUsageMapNative(Ljava/util/Hashtable;II)V
    .registers 5
    .param p2, "dataUsageForNetwork"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;",
            ">;II)V"
        }
    .end annotation

    .line 1901
    .local p1, "networkDataUsageMapLocal":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;>;"
    new-instance v0, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$KVYFlBBCUQZvls4zxBgfuKJC9aU;

    invoke-direct {v0, p0, p3, p2}, Lcom/android/server/enterprise/application/-$$Lambda$ApplicationPolicy$ApplicationNetworkStatsTracker$KVYFlBBCUQZvls4zxBgfuKJC9aU;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;II)V

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->forEach(Ljava/util/function/BiConsumer;)V

    .line 1935
    return-void
.end method

.method private isAnyNetworkConnected()Z
    .registers 6

    .line 1952
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1953
    .local v0, "token1":J
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    .line 1954
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 1955
    .local v2, "conMan":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1956
    .local v3, "activeNetInfo":Landroid/net/NetworkInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1958
    if-eqz v3, :cond_1b

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v4, 0x0

    :goto_1c
    return v4
.end method

.method private final isMobileNetwork(Ljava/lang/String;)Z
    .registers 4
    .param p1, "network"    # Ljava/lang/String;

    .line 1731
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$calculateTotalUsage$1(Ljava/util/Hashtable;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;)V
    .registers 10
    .param p0, "updatedMinusPrevious"    # Ljava/util/Hashtable;
    .param p1, "returnMap"    # Ljava/util/Hashtable;
    .param p2, "key"    # Ljava/lang/Integer;
    .param p3, "networkStatsFromDb"    # Lcom/samsung/android/knox/application/NetworkStats;

    .line 2023
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2024
    invoke-virtual {p0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/application/NetworkStats;

    .line 2025
    .local v0, "updatedNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    new-instance v1, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v1}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 2026
    .local v1, "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 2027
    iget-wide v2, p3, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 2029
    iget-wide v2, p3, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 2031
    iget-wide v2, p3, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 2033
    iget-wide v2, p3, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    iget-wide v4, v0, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 2035
    invoke-virtual {p1, p2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2037
    .end local v0    # "updatedNetworkStats":Lcom/samsung/android/knox/application/NetworkStats;
    .end local v1    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    goto :goto_3b

    .line 2038
    :cond_37
    move-object v0, p3

    .line 2039
    .local v0, "previousValue":Lcom/samsung/android/knox/application/NetworkStats;
    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2041
    .end local v0    # "previousValue":Lcom/samsung/android/knox/application/NetworkStats;
    :goto_3b
    return-void
.end method

.method private registerNetworkChangeReceiver()V
    .registers 5

    .line 1735
    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "registerNetworkChangeReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :try_start_8
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_29

    .line 1738
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;)V

    iput-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1769
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v2, v2, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->connectionChangeIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1770
    const-string/jumbo v2, "registerNetworkChangeReceiver() : Done"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_29} :catch_2a

    .line 1774
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_29
    goto :goto_2e

    .line 1772
    :catch_2a
    move-exception v0

    .line 1773
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1775
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2e
    return-void
.end method

.method private updateDataUsageMap(II)V
    .registers 11
    .param p1, "dataUsageForNetwork"    # I
    .param p2, "userId"    # I

    .line 1794
    const-string v0, "ApplicationPolicy"

    const-string/jumbo v1, "updateDataUsageMap"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1797
    .local v0, "token":J
    :try_start_c
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->collectStats()Ljava/util/Hashtable;

    move-result-object v2

    .line 1798
    .local v2, "networkDataUsageMapLocal":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;>;"
    const/4 v3, -0x1

    if-ne p2, v3, :cond_3f

    .line 1799
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v3, v3, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 1800
    .local v3, "userManager":Landroid/os/UserManager;
    if-eqz v3, :cond_3e

    .line 1801
    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v4

    .line 1802
    .local v4, "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz v4, :cond_3e

    .line 1803
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 1804
    .local v6, "user":Landroid/content/pm/UserInfo;
    iget v7, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v2, p1, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getUserUpdateDataUsageMapNative(Ljava/util/Hashtable;II)V

    .line 1805
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    goto :goto_2c

    .line 1808
    .end local v3    # "userManager":Landroid/os/UserManager;
    .end local v4    # "userlist":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_3e
    goto :goto_42

    .line 1809
    :cond_3f
    invoke-direct {p0, v2, p1, p2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getUserUpdateDataUsageMapNative(Ljava/util/Hashtable;II)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_42} :catch_43

    .line 1814
    .end local v2    # "networkDataUsageMapLocal":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;>;"
    :goto_42
    goto :goto_47

    .line 1812
    :catch_43
    move-exception v2

    .line 1813
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1815
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1816
    return-void
.end method


# virtual methods
.method public getAppLevelDataUsage(I)Ljava/util/ArrayList;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 1971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v0, "retlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/knox/application/NetworkStats;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->getDataUsagePerUid(I)Ljava/util/Hashtable;

    move-result-object v1

    .line 1973
    .local v1, "hashTable":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    if-eqz v1, :cond_3a

    .line 1974
    invoke-virtual {v1}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1975
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq v4, p1, :cond_30

    .line 1976
    goto :goto_13

    .line 1978
    :cond_30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1979
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    goto :goto_13

    .line 1981
    :cond_3a
    return-object v0
.end method

.method public getDataUsagePerUid(I)Ljava/util/Hashtable;
    .registers 6
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/application/NetworkStats;",
            ">;"
        }
    .end annotation

    .line 1986
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1987
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1988
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    goto :goto_17

    .line 1990
    :cond_13
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    .line 1993
    :cond_17
    :goto_17
    new-instance v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 1994
    .local v0, "appDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    const/4 v1, 0x0

    .line 1996
    .local v1, "mapFromDb":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :try_start_21
    invoke-virtual {v0}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->getMobileDataUsage()Ljava/util/Hashtable;

    move-result-object v2

    move-object v1, v2

    .line 1997
    if-eqz v1, :cond_41

    .line 1998
    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1999
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    return-object v2

    .line 2001
    :cond_31
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v2, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v2

    .line 2003
    .local v2, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    if-eqz v2, :cond_40

    .line 2004
    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateTotalUsage(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v3

    return-object v3

    .line 2006
    :cond_40
    return-object v1

    .line 2008
    .end local v2    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :cond_41
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_43} :catch_44

    return-object v2

    .line 2010
    :catch_44
    move-exception v2

    .line 2011
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 2014
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2
.end method

.method public synthetic lambda$getUserUpdateDataUsageMapNative$0$ApplicationPolicy$ApplicationNetworkStatsTracker(IILjava/lang/Integer;Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;)V
    .registers 12
    .param p1, "userId"    # I
    .param p2, "dataUsageForNetwork"    # I
    .param p3, "key"    # Ljava/lang/Integer;
    .param p4, "value"    # Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;

    .line 1902
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1904
    .local v0, "uid":I
    const/4 v1, -0x1

    if-eq p1, v1, :cond_d

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_73

    .line 1905
    :cond_d
    move-object v1, p4

    .line 1907
    .local v1, "txRxData":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_47

    .line 1908
    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/application/NetworkStats;

    .line 1909
    .local v2, "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    if-ne p2, v3, :cond_38

    .line 1910
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1912
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    goto :goto_46

    .line 1915
    :cond_38
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 1917
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iget-wide v5, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 1920
    .end local v2    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    :goto_46
    goto :goto_73

    .line 1921
    :cond_47
    new-instance v2, Lcom/samsung/android/knox/application/NetworkStats;

    invoke-direct {v2}, Lcom/samsung/android/knox/application/NetworkStats;-><init>()V

    .line 1922
    .restart local v2    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    iput v0, v2, Lcom/samsung/android/knox/application/NetworkStats;->uid:I

    .line 1923
    if-ne p2, v3, :cond_62

    .line 1924
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileTxBytes:J

    .line 1925
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->mobileRxBytes:J

    .line 1926
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_73

    .line 1928
    :cond_62
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->txByte:J

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiTxBytes:J

    .line 1929
    iget-wide v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;->rxByte:J

    iput-wide v3, v2, Lcom/samsung/android/knox/application/NetworkStats;->wifiRxBytes:J

    .line 1930
    iget-object v3, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    .end local v1    # "txRxData":Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker$TxRxData;
    .end local v2    # "networkStats":Lcom/samsung/android/knox/application/NetworkStats;
    :cond_73
    :goto_73
    return-void
.end method

.method public updateNetworkUsageDb()V
    .registers 4

    .line 2061
    new-instance v0, Lcom/android/server/enterprise/application/NetworkDataUsageDb;

    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;-><init>(Landroid/content/Context;)V

    .line 2062
    .local v0, "networkDb":Lcom/android/server/enterprise/application/NetworkDataUsageDb;
    invoke-direct {p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isAnyNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2063
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->currentNetwork:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->isMobileNetwork(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    .line 2064
    const/4 v1, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    goto :goto_21

    .line 2066
    :cond_1d
    const/4 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->updateDataUsageMap(II)V

    .line 2069
    :cond_21
    :goto_21
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 2070
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    invoke-direct {p0, v1, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->calculateDiffOfMapAndTempMap(Ljava/util/Hashtable;Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v1

    .line 2072
    .local v1, "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    if-eqz v1, :cond_36

    .line 2073
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/NetworkDataUsageDb;->updateDataUsage(Ljava/util/Hashtable;)Z

    .line 2075
    .end local v1    # "map":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/Integer;Lcom/samsung/android/knox/application/NetworkStats;>;"
    :cond_36
    iget-object v1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMapTemp:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$ApplicationNetworkStatsTracker;->networkDataUsageMap:Ljava/util/Hashtable;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    .line 2076
    return-void
.end method
