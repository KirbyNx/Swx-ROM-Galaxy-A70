.class final Lcom/android/server/appop/HistoricalRegistry$Persistence;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Persistence"
.end annotation


# static fields
.field private static final ATTR_ACCESS_COUNT:Ljava/lang/String; = "ac"

.field private static final ATTR_ACCESS_DURATION:Ljava/lang/String; = "du"

.field private static final ATTR_BEGIN_TIME:Ljava/lang/String; = "beg"

.field private static final ATTR_END_TIME:Ljava/lang/String; = "end"

.field private static final ATTR_NAME:Ljava/lang/String; = "na"

.field private static final ATTR_OVERFLOW:Ljava/lang/String; = "ov"

.field private static final ATTR_REJECT_COUNT:Ljava/lang/String; = "rc"

.field private static final ATTR_VERSION:Ljava/lang/String; = "ver"

.field private static final CURRENT_VERSION:I = 0x2

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final TAG_ATTRIBUTION:Ljava/lang/String; = "ftr"

.field private static final TAG_HISTORY:Ljava/lang/String; = "history"

.field private static final TAG_OP:Ljava/lang/String; = "op"

.field private static final TAG_OPS:Ljava/lang/String; = "ops"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "pkg"

.field private static final TAG_STATE:Ljava/lang/String; = "st"

.field private static final TAG_UID:Ljava/lang/String; = "uid"

.field private static final sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;


# instance fields
.field private final mBaseSnapshotInterval:J

.field private final mIntervalCompressionMultiplier:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 751
    const-class v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    .line 780
    new-instance v0, Lcom/android/internal/os/AtomicDirectory;

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/io/File;

    .line 781
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "appops"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string/jumbo v3, "history"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/internal/os/AtomicDirectory;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    .line 780
    return-void
.end method

.method constructor <init>(JJ)V
    .registers 5
    .param p1, "baseSnapshotInterval"    # J
    .param p3, "intervalCompressionMultiplier"    # J

    .line 775
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    iput-wide p1, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    .line 777
    iput-wide p3, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    .line 778
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .registers 12
    .param p0, "x0"    # Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .param p1, "x1"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # [Ljava/lang/String;
    .param p6, "x6"    # I
    .param p7, "x7"    # J
    .param p9, "x8"    # J
    .param p11, "x9"    # I

    .line 748
    invoke-direct/range {p0 .. p11}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p0, "x0"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "x1"    # D

    .line 748
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    return-object v0
.end method

.method static clearHistoryDLocked()V
    .registers 1

    .line 805
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 806
    return-void
.end method

