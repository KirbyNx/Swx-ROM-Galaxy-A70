.class final Lcom/android/server/NandswapManager$NandSwapBigdataManager;
.super Ljava/lang/Object;
.source "NandswapManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NandswapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NandSwapBigdataManager"
.end annotation


# static fields
.field static final bigdataJsonFormat:[Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static semHqmManager:Landroid/os/SemHqmManager;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 677
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 678
    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->mContext:Landroid/content/Context;

    .line 680
    const-string v1, "count_average"

    const-string/jumbo v2, "size_average"

    const-string/jumbo v3, "reads"

    const-string/jumbo v4, "writes"

    const-string/jumbo v5, "objcnt"

    const-string/jumbo v6, "max_count"

    const-string/jumbo v7, "max_size"

    const-string/jumbo v8, "ppr_count_average"

    const-string/jumbo v9, "ppr_size_average"

    const-string/jumbo v10, "ppr_reads"

    const-string/jumbo v11, "ppr_writes"

    const-string/jumbo v12, "ppr_objcnt"

    const-string/jumbo v13, "ppr_max_count"

    const-string/jumbo v14, "ppr_max_size"

    const-string/jumbo v15, "objreads"

    const-string/jumbo v16, "objwrites"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 688
    sput-object p1, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->mContext:Landroid/content/Context;

    .line 689
    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->init()V

    .line 690
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/NandswapManager$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/content/Context;
    .param p2, "x1"    # Lcom/android/server/NandswapManager$1;

    .line 676
    invoke-direct {p0, p1}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()V
    .registers 0

    .line 676
    invoke-static {}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->uploadBigdataToHQM()V

    return-void
.end method

.method private static init()V
    .registers 5

    .line 694
    sget-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    sput-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    .line 697
    # getter for: Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;
    invoke-static {}, Lcom/android/server/NandswapManager;->access$1500()[Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, v1, :cond_28

    aget-object v3, v0, v2

    .line 698
    .local v3, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->isSupportBigdata()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->isExistBigdataInfoProp()Z

    move-result v4

    if-nez v4, :cond_25

    .line 699
    invoke-virtual {v3}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 697
    .end local v3    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 702
    :cond_28
    return-void
.end method

.method private static makeJsonFormat(Lcom/android/server/NandswapManager$NandswapClient;)Ljava/lang/String;
    .registers 15
    .param p0, "client"    # Lcom/android/server/NandswapManager$NandswapClient;

    .line 727
    const-string v0, ""

    .line 728
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBdStat()Ljava/util/HashMap;

    move-result-object v1

    .line 729
    .local v1, "bdInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getBigdataInfoProp()Ljava/util/HashMap;

    move-result-object v2

    .line 730
    .local v2, "persistInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 731
    const-string v3, "NandswapManager"

    const-string/jumbo v4, "persist.sys.%s.bigdata_info is not support..."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-object v0

    .line 735
    :cond_19
    sget-object v3, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->bigdataJsonFormat:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_1e
    const/4 v7, 0x1

    if-ge v6, v4, :cond_144

    aget-object v8, v3, v6

    .line 736
    .local v8, "key":Ljava/lang/String;
    const-string v9, ""

    .line 737
    .local v9, "value":Ljava/lang/String;
    const-string v10, "count_average"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "%.3f"

    if-eqz v10, :cond_41

    .line 738
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getCountAverage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "value":Ljava/lang/String;
    .local v7, "value":Ljava/lang/String;
    goto/16 :goto_11f

    .line 739
    .end local v7    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_41
    const-string/jumbo v10, "size_average"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5c

    .line 740
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getSizeAverage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    goto/16 :goto_11f

    .line 741
    .end local v7    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_5c
    const-string/jumbo v10, "ppr_count_average"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_77

    .line 742
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getPprCountAverage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    goto/16 :goto_11f

    .line 743
    .end local v7    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_77
    const-string/jumbo v10, "ppr_size_average"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_92

    .line 744
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/server/NandswapManager$NandswapClient;->getPprSizeAverage()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    goto/16 :goto_11f

    .line 745
    .end local v7    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_92
    const-string/jumbo v10, "objcnt"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "%d"

    if-nez v10, :cond_113

    const-string/jumbo v10, "ppr_objcnt"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a7

    goto :goto_113

    .line 747
    :cond_a7
    const-string/jumbo v10, "max_count"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ee

    const-string/jumbo v10, "max_size"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ee

    .line 748
    const-string/jumbo v10, "ppr_max_count"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_ee

    const-string/jumbo v10, "ppr_max_size"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_cc

    goto :goto_ee

    .line 756
    :cond_cc
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    add-int/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_11f

    .line 749
    .end local v7    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_ee
    :goto_ee
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v2, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v10, v12}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    goto :goto_11f

    .line 746
    .end local v7    # "value":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/String;
    :cond_113
    :goto_113
    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {v11, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 758
    .end local v9    # "value":Ljava/lang/String;
    .restart local v7    # "value":Ljava/lang/String;
    :goto_11f
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\":\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "key":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1e

    .line 760
    :cond_144
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_153

    .line 761
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 763
    :cond_153
    return-object v0
.end method

.method private static uploadBigdataToHQM()V
    .registers 16

    .line 705
    sget-object v0, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const-string v1, "NandswapManager"

    if-nez v0, :cond_c

    .line 706
    const-string v0, "Bigdata semHqmManager isn\'t initalized..."

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    return-void

    .line 710
    :cond_c
    # getter for: Lcom/android/server/NandswapManager;->mClients:[Lcom/android/server/NandswapManager$NandswapClient;
    invoke-static {}, Lcom/android/server/NandswapManager;->access$1500()[Lcom/android/server/NandswapManager$NandswapClient;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_50

    aget-object v4, v0, v3

    .line 711
    .local v4, "client":Lcom/android/server/NandswapManager$NandswapClient;
    invoke-virtual {v4}, Lcom/android/server/NandswapManager$NandswapClient;->isSupportBigdata()Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 712
    const-string v5, "Upload Bigdata..."

    invoke-static {v1, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    invoke-static {v4}, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->makeJsonFormat(Lcom/android/server/NandswapManager$NandswapClient;)Ljava/lang/String;

    move-result-object v5

    .line 715
    .local v5, "data":Ljava/lang/String;
    sget-object v6, Lcom/android/server/NandswapManager$NandSwapBigdataManager;->semHqmManager:Landroid/os/SemHqmManager;

    const/4 v7, 0x0

    const-string v8, "AP"

    const-string v9, "NSST"

    const-string/jumbo v10, "sm"

    const-string v11, "0.0"

    const-string/jumbo v12, "sec"

    const-string v13, ""

    const-string v15, ""

    move-object v14, v5

    invoke-virtual/range {v6 .. v15}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    const-string v6, "Initialize bigdata information..."

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    invoke-virtual {v4}, Lcom/android/server/NandswapManager$NandswapClient;->initBigdataInfoProp()V

    .line 719
    invoke-virtual {v4}, Lcom/android/server/NandswapManager$NandswapClient;->clearAverageList()V

    .line 720
    invoke-virtual {v4}, Lcom/android/server/NandswapManager$NandswapClient;->setPreviousInfo()V

    .line 721
    invoke-virtual {v4}, Lcom/android/server/NandswapManager$NandswapClient;->resetBdStatSysNode()V

    .line 710
    .end local v4    # "client":Lcom/android/server/NandswapManager$NandswapClient;
    .end local v5    # "data":Ljava/lang/String;
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 724
    :cond_50
    return-void
.end method
