.class final Lcom/android/server/appop/HistoricalRegistry;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;,
        Lcom/android/server/appop/HistoricalRegistry$HistoricalFilesInvariant;,
        Lcom/android/server/appop/HistoricalRegistry$Persistence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_COMPRESSION_STEP:J = 0xaL

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

.field private static final HISTORY_FILE_SUFFIX:Ljava/lang/String; = ".xml"

.field private static final KEEP_WTF_LOG:Z

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final MSG_WRITE_PENDING_HISTORY:I = 0x1

.field private static final PARAMETER_ASSIGNMENT:Ljava/lang/String; = "="

.field private static final PARAMETER_DELIMITER:Ljava/lang/String; = ","

.field private static final PROPERTY_PERMISSIONS_HUB_ENABLED:Ljava/lang/String; = "permissions_hub_enabled"


# instance fields
.field private mBaseSnapshotInterval:J

.field private mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

.field private final mInMemoryLock:Ljava/lang/Object;

.field private mIntervalCompressionMultiplier:J

.field private mMode:I

.field private mNextPersistDueTimeMillis:J

.field private final mOnDiskLock:Ljava/lang/Object;

.field private mPendingHistoryOffsetMillis:J

.field private mPendingWrites:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 131
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    .line 133
    const-class v0, Lcom/android/server/appop/HistoricalRegistry;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    .line 154
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/appop/HistoricalRegistry;)V
    .registers 4
    .param p1, "other"    # Lcom/android/server/appop/HistoricalRegistry;

    .line 203
    iget-object v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;-><init>(Ljava/lang/Object;)V

    .line 204
    iget v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 205
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 206
    iget-wide v0, p1, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 207
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .registers 4
    .param p1, "lock"    # Ljava/lang/Object;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    .line 143
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    .line 164
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 171
    sget-wide v0, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 179
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 199
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    .line 200
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/appop/HistoricalRegistry;Landroid/content/ContentResolver;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/appop/HistoricalRegistry;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .line 129
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 3
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/Throwable;
    .param p2, "x2"    # Ljava/io/File;

    .line 129
    invoke-static {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V

    return-void
.end method

.method private clearHistoryOnDiskDLocked()V
    .registers 4

    .line 622
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 623
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 624
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 626
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 627
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_1e

    .line 628
    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked()V

    .line 629
    return-void

    .line 627
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    throw v1
.end method

.method private getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;
    .registers 14
    .param p1, "now"    # J

    .line 632
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_58

    .line 633
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v3, p1

    .line 634
    .local v3, "remainingTimeMillis":J
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_13

    .line 638
    sub-long v5, v3, v5

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 640
    :cond_13
    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v3

    .line 641
    .local v5, "elapsedTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->setEndTime(J)V

    .line 642
    cmp-long v0, v3, v1

    if-lez v0, :cond_22

    .line 646
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 648
    :cond_22
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 649
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 650
    iget-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 651
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    return-object v0

    .line 654
    :cond_37
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    iget-wide v7, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 655
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginTime(J)V

    .line 657
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    .line 658
    .local v7, "overdueTimeMillis":J
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v0, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 659
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {p0, v0}, Lcom/android/server/appop/HistoricalRegistry;->schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V

    .line 662
    .end local v3    # "remainingTimeMillis":J
    .end local v5    # "elapsedTimeMillis":J
    .end local v7    # "overdueTimeMillis":J
    :cond_58
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 663
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 667
    return-object v0
.end method

.method private static isApiEnabled()Z
    .registers 3

    .line 743
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_17

    .line 744
    const-string/jumbo v0, "privacy"

    const-string/jumbo v1, "permissions_hub_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_18

    :cond_17
    const/4 v2, 0x1

    .line 743
    :cond_18
    return v2
.end method

.method private isPersistenceInitializedMLocked()Z
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private static makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V
    .registers 7
    .param p0, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;
    .param p1, "nowMillis"    # J

    .line 724
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    .line 725
    invoke-virtual {p0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    .line 724
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 726
    return-void
.end method

.method private persistPendingHistory(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 696
    .local p1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 697
    :try_start_3
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 698
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 699
    monitor-exit v0

    return-void

    .line 701
    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 704
    .local v1, "opCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v1, :cond_34

    .line 705
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    .line 706
    .local v3, "current":Landroid/app/AppOpsManager$HistoricalOps;
    if-lez v2, :cond_31

    .line 707
    add-int/lit8 v4, v2, -0x1

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AppOpsManager$HistoricalOps;

    .line 708
    .local v4, "previous":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 704
    .end local v3    # "current":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "previous":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 711
    .end local v2    # "i":I
    :cond_34
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 712
    .end local v1    # "opCount":I
    monitor-exit v0

    .line 713
    return-void

    .line 712
    :catchall_3b
    move-exception v1

    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private pruneFutureOps(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/AppOpsManager$HistoricalOps;",
            ">;)V"
        }
    .end annotation

    .line 729
    .local p1, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 730
    .local v0, "opCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3a

    .line 731
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$HistoricalOps;

    .line 732
    .local v2, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1c

    .line 733
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_37

    .line 734
    :cond_1c
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_37

    .line 735
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v3, v5

    long-to-double v3, v3

    .line 736
    invoke-virtual {v2}, Landroid/app/AppOpsManager$HistoricalOps;->getDurationMillis()J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v3, v5

    .line 737
    .local v3, "filterScale":D
    # invokes: Lcom/android/server/appop/HistoricalRegistry$Persistence;->spliceFromBeginning(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$200(Landroid/app/AppOpsManager$HistoricalOps;D)Landroid/app/AppOpsManager$HistoricalOps;

    .line 730
    .end local v2    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v3    # "filterScale":D
    :cond_37
    :goto_37
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 740
    .end local v1    # "i":I
    :cond_3a
    return-void
.end method

.method private resampleHistoryOnDiskInMemoryDMLocked(J)V
    .registers 8
    .param p1, "offsetMillis"    # J

    .line 570
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 571
    invoke-virtual {p0, p1, p2}, Lcom/android/server/appop/HistoricalRegistry;->offsetHistory(J)V

    .line 572
    return-void
.end method

.method private schedulePersistHistoricalOpsMLocked(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 4
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 716
    sget-object v0, Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;->INSTANCE:Lcom/android/server/appop/-$$Lambda$bQMBlCyJOKKFDz59ICFPuj1hKGE;

    invoke-static {v0, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 718
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 719
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 720
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 721
    return-void
.end method

.method private updateParametersFromSetting(Landroid/content/ContentResolver;)V
    .registers 18
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 254
    const-string v0, "appop_history_parameters"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "setting":Ljava/lang/String;
    if-nez v2, :cond_b

    .line 257
    return-void

    .line 259
    :cond_b
    const/4 v0, 0x0

    .line 260
    .local v0, "modeValue":Ljava/lang/String;
    const/4 v3, 0x0

    .line 261
    .local v3, "baseSnapshotIntervalValue":Ljava/lang/String;
    const/4 v4, 0x0

    .line 262
    .local v4, "intervalMultiplierValue":Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 263
    .local v5, "parameters":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v0

    move v0, v7

    .end local v0    # "modeValue":Ljava/lang/String;
    .local v3, "modeValue":Ljava/lang/String;
    .local v4, "baseSnapshotIntervalValue":Ljava/lang/String;
    .local v8, "intervalMultiplierValue":Ljava/lang/String;
    :goto_1a
    if-ge v0, v6, :cond_99

    aget-object v9, v5, v0

    .line 264
    .local v9, "parameter":Ljava/lang/String;
    const-string v10, "="

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 265
    .local v10, "parts":[Ljava/lang/String;
    array-length v11, v10

    const/4 v12, 0x2

    if-ne v11, v12, :cond_95

    .line 266
    aget-object v11, v10, v7

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    .line 267
    .local v11, "key":Ljava/lang/String;
    const/4 v13, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v14

    const v15, -0xb56339a

    const/4 v7, 0x1

    if-eq v14, v15, :cond_59

    const v15, 0x3339a3

    if-eq v14, v15, :cond_4e

    const v15, 0xea4149c

    if-eq v14, v15, :cond_44

    :cond_43
    goto :goto_63

    :cond_44
    const-string v14, "baseIntervalMillis"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    move v13, v7

    goto :goto_63

    :cond_4e
    const-string/jumbo v14, "mode"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    const/4 v13, 0x0

    goto :goto_63

    :cond_59
    const-string/jumbo v14, "intervalMultiplier"

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_43

    move v13, v12

    :goto_63
    if-eqz v13, :cond_8f

    if-eq v13, v7, :cond_88

    if-eq v13, v12, :cond_80

    .line 278
    sget-object v7, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown parameter: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_95

    .line 275
    :cond_80
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 276
    .end local v8    # "intervalMultiplierValue":Ljava/lang/String;
    .local v7, "intervalMultiplierValue":Ljava/lang/String;
    move-object v8, v7

    goto :goto_95

    .line 272
    .end local v7    # "intervalMultiplierValue":Ljava/lang/String;
    .restart local v8    # "intervalMultiplierValue":Ljava/lang/String;
    :cond_88
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 273
    goto :goto_95

    .line 269
    :cond_8f
    aget-object v7, v10, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 263
    .end local v9    # "parameter":Ljava/lang/String;
    .end local v10    # "parts":[Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    :cond_95
    :goto_95
    add-int/lit8 v0, v0, 0x1

    const/4 v7, 0x0

    goto :goto_1a

    .line 283
    :cond_99
    if-eqz v3, :cond_b3

    if-eqz v4, :cond_b3

    if-eqz v8, :cond_b3

    .line 286
    :try_start_9f
    invoke-static {v3}, Landroid/app/AppOpsManager;->parseHistoricalMode(Ljava/lang/String;)I

    move-result v10

    .line 287
    .local v10, "mode":I
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    .line 288
    .local v11, "baseSnapshotInterval":J
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 289
    .local v0, "intervalCompressionMultiplier":I
    int-to-long v13, v0

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V
    :try_end_b1
    .catch Ljava/lang/NumberFormatException; {:try_start_9f .. :try_end_b1} :catch_b2

    .line 290
    return-void

    .line 291
    .end local v0    # "intervalCompressionMultiplier":I
    .end local v10    # "mode":I
    .end local v11    # "baseSnapshotInterval":J
    :catch_b2
    move-exception v0

    .line 293
    :cond_b3
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad value forappop_history_parameters="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " resetting!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method private static wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/io/File;)V
    .registers 8
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "storage"    # Ljava/io/File;

    .line 1889
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1890
    sget-boolean v0, Lcom/android/server/appop/HistoricalRegistry;->KEEP_WTF_LOG:Z

    if-eqz v0, :cond_8c

    .line 1892
    :try_start_9
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "appops"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wtf"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1893
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1894
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    if-eqz v1, :cond_8a

    .line 1895
    new-instance v1, Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3e} :catch_8b

    .line 1896
    .local v1, "writer":Ljava/io/PrintWriter;
    const/16 v2, 0xa

    if-eqz p1, :cond_4d

    .line 1897
    :try_start_42
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1899
    :cond_4d
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    move-result-object v3

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 1900
    if-eqz p2, :cond_77

    .line 1901
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nfiles: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_7c

    .line 1903
    :cond_77
    const-string v2, "\nfiles: none"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;
    :try_end_7c
    .catchall {:try_start_42 .. :try_end_7c} :catchall_80

    .line 1905
    :goto_7c
    :try_start_7c
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_8b

    goto :goto_8a

    .line 1895
    :catchall_80
    move-exception v2

    :try_start_81
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v3

    :try_start_86
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "message":Ljava/lang/String;
    .end local p1    # "t":Ljava/lang/Throwable;
    .end local p2    # "storage":Ljava/io/File;
    :goto_89
    throw v2
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_8b

    .line 1909
    .end local v0    # "file":Ljava/io/File;
    .end local v1    # "writer":Ljava/io/PrintWriter;
    .restart local p0    # "message":Ljava/lang/String;
    .restart local p1    # "t":Ljava/lang/Throwable;
    .restart local p2    # "storage":Ljava/io/File;
    :cond_8a
    :goto_8a
    goto :goto_8c

    .line 1907
    :catch_8b
    move-exception v0

    .line 1911
    :cond_8c
    :goto_8c
    return-void
.end method


# virtual methods
.method addHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .registers 5
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 555
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v1

    if-nez v1, :cond_12

    .line 557
    sget-object v1, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Interaction before persistence initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    monitor-exit v0

    return-void

    .line 561
    :cond_12
    iget-wide v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 562
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->offerFirst(Ljava/lang/Object;)Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 564
    .local v1, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    .line 565
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    .line 566
    invoke-direct {p0, v1}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 567
    return-void

    .line 565
    .end local v1    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw v1
.end method

.method clearHistory()V
    .registers 5

    .line 607
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 608
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_28

    .line 609
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 610
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_25

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_28

    return-void

    .line 613
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 614
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    .line 615
    iput-wide v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 616
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mCurrentHistoricalOps:Landroid/app/AppOpsManager$HistoricalOps;

    .line 617
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_16 .. :try_end_23} :catchall_25

    .line 618
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_28

    .line 619
    return-void

    .line 617
    :catchall_25
    move-exception v2

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_27
    throw v2

    .line 618
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_28

    throw v1
.end method

.method clearHistory(ILjava/lang/String;)V
    .registers 7
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 585
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_4b

    .line 586
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 587
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_48

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_4b

    return-void

    .line 590
    :cond_16
    :try_start_16
    iget v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1e

    .line 591
    monitor-exit v1
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_48

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_4b

    return-void

    .line 594
    :cond_1e
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_35

    .line 595
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-virtual {v3, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 594
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 598
    .end local v2    # "index":I
    :cond_35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v2

    .line 599
    invoke-virtual {v2, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->clearHistory(ILjava/lang/String;)V

    .line 601
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->clearHistoryDLocked(ILjava/lang/String;)V

    .line 602
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_1f .. :try_end_46} :catchall_48

    .line 603
    :try_start_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_4b

    .line 604
    return-void

    .line 602
    :catchall_48
    move-exception v2

    :try_start_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    :try_start_4a
    throw v2

    .line 603
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    :catchall_4b
    move-exception v1

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_4b

    throw v1
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 23
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "filterUid"    # I
    .param p4, "filterPackage"    # Ljava/lang/String;
    .param p5, "filterAttributionTag"    # Ljava/lang/String;
    .param p6, "filterOp"    # I
    .param p7, "filter"    # I

    .line 300
    move-object v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_c

    .line 301
    return-void

    .line 304
    :cond_c
    iget-object v13, v10, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v13

    .line 305
    :try_start_f
    iget-object v14, v10, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_a0

    .line 306
    :try_start_12
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 307
    invoke-virtual {v12, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 308
    const-string v0, "History:"

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    const-string v0, "  mode="

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 311
    iget v0, v10, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    new-instance v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;-><init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V

    .line 315
    .local v0, "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 318
    .local v1, "nowMillis":J
    invoke-direct {p0, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v3

    .line 320
    .local v3, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-static {v3, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 321
    invoke-virtual {v3, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 323
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v4

    if-nez v4, :cond_6d

    .line 324
    sget-object v4, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    monitor-exit v14
    :try_end_6b
    .catchall {:try_start_12 .. :try_end_6b} :catchall_9d

    :try_start_6b
    monitor-exit v13
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_a0

    return-void

    .line 328
    :cond_6d
    :try_start_6d
    iget-object v4, v10, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v4

    .line 329
    .local v4, "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    if-eqz v4, :cond_95

    .line 331
    iget-wide v5, v10, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J

    sub-long/2addr v5, v1

    iget-wide v7, v10, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    sub-long/2addr v5, v7

    .line 333
    .local v5, "remainingToFillBatchMillis":J
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 334
    .local v7, "opCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_80
    if-ge v8, v7, :cond_94

    .line 335
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/AppOpsManager$HistoricalOps;

    .line 336
    .local v9, "op":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v9, v5, v6}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 337
    invoke-static {v9, v1, v2}, Lcom/android/server/appop/HistoricalRegistry;->makeRelativeToEpochStart(Landroid/app/AppOpsManager$HistoricalOps;J)V

    .line 338
    invoke-virtual {v9, v0}, Landroid/app/AppOpsManager$HistoricalOps;->accept(Landroid/app/AppOpsManager$HistoricalOpsVisitor;)V

    .line 334
    .end local v9    # "op":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v8, v8, 0x1

    goto :goto_80

    .line 340
    .end local v5    # "remainingToFillBatchMillis":J
    .end local v7    # "opCount":I
    .end local v8    # "i":I
    :cond_94
    goto :goto_9a

    .line 341
    :cond_95
    const-string v5, "  Empty"

    invoke-virtual {v12, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .end local v0    # "visitor":Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
    .end local v1    # "nowMillis":J
    .end local v3    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "ops":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :goto_9a
    monitor-exit v14
    :try_end_9b
    .catchall {:try_start_6d .. :try_end_9b} :catchall_9d

    .line 344
    :try_start_9b
    monitor-exit v13
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_a0

    .line 345
    return-void

    .line 343
    :catchall_9d
    move-exception v0

    :try_start_9e
    monitor-exit v14
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "prefix":Ljava/lang/String;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "filterUid":I
    .end local p4    # "filterPackage":Ljava/lang/String;
    .end local p5    # "filterAttributionTag":Ljava/lang/String;
    .end local p6    # "filterOp":I
    .end local p7    # "filter":I
    :try_start_9f
    throw v0

    .line 344
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "prefix":Ljava/lang/String;
    .restart local p2    # "pw":Ljava/io/PrintWriter;
    .restart local p3    # "filterUid":I
    .restart local p4    # "filterPackage":Ljava/lang/String;
    .restart local p5    # "filterAttributionTag":Ljava/lang/String;
    .restart local p6    # "filterOp":I
    .restart local p7    # "filter":I
    :catchall_a0
    move-exception v0

    monitor-exit v13
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a0

    throw v0
.end method

.method getHistoricalOps(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJILandroid/os/RemoteCallback;)V
    .registers 46
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;

    .line 383
    move-object/from16 v1, p0

    move-wide/from16 v2, p6

    move-object/from16 v4, p11

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    .line 384
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 385
    return-void

    .line 388
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 389
    .local v5, "currentTimeMillis":J
    const-wide v7, 0x7fffffffffffffffL

    cmp-long v0, p8, v7

    if-nez v0, :cond_24

    .line 390
    move-wide v7, v5

    .end local p8    # "endTimeMillis":J
    .local v7, "endTimeMillis":J
    goto :goto_26

    .line 389
    .end local v7    # "endTimeMillis":J
    .restart local p8    # "endTimeMillis":J
    :cond_24
    move-wide/from16 v7, p8

    .line 395
    .end local p8    # "endTimeMillis":J
    .restart local v7    # "endTimeMillis":J
    :goto_26
    sub-long v9, v5, v7

    const-wide/16 v11, 0x0

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    .line 396
    .local v9, "inMemoryAdjBeginTimeMillis":J
    sub-long v13, v5, v2

    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 397
    .local v14, "inMemoryAdjEndTimeMillis":J
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v0, v9, v10, v14, v15}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    move-object v13, v0

    .line 400
    .local v13, "result":Landroid/app/AppOpsManager$HistoricalOps;
    iget-object v11, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v11

    .line 405
    :try_start_3d
    iget-object v12, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_174

    .line 406
    :try_start_40
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_168

    if-nez v0, :cond_7a

    .line 407
    :try_start_46
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_70

    move-object/from16 v16, v13

    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v16, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_4a
    const-string v13, "Interaction before persistence initialized"

    invoke-static {v0, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v4, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 409
    monitor-exit v12
    :try_end_58
    .catchall {:try_start_4a .. :try_end_58} :catchall_65

    :try_start_58
    monitor-exit v11
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_5a

    return-void

    .line 448
    :catchall_5a
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-wide/from16 v28, v14

    move-object/from16 v6, v16

    goto/16 :goto_17c

    .line 424
    :catchall_65
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-wide/from16 v28, v14

    move-object/from16 v6, v16

    goto/16 :goto_170

    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_70
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v13

    move-wide/from16 v28, v14

    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto/16 :goto_170

    .line 412
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_7a
    move-object/from16 v16, v13

    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_7c
    invoke-direct {v1, v5, v6}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v0

    .line 413
    .local v0, "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v17
    :try_end_84
    .catchall {:try_start_7c .. :try_end_84} :catchall_15e

    cmp-long v13, v9, v17

    if-gez v13, :cond_ce

    .line 414
    :try_start_88
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v17

    cmp-long v13, v14, v17

    if-lez v13, :cond_bc

    .line 416
    new-instance v13, Landroid/app/AppOpsManager$HistoricalOps;

    invoke-direct {v13, v0}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_95
    .catchall {:try_start_88 .. :try_end_95} :catchall_c1

    .line 417
    .local v13, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-object/from16 v23, v13

    move-object/from16 v4, v16

    .end local v13    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v4, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v23, "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    move-wide/from16 v28, v14

    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .local v28, "inMemoryAdjEndTimeMillis":J
    move/from16 v14, p1

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, p5

    move-wide/from16 v19, v9

    move-wide/from16 v21, v28

    :try_start_a9
    invoke-virtual/range {v13 .. v22}, Landroid/app/AppOpsManager$HistoricalOps;->filter(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJ)V

    .line 419
    move-object/from16 v13, v23

    .end local v23    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v13    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v4, v13}, Landroid/app/AppOpsManager$HistoricalOps;->merge(Landroid/app/AppOpsManager$HistoricalOps;)V
    :try_end_b1
    .catchall {:try_start_a9 .. :try_end_b1} :catchall_b2

    goto :goto_d2

    .line 424
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v13    # "currentOpsCopy":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_b2
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    goto/16 :goto_170

    .line 414
    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_bc
    move-wide/from16 v28, v14

    move-object/from16 v4, v16

    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    goto :goto_d2

    .line 424
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_c1
    move-exception v0

    move-wide/from16 v28, v14

    move-object/from16 v4, p11

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object/from16 v6, v16

    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    goto/16 :goto_170

    .line 413
    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :cond_ce
    move-wide/from16 v28, v14

    move-object/from16 v4, v16

    .line 421
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    :goto_d2
    :try_start_d2
    new-instance v13, Ljava/util/ArrayList;

    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 422
    .local v13, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v14, v1, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v14}, Ljava/util/LinkedList;->clear()V

    .line 423
    invoke-virtual {v0}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v14

    cmp-long v14, v28, v14

    if-lez v14, :cond_e8

    const/4 v14, 0x1

    goto :goto_e9

    :cond_e8
    const/4 v14, 0x0

    .line 424
    .local v14, "collectOpsFromDisk":Z
    :goto_e9
    monitor-exit v12
    :try_end_ea
    .catchall {:try_start_d2 .. :try_end_ea} :catchall_155

    .line 427
    if-eqz v14, :cond_135

    .line 429
    :try_start_ec
    invoke-direct {v1, v13}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 431
    move-object v15, v13

    .end local v13    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .local v15, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-wide v12, v1, Lcom/android/server/appop/HistoricalRegistry;->mNextPersistDueTimeMillis:J
    :try_end_f2
    .catchall {:try_start_ec .. :try_end_f2} :catchall_12c

    sub-long v12, v5, v12

    move-wide/from16 v30, v5

    .end local v5    # "currentTimeMillis":J
    .local v30, "currentTimeMillis":J
    :try_start_f6
    iget-wide v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J
    :try_end_f8
    .catchall {:try_start_f6 .. :try_end_f8} :catchall_125

    add-long/2addr v12, v5

    .line 433
    .local v12, "onDiskAndInMemoryOffsetMillis":J
    sub-long v5, v9, v12

    move-wide/from16 v32, v9

    const-wide/16 v9, 0x0

    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .local v32, "inMemoryAdjBeginTimeMillis":J
    :try_start_ff
    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    .line 435
    .local v23, "onDiskAdjBeginTimeMillis":J
    sub-long v5, v28, v12

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    .line 437
    .local v25, "onDiskAdjEndTimeMillis":J
    iget-object v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object/from16 v16, v5

    move-object/from16 v17, v4

    move/from16 v18, p1

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move/from16 v22, p5

    move/from16 v27, p10

    # invokes: Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    invoke-static/range {v16 .. v27}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    :try_end_11e
    .catchall {:try_start_ff .. :try_end_11e} :catchall_11f

    goto :goto_13a

    .line 448
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v12    # "onDiskAndInMemoryOffsetMillis":J
    .end local v14    # "collectOpsFromDisk":Z
    .end local v15    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v23    # "onDiskAdjBeginTimeMillis":J
    .end local v25    # "onDiskAdjEndTimeMillis":J
    :catchall_11f
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, p11

    goto/16 :goto_17c

    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    :catchall_125
    move-exception v0

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_17c

    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    :catchall_12c
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_17c

    .line 427
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v14    # "collectOpsFromDisk":Z
    :cond_135
    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v15, v13

    .line 442
    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v15    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    :goto_13a
    :try_start_13a
    invoke-virtual {v4, v2, v3, v7, v8}, Landroid/app/AppOpsManager$HistoricalOps;->setBeginAndEndTime(JJ)V

    .line 445
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 446
    .local v5, "payload":Landroid/os/Bundle;
    const-string/jumbo v6, "historical_ops"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_148
    .catchall {:try_start_13a .. :try_end_148} :catchall_150

    .line 447
    move-object v6, v4

    move-object/from16 v4, p11

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v6, "result":Landroid/app/AppOpsManager$HistoricalOps;
    :try_start_14b
    invoke-virtual {v4, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 448
    .end local v0    # "currentOps":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "payload":Landroid/os/Bundle;
    .end local v14    # "collectOpsFromDisk":Z
    .end local v15    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    monitor-exit v11
    :try_end_14f
    .catchall {:try_start_14b .. :try_end_14f} :catchall_17e

    .line 449
    return-void

    .line 448
    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_150
    move-exception v0

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    goto :goto_17c

    .line 424
    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .local v5, "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    :catchall_155
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v4

    move-object/from16 v4, p11

    .end local v4    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_170

    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .local v14, "inMemoryAdjEndTimeMillis":J
    .restart local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    :catchall_15e
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-wide/from16 v28, v14

    move-object/from16 v6, v16

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .end local v16    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    goto :goto_170

    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .local v13, "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    :catchall_168
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v13

    move-wide/from16 v28, v14

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    :goto_170
    :try_start_170
    monitor-exit v12
    :try_end_171
    .catchall {:try_start_170 .. :try_end_171} :catchall_172

    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v7    # "endTimeMillis":J
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "filter":I
    .end local p6    # "beginTimeMillis":J
    .end local p10    # "flags":I
    .end local p11    # "callback":Landroid/os/RemoteCallback;
    :try_start_171
    throw v0

    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v7    # "endTimeMillis":J
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "filter":I
    .restart local p6    # "beginTimeMillis":J
    .restart local p10    # "flags":I
    .restart local p11    # "callback":Landroid/os/RemoteCallback;
    :catchall_172
    move-exception v0

    goto :goto_170

    .line 448
    .end local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v28    # "inMemoryAdjEndTimeMillis":J
    .end local v30    # "currentTimeMillis":J
    .end local v32    # "inMemoryAdjBeginTimeMillis":J
    .restart local v5    # "currentTimeMillis":J
    .restart local v9    # "inMemoryAdjBeginTimeMillis":J
    .restart local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v14    # "inMemoryAdjEndTimeMillis":J
    :catchall_174
    move-exception v0

    move-wide/from16 v30, v5

    move-wide/from16 v32, v9

    move-object v6, v13

    move-wide/from16 v28, v14

    .end local v5    # "currentTimeMillis":J
    .end local v9    # "inMemoryAdjBeginTimeMillis":J
    .end local v13    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v14    # "inMemoryAdjEndTimeMillis":J
    .restart local v6    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .restart local v28    # "inMemoryAdjEndTimeMillis":J
    .restart local v30    # "currentTimeMillis":J
    .restart local v32    # "inMemoryAdjBeginTimeMillis":J
    :goto_17c
    monitor-exit v11
    :try_end_17d
    .catchall {:try_start_171 .. :try_end_17d} :catchall_17e

    throw v0

    :catchall_17e
    move-exception v0

    goto :goto_17c
.end method

.method getHistoricalOpsFromDiskRaw(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJILandroid/os/RemoteCallback;)V
    .registers 29
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "attributionTag"    # Ljava/lang/String;
    .param p4, "opNames"    # [Ljava/lang/String;
    .param p5, "filter"    # I
    .param p6, "beginTimeMillis"    # J
    .param p8, "endTimeMillis"    # J
    .param p10, "flags"    # I
    .param p11, "callback"    # Landroid/os/RemoteCallback;

    .line 357
    move-object/from16 v1, p0

    move-object/from16 v2, p11

    invoke-static {}, Lcom/android/server/appop/HistoricalRegistry;->isApiEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 359
    return-void

    .line 362
    :cond_13
    iget-object v3, v1, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v3

    .line 363
    :try_start_16
    iget-object v4, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_64

    .line 364
    :try_start_19
    invoke-direct/range {p0 .. p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_31

    .line 365
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Interaction before persistence initialized"

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 367
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_19 .. :try_end_2f} :catchall_61

    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_64

    return-void

    .line 369
    :cond_31
    :try_start_31
    new-instance v0, Landroid/app/AppOpsManager$HistoricalOps;

    move-wide/from16 v14, p6

    move-wide/from16 v12, p8

    invoke-direct {v0, v14, v15, v12, v13}, Landroid/app/AppOpsManager$HistoricalOps;-><init>(JJ)V

    .line 370
    .local v0, "result":Landroid/app/AppOpsManager$HistoricalOps;
    iget-object v5, v1, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    move-object v6, v0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move-wide/from16 v12, p6

    move-wide/from16 v14, p8

    move/from16 v16, p10

    # invokes: Lcom/android/server/appop/HistoricalRegistry$Persistence;->collectHistoricalOpsDLocked(Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V
    invoke-static/range {v5 .. v16}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->access$100(Lcom/android/server/appop/HistoricalRegistry$Persistence;Landroid/app/AppOpsManager$HistoricalOps;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;IJJI)V

    .line 372
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 373
    .local v5, "payload":Landroid/os/Bundle;
    const-string/jumbo v6, "historical_ops"

    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    invoke-virtual {v2, v5}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 375
    .end local v0    # "result":Landroid/app/AppOpsManager$HistoricalOps;
    .end local v5    # "payload":Landroid/os/Bundle;
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_31 .. :try_end_5f} :catchall_61

    .line 376
    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_64

    .line 377
    return-void

    .line 375
    :catchall_61
    move-exception v0

    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "uid":I
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "attributionTag":Ljava/lang/String;
    .end local p4    # "opNames":[Ljava/lang/String;
    .end local p5    # "filter":I
    .end local p6    # "beginTimeMillis":J
    .end local p8    # "endTimeMillis":J
    .end local p10    # "flags":I
    .end local p11    # "callback":Landroid/os/RemoteCallback;
    :try_start_63
    throw v0

    .line 376
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "uid":I
    .restart local p2    # "packageName":Ljava/lang/String;
    .restart local p3    # "attributionTag":Ljava/lang/String;
    .restart local p4    # "opNames":[Ljava/lang/String;
    .restart local p5    # "filter":I
    .restart local p6    # "beginTimeMillis":J
    .restart local p8    # "endTimeMillis":J
    .restart local p10    # "flags":I
    .restart local p11    # "callback":Landroid/os/RemoteCallback;
    :catchall_64
    move-exception v0

    monitor-exit v3
    :try_end_66
    .catchall {:try_start_63 .. :try_end_66} :catchall_64

    throw v0
.end method

.method getMode()I
    .registers 3

    .line 348
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_3
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    monitor-exit v0

    return v1

    .line 350
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method increaseOpAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 23
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I
    .param p7, "increment"    # J

    .line 484
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 485
    :try_start_4
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_31

    .line 486
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_18

    .line 487
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    monitor-exit v2

    return-void

    .line 490
    :cond_18
    nop

    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 490
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    .line 491
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessDuration(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 494
    :cond_31
    monitor-exit v2

    .line 495
    return-void

    .line 494
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0
.end method

.method incrementOpAccessedCount(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 21
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 453
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 454
    :try_start_4
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_31

    .line 455
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_18

    .line 456
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v2

    return-void

    .line 459
    :cond_18
    nop

    .line 460
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 459
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 460
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseAccessCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 463
    :cond_31
    monitor-exit v2

    .line 464
    return-void

    .line 463
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0
.end method

.method incrementOpRejected(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 21
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "attributionTag"    # Ljava/lang/String;
    .param p5, "uidState"    # I
    .param p6, "flags"    # I

    .line 468
    move-object v1, p0

    iget-object v2, v1, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2

    .line 469
    :try_start_4
    iget v0, v1, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_31

    .line 470
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_18

    .line 471
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    monitor-exit v2

    return-void

    .line 474
    :cond_18
    nop

    .line 475
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 474
    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->getUpdatedPendingHistoricalOpsMLocked(J)Landroid/app/AppOpsManager$HistoricalOps;

    move-result-object v5

    const-wide/16 v12, 0x1

    .line 475
    move v6, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-virtual/range {v5 .. v13}, Landroid/app/AppOpsManager$HistoricalOps;->increaseRejectCount(IILjava/lang/String;Ljava/lang/String;IIJ)V

    .line 478
    :cond_31
    monitor-exit v2

    .line 479
    return-void

    .line 478
    :catchall_33
    move-exception v0

    monitor-exit v2
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_33

    throw v0
.end method

.method offsetHistory(J)V
    .registers 9
    .param p1, "offsetMillis"    # J

    .line 530
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 531
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    .line 532
    :try_start_6
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v2

    if-nez v2, :cond_16

    .line 533
    sget-object v2, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Interaction before persistence initialized"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    monitor-exit v1
    :try_end_14
    .catchall {:try_start_6 .. :try_end_14} :catchall_45

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_48

    return-void

    .line 536
    :cond_16
    :try_start_16
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->readHistoryDLocked()Ljava/util/List;

    move-result-object v2

    .line 537
    .local v2, "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistory()V

    .line 538
    if-eqz v2, :cond_42

    .line 539
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 540
    .local v3, "historySize":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_26
    if-ge v4, v3, :cond_34

    .line 541
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$HistoricalOps;

    .line 542
    .local v5, "ops":Landroid/app/AppOpsManager$HistoricalOps;
    invoke-virtual {v5, p1, p2}, Landroid/app/AppOpsManager$HistoricalOps;->offsetBeginAndEndTime(J)V

    .line 540
    .end local v5    # "ops":Landroid/app/AppOpsManager$HistoricalOps;
    add-int/lit8 v4, v4, 0x1

    goto :goto_26

    .line 544
    .end local v4    # "i":I
    :cond_34
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gez v4, :cond_3d

    .line 545
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->pruneFutureOps(Ljava/util/List;)V

    .line 547
    :cond_3d
    iget-object v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    invoke-virtual {v4, v2}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->persistHistoricalOpsDLocked(Ljava/util/List;)V

    .line 549
    .end local v2    # "history":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    .end local v3    # "historySize":I
    :cond_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_16 .. :try_end_43} :catchall_45

    .line 550
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_48

    .line 551
    return-void

    .line 549
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "offsetMillis":J
    :try_start_47
    throw v2

    .line 550
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "offsetMillis":J
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method persistPendingHistory()V
    .registers 8

    .line 682
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 683
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_2a

    .line 684
    :try_start_6
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 685
    .local v2, "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingWrites:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 686
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_21

    .line 687
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 688
    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 690
    :cond_21
    monitor-exit v1
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_27

    .line 691
    :try_start_22
    invoke-direct {p0, v2}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory(Ljava/util/List;)V

    .line 692
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 693
    return-void

    .line 690
    .end local v2    # "pendingWrites":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$HistoricalOps;>;"
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v1
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :try_start_29
    throw v2

    .line 692
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    :catchall_2a
    move-exception v1

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method resetHistoryParameters()V
    .registers 9

    .line 575
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v0

    if-nez v0, :cond_e

    .line 576
    sget-object v0, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Interaction before persistence initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    return-void

    .line 579
    :cond_e
    const/4 v3, 0x1

    sget-wide v4, Lcom/android/server/appop/HistoricalRegistry;->DEFAULT_SNAPSHOT_INTERVAL_MILLIS:J

    const-wide/16 v6, 0xa

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/appop/HistoricalRegistry;->setHistoryParameters(IJJ)V

    .line 581
    return-void
.end method

.method setHistoryParameters(IJJ)V
    .registers 12
    .param p1, "mode"    # I
    .param p2, "baseSnapshotInterval"    # J
    .param p4, "intervalCompressionMultiplier"    # J

    .line 499
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_3
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_5b

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, "resampleHistory":Z
    :try_start_7
    sget-object v3, Lcom/android/server/appop/HistoricalRegistry;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New history parameters: mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-static {p1}, Landroid/app/AppOpsManager;->historicalModeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " baseSnapshotInterval:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " intervalCompressionMultiplier:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 504
    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eq v3, p1, :cond_3c

    .line 509
    iput p1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    .line 510
    if-nez p1, :cond_3c

    .line 511
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->clearHistoryOnDiskDLocked()V

    .line 514
    :cond_3c
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    cmp-long v3, v3, p2

    if-eqz v3, :cond_45

    .line 515
    iput-wide p2, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    .line 516
    const/4 v2, 0x1

    .line 518
    :cond_45
    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    cmp-long v3, v3, p4

    if-eqz v3, :cond_4e

    .line 519
    iput-wide p4, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    .line 520
    const/4 v2, 0x1

    .line 522
    :cond_4e
    if-eqz v2, :cond_55

    .line 523
    const-wide/16 v3, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/appop/HistoricalRegistry;->resampleHistoryOnDiskInMemoryDMLocked(J)V

    .line 525
    .end local v2    # "resampleHistory":Z
    :cond_55
    monitor-exit v1
    :try_end_56
    .catchall {:try_start_7 .. :try_end_56} :catchall_58

    .line 526
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_5b

    .line 527
    return-void

    .line 525
    :catchall_58
    move-exception v2

    :try_start_59
    monitor-exit v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "mode":I
    .end local p2    # "baseSnapshotInterval":J
    .end local p4    # "intervalCompressionMultiplier":J
    :try_start_5a
    throw v2

    .line 526
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "mode":I
    .restart local p2    # "baseSnapshotInterval":J
    .restart local p4    # "intervalCompressionMultiplier":J
    :catchall_5b
    move-exception v1

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5b

    throw v1
.end method

.method shutdown()V
    .registers 3

    .line 671
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 672
    :try_start_3
    iget v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-nez v1, :cond_9

    .line 673
    monitor-exit v0

    return-void

    .line 675
    :cond_9
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    .line 677
    invoke-virtual {p0}, Lcom/android/server/appop/HistoricalRegistry;->persistPendingHistory()V

    .line 678
    return-void

    .line 675
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    throw v1
.end method

.method systemReady(Landroid/content/ContentResolver;)V
    .registers 10
    .param p1, "resolver"    # Landroid/content/ContentResolver;

    .line 210
    const-string v0, "appop_history_parameters"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 211
    .local v0, "uri":Landroid/net/Uri;
    new-instance v1, Lcom/android/server/appop/HistoricalRegistry$1;

    .line 212
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/appop/HistoricalRegistry$1;-><init>(Lcom/android/server/appop/HistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    .line 211
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/server/appop/HistoricalRegistry;->updateParametersFromSetting(Landroid/content/ContentResolver;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry;->mOnDiskLock:Ljava/lang/Object;

    monitor-enter v1

    .line 222
    :try_start_19
    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry;->mInMemoryLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_4a

    .line 223
    :try_start_1c
    iget v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mMode:I

    if-eqz v3, :cond_44

    .line 225
    invoke-direct {p0}, Lcom/android/server/appop/HistoricalRegistry;->isPersistenceInitializedMLocked()Z

    move-result v3

    if-nez v3, :cond_31

    .line 226
    new-instance v3, Lcom/android/server/appop/HistoricalRegistry$Persistence;

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry;->mBaseSnapshotInterval:J

    iget-wide v6, p0, Lcom/android/server/appop/HistoricalRegistry;->mIntervalCompressionMultiplier:J

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/android/server/appop/HistoricalRegistry$Persistence;-><init>(JJ)V

    iput-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 231
    :cond_31
    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry;->mPersistence:Lcom/android/server/appop/HistoricalRegistry$Persistence;

    .line 232
    invoke-virtual {v3}, Lcom/android/server/appop/HistoricalRegistry$Persistence;->getLastPersistTimeMillisDLocked()J

    move-result-wide v3

    .line 234
    .local v3, "lastPersistTimeMills":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_44

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/server/appop/HistoricalRegistry;->mPendingHistoryOffsetMillis:J

    .line 245
    .end local v3    # "lastPersistTimeMills":J
    :cond_44
    monitor-exit v2
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_47

    .line 246
    :try_start_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_4a

    .line 247
    return-void

    .line 245
    :catchall_47
    move-exception v3

    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    .end local v0    # "uri":Landroid/net/Uri;
    .end local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .end local p1    # "resolver":Landroid/content/ContentResolver;
    :try_start_49
    throw v3

    .line 246
    .restart local v0    # "uri":Landroid/net/Uri;
    .restart local p0    # "this":Lcom/android/server/appop/HistoricalRegistry;
    .restart local p1    # "resolver":Landroid/content/ContentResolver;
    :catchall_4a
    move-exception v2

    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4a

    throw v2
.end method
