.class final Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
.super Ljava/lang/Object;
.source "SluggishDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/SluggishDetector$ThroughputInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThroughputInfoData"
.end annotation


# static fields
.field private static final percent:[D


# instance fields
.field private rx_times:[J

.field private rx_total_bytes:J

.field private tx_times:[J

.field private tx_total_bytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 892
    const/4 v0, 0x3

    new-array v0, v0, [D

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    return-void

    nop

    :array_a
    .array-data 8
        0x3fb999999999999aL    # 0.1
        0x3fd3333333333333L    # 0.3
        0x3fe3333333333333L    # 0.6
    .end array-data
.end method

.method private constructor <init>()V
    .registers 4

    .line 890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 893
    sget-object v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v0

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    .line 894
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    .line 896
    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    .line 897
    iput-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/SluggishDetector$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/wm/SluggishDetector$1;

    .line 890
    invoke-direct {p0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;-><init>()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;Ljava/util/LinkedList;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p1, "x1"    # Ljava/util/LinkedList;

    .line 890
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->calcThroughputInfoData(Ljava/util/LinkedList;)V

    return-void
.end method

.method static synthetic access$4900()[D
    .registers 1

    .line 890
    sget-object v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p1, "x1"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    .line 890
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->add(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V

    return-void
.end method

.method static synthetic access$7300(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;
    .param p1, "x1"    # I

    .line 890
    invoke-direct {p0, p1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->divide(I)V

    return-void
.end method

.method private add(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;)V
    .registers 8
    .param p1, "operand"    # Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;

    .line 946
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget-object v1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1f

    .line 947
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 948
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v2, v1, v0

    iget-object v4, p1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 946
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 951
    .end local v0    # "i":I
    :cond_1f
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    iget-wide v2, p1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    .line 952
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    iget-wide v2, p1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    .line 953
    return-void
.end method

.method private calcThroughputInfoData(Ljava/util/LinkedList;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;",
            ">;)V"
        }
    .end annotation

    .line 901
    .local p1, "elementList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;>;"
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 902
    .local v0, "sElement":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    invoke-virtual {p1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 903
    .local v1, "eElement":Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    if-eqz v0, :cond_e6

    if-eqz v1, :cond_e6

    if-eq v0, v1, :cond_e6

    .line 904
    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J
    invoke-static {v1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4000(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v2

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4000(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    .line 905
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_7d

    .line 906
    sget-object v2, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v2, v2

    new-array v2, v2, [J

    .line 907
    .local v2, "time_bytes":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_29
    sget-object v6, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v7, v6

    if-ge v3, v7, :cond_3a

    .line 908
    iget-wide v7, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    long-to-double v7, v7

    aget-wide v9, v6, v3

    mul-double/2addr v7, v9

    double-to-long v6, v7

    aput-wide v6, v2, v3

    .line 907
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 910
    .end local v3    # "i":I
    :cond_3a
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 911
    .local v3, "elementArray":[Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    const/4 v6, 0x0

    .line 912
    .local v6, "resultIndex":I
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_48
    array-length v8, v3

    if-ge v7, v8, :cond_7d

    .line 913
    :goto_4b
    sget-object v8, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v8, v8

    if-ge v6, v8, :cond_74

    .line 914
    aget-object v8, v3, v7

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J
    invoke-static {v8}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4000(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->rx_bytes:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4000(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v10

    sub-long/2addr v8, v10

    aget-wide v10, v2, v6

    cmp-long v8, v8, v10

    if-gez v8, :cond_62

    .line 915
    goto :goto_74

    .line 916
    :cond_62
    iget-object v8, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-object v9, v3, v7

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J
    invoke-static {v9}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4100(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v9

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4100(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v11

    sub-long/2addr v9, v11

    aput-wide v9, v8, v6

    .line 913
    add-int/lit8 v6, v6, 0x1

    goto :goto_4b

    .line 918
    :cond_74
    :goto_74
    sget-object v8, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v8, v8

    if-lt v6, v8, :cond_7a

    .line 919
    goto :goto_7d

    .line 912
    :cond_7a
    add-int/lit8 v7, v7, 0x1

    goto :goto_48

    .line 923
    .end local v2    # "time_bytes":[J
    .end local v3    # "elementArray":[Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .end local v6    # "resultIndex":I
    .end local v7    # "i":I
    :cond_7d
    :goto_7d
    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J
    invoke-static {v1}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v2

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    .line 924
    cmp-long v2, v2, v4

    if-lez v2, :cond_e6

    .line 925
    sget-object v2, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v2, v2

    new-array v2, v2, [J

    .line 926
    .restart local v2    # "time_bytes":[J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_92
    sget-object v4, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v5, v4

    if-ge v3, v5, :cond_a3

    .line 927
    iget-wide v5, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    long-to-double v5, v5

    aget-wide v7, v4, v3

    mul-double/2addr v5, v7

    double-to-long v4, v5

    aput-wide v4, v2, v3

    .line 926
    add-int/lit8 v3, v3, 0x1

    goto :goto_92

    .line 929
    .end local v3    # "i":I
    :cond_a3
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    new-array v3, v3, [Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;

    .line 930
    .local v3, "elementArray":[Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    const/4 v4, 0x0

    .line 931
    .local v4, "resultIndex":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_b1
    array-length v6, v3

    if-ge v5, v6, :cond_e6

    .line 932
    :goto_b4
    sget-object v6, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-ge v4, v6, :cond_dd

    .line 933
    aget-object v6, v3, v5

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J
    invoke-static {v6}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v6

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->tx_bytes:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4200(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    aget-wide v8, v2, v4

    cmp-long v6, v6, v8

    if-gez v6, :cond_cb

    .line 934
    goto :goto_dd

    .line 935
    :cond_cb
    iget-object v6, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-object v7, v3, v5

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J
    invoke-static {v7}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4100(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v7

    # getter for: Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->time:J
    invoke-static {v0}, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;->access$4100(Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;)J

    move-result-wide v9

    sub-long/2addr v7, v9

    aput-wide v7, v6, v4

    .line 932
    add-int/lit8 v4, v4, 0x1

    goto :goto_b4

    .line 937
    :cond_dd
    :goto_dd
    sget-object v6, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v6, v6

    if-lt v4, v6, :cond_e3

    .line 938
    goto :goto_e6

    .line 931
    :cond_e3
    add-int/lit8 v5, v5, 0x1

    goto :goto_b1

    .line 942
    .end local v2    # "time_bytes":[J
    .end local v3    # "elementArray":[Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoElement;
    .end local v4    # "resultIndex":I
    .end local v5    # "i":I
    :cond_e6
    :goto_e6
    return-void
.end method

.method private divide(I)V
    .registers 8
    .param p1, "count"    # I

    .line 956
    if-eqz p1, :cond_27

    .line 957
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    sget-object v1, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->percent:[D

    array-length v1, v1

    if-ge v0, v1, :cond_1b

    .line 958
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    div-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 959
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    aget-wide v2, v1, v0

    int-to-long v4, p1

    div-long/2addr v2, v4

    aput-wide v2, v1, v0

    .line 957
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 962
    .end local v0    # "i":I
    :cond_1b
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    .line 963
    iget-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    int-to-long v2, p1

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    .line 965
    :cond_27
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 9

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 971
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_times:[J

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_a
    const-string v5, "/"

    if-ge v4, v2, :cond_19

    aget-wide v6, v1, v4

    .line 972
    .local v6, "t":J
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    .end local v6    # "t":J
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 973
    :cond_19
    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->rx_total_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 975
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    iget-object v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_times:[J

    array-length v2, v1

    :goto_24
    if-ge v3, v2, :cond_31

    aget-wide v6, v1, v3

    .line 978
    .restart local v6    # "t":J
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 977
    .end local v6    # "t":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 979
    :cond_31
    iget-wide v1, p0, Lcom/android/server/wm/SluggishDetector$ThroughputInfo$ThroughputInfoData;->tx_total_bytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