.method private collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;
    .registers 29
    .param p1, "filterUid"    # I
    .param p2, "filterPackageName"    # Ljava/lang/String;
    .param p3, "filterAttributionTag"    # Ljava/lang/String;
    .param p4, "filterOpNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "filterBeginTimeMillis"    # J
    .param p8, "filterEndTimeMillis"    # J
    .param p10, "filterFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 904
    const/4 v1, 0x0

    .line 906
    .local v1, "baseDir":Ljava/io/File;
    :try_start_1
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_35

    .line 912
    .end local v1    # "baseDir":Ljava/io/File;
    .local v3, "baseDir":Ljava/io/File;
    :try_start_7
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v17

    .line 913
    .local v17, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v0, 0x1

    new-array v14, v0, [J

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    aput-wide v1, v14, v0

    .line 914
    .local v14, "globalContentOffsetMillis":[J
    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-wide/from16 v11, p8

    move/from16 v13, p10

    invoke-direct/range {v2 .. v17}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 921
    .local v0, "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_31
    .catchall {:try_start_7 .. :try_end_31} :catchall_32

    .line 922
    return-object v0

    .line 923
    .end local v0    # "ops":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v14    # "globalContentOffsetMillis":[J
    .end local v17    # "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_32
    move-exception v0

    move-object v1, v3

    goto :goto_36

    .end local v3    # "baseDir":Ljava/io/File;
    .restart local v1    # "baseDir":Ljava/io/File;
    :catchall_35
    move-exception v0

    .line 924
    .local v0, "t":Ljava/lang/Throwable;
    :goto_36
    const-string v2, "Error reading historical app ops. Deleting history."

    # invokes: Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 925
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 927
    .end local v0    # "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method private collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    .registers 23
    .param p1, "currentOps"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeingMillis"    # J
    .param p9, "filterEndMillis"    # J
    .param p11, "filterFlags"    # I

    .line 888
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v0

    .line 891
    .local v0, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_2a

    .line 892
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 893
    .local v1, "readCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_28

    .line 894
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 895
    .local v3, "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v4, p1

    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 893
    .end local v3    # "readOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    :cond_28
    move-object v4, p1

    goto :goto_2b

    .line 891
    .end local v1    # "readCount":I
    .end local v2    # "i":I
    :cond_2a
    move-object v4, p1

    .line 898
    :goto_2b
    return-void
.end method

.method private collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;
    .registers 44
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "globalContentOffsetMillis"    # [J
    .param p14, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .local p13, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p15, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move/from16 v14, p14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v15, p11

    move-object/from16 v16, p12

    move/from16 v17, p14

    move-object/from16 v18, p15

    .line 939
    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v2, v2

    int-to-double v4, v14

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-long v2, v2

    iget-wide v4, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v19, v2, v4

    .local v19, "previousIntervalEndMillis":J
    move-wide/from16 v2, v19

    .line 941
    iget-wide v4, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v4, v4

    add-int/lit8 v11, v14, 0x1

    int-to-double v11, v11

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-long v4, v4

    iget-wide v11, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v11, v4

    .local v11, "currentIntervalEndMillis":J
    move-wide v4, v11

    .line 944
    move-wide/from16 v21, v11

    .end local v11    # "currentIntervalEndMillis":J
    .local v21, "currentIntervalEndMillis":J
    sub-long v11, p7, v19

    const-wide/16 v13, 0x0

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move-wide/from16 v13, v21

    .end local v21    # "currentIntervalEndMillis":J
    .end local p7    # "filterBeginTimeMillis":J
    .local v13, "currentIntervalEndMillis":J
    .local v23, "filterBeginTimeMillis":J
    move-wide/from16 v11, v23

    .line 945
    sub-long v21, p9, v19

    move-wide/from16 v25, v13

    .end local v13    # "currentIntervalEndMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .local v21, "filterEndTimeMillis":J
    .local v25, "currentIntervalEndMillis":J
    move-wide/from16 v13, v21

    .line 948
    invoke-direct/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v15

    .line 954
    .local v15, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v15, :cond_59

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 955
    return-object p13

    .line 959
    :cond_59
    add-int/lit8 v14, p14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, v23

    move-wide/from16 v9, v21

    move/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v27, v15

    .end local v15    # "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v27, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsRecursiveDLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JLjava/util/LinkedList;ILjava/util/Set;)Ljava/util/LinkedList;

    move-result-object v0

    .line 965
    .end local p13    # "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v0, "outOps":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_95

    .line 966
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 967
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_82
    if-ge v2, v1, :cond_92

    .line 968
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 969
    .local v3, "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v4, v25

    .end local v25    # "currentIntervalEndMillis":J
    .local v4, "currentIntervalEndMillis":J
    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 967
    .end local v3    # "collectedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    .end local v4    # "currentIntervalEndMillis":J
    .restart local v25    # "currentIntervalEndMillis":J
    :cond_92
    move-wide/from16 v4, v25

    .end local v25    # "currentIntervalEndMillis":J
    .restart local v4    # "currentIntervalEndMillis":J
    goto :goto_97

    .line 965
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    .end local v4    # "currentIntervalEndMillis":J
    .restart local v25    # "currentIntervalEndMillis":J
    :cond_95
    move-wide/from16 v4, v25

    .line 973
    .end local v25    # "currentIntervalEndMillis":J
    .restart local v4    # "currentIntervalEndMillis":J
    :goto_97
    move-object/from16 v1, v27

    .end local v27    # "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v1, "readOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v1, :cond_b7

    .line 974
    if-nez v0, :cond_a3

    .line 975
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    move-object v0, v2

    .line 978
    :cond_a3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 979
    .local v2, "opCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_a9
    if-ltz v3, :cond_b7

    .line 980
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 979
    add-int/lit8 v3, v3, -0x1

    goto :goto_a9

    .line 984
    .end local v2    # "opCount":I
    .end local v3    # "i":I
    :cond_b7
    return-object v0
.end method

.method private computeGlobalIntervalBeginMillis(I)J
    .registers 11
    .param p1, "depth"    # I

    .line 1587
    const-wide/16 v0, 0x0

    .line 1588
    .local v0, "beginTimeMillis":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_15

    .line 1589
    long-to-double v3, v0

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v5, v5

    int-to-double v7, v2

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    double-to-long v0, v3

    .line 1588
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1591
    .end local v2    # "i":I
    :cond_15
    iget-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method private static enforceOpsWellFormed(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 1556
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez p0, :cond_3

    .line 1557
    return-void

    .line 1560
    :cond_3
    const/4 v0, 0x0

    .line 1561
    .local v0, "current":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1562
    .local v1, "opsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_af

    .line 1563
    move-object v3, v0

    .line 1564
    .local v3, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1565
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_94

    .line 1569
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-ltz v4, :cond_79

    .line 1573
    if-eqz v3, :cond_76

    .line 1574
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_5b

    .line 1578
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gtz v4, :cond_40

    goto :goto_76

    .line 1579
    :cond_40
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Non increasing ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1580
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1575
    :cond_5b
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Intersecting ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1576
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1562
    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1570
    :cond_79
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Begin after end:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1571
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1566
    :cond_94
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Empty ops:\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1567
    invoke-static {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->opsToDebugString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1584
    .end local v2    # "i":I
    .end local v3    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_af
    return-void
.end method

.method private generateFile(Ljava/io/File;I)Ljava/io/File;
    .registers 8
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "depth"    # I

    .line 784
    invoke-direct {p0, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->computeGlobalIntervalBeginMillis(I)J

    move-result-wide v0

    .line 785
    .local v0, "globalBeginMillis":J
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2
.end method

.method private static getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;
    .registers 7
    .param p0, "historyDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1679
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1680
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_b

    .line 1681
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 1683
    :cond_b
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 1684
    .local v1, "fileNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    array-length v2, v0

    const/4 v3, 0x0

    :goto_13
    if-ge v3, v2, :cond_21

    aget-object v4, v0, v3

    .line 1685
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1684
    .end local v4    # "file":Ljava/io/File;
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1688
    :cond_21
    return-object v1
.end method

.method private handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V
    .registers 32
    .param p1, "newBaseDir"    # Ljava/io/File;
    .param p2, "oldBaseDir"    # Ljava/io/File;
    .param p5, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 991
    .local p3, "passedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local p4, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v1, p5

    iget-wide v6, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    int-to-double v8, v1

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v13, v6, v8

    .line 993
    .local v13, "previousIntervalEndMillis":J
    iget-wide v6, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    long-to-double v6, v6

    add-int/lit8 v0, v1, 0x1

    int-to-double v8, v0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-long v6, v6

    iget-wide v8, v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    mul-long v19, v6, v8

    .line 996
    .local v19, "currentIntervalEndMillis":J
    if-eqz v2, :cond_150

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    move v7, v1

    move-object v6, v3

    move-object v9, v4

    move-object v8, v5

    move-wide/from16 v21, v13

    goto/16 :goto_156

    .line 1015
    :cond_36
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    .line 1016
    .local v0, "passedOpCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    if-ge v6, v0, :cond_4a

    .line 1017
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1018
    .local v7, "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    neg-long v8, v13

    invoke-virtual {v7, v8, v9}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1016
    .end local v7    # "passedOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 1026
    .end local v6    # "i":I
    :cond_4a
    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/high16 v11, -0x8000000000000000L

    const-wide v15, 0x7fffffffffffffffL

    move-wide/from16 v21, v13

    .end local v13    # "previousIntervalEndMillis":J
    .local v21, "previousIntervalEndMillis":J
    move-wide v13, v15

    const/16 v15, 0x1f

    const/16 v16, 0x0

    const/16 v18, 0x0

    move/from16 v23, v0

    .end local v0    # "passedOpCount":I
    .local v23, "passedOpCount":I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v21

    move-wide/from16 v4, v19

    move/from16 v17, p5

    invoke-direct/range {v0 .. v18}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;

    move-result-object v6

    .line 1038
    .local v6, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v6, :cond_9b

    .line 1039
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    .line 1040
    .local v0, "existingOpCount":I
    if-lez v0, :cond_98

    .line 1042
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v7, p3

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1043
    invoke-virtual {v1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v1

    .line 1044
    .local v1, "elapsedTimeMillis":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8a
    if-ge v3, v0, :cond_9d

    .line 1045
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1046
    .local v4, "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 1044
    .end local v4    # "existingOp":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    .line 1040
    .end local v1    # "elapsedTimeMillis":J
    .end local v3    # "i":I
    :cond_98
    move-object/from16 v7, p3

    goto :goto_9d

    .line 1038
    .end local v0    # "existingOpCount":I
    :cond_9b
    move-object/from16 v7, p3

    .line 1055
    :cond_9d
    :goto_9d
    move-wide/from16 v8, v21

    .line 1060
    .local v8, "slotDurationMillis":J
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, v7}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    move-object v10, v0

    .line 1061
    .local v10, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v6, :cond_aa

    .line 1062
    invoke-interface {v10, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1070
    :cond_aa
    const/4 v0, 0x0

    .line 1071
    .local v0, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const/4 v1, 0x0

    .line 1081
    .local v1, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-wide/16 v2, 0x0

    .line 1082
    .local v2, "intervalOverflowMillis":J
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 1083
    .local v11, "opCount":I
    const/4 v4, 0x0

    move-object v12, v0

    move-object v13, v1

    move-wide v14, v2

    .end local v0    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v1    # "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v2    # "intervalOverflowMillis":J
    .local v4, "i":I
    .local v12, "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v13, "overflowedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v14, "intervalOverflowMillis":J
    :goto_b6
    if-ge v4, v11, :cond_11a

    .line 1084
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1087
    .local v0, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v19

    if-gtz v1, :cond_c9

    .line 1088
    move-object v1, v0

    .line 1089
    .local v1, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    const/4 v2, 0x0

    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_fd

    .line 1090
    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_c9
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    cmp-long v1, v1, v19

    if-gez v1, :cond_fb

    .line 1091
    move-object v1, v0

    .line 1092
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v19

    .line 1093
    .end local v14    # "intervalOverflowMillis":J
    .local v2, "intervalOverflowMillis":J
    cmp-long v5, v2, v21

    if-lez v5, :cond_f4

    .line 1094
    long-to-double v14, v2

    .line 1095
    move-object v5, v1

    move-wide/from16 v16, v2

    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "intervalOverflowMillis":J
    .local v5, "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "intervalOverflowMillis":J
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v1

    long-to-double v1, v1

    div-double/2addr v14, v1

    .line 1096
    .local v14, "splitScale":D
    invoke-static {v0, v14, v15}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1097
    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v24

    sub-long v24, v24, v19

    .line 1098
    .end local v14    # "splitScale":D
    .end local v16    # "intervalOverflowMillis":J
    .local v24, "intervalOverflowMillis":J
    move-object v1, v5

    move-wide/from16 v14, v24

    goto :goto_fd

    .line 1099
    .end local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v24    # "intervalOverflowMillis":J
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .local v2, "intervalOverflowMillis":J
    :cond_f4
    move-object v5, v1

    move-wide/from16 v16, v2

    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "intervalOverflowMillis":J
    .restart local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "intervalOverflowMillis":J
    const/4 v2, 0x0

    move-wide/from16 v14, v16

    .local v2, "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_fd

    .line 1102
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "intervalOverflowMillis":J
    .local v14, "intervalOverflowMillis":J
    :cond_fb
    const/4 v1, 0x0

    .line 1103
    .restart local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    move-object v2, v0

    .line 1105
    .restart local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_fd
    if-eqz v1, :cond_10a

    .line 1106
    if-nez v12, :cond_107

    .line 1107
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v3

    .line 1109
    :cond_107
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_10a
    if-eqz v2, :cond_117

    .line 1112
    if-nez v13, :cond_114

    .line 1113
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v3

    .line 1115
    :cond_114
    invoke-interface {v13, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1083
    .end local v0    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v1    # "persistedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v2    # "overflowedOp":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_117
    add-int/lit8 v4, v4, 0x1

    goto :goto_b6

    .line 1124
    .end local v4    # "i":I
    :cond_11a
    move-object/from16 v5, p0

    move-object/from16 v4, p1

    move/from16 v3, p5

    invoke-direct {v5, v4, v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v2

    .line 1125
    .local v2, "newFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p4

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1127
    if-eqz v12, :cond_135

    .line 1128
    invoke-static {v12, v8, v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->normalizeSnapshotForSlotDuration(Ljava/util/List;J)V

    .line 1129
    invoke-direct {v5, v12, v14, v15, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V

    .line 1137
    :cond_135
    add-int/lit8 v16, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v17, v6

    move-object v6, v1

    .end local v6    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v17, "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object/from16 v1, p1

    move-object/from16 v18, v2

    .end local v2    # "newFile":Ljava/io/File;
    .local v18, "newFile":Ljava/io/File;
    move-object/from16 v2, p2

    move v7, v3

    move-object v3, v13

    move-wide/from16 v24, v8

    move-object v8, v4

    .end local v8    # "slotDurationMillis":J
    .local v24, "slotDurationMillis":J
    move-object/from16 v4, p4

    move-object v9, v5

    move/from16 v5, v16

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 1139
    return-void

    .line 996
    .end local v10    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v11    # "opCount":I
    .end local v12    # "persistedOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v14    # "intervalOverflowMillis":J
    .end local v17    # "existingOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v18    # "newFile":Ljava/io/File;
    .end local v21    # "previousIntervalEndMillis":J
    .end local v23    # "passedOpCount":I
    .end local v24    # "slotDurationMillis":J
    .local v13, "previousIntervalEndMillis":J
    :cond_150
    move v7, v1

    move-object v6, v3

    move-object v9, v4

    move-object v8, v5

    move-wide/from16 v21, v13

    .line 997
    .end local v13    # "previousIntervalEndMillis":J
    .restart local v21    # "previousIntervalEndMillis":J
    :goto_156
    invoke-interface/range {p4 .. p4}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18b

    .line 999
    move-object/from16 v10, p2

    invoke-direct {v9, v10, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v11

    .line 1000
    .local v11, "oldFile":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 1001
    invoke-direct {v9, v8, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    .line 1002
    .local v0, "newFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {v11}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createLink(Ljava/nio/file/Path;Ljava/nio/file/Path;)Ljava/nio/file/Path;

    .line 1004
    .end local v0    # "newFile":Ljava/io/File;
    :cond_17b
    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    goto :goto_18d

    .line 997
    .end local v11    # "oldFile":Ljava/io/File;
    :cond_18b
    move-object/from16 v10, p2

    .line 1007
    :goto_18d
    return-void
.end method

.method private static normalizeSnapshotForSlotDuration(Ljava/util/List;J)V
    .registers 18
    .param p1, "slotDurationMillis"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J)V"
        }
    .end annotation

    .line 1627
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    move-object v0, p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1628
    .local v1, "opCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "processedIdx":I
    :goto_7
    if-ltz v2, :cond_6a

    .line 1629
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1630
    .local v3, "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 1632
    .local v4, "slotBeginTimeMillis":J
    add-int/lit8 v8, v2, -0x1

    .local v8, "candidateIdx":I
    :goto_1d
    if-ltz v8, :cond_67

    .line 1633
    invoke-interface {p0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1634
    .local v9, "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v10

    .line 1635
    invoke-virtual {v3}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 1636
    .local v10, "candidateSlotIntersectionMillis":J
    cmp-long v12, v10, v6

    if-gtz v12, :cond_37

    .line 1637
    goto :goto_67

    .line 1639
    :cond_37
    long-to-float v12, v10

    .line 1640
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v13

    long-to-float v13, v13

    div-float/2addr v12, v13

    .line 1641
    .local v12, "candidateSplitRatio":F
    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v13}, Ljava/lang/Float;->compare(FF)I

    move-result v13

    if-ltz v13, :cond_4f

    .line 1642
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1643
    add-int/lit8 v2, v2, -0x1

    .line 1644
    invoke-virtual {v3, v9}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    goto :goto_64

    .line 1646
    :cond_4f
    float-to-double v13, v12

    invoke-static {v9, v13, v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v13

    .line 1648
    .local v13, "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    if-eqz v13, :cond_59

    .line 1649
    invoke-virtual {v3, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 1651
    :cond_59
    invoke-virtual {v9}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_64

    .line 1652
    invoke-interface {p0, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1653
    add-int/lit8 v2, v2, -0x1

    .line 1632
    .end local v9    # "candidateOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v10    # "candidateSlotIntersectionMillis":J
    .end local v12    # "candidateSplitRatio":F
    .end local v13    # "endSplice":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_64
    :goto_64
    add-int/lit8 v8, v8, -0x1

    goto :goto_1d

    .line 1628
    .end local v3    # "processedOp":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v8    # "candidateIdx":I
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, -0x1

    goto :goto_7

    .line 1663
    .end local v2    # "processedIdx":I
    .end local v4    # "slotBeginTimeMillis":J
    :cond_6a
    return-void
.end method

.method private static opsToDebugString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1666
    .local p0, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1667
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1668
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_24

    .line 1669
    const-string v3, "  "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1670
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1671
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_21

    .line 1672
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1668
    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1675
    .end local v2    # "i":I
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1338
    move-object/from16 v11, p4

    const-string/jumbo v0, "na"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1339
    .local v12, "attributionTag":Ljava/lang/String;
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_1a

    move-object/from16 v13, p5

    invoke-static {v13, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1341
    invoke-static/range {p4 .. p4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1342
    const/4 v0, 0x0

    return-object v0

    .line 1339
    :cond_1a
    move-object/from16 v13, p5

    .line 1344
    :cond_1c
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v15, p1

    .line 1345
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v14, "depth":I
    .local v15, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_22
    :goto_22
    invoke-static {v11, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1346
    invoke-interface/range {p4 .. p4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "op"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1347
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    move-object/from16 v5, p4

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1350
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v15, :cond_4f

    .line 1351
    move-object v1, v0

    move-object v15, v1

    .line 1353
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4f
    goto :goto_22

    .line 1355
    :cond_50
    return-object v15
.end method

.method private readHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 26
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1364
    move-object/from16 v10, p5

    const-string/jumbo v0, "na"

    invoke-static {v10, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v11

    .line 1365
    .local v11, "op":I
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1e

    .line 1366
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    .line 1365
    move-object/from16 v12, p6

    invoke-static {v12, v0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1367
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1368
    const/4 v0, 0x0

    return-object v0

    .line 1365
    :cond_1e
    move-object/from16 v12, p6

    .line 1370
    :cond_20
    invoke-interface/range {p5 .. p5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    move-object/from16 v14, p1

    .line 1371
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v13, "depth":I
    .local v14, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_26
    :goto_26
    invoke-static {v10, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 1372
    invoke-interface/range {p5 .. p5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "st"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 1373
    move-object v0, p0

    move-object v1, v14

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v11

    move-object/from16 v6, p5

    move/from16 v7, p8

    move-wide/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILorg/xmlpull/v1/XmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1375
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v14, :cond_50

    .line 1376
    move-object v1, v0

    move-object v14, v1

    .line 1378
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_50
    goto :goto_26

    .line 1380
    :cond_51
    return-object v14
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;
    .registers 34
    .param p1, "file"    # Ljava/io/File;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[J)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1185
    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1186
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_3
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_d9

    move-object v15, v0

    .line 1187
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1188
    .local v0, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v15, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1189
    const-string/jumbo v3, "history"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1193
    const-string/jumbo v3, "ver"

    invoke-static {v0, v3}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v3

    move v14, v3

    .line 1194
    .local v14, "version":I
    const/4 v3, 0x2

    if-lt v14, v3, :cond_b4

    .line 1199
    const-string/jumbo v3, "ov"

    const-wide/16 v4, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    move-wide/from16 v16, v3

    .line 1200
    .local v16, "overflowMillis":J
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3
    :try_end_36
    .catchall {:try_start_9 .. :try_end_36} :catchall_cd

    move v13, v3

    move-object/from16 v18, v2

    .line 1201
    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v13, "depth":I
    .local v18, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_39
    :try_start_39
    invoke-static {v0, v13}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 1202
    const-string/jumbo v2, "ops"

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_90

    .line 1203
    move-object/from16 v2, p0

    move-object v3, v0

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    move/from16 v19, v13

    .end local v13    # "depth":I
    .local v19, "depth":I
    move/from16 v13, p11

    move/from16 v20, v14

    .end local v14    # "version":I
    .local v20, "version":I
    move-object/from16 v14, p12

    invoke-direct/range {v2 .. v14}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readeHistoricalOpsDLocked(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 1207
    .local v2, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v2, :cond_6c

    .line 1208
    goto :goto_94

    .line 1210
    :cond_6c
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_76

    .line 1211
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1212
    goto :goto_94

    .line 1214
    :cond_76
    if-nez v18, :cond_80

    .line 1215
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_7d
    .catchall {:try_start_39 .. :try_end_7d} :catchall_af

    move-object/from16 v18, v3

    goto :goto_82

    .line 1214
    :cond_80
    move-object/from16 v3, v18

    .line 1217
    .end local v18    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v3, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_82
    :try_start_82
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_8c

    .line 1218
    move-object/from16 v18, v3

    move/from16 v13, v19

    move/from16 v14, v20

    .end local v2    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_39

    .line 1186
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "overflowMillis":J
    .end local v19    # "depth":I
    .end local v20    # "version":I
    :catchall_8c
    move-exception v0

    move-object v2, v3

    move-object v3, v0

    goto :goto_cf

    .line 1202
    .end local v3    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v13    # "depth":I
    .restart local v14    # "version":I
    .restart local v16    # "overflowMillis":J
    .restart local v18    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :cond_90
    move/from16 v19, v13

    move/from16 v20, v14

    .line 1201
    .end local v13    # "depth":I
    .end local v14    # "version":I
    .restart local v19    # "depth":I
    .restart local v20    # "version":I
    :goto_94
    move/from16 v13, v19

    move/from16 v14, v20

    goto :goto_39

    .line 1220
    .end local v19    # "depth":I
    .end local v20    # "version":I
    .restart local v13    # "depth":I
    .restart local v14    # "version":I
    :cond_99
    move/from16 v19, v13

    move/from16 v20, v14

    .end local v13    # "depth":I
    .end local v14    # "version":I
    .restart local v19    # "depth":I
    .restart local v20    # "version":I
    if-eqz p12, :cond_a6

    .line 1221
    const/4 v2, 0x0

    :try_start_a0
    aget-wide v3, p12, v2

    add-long v3, v3, v16

    aput-wide v3, p12, v2
    :try_end_a6
    .catchall {:try_start_a0 .. :try_end_a6} :catchall_af

    .line 1223
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v16    # "overflowMillis":J
    .end local v19    # "depth":I
    .end local v20    # "version":I
    :cond_a6
    :try_start_a6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_a9
    .catch Ljava/io/FileNotFoundException; {:try_start_a6 .. :try_end_a9} :catch_ab

    .line 1226
    .end local v15    # "stream":Ljava/io/FileInputStream;
    nop

    .line 1234
    return-object v18

    .line 1223
    :catch_ab
    move-exception v0

    move-object/from16 v2, v18

    goto :goto_da

    .line 1186
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catchall_af
    move-exception v0

    move-object v3, v0

    move-object/from16 v2, v18

    goto :goto_cf

    .line 1195
    .end local v18    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .local v2, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v14    # "version":I
    :cond_b4
    move/from16 v20, v14

    .end local v14    # "version":I
    .restart local v20    # "version":I
    :try_start_b6
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dropping unsupported history version 1 for file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterAttributionTag":Ljava/lang/String;
    .end local p5    # "filterOpNames":[Ljava/lang/String;
    .end local p6    # "filter":I
    .end local p7    # "filterBeginTimeMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .end local p11    # "filterFlags":I
    .end local p12    # "cumulativeOverflowMillis":[J
    throw v3
    :try_end_cd
    .catchall {:try_start_b6 .. :try_end_cd} :catchall_cd

    .line 1186
    .end local v0    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v20    # "version":I
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterAttributionTag":Ljava/lang/String;
    .restart local p5    # "filterOpNames":[Ljava/lang/String;
    .restart local p6    # "filter":I
    .restart local p7    # "filterBeginTimeMillis":J
    .restart local p9    # "filterEndTimeMillis":J
    .restart local p11    # "filterFlags":I
    .restart local p12    # "cumulativeOverflowMillis":[J
    :catchall_cd
    move-exception v0

    move-object v3, v0

    :goto_cf
    :try_start_cf
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catchall {:try_start_cf .. :try_end_d2} :catchall_d3

    goto :goto_d8

    :catchall_d3
    move-exception v0

    move-object v4, v0

    :try_start_d5
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .end local p1    # "file":Ljava/io/File;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPackageName":Ljava/lang/String;
    .end local p4    # "filterAttributionTag":Ljava/lang/String;
    .end local p5    # "filterOpNames":[Ljava/lang/String;
    .end local p6    # "filter":I
    .end local p7    # "filterBeginTimeMillis":J
    .end local p9    # "filterEndTimeMillis":J
    .end local p11    # "filterFlags":I
    .end local p12    # "cumulativeOverflowMillis":[J
    :goto_d8
    throw v3
    :try_end_d9
    .catch Ljava/io/FileNotFoundException; {:try_start_d5 .. :try_end_d9} :catch_d9

    .line 1223
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry$Persistence;
    .restart local p1    # "file":Ljava/io/File;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPackageName":Ljava/lang/String;
    .restart local p4    # "filterAttributionTag":Ljava/lang/String;
    .restart local p5    # "filterOpNames":[Ljava/lang/String;
    .restart local p6    # "filter":I
    .restart local p7    # "filterBeginTimeMillis":J
    .restart local p9    # "filterEndTimeMillis":J
    .restart local p11    # "filterFlags":I
    .restart local p12    # "cumulativeOverflowMillis":[J
    :catch_d9
    move-exception v0

    .line 1224
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_da
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No history file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private readHistoricalOpsLocked(Ljava/io/File;JJILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[JILjava/util/Set;)Ljava/util/List;
    .registers 36
    .param p1, "baseDir"    # Ljava/io/File;
    .param p2, "intervalBeginMillis"    # J
    .param p4, "intervalEndMillis"    # J
    .param p6, "filterUid"    # I
    .param p7, "filterPackageName"    # Ljava/lang/String;
    .param p8, "filterAttributionTag"    # Ljava/lang/String;
    .param p9, "filterOpNames"    # [Ljava/lang/String;
    .param p10, "filter"    # I
    .param p11, "filterBeginTimeMillis"    # J
    .param p13, "filterEndTimeMillis"    # J
    .param p15, "filterFlags"    # I
    .param p16, "cumulativeOverflowMillis"    # [J
    .param p17, "depth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "IJJI[JI",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1149
    .local p18, "historyFiles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move-object/from16 v14, p18

    move-object/from16 v15, p1

    move/from16 v12, p17

    invoke-direct {v13, v15, v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->generateFile(Ljava/io/File;I)Ljava/io/File;

    move-result-object v16

    .line 1150
    .local v16, "file":Ljava/io/File;
    if-eqz v14, :cond_15

    .line 1151
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1153
    :cond_15
    cmp-long v0, p11, p13

    if-gez v0, :cond_64

    cmp-long v0, p13, p2

    if-gez v0, :cond_1e

    goto :goto_64

    .line 1158
    :cond_1e
    sub-long v0, p4, p2

    iget-wide v2, v13, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mIntervalCompressionMultiplier:J

    div-long/2addr v0, v2

    add-long v0, p4, v0

    .line 1160
    if-eqz p16, :cond_2b

    const/4 v2, 0x0

    aget-wide v2, p16, v2

    goto :goto_2d

    :cond_2b
    const-wide/16 v2, 0x0

    :goto_2d
    add-long/2addr v0, v2

    cmp-long v0, p11, v0

    if-gez v0, :cond_54

    .line 1161
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_39

    goto :goto_54

    .line 1170
    :cond_39
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-object/from16 v5, p9

    move/from16 v6, p10

    move-wide/from16 v7, p11

    move-wide/from16 v9, p13

    move/from16 v11, p15

    move-object/from16 v12, p16

    invoke-direct/range {v0 .. v12}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalOpsLocked(Ljava/io/File;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1162
    :cond_54
    :goto_54
    if-eqz v14, :cond_5f

    invoke-interface/range {p18 .. p18}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5d

    goto :goto_5f

    .line 1167
    :cond_5d
    const/4 v0, 0x0

    return-object v0

    .line 1164
    :cond_5f
    :goto_5f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1156
    :cond_64
    :goto_64
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1313
    move-object/from16 v11, p3

    const-string/jumbo v0, "na"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1314
    .local v12, "packageName":Ljava/lang/String;
    and-int/lit8 v0, p7, 0x2

    if-eqz v0, :cond_1a

    move-object/from16 v13, p4

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1315
    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1316
    const/4 v0, 0x0

    return-object v0

    .line 1314
    :cond_1a
    move-object/from16 v13, p4

    .line 1318
    :cond_1c
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v15, p1

    .line 1319
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v14, "depth":I
    .local v15, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_22
    :goto_22
    invoke-static {v11, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 1320
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "ftr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 1321
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move-object v3, v12

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1324
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v15, :cond_4f

    .line 1325
    move-object v1, v0

    move-object v15, v1

    .line 1327
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4f
    goto :goto_22

    .line 1329
    :cond_50
    return-object v15
.end method

.method private readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 27
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "filterUid"    # I
    .param p4, "filterPackageName"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOpNames"    # [Ljava/lang/String;
    .param p7, "filter"    # I
    .param p8, "filterFlags"    # I
    .param p9, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1288
    move-object/from16 v11, p2

    const-string/jumbo v0, "na"

    invoke-static {v11, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v12

    .line 1289
    .local v12, "uid":I
    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_16

    move/from16 v13, p3

    if-eq v13, v12, :cond_18

    .line 1290
    invoke-static/range {p2 .. p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1291
    const/4 v0, 0x0

    return-object v0

    .line 1289
    :cond_16
    move/from16 v13, p3

    .line 1293
    :cond_18
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v14

    move-object/from16 v15, p1

    .line 1294
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v14, "depth":I
    .local v15, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_1e
    :goto_1e
    invoke-static {v11, v14}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1295
    invoke-interface/range {p2 .. p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pkg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1296
    move-object/from16 v0, p0

    move-object v1, v15

    move v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1299
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v15, :cond_4b

    .line 1300
    move-object v1, v0

    move-object v15, v1

    .line 1302
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_4b
    goto :goto_1e

    .line 1304
    :cond_4c
    return-object v15
.end method

.method private readStateDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;ILorg/xmlpull/v1/XmlPullParser;ID)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 33
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "op"    # I
    .param p6, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p7, "filterFlags"    # I
    .param p8, "filterScale"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1387
    move-object/from16 v0, p6

    const-string/jumbo v1, "na"

    invoke-static {v0, v1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v1

    .line 1388
    .local v1, "key":J
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    and-int v3, v3, p7

    .line 1389
    .local v3, "flags":I
    if-nez v3, :cond_13

    .line 1390
    const/4 v4, 0x0

    return-object v4

    .line 1392
    :cond_13
    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v13

    .line 1393
    .local v13, "uidState":I
    const-string v4, "ac"

    const-wide/16 v14, 0x0

    invoke-static {v0, v4, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1394
    .local v4, "accessCount":J
    cmp-long v6, v4, v14

    if-lez v6, :cond_54

    .line 1395
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_34

    .line 1396
    long-to-double v6, v4

    mul-double v6, v6, p8

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v4, v6

    move-wide/from16 v16, v4

    goto :goto_36

    .line 1395
    :cond_34
    move-wide/from16 v16, v4

    .line 1399
    .end local v4    # "accessCount":J
    .local v16, "accessCount":J
    :goto_36
    if-nez p1, :cond_40

    .line 1400
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v18, v4

    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_42

    .line 1399
    .end local v4    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_40
    move-object/from16 v18, p1

    .line 1402
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v18, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_42
    move-object/from16 v4, v18

    move/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move v9, v13

    move v10, v3

    move-wide/from16 v11, v16

    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_58

    .line 1394
    .end local v16    # "accessCount":J
    .end local v18    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "accessCount":J
    .restart local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_54
    move-object/from16 v18, p1

    move-wide/from16 v16, v4

    .line 1405
    .end local v4    # "accessCount":J
    .end local p1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "accessCount":J
    .restart local v18    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_58
    const-string/jumbo v4, "rc"

    invoke-static {v0, v4, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1406
    .local v4, "rejectCount":J
    cmp-long v6, v4, v14

    if-lez v6, :cond_91

    .line 1407
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_74

    .line 1408
    long-to-double v6, v4

    mul-double v6, v6, p8

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v4, v6

    move-wide/from16 v19, v4

    goto :goto_76

    .line 1407
    :cond_74
    move-wide/from16 v19, v4

    .line 1411
    .end local v4    # "rejectCount":J
    .local v19, "rejectCount":J
    :goto_76
    if-nez v18, :cond_7f

    .line 1412
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v18, v4

    .line 1414
    :cond_7f
    move-object/from16 v4, v18

    move/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move v9, v13

    move v10, v3

    move-wide/from16 v11, v19

    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    goto :goto_93

    .line 1406
    .end local v19    # "rejectCount":J
    .restart local v4    # "rejectCount":J
    :cond_91
    move-wide/from16 v19, v4

    .line 1417
    .end local v4    # "rejectCount":J
    .restart local v19    # "rejectCount":J
    :goto_93
    const-string v4, "du"

    invoke-static {v0, v4, v14, v15}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v4

    .line 1418
    .local v4, "accessDuration":J
    cmp-long v6, v4, v14

    if-lez v6, :cond_cc

    .line 1419
    invoke-static/range {p8 .. p9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_ae

    .line 1420
    long-to-double v6, v4

    mul-double v6, v6, p8

    invoke-static {v6, v7}, Landroid/app/AppOpsManager$HistoricalOps;->round(D)D

    move-result-wide v6

    double-to-long v4, v6

    move-wide/from16 v21, v4

    goto :goto_b0

    .line 1419
    :cond_ae
    move-wide/from16 v21, v4

    .line 1423
    .end local v4    # "accessDuration":J
    .local v21, "accessDuration":J
    :goto_b0
    if-nez v18, :cond_b9

    .line 1424
    new-instance v4, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v4, v14, v15, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object/from16 v18, v4

    .line 1426
    :cond_b9
    move-object/from16 v4, v18

    move/from16 v5, p5

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move v9, v13

    move v10, v3

    move-wide/from16 v11, v21

    invoke-virtual/range {v4 .. v12}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    move-wide/from16 v4, v21

    .line 1429
    .end local v21    # "accessDuration":J
    .restart local v4    # "accessDuration":J
    :cond_cc
    return-object v18
.end method

.method private readeHistoricalOpsDLocked(Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI[J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 37
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "filterUid"    # I
    .param p3, "filterPackageName"    # Ljava/lang/String;
    .param p4, "filterAttributionTag"    # Ljava/lang/String;
    .param p5, "filterOpNames"    # [Ljava/lang/String;
    .param p6, "filter"    # I
    .param p7, "filterBeginTimeMillis"    # J
    .param p9, "filterEndTimeMillis"    # J
    .param p11, "filterFlags"    # I
    .param p12, "cumulativeOverflowMillis"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 1244
    move-object/from16 v11, p1

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    const-string v0, "beg"

    const-wide/16 v1, 0x0

    invoke-static {v11, v0, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1245
    const/4 v0, 0x0

    if-eqz p12, :cond_14

    aget-wide v5, p12, v0

    goto :goto_15

    :cond_14
    move-wide v5, v1

    :goto_15
    add-long v9, v3, v5

    .line 1246
    .local v9, "beginTimeMillis":J
    const-string v3, "end"

    invoke-static {v11, v3, v1, v2}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;J)J

    move-result-wide v3

    .line 1247
    if-eqz p12, :cond_22

    aget-wide v5, p12, v0

    goto :goto_23

    :cond_22
    move-wide v5, v1

    :goto_23
    add-long v7, v3, v5

    .line 1249
    .local v7, "endTimeMillis":J
    cmp-long v0, v14, v9

    if-gez v0, :cond_2b

    .line 1250
    const/4 v0, 0x0

    return-object v0

    .line 1253
    :cond_2b
    cmp-long v0, v12, v7

    if-lez v0, :cond_35

    .line 1254
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    return-object v0

    .line 1256
    :cond_35
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    .line 1257
    .local v5, "filteredBeginTimeMillis":J
    invoke-static {v7, v8, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    .line 1262
    .local v3, "filteredEndTimeMillis":J
    sub-long v0, v3, v5

    long-to-double v0, v0

    move-wide/from16 v16, v3

    .end local v3    # "filteredEndTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    sub-long v2, v7, v9

    long-to-double v2, v2

    div-double v18, v0, v2

    .line 1264
    .local v18, "filterScale":D
    const/4 v0, 0x0

    .line 1265
    .local v0, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    move-object v3, v0

    .line 1266
    .end local v0    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v3, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "depth":I
    :goto_4d
    invoke-static {v11, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 1267
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "uid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 1268
    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p1

    move-object v11, v3

    move-wide/from16 v12, v16

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "filteredEndTimeMillis":J
    .local v11, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v12, "filteredEndTimeMillis":J
    move/from16 v3, p2

    move/from16 v16, v4

    .end local v4    # "depth":I
    .local v16, "depth":I
    move-object/from16 v4, p3

    move-wide v14, v5

    .end local v5    # "filteredBeginTimeMillis":J
    .local v14, "filteredBeginTimeMillis":J
    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v20, v7

    .end local v7    # "endTimeMillis":J
    .local v20, "endTimeMillis":J
    move/from16 v7, p6

    move/from16 v8, p11

    move-wide/from16 v22, v9

    .end local v9    # "beginTimeMillis":J
    .local v22, "beginTimeMillis":J
    move-wide/from16 v9, v18

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IID)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1271
    .local v0, "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    if-nez v11, :cond_86

    .line 1272
    move-object v1, v0

    move-object v3, v1

    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .local v1, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_87

    .line 1271
    .end local v1    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_86
    move-object v3, v11

    .line 1274
    .end local v0    # "returnedOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    :goto_87
    move-object/from16 v11, p1

    move-wide v5, v14

    move/from16 v4, v16

    move-wide/from16 v7, v20

    move-wide/from16 v9, v22

    move-wide/from16 v14, p9

    move-wide/from16 v16, v12

    move-wide/from16 v12, p7

    goto :goto_4d

    .line 1267
    .end local v12    # "filteredEndTimeMillis":J
    .end local v14    # "filteredBeginTimeMillis":J
    .end local v20    # "endTimeMillis":J
    .end local v22    # "beginTimeMillis":J
    .restart local v4    # "depth":I
    .restart local v5    # "filteredBeginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .restart local v9    # "beginTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    :cond_97
    move-object v11, v3

    move-wide v14, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v12, v16

    move/from16 v16, v4

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "depth":I
    .end local v5    # "filteredBeginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .end local v9    # "beginTimeMillis":J
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v12    # "filteredEndTimeMillis":J
    .restart local v14    # "filteredBeginTimeMillis":J
    .local v16, "depth":I
    .restart local v20    # "endTimeMillis":J
    .restart local v22    # "beginTimeMillis":J
    move-object/from16 v11, p1

    move-wide/from16 v14, p9

    move-wide/from16 v16, v12

    move-wide/from16 v12, p7

    goto :goto_4d

    .line 1276
    .end local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v12    # "filteredEndTimeMillis":J
    .end local v14    # "filteredBeginTimeMillis":J
    .end local v20    # "endTimeMillis":J
    .end local v22    # "beginTimeMillis":J
    .restart local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "depth":I
    .restart local v5    # "filteredBeginTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    .restart local v9    # "beginTimeMillis":J
    .local v16, "filteredEndTimeMillis":J
    :cond_aa
    move-object v11, v3

    move-wide v14, v5

    move-wide/from16 v20, v7

    move-wide/from16 v22, v9

    move-wide/from16 v12, v16

    move/from16 v16, v4

    .end local v3    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "depth":I
    .end local v5    # "filteredBeginTimeMillis":J
    .end local v7    # "endTimeMillis":J
    .end local v9    # "beginTimeMillis":J
    .restart local v11    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v12    # "filteredEndTimeMillis":J
    .restart local v14    # "filteredBeginTimeMillis":J
    .local v16, "depth":I
    .restart local v20    # "endTimeMillis":J
    .restart local v22    # "beginTimeMillis":J
    if-eqz v11, :cond_b9

    .line 1277
    invoke-virtual {v11, v14, v15, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 1279
    :cond_b9
    return-object v11
.end method

.method private static spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1612
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromBeginning(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1616
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private static spliceFromEnd(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 4
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "spliceRatio"    # D

    .line 1599
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->spliceFromEnd(D)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 1603
    .local v0, "splice":Landroid/app/AppOpsManager$HistoricalOps;
    return-object v0
.end method

.method private writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "attributionOps"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1503
    const/4 v0, 0x0

    const-string/jumbo v1, "ftr"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1504
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-static {p2, v3, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1505
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpCount()I

    move-result v2

    .line 1506
    .local v2, "opCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1507
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getOpAt(I)Landroid/app/AppOpsManager$HistoricalOp;

    move-result-object v4

    .line 1508
    .local v4, "op":Landroid/app/AppOpsManager$HistoricalOp;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1506
    .end local v4    # "op":Landroid/app/AppOpsManager$HistoricalOp;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1510
    .end local v3    # "i":I
    :cond_22
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1511
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOp;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 10
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1515
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v0

    .line 1516
    .local v0, "keys":Landroid/util/LongSparseArray;
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_37

    .line 1519
    :cond_d
    const/4 v1, 0x0

    const-string/jumbo v2, "op"

    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1520
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "na"

    invoke-interface {p2, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1521
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1522
    .local v3, "keyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_27
    if-ge v4, v3, :cond_33

    .line 1523
    invoke-virtual {v0, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    invoke-direct {p0, p1, v5, v6, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLorg/xmlpull/v1/XmlSerializer;)V

    .line 1522
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    .line 1525
    .end local v4    # "i":I
    :cond_33
    invoke-interface {p2, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1526
    return-void

    .line 1517
    .end local v3    # "keyCount":I
    :cond_37
    :goto_37
    return-void
.end method

.method private writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1465
    const/4 v0, 0x0

    const-string/jumbo v1, "ops"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1466
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "beg"

    invoke-interface {p2, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1467
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end"

    invoke-interface {p2, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1468
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getUidCount()I

    move-result v2

    .line 1469
    .local v2, "uidCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_26
    if-ge v3, v2, :cond_32

    .line 1470
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalOps;->getUidOpsAt(I)Landroid/app/AppOpsManager$HistoricalUidOps;

    move-result-object v4

    .line 1471
    .local v4, "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1469
    .end local v4    # "uidOp":Landroid/app/AppOpsManager$HistoricalUidOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 1473
    .end local v3    # "i":I
    :cond_32
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1474
    return-void
.end method

.method private writeHistoricalOpsDLocked(Ljava/util/List;JLjava/io/File;)V
    .registers 12
    .param p2, "intervalOverflowMillis"    # J
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;J",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1434
    .local p1, "allOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    const-string/jumbo v0, "history"

    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1, p4}, Lcom/android/internal/os/AtomicDirectory;->openWrite(Ljava/io/File;)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 1436
    .local v1, "output":Ljava/io/FileOutputStream;
    :try_start_9
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v2

    .line 1437
    .local v2, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1438
    const-string/jumbo v3, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 1440
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1441
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1442
    const-string/jumbo v3, "ver"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1443
    const-wide/16 v5, 0x0

    cmp-long v3, p2, v5

    if-eqz v3, :cond_43

    .line 1444
    const-string/jumbo v3, "ov"

    .line 1445
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 1444
    invoke-interface {v2, v4, v3, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1447
    :cond_43
    if-eqz p1, :cond_58

    .line 1448
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 1449
    .local v3, "opsCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_4a
    if-ge v5, v3, :cond_58

    .line 1450
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$HistoricalOps;

    .line 1451
    .local v6, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-direct {p0, v6, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalOpDLocked(Landroid/app/AppOpsManager$HistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1449
    .end local v6    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    .line 1454
    .end local v3    # "opsCount":I
    .end local v5    # "i":I
    :cond_58
    invoke-interface {v2, v4, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1455
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 1456
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0, v1}, Lcom/android/internal/os/AtomicDirectory;->closeWrite(Ljava/io/FileOutputStream;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_63} :catch_65

    .line 1460
    .end local v2    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    nop

    .line 1461
    return-void

    .line 1457
    :catch_65
    move-exception v0

    .line 1458
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1459
    throw v0
.end method

.method private writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "packageOps"    # Landroid/app/AppOpsManager$HistoricalPackageOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1490
    const/4 v0, 0x0

    const-string/jumbo v1, "pkg"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1491
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1492
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsCount()I

    move-result v2

    .line 1493
    .local v2, "numAttributions":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_22

    .line 1494
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getAttributedOpsAt(I)Landroid/app/AppOpsManager$AttributedHistoricalOps;

    move-result-object v4

    .line 1495
    .local v4, "op":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalAttributionOpsDLocked(Landroid/app/AppOpsManager$AttributedHistoricalOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1493
    .end local v4    # "op":Landroid/app/AppOpsManager$AttributedHistoricalOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 1497
    .end local v3    # "i":I
    :cond_22
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1498
    return-void
.end method

.method private writeHistoricalUidOpsDLocked(Landroid/app/AppOpsManager$HistoricalUidOps;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .param p1, "uidOps"    # Landroid/app/AppOpsManager$HistoricalUidOps;
    .param p2, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1478
    const/4 v0, 0x0

    const-string/jumbo v1, "uid"

    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1479
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "na"

    invoke-interface {p2, v0, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1480
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageCount()I

    move-result v2

    .line 1481
    .local v2, "packageCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v2, :cond_26

    .line 1482
    invoke-virtual {p1, v3}, Landroid/app/AppOpsManager$HistoricalUidOps;->getPackageOpsAt(I)Landroid/app/AppOpsManager$HistoricalPackageOps;

    move-result-object v4

    .line 1483
    .local v4, "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    invoke-direct {p0, v4, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->writeHistoricalPackageOpsDLocked(Landroid/app/AppOpsManager$HistoricalPackageOps;Lorg/xmlpull/v1/XmlSerializer;)V

    .line 1481
    .end local v4    # "packageOps":Landroid/app/AppOpsManager$HistoricalPackageOps;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1485
    .end local v3    # "i":I
    :cond_26
    invoke-interface {p2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1486
    return-void
.end method

.method private writeStateOnLocked(Landroid/app/AppOpsManager$HistoricalOp;JLorg/xmlpull/v1/XmlSerializer;)V
    .registers 21
    .param p1, "op"    # Landroid/app/AppOpsManager$HistoricalOp;
    .param p2, "key"    # J
    .param p4, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1530
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v2

    .line 1531
    .local v2, "uidState":I
    invoke-static/range {p2 .. p3}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v3

    .line 1533
    .local v3, "flags":I
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v4

    .line 1534
    .local v4, "accessCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v6

    .line 1535
    .local v6, "rejectCount":J
    invoke-virtual {v0, v2, v2, v3}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v8

    .line 1537
    .local v8, "accessDuration":J
    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-gtz v12, :cond_27

    cmp-long v12, v6, v10

    if-gtz v12, :cond_27

    cmp-long v12, v8, v10

    if-gtz v12, :cond_27

    .line 1538
    return-void

    .line 1541
    :cond_27
    const/4 v12, 0x0

    const-string/jumbo v13, "st"

    invoke-interface {v1, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1542
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "na"

    invoke-interface {v1, v12, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1543
    cmp-long v14, v4, v10

    if-lez v14, :cond_45

    .line 1544
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string v15, "ac"

    invoke-interface {v1, v12, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1546
    :cond_45
    cmp-long v14, v6, v10

    if-lez v14, :cond_53

    .line 1547
    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "rc"

    invoke-interface {v1, v12, v15, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1549
    :cond_53
    cmp-long v10, v8, v10

    if-lez v10, :cond_60

    .line 1550
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    const-string v11, "du"

    invoke-interface {v1, v12, v11, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1552
    :cond_60
    invoke-interface {v1, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 1553
    return-void
.end method


# virtual methods
.method clearHistoryDLocked(ILjava/lang/String;)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 789
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v0

    .line 791
    .local v0, "historicalOps":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-nez v0, :cond_7

    .line 792
    return-void

    .line 795
    :cond_7
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 796
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 795
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 799
    .end local v1    # "index":I
    :cond_1a
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 801
    invoke-virtual {p0, v0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 802
    return-void
.end method

.method getLastPersistTimeMillisDLocked()J
    .registers 12

    .line 854
    const/4 v0, 0x0

    .line 856
    .local v0, "baseDir":Ljava/io/File;
    const-wide/16 v1, 0x0

    :try_start_3
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v3}, Lcom/android/internal/os/AtomicDirectory;->startRead()Ljava/io/File;

    move-result-object v3

    move-object v0, v3

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 858
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_45

    array-length v4, v3

    if-lez v4, :cond_45

    .line 859
    const/4 v4, 0x0

    .line 860
    .local v4, "shortestFile":Ljava/io/File;
    array-length v5, v3

    const/4 v6, 0x0

    :goto_16
    if-ge v6, v5, :cond_3d

    aget-object v7, v3, v6

    .line 861
    .local v7, "candidate":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 862
    .local v8, "candidateName":Ljava/lang/String;
    const-string v9, ".xml"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_27

    .line 863
    goto :goto_3a

    .line 865
    :cond_27
    if-nez v4, :cond_2b

    .line 866
    move-object v4, v7

    goto :goto_3a

    .line 867
    :cond_2b
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_3a

    .line 868
    move-object v4, v7

    .line 860
    .end local v7    # "candidate":Ljava/io/File;
    .end local v8    # "candidateName":Ljava/lang/String;
    :cond_3a
    :goto_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 871
    :cond_3d
    if-nez v4, :cond_40

    .line 872
    return-wide v1

    .line 874
    :cond_40
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    return-wide v1

    .line 876
    .end local v4    # "shortestFile":Ljava/io/File;
    :cond_45
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->finishRead()V
    :try_end_4a
    .catchall {:try_start_3 .. :try_end_4a} :catchall_4b

    .line 880
    .end local v3    # "files":[Ljava/io/File;
    goto :goto_56

    .line 877
    :catchall_4b
    move-exception v3

    .line 878
    .local v3, "e":Ljava/lang/Throwable;
    const-string v4, "Error reading historical app ops. Deleting history."

    # invokes: Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    invoke-static {v4, v3, v0}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 879
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v4}, Lcom/android/internal/os/AtomicDirectory;->delete()V

    .line 881
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_56
    return-wide v1
.end method

.method persistHistoricalOpsDLocked(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 814
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :try_start_0
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->startWrite()Ljava/io/File;

    move-result-object v2

    .line 815
    .local v2, "newBaseDir":Ljava/io/File;
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->getBackupDirectory()Ljava/io/File;

    move-result-object v3

    .line 821
    .local v3, "oldBaseDir":Ljava/io/File;
    invoke-static {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getHistoricalFileNames(Ljava/io/File;)Ljava/util/Set;

    move-result-object v5

    .line 822
    .local v5, "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->handlePersistHistoricalOpsRecursiveDLocked(Ljava/io/File;Ljava/io/File;Ljava/util/List;Ljava/util/Set;I)V

    .line 827
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicDirectory;->finishWrite()V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    .line 831
    .end local v2    # "newBaseDir":Ljava/io/File;
    .end local v3    # "oldBaseDir":Ljava/io/File;
    .end local v5    # "oldFileNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    goto :goto_28

    .line 828
    :catchall_1c
    move-exception v0

    .line 829
    .local v0, "t":Ljava/lang/Throwable;
    const/4 v1, 0x0

    const-string v2, "Failed to write historical app ops, restoring backup"

    # invokes: Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    invoke-static {v2, v0, v1}, Lcom/android/server/appop/HistoricalRegistry;->access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    .line 830
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry$Persistence;->sHistoricalAppOpsDir:Lcom/android/internal/os/AtomicDirectory;

    invoke-virtual {v1}, Lcom/android/internal/os/AtomicDirectory;->failWrite()V

    .line 832
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_28
    return-void
.end method

.method readHistoryDLocked()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 842
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryRawDLocked()Ljava/util/List;

    move-result-object v0

    .line 844
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v0, :cond_1b

    .line 845
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 846
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_1b

    .line 847
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$Persistence;->mBaseSnapshotInterval:J

    invoke-virtual {v3, v4, v5}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 846
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 850
    .end local v1    # "opCount":I
    .end local v2    # "i":I
    :cond_1b
    return-object v0
.end method

.method readHistoryRawDLocked()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation

    .line 835
    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const-wide v8, 0x7fffffffffffffffL

    const/16 v10, 0x1f

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsBaseDLocked(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)Ljava/util/LinkedList;

    move-result-object v0

    return-object v0
.end method
