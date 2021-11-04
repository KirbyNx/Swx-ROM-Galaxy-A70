.class final Lcom/android/server/am/Pageboost$Vramdisk;
.super Ljava/lang/Object;
.source "Pageboost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Vramdisk"
.end annotation


# static fields
.field private static final DEVICE_SEGMENT_MID_RAMSIZE:J = 0x180000000L

.field private static ENABLED:Z = false

.field private static final MAX_QUOTA_PER_APP:J = 0x6400000L


# instance fields
.field private amount_mlocked:J

.field private mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

.field private mFixedApps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMlockManager:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/am/Pageboost$VramdiskMlockManager;",
            ">;"
        }
    .end annotation
.end field

.field private num_apps:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 679
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    .line 688
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    .line 691
    new-instance v0, Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-direct {v0}, Lcom/android/server/am/Pageboost$PageboostAppList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    .line 694
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    .line 697
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    .line 700
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 676
    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    return v0
.end method

.method public static getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;
    .registers 10
    .param p0, "apkPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/LinkedList<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 708
    const/4 v0, 0x0

    .line 710
    .local v0, "files":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :try_start_1
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v1

    .line 711
    const-string v1, "/system/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "/product/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 714
    :cond_17
    const-string v1, "/data/dalvik-cache/arm/"

    const-string v2, "/data/dalvik-cache/arm64/"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    .line 715
    .local v1, "prefix":[Ljava/lang/String;
    const-string v2, "art"

    const-string v3, "dex"

    const-string/jumbo v4, "vdex"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    .line 716
    .local v2, "postfix":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    const/16 v6, 0x40

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "@classes."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 717
    .local v3, "infix":Ljava/lang/String;
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v4

    .line 719
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4f
    const/4 v5, 0x2

    if-ge v4, v5, :cond_80

    .line 720
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_53
    const/4 v6, 0x3

    if-ge v5, v6, :cond_7d

    .line 721
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 722
    .local v6, "fn":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 723
    .local v7, "dcfile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_7a

    .line 724
    invoke-virtual {v0, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7a} :catch_81

    .line 720
    .end local v6    # "fn":Ljava/lang/String;
    .end local v7    # "dcfile":Ljava/io/File;
    :cond_7a
    add-int/lit8 v5, v5, 0x1

    goto :goto_53

    .line 719
    .end local v5    # "j":I
    :cond_7d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 732
    .end local v1    # "prefix":[Ljava/lang/String;
    .end local v2    # "postfix":[Ljava/lang/String;
    .end local v3    # "infix":Ljava/lang/String;
    .end local v4    # "i":I
    :cond_80
    goto :goto_86

    .line 729
    :catch_81
    move-exception v1

    .line 730
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 731
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 734
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_86
    return-object v0
.end method

.method public static getFilesVramdiskStaticTarget(Ljava/lang/String;[J)Ljava/util/LinkedList;
    .registers 24
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "totalSize"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[J)",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 740
    move-object/from16 v1, p0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v0

    .line 742
    .local v2, "files":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, p1, v3

    .line 744
    :try_start_d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 745
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 746
    .local v6, "target":Ljava/io/File;
    if-nez v6, :cond_1a

    .line 747
    const/4 v3, 0x0

    return-object v3

    .line 748
    :cond_1a
    new-instance v7, Ljava/util/Stack;

    invoke-direct {v7}, Ljava/util/Stack;-><init>()V

    .line 749
    .local v7, "list":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    invoke-virtual {v7, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 750
    :goto_22
    invoke-virtual {v7}, Ljava/util/Stack;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b4

    .line 751
    invoke-virtual {v7}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    .line 752
    .local v8, "f":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    array-length v10, v9

    move v11, v3

    :goto_34
    if-ge v11, v10, :cond_b0

    aget-object v12, v9, v11

    .line 753
    .local v12, "child":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_42

    .line 754
    invoke-virtual {v7, v12}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ab

    .line 756
    :cond_42
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 757
    .local v13, "size":J
    aget-wide v15, p1, v3

    add-long/2addr v15, v13

    const-wide/32 v17, 0x6400000

    cmp-long v15, v15, v17

    if-lez v15, :cond_51

    .line 758
    goto :goto_b0

    .line 760
    :cond_51
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 761
    aget-wide v15, p1, v3

    add-long/2addr v15, v13

    aput-wide v15, p1, v3

    .line 764
    invoke-virtual {v12}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_ab

    const-string v15, "/system/"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_77

    const-string v15, "/product/"

    invoke-virtual {v1, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_ab

    .line 766
    :cond_77
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/Pageboost$Vramdisk;->getDalvikcacheFileList(Ljava/lang/String;)Ljava/util/LinkedList;

    move-result-object v15

    .line 767
    .local v15, "dalvikcaches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    if-eqz v15, :cond_ab

    .line 768
    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_81
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_ab

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/io/File;

    .line 769
    .local v19, "dcfile":Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->length()J

    move-result-wide v20

    move-wide/from16 v13, v20

    .line 770
    aget-wide v20, p1, v3

    add-long v20, v20, v13

    cmp-long v20, v20, v17

    if-lez v20, :cond_9c

    .line 771
    goto :goto_ab

    .line 773
    :cond_9c
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 774
    aget-wide v4, p1, v3

    add-long/2addr v4, v13

    aput-wide v4, p1, v3
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_a8} :catch_b5

    .line 775
    .end local v19    # "dcfile":Ljava/io/File;
    const-wide/16 v4, 0x0

    goto :goto_81

    .line 752
    .end local v12    # "child":Ljava/io/File;
    .end local v13    # "size":J
    .end local v15    # "dalvikcaches":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/io/File;>;"
    :cond_ab
    :goto_ab
    add-int/lit8 v11, v11, 0x1

    const-wide/16 v4, 0x0

    goto :goto_34

    .line 780
    .end local v8    # "f":Ljava/io/File;
    :cond_b0
    :goto_b0
    const-wide/16 v4, 0x0

    goto/16 :goto_22

    .line 785
    .end local v0    # "file":Ljava/io/File;
    .end local v6    # "target":Ljava/io/File;
    .end local v7    # "list":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/io/File;>;"
    :cond_b4
    goto :goto_be

    .line 781
    :catch_b5
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 783
    const-wide/16 v4, 0x0

    aput-wide v4, p1, v3

    .line 784
    const/4 v2, 0x0

    .line 787
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_be
    return-object v2
.end method

.method public static setConfiguration(J)V
    .registers 5
    .param p0, "dram_size"    # J

    .line 703
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dram size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    # getter for: Lcom/android/server/am/Pageboost;->PAGEBOOST_IGNORE_DRAM_SPECIFICATION:Z
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$1000()Z

    move-result v0

    if-nez v0, :cond_2a

    const-wide v0, 0x180000000L

    cmp-long v0, p0, v0

    if-ltz v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    sput-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    .line 705
    return-void
.end method

.method private setMlockSize(J)V
    .registers 6
    .param p1, "size"    # J

    .line 946
    iput-wide p1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    .line 947
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    .line 948
    iput-wide v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    .line 950
    :cond_a
    return-void
.end method


# virtual methods
.method public addApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z
    .registers 10
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 792
    const-wide/16 v0, 0x0

    .line 795
    .local v0, "amount":J
    const/4 v2, 0x0

    if-nez p1, :cond_6

    .line 796
    return v2

    .line 799
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v3, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2a

    .line 800
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "already mlocked : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    return v4

    .line 805
    :cond_2a
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->isApkPathCorrect()Z

    move-result v3

    if-nez v3, :cond_31

    .line 806
    return v2

    .line 809
    :cond_31
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->createMlockInfo(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    move-result-object v3

    .line 810
    .local v3, "iMlock":Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    if-nez v3, :cond_53

    .line 811
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vramdisk failed to add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    return v2

    .line 815
    :cond_53
    # invokes: Lcom/android/server/am/Pageboost$PageboostAppInfo;->getSizeForVramdisk()J
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$1100(Lcom/android/server/am/Pageboost$PageboostAppInfo;)J

    move-result-wide v0

    .line 818
    iget v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    .line 820
    iget-wide v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    add-long/2addr v5, v0

    invoke-direct {p0, v5, v6}, Lcom/android/server/am/Pageboost$Vramdisk;->setMlockSize(J)V

    .line 821
    iget-object v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v5, p1, v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->add(Lcom/android/server/am/Pageboost$PageboostAppInfo;Z)V

    .line 822
    invoke-virtual {p0, v3}, Lcom/android/server/am/Pageboost$Vramdisk;->mlockAll(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V

    .line 824
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "vramdisk add : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", size : , stat : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "vramdisk add,"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 828
    return v4
.end method

.method public applyFixedApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 5
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 882
    if-eqz p1, :cond_27

    .line 883
    iget-object v0, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/Pageboost$Vramdisk;->inFixedAppList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 884
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyFixedApp : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->addApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 888
    :cond_27
    return-void
.end method

.method public applyFixedAppList()V
    .registers 6

    .line 867
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    if-nez v0, :cond_5

    .line 868
    return-void

    .line 871
    :cond_5
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 872
    .local v1, "app_name":Ljava/lang/String;
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFixedAppList : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    # getter for: Lcom/android/server/am/Pageboost;->mGlobalAppLRU:Lcom/android/server/am/Pageboost$PageboostAppList;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$500()Lcom/android/server/am/Pageboost$PageboostAppList;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/am/Pageboost$PageboostAppList;->getPageboostApp(Ljava/lang/String;)Lcom/android/server/am/Pageboost$PageboostAppInfo;

    move-result-object v2

    .line 875
    .local v2, "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    if-eqz v2, :cond_3a

    .line 876
    invoke-virtual {p0, v2}, Lcom/android/server/am/Pageboost$Vramdisk;->addApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 878
    .end local v1    # "app_name":Ljava/lang/String;
    :cond_3a
    goto :goto_9

    .line 879
    .end local v2    # "iApp":Lcom/android/server/am/Pageboost$PageboostAppInfo;
    :cond_3b
    return-void
.end method

.method public createMlockInfo(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    .registers 7
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 907
    const/4 v0, 0x1

    new-array v0, v0, [J

    .line 908
    .local v0, "size":[J
    const/4 v1, 0x0

    .line 910
    .local v1, "iMlock":Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    const-wide/16 v2, 0x0

    # invokes: Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSizeForVramdisk(J)V
    invoke-static {p1, v2, v3}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$1200(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)V

    .line 911
    iget-object v2, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mApkPath:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/server/am/Pageboost$Vramdisk;->getFilesVramdiskStaticTarget(Ljava/lang/String;[J)Ljava/util/LinkedList;

    move-result-object v2

    .line 912
    .local v2, "files":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1d

    .line 913
    const/4 v3, 0x0

    aget-wide v3, v0, v3

    # invokes: Lcom/android/server/am/Pageboost$PageboostAppInfo;->setSizeForVramdisk(J)V
    invoke-static {p1, v3, v4}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$1200(Lcom/android/server/am/Pageboost$PageboostAppInfo;J)V

    .line 914
    new-instance v3, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    invoke-direct {v3, v2}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;-><init>(Ljava/util/LinkedList;)V

    move-object v1, v3

    .line 916
    :cond_1d
    return-object v1
.end method

.method public gatherFixedApps(Ljava/util/LinkedList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 855
    .local p1, "apps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    sget-boolean v0, Lcom/android/server/am/Pageboost$Vramdisk;->ENABLED:Z

    if-nez v0, :cond_5

    .line 856
    return-void

    .line 858
    :cond_5
    if-nez p1, :cond_8

    .line 859
    return-void

    .line 861
    :cond_8
    iput-object p1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    .line 862
    return-void
.end method

.method public inFixedAppList(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 891
    const/4 v0, 0x0

    .line 893
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mFixedApps:Ljava/util/LinkedList;

    if-eqz v1, :cond_1e

    .line 894
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 895
    .local v2, "app_name":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 896
    const/4 v0, 0x1

    .line 897
    goto :goto_1e

    .line 899
    .end local v2    # "app_name":Ljava/lang/String;
    :cond_1d
    goto :goto_9

    .line 902
    :cond_1e
    :goto_1e
    return v0
.end method

.method public mlockAll(Lcom/android/server/am/Pageboost$VramdiskMlockManager;)V
    .registers 3
    .param p1, "iMlock"    # Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    .line 920
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 921
    invoke-virtual {p1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->mlockAllFiles()V

    .line 922
    return-void
.end method

.method public munlockAll(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V
    .registers 5
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;

    .line 925
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    iget-object v0, v0, Lcom/android/server/am/Pageboost$PageboostAppList;->mPageboostApps:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 926
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/Pageboost$VramdiskMlockManager;

    .line 928
    .local v1, "iMlock":Lcom/android/server/am/Pageboost$VramdiskMlockManager;
    if-eqz v1, :cond_20

    .line 929
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->hasPinnedFile()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 930
    invoke-virtual {v1}, Lcom/android/server/am/Pageboost$VramdiskMlockManager;->munlockAllFiles()V

    .line 931
    :cond_1b
    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mMlockManager:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 933
    :cond_20
    return-void
.end method

.method public removeApp(Lcom/android/server/am/Pageboost$PageboostAppInfo;Ljava/lang/String;I)V
    .registers 11
    .param p1, "iApp"    # Lcom/android/server/am/Pageboost$PageboostAppInfo;
    .param p2, "caller"    # Ljava/lang/String;
    .param p3, "needFreeCache"    # I

    .line 833
    if-nez p1, :cond_3

    .line 834
    return-void

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->contains(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 838
    return-void

    .line 841
    :cond_c
    # invokes: Lcom/android/server/am/Pageboost$PageboostAppInfo;->getSizeForVramdisk()J
    invoke-static {p1}, Lcom/android/server/am/Pageboost$PageboostAppInfo;->access$1100(Lcom/android/server/am/Pageboost$PageboostAppInfo;)J

    move-result-wide v0

    .line 842
    .local v0, "amount":J
    invoke-virtual {p0, p1}, Lcom/android/server/am/Pageboost$Vramdisk;->munlockAll(Lcom/android/server/am/Pageboost$PageboostAppInfo;)V

    .line 844
    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/Pageboost$PageboostAppList;->remove(Lcom/android/server/am/Pageboost$PageboostAppInfo;)Z

    .line 845
    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    .line 846
    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/Pageboost$Vramdisk;->setMlockSize(J)V

    .line 848
    # getter for: Lcom/android/server/am/Pageboost;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/Pageboost;->access$200()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vramdisk remove : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", stat : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vramdisk remove,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/am/Pageboost$PageboostAppInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/Pageboost$VramdiskLogger;->add(Ljava/lang/String;)V

    .line 851
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 936
    const-string v0, ""

    .line 937
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amount per app : 104857600\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 938
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[cur] app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->num_apps:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "amount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->amount_mlocked:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "per-app info : \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 941
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/Pageboost$Vramdisk;->mAppList:Lcom/android/server/am/Pageboost$PageboostAppList;

    invoke-virtual {v2}, Lcom/android/server/am/Pageboost$PageboostAppList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 942
    return-object v0
.end method
