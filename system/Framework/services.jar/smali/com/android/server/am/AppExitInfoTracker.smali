.class public final Lcom/android/server/am/AppExitInfoTracker;
.super Ljava/lang/Object;
.source "AppExitInfoTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;,
        Lcom/android/server/am/AppExitInfoTracker$KillHandler;,
        Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;,
        Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;,
        Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    }
.end annotation


# static fields
.field static final APP_EXIT_INFO_FILE:Ljava/lang/String; = "procexitinfo"

.field private static final APP_EXIT_INFO_PERSIST_INTERVAL:J

.field private static final APP_EXIT_RAW_INFO_POOL_SIZE:I = 0x8

.field static final APP_EXIT_STORE_DIR:Ljava/lang/String; = "procexitstore"

.field private static final APP_TRACE_FILE_SUFFIX:Ljava/lang/String; = ".gz"

.field private static final FOREACH_ACTION_NONE:I = 0x0

.field private static final FOREACH_ACTION_REMOVE_ITEM:I = 0x1

.field private static final FOREACH_ACTION_STOP_ITERATION:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final mActiveAppStateSummary:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "[B>;>;"
        }
    .end annotation
.end field

.field final mActiveAppTraces:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppExitInfoHistoryListSize:I

.field mAppExitInfoLoaded:Z

.field private mAppExitInfoPersistTask:Ljava/lang/Runnable;

.field final mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

.field final mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

.field private final mData:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;"
        }
    .end annotation
.end field

.field final mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

.field private mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

.field private mLastAppExitInfoPersistTimestamp:J

.field private final mLock:Ljava/lang/Object;

.field mProcExitInfoFile:Ljava/io/File;

.field mProcExitStoreDir:Ljava/io/File;

.field private final mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field final mTmpInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpInfoList2:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 102
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 140
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    .line 172
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 197
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    .line 203
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    const-string/jumbo v2, "zygote"

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 209
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 210
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "lmkd"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;Ljava/lang/Integer;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 222
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    .line 233
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    .line 239
    new-instance v0, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppTraceRetriever:Lcom/android/server/am/AppExitInfoTracker$AppTraceRetriever;

    .line 242
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    .line 243
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    .line 244
    return-void
.end method

.method static synthetic access$100(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 4
    .param p0, "x0"    # Landroid/util/SparseArray;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 96
    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppExitInfoTracker;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppExitInfoTracker;)Lcom/android/server/am/ActivityManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;

    .line 96
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$400(J)Z
    .registers 3
    .param p0, "x0"    # J

    .line 96
    invoke-static {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/am/AppExitInfoTracker;IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Integer;
    .param p4, "x4"    # Ljava/lang/Integer;

    .line 96
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/am/AppExitInfoTracker;Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/am/AppExitInfoTracker;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    return-object v0
.end method

.method private addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "info"    # Landroid/app/ApplicationExitInfo;

    .line 829
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 830
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-nez v0, :cond_3c

    .line 831
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    move-object v0, v1

    .line 832
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 833
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 834
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_2f

    .line 835
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # setter for: Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I
    invoke-static {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I

    .line 837
    .end local v1    # "k":Ljava/lang/Integer;
    :cond_2f
    goto :goto_37

    .line 838
    :cond_30
    invoke-virtual {p3}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    # setter for: Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->mUid:I
    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->access$002(Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;I)I

    .line 840
    :goto_37
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 842
    :cond_3c
    invoke-virtual {v0, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)V

    .line 843
    return-void
.end method

.method private addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;
    .registers 7
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 421
    iget-boolean v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v0, :cond_d

    .line 422
    const-string v0, "ActivityManager"

    const-string v1, "Skipping saving the exit info due to ongoing loading from storage"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/4 v0, 0x0

    return-object v0

    .line 426
    :cond_d
    new-instance v0, Landroid/app/ApplicationExitInfo;

    invoke-direct {v0, p1}, Landroid/app/ApplicationExitInfo;-><init>(Landroid/app/ApplicationExitInfo;)V

    .line 427
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageList()[Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "packages":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v2

    .line 430
    .local v2, "uid":I
    if-eqz v1, :cond_28

    .line 432
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v1

    if-ge v3, v4, :cond_28

    .line 433
    aget-object v4, v1, v3

    invoke-direct {p0, v4, v2, v0}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoInnerLocked(Ljava/lang/String;ILandroid/app/ApplicationExitInfo;)V

    .line 432
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 437
    .end local v3    # "i":I
    :cond_28
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 439
    return-object v0
.end method

.method private static copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z
    .registers 16
    .param p0, "inFile"    # Ljava/io/File;
    .param p1, "outFile"    # Ljava/io/File;
    .param p2, "start"    # J
    .param p4, "length"    # J

    .line 1066
    move-wide v0, p4

    .line 1068
    .local v0, "remaining":J
    const/4 v2, 0x0

    :try_start_2
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_c} :catch_63

    .line 1069
    .local v3, "in":Ljava/io/BufferedInputStream;
    :try_start_c
    new-instance v4, Ljava/util/zip/GZIPOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v4, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catchall {:try_start_c .. :try_end_1b} :catchall_59

    .line 1071
    .local v4, "out":Ljava/util/zip/GZIPOutputStream;
    const/16 v5, 0x2000

    :try_start_1d
    new-array v5, v5, [B

    .line 1072
    .local v5, "buffer":[B
    invoke-virtual {v3, p2, p3}, Ljava/io/BufferedInputStream;->skip(J)J

    .line 1073
    :goto_22
    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-lez v8, :cond_3c

    .line 1074
    array-length v8, v5

    int-to-long v8, v8

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-virtual {v3, v5, v2, v8}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v8

    .line 1075
    .local v8, "t":I
    if-gez v8, :cond_36

    .line 1076
    goto :goto_3c

    .line 1078
    :cond_36
    invoke-virtual {v4, v5, v2, v8}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
    :try_end_39
    .catchall {:try_start_1d .. :try_end_39} :catchall_4f

    .line 1079
    int-to-long v6, v8

    sub-long/2addr v0, v6

    .line 1080
    .end local v8    # "t":I
    goto :goto_22

    .line 1081
    .end local v5    # "buffer":[B
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_59

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :try_start_3f
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_63

    .line 1086
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    nop

    .line 1087
    cmp-long v3, v0, v6

    if-nez v3, :cond_4e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4e

    const/4 v2, 0x1

    :cond_4e
    return v2

    .line 1067
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    :catchall_4f
    move-exception v5

    :try_start_50
    invoke-virtual {v4}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_54

    goto :goto_58

    :catchall_54
    move-exception v6

    :try_start_55
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_58
    throw v5
    :try_end_59
    .catchall {:try_start_55 .. :try_end_59} :catchall_59

    .end local v4    # "out":Ljava/util/zip/GZIPOutputStream;
    .restart local v0    # "remaining":J
    .restart local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catchall_59
    move-exception v4

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_5e

    goto :goto_62

    :catchall_5e
    move-exception v5

    :try_start_5f
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "remaining":J
    .end local p0    # "inFile":Ljava/io/File;
    .end local p1    # "outFile":Ljava/io/File;
    .end local p2    # "start":J
    .end local p4    # "length":J
    :goto_62
    throw v4
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_63

    .line 1081
    .end local v3    # "in":Ljava/io/BufferedInputStream;
    .restart local v0    # "remaining":J
    .restart local p0    # "inFile":Ljava/io/File;
    .restart local p1    # "outFile":Ljava/io/File;
    .restart local p2    # "start":J
    .restart local p4    # "length":J
    :catch_63
    move-exception v3

    .line 1082
    .local v3, "e":Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v4, :cond_86

    .line 1083
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in copying ANR trace from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1085
    :cond_86
    return v2
.end method

.method private dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p5, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Landroid/icu/text/SimpleDateFormat;",
            ")V"
        }
    .end annotation

    .line 819
    .local p4, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    invoke-virtual {p4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 821
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_57

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  Historical Process Exit for userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/icu/text/SimpleDateFormat;)V

    .line 821
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 825
    .end local v1    # "i":I
    :cond_57
    return-void
.end method

.method private static findAndRemoveFromSparse2dArray(Landroid/util/SparseArray;II)Ljava/lang/Object;
    .registers 8
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;II)TU;"
        }
    .end annotation

    .line 1206
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1207
    .local v0, "idx":I
    const/4 v1, 0x0

    if-ltz v0, :cond_27

    .line 1208
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1209
    .local v2, "p":Landroid/util/SparseArray;, "TT;"
    if-nez v2, :cond_10

    .line 1210
    return-object v1

    .line 1212
    :cond_10
    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v3

    .line 1213
    .local v3, "innerIdx":I
    if-ltz v3, :cond_27

    .line 1214
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    .line 1215
    .local v1, "ret":Ljava/lang/Object;, "TU;"
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1216
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-nez v4, :cond_26

    .line 1217
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1219
    :cond_26
    return-object v1

    .line 1222
    .end local v1    # "ret":Ljava/lang/Object;, "TU;"
    .end local v2    # "p":Landroid/util/SparseArray;, "TT;"
    .end local v3    # "innerIdx":I
    :cond_27
    return-object v1
.end method

.method private forEachPackageLocked(Ljava/util/function/BiFunction;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 848
    .local p1, "callback":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_4e

    .line 849
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 850
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_4e

    .line 851
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    invoke-interface {p1, v3, v4}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v2, :cond_2e

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2c

    goto :goto_4b

    .line 860
    :cond_2c
    const/4 v1, 0x0

    .line 861
    goto :goto_4b

    .line 853
    :cond_2e
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 854
    .local v3, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "j":I
    :goto_39
    if-ltz v4, :cond_47

    .line 855
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 854
    add-int/lit8 v4, v4, -0x1

    goto :goto_39

    .line 857
    .end local v4    # "j":I
    :cond_47
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 858
    nop

    .line 850
    .end local v3    # "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :goto_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 868
    .end local v0    # "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    .end local v1    # "i":I
    :cond_4e
    return-void
.end method

.method private static forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1161
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    if-eqz p1, :cond_28

    .line 1162
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_28

    .line 1163
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1164
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_13

    .line 1165
    goto :goto_25

    .line 1167
    :cond_13
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_19
    if-ltz v2, :cond_25

    .line 1168
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1167
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 1162
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    .end local v2    # "j":I
    :cond_25
    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1172
    .end local v0    # "i":I
    :cond_28
    return-void
.end method

.method private getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I

    .line 561
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 562
    .local v6, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 563
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V

    .line 565
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    .line 566
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    :goto_1d
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 567
    return-object v0
.end method

.method private static isFresh(J)Z
    .registers 6
    .param p0, "timestamp"    # J

    .line 1583
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1585
    .local v0, "now":J
    const-wide/32 v2, 0x493e0

    add-long/2addr v2, p0

    cmp-long v2, v2, v0

    if-ltz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    return v2
.end method

.method static synthetic lambda$getExitInfo$4(Landroid/app/ApplicationExitInfo;Landroid/app/ApplicationExitInfo;)I
    .registers 6
    .param p0, "a"    # Landroid/app/ApplicationExitInfo;
    .param p1, "b"    # Landroid/app/ApplicationExitInfo;

    .line 538
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method static synthetic lambda$handleLogAnrTrace$11(Ljava/io/File;)V
    .registers 1
    .param p0, "v"    # Ljava/io/File;

    .line 1049
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$persistProcessExitInfo$5(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 10
    .param p0, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 718
    const-wide v0, 0x20b00000002L

    invoke-virtual {p0, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 719
    .local v2, "token":J
    const-wide v4, 0x10900000001L

    invoke-virtual {p0, v4, v5, p1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 720
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 721
    .local v4, "uidArraySize":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_16
    if-ge v5, v4, :cond_24

    .line 722
    invoke-virtual {p2, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v6, p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 721
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 724
    .end local v5    # "j":I
    :cond_24
    invoke-virtual {p0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 725
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$12(Landroid/util/ArraySet;Ljava/io/File;)Z
    .registers 4
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "f"    # Ljava/io/File;

    .line 1097
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1098
    .local v0, "name":Ljava/lang/String;
    const-string v1, "anr_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1099
    const-string v1, ".gz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 1100
    .local v1, "trace":Z
    :goto_17
    if-eqz v1, :cond_1c

    .line 1101
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1103
    :cond_1c
    return v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$13(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;
    .registers 5
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "info"    # Landroid/app/ApplicationExitInfo;

    .line 1113
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTraceFile()Ljava/io/File;

    move-result-object v0

    .line 1114
    .local v0, "traceFile":Ljava/io/File;
    if-eqz v0, :cond_d

    .line 1115
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1117
    :cond_d
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$14(Landroid/util/ArraySet;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 6
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 1110
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_19

    .line 1111
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1112
    .local v1, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Q3GtkIfPxcC3Upjekif3W0ekKvY;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Q3GtkIfPxcC3Upjekif3W0ekKvY;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->forEachRecordLocked(Ljava/util/function/BiFunction;)V

    .line 1110
    .end local v1    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1120
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$pruneAnrTracesIfNecessaryLocked$15(Landroid/util/ArraySet;Ljava/io/File;)V
    .registers 3
    .param p0, "allFiles"    # Landroid/util/ArraySet;
    .param p1, "v"    # Ljava/io/File;

    .line 1123
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic lambda$removeByUserIdLocked$10(ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 6
    .param p0, "userId"    # I
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "records"    # Landroid/util/SparseArray;

    .line 921
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_22

    .line 922
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne v2, p0, :cond_1f

    .line 923
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 924
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 925
    goto :goto_22

    .line 921
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 928
    .end local v0    # "i":I
    :cond_22
    :goto_22
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeByUserIdLocked$7(ILjava/lang/Integer;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 917
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$8(ILjava/lang/Integer;)Z
    .registers 3
    .param p0, "userId"    # I
    .param p1, "v"    # Ljava/lang/Integer;

    .line 919
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$removeByUserIdLocked$9(Ljava/io/File;)V
    .registers 1
    .param p0, "v"    # Ljava/io/File;

    .line 919
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method static synthetic lambda$setLmkdKillListener$1(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 5
    .param p0, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;
    .param p1, "pid"    # Ljava/lang/Integer;
    .param p2, "uid"    # Ljava/lang/Integer;

    .line 338
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {p0, v0, v1}, Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;->onLmkdKillOccurred(II)V

    return-void
.end method

.method private loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V
    .registers 12
    .param p1, "proto"    # Landroid/util/proto/ProtoInputStream;
    .param p2, "fieldId"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/util/proto/WireTypeMismatchException;
        }
    .end annotation

    .line 682
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoInputStream;->start(J)J

    move-result-wide v0

    .line 683
    .local v0, "token":J
    const-string v2, ""

    .line 684
    .local v2, "pkgName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    .line 685
    .local v3, "next":I
    :goto_a
    const/4 v4, -0x1

    if-eq v3, v4, :cond_40

    .line 687
    const/4 v4, 0x1

    if-eq v3, v4, :cond_31

    const/4 v4, 0x2

    if-eq v3, v4, :cond_14

    goto :goto_3b

    .line 692
    :cond_14
    new-instance v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    iget v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;-><init>(Lcom/android/server/am/AppExitInfoTracker;I)V

    .line 694
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const-wide v5, 0x20b00000002L

    invoke-virtual {v4, p1, v5, v6}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->readFromProto(Landroid/util/proto/ProtoInputStream;J)I

    move-result v5

    .line 695
    .local v5, "uid":I
    iget-object v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 696
    :try_start_27
    iget-object v7, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v7, v2, v5, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 697
    monitor-exit v6

    goto :goto_3b

    :catchall_2e
    move-exception v7

    monitor-exit v6
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_2e

    throw v7

    .line 689
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    .end local v5    # "uid":I
    :cond_31
    const-wide v4, 0x10900000001L

    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoInputStream;->readString(J)Ljava/lang/String;

    move-result-object v2

    .line 690
    nop

    .line 686
    :goto_3b
    invoke-virtual {p1}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v3

    goto :goto_a

    .line 701
    .end local v3    # "next":I
    :cond_40
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoInputStream;->end(J)V

    .line 702
    return-void
.end method

.method private pruneAnrTracesIfNecessaryLocked()V
    .registers 7

    .line 1095
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1096
    .local v0, "allFiles":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$JduFGZz0nH2A0BHWR2JObNY-HIA;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    .line 1105
    .local v1, "files":[Ljava/io/File;
    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 1106
    return-void

    .line 1109
    :cond_17
    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$pGj1RV5EdCXTSGnbNiqDUSduYTk;

    invoke-direct {v2, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$pGj1RV5EdCXTSGnbNiqDUSduYTk;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 1123
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;

    invoke-direct {v3, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Du2pQ0u67kwpa3kgguj5fWqQfXM;-><init>(Landroid/util/ArraySet;)V

    invoke-static {v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->forEachSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Consumer;)V

    .line 1126
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2f
    if-ltz v2, :cond_44

    .line 1127
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 1126
    add-int/lit8 v2, v2, -0x1

    goto :goto_2f

    .line 1129
    .end local v2    # "i":I
    :cond_44
    return-void
.end method

.method private static putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .registers 9
    .param p1, "outerKey"    # I
    .param p2, "innerKey"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;IITU;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1137
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TU;"
    .local p4, "newInstance":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    .local p5, "actionToOldValue":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1138
    .local v0, "idx":I
    const/4 v1, 0x0

    .line 1139
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-gez v0, :cond_12

    .line 1140
    invoke-interface {p4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1141
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 1143
    :cond_12
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Landroid/util/SparseArray;

    .line 1145
    :goto_19
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 1146
    if-ltz v0, :cond_2c

    .line 1147
    if-eqz p5, :cond_28

    .line 1148
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p5, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1150
    :cond_28
    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    goto :goto_2f

    .line 1152
    :cond_2c
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1154
    :goto_2f
    return-void
.end method

.method private registerForPackageRemoval()V
    .registers 6

    .line 613
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 614
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 615
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 616
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$2;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 630
    return-void
.end method

.method private registerForUserRemoval()V
    .registers 6

    .line 600
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 601
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/AppExitInfoTracker$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/AppExitInfoTracker$1;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 610
    return-void
.end method

.method private removeByUserIdLocked(I)V
    .registers 6
    .param p1, "userId"    # I

    .line 909
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1a

    .line 910
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 911
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 912
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 913
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 914
    return-void

    .line 916
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$vzdjnEjW-9gbfxjIkvPxuQNiFW0;

    invoke-direct {v1, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$vzdjnEjW-9gbfxjIkvPxuQNiFW0;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 918
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$XP9Dt_b6q1v_FLyDNEaaEtbN2tI;

    invoke-direct {v1, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$XP9Dt_b6q1v_FLyDNEaaEtbN2tI;-><init>(I)V

    sget-object v3, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Y37hrsxr0wudP-NPU4f6GLWVNsM;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Y37hrsxr0wudP-NPU4f6GLWVNsM;

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker;->removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V

    .line 920
    new-instance v0, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;

    invoke-direct {v0, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ZY9TAD2R71ar3yQbfwDIrtpb_VY;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 930
    return-void
.end method

.method private static removeFromSparse2dArray(Landroid/util/SparseArray;Ljava/util/function/Predicate;Ljava/util/function/Predicate;Ljava/util/function/Consumer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/util/SparseArray<",
            "TU;>;U:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray<",
            "TT;>;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Consumer<",
            "TU;>;)V"
        }
    .end annotation

    .line 1180
    .local p0, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<TT;>;"
    .local p1, "outerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p2, "innerPredicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Ljava/lang/Integer;>;"
    .local p3, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<TU;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_54

    .line 1181
    if-eqz p1, :cond_18

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 1182
    :cond_18
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 1183
    .local v1, "innerArray":Landroid/util/SparseArray;, "TT;"
    if-nez v1, :cond_21

    .line 1184
    goto :goto_51

    .line 1186
    :cond_21
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "j":I
    :goto_27
    if-ltz v2, :cond_48

    .line 1187
    if-eqz p2, :cond_39

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1188
    :cond_39
    if-eqz p3, :cond_42

    .line 1189
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1191
    :cond_42
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1186
    :cond_45
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1194
    .end local v2    # "j":I
    :cond_48
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_51

    .line 1195
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 1180
    .end local v1    # "innerArray":Landroid/util/SparseArray;, "TT;"
    :cond_51
    :goto_51
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 1199
    .end local v0    # "i":I
    :cond_54
    return-void
.end method

.method private removePackageLocked(Ljava/lang/String;IZI)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "removeUid"    # Z
    .param p4, "userId"    # I

    .line 872
    if-eqz p3, :cond_30

    .line 873
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 874
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 875
    .local v0, "idx":I
    if-ltz v0, :cond_30

    .line 876
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 877
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1d
    if-ltz v2, :cond_2b

    .line 878
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 877
    add-int/lit8 v2, v2, -0x1

    goto :goto_1d

    .line 880
    .end local v2    # "i":I
    :cond_2b
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->removeAt(I)V

    .line 883
    .end local v0    # "idx":I
    .end local v1    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/io/File;>;"
    :cond_30
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 884
    .local v0, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;>;"
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 885
    .local v1, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-nez v1, :cond_3f

    .line 886
    return-void

    .line 888
    :cond_3f
    const/4 v2, -0x1

    if-ne p4, v2, :cond_60

    .line 889
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_48
    if-ltz v2, :cond_56

    .line 890
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 889
    add-int/lit8 v2, v2, -0x1

    goto :goto_48

    .line 892
    .end local v2    # "i":I
    :cond_56
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8b

    .line 894
    :cond_60
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .restart local v2    # "i":I
    :goto_66
    if-ltz v2, :cond_82

    .line 895
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p4, :cond_7f

    .line 896
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    invoke-virtual {v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->destroyLocked()V

    .line 897
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->removeAt(I)V

    .line 898
    goto :goto_82

    .line 894
    :cond_7f
    add-int/lit8 v2, v2, -0x1

    goto :goto_66

    .line 901
    .end local v2    # "i":I
    :cond_82
    :goto_82
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_8b

    .line 902
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 905
    :cond_8b
    :goto_8b
    return-void
.end method

.method private scheduleChildProcDied(III)V
    .registers 7
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 349
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x1006

    invoke-virtual {v0, v2, p1, p2, v1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 351
    return-void
.end method

.method private updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .registers 6
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;
    .param p2, "status"    # Ljava/lang/Integer;
    .param p3, "reason"    # Ljava/lang/Integer;

    .line 448
    if-eqz p1, :cond_65

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->isFresh(J)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_65

    .line 452
    :cond_d
    if-eqz p2, :cond_5b

    .line 453
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WIFEXITED(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 454
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 455
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WEXITSTATUS(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_5b

    .line 456
    :cond_29
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WIFSIGNALED(I)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 457
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    if-nez v0, :cond_49

    .line 458
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 459
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    goto :goto_5b

    .line 460
    :cond_49
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5b

    .line 461
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/system/OsConstants;->WTERMSIG(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 465
    :cond_5b
    :goto_5b
    if-eqz p3, :cond_64

    .line 466
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 468
    :cond_64
    return-void

    .line 450
    :cond_65
    :goto_65
    return-void
.end method

.method private updateExitInfoIfNecessaryLocked(IILjava/lang/Integer;Ljava/lang/Integer;)Z
    .registers 15
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # Ljava/lang/Integer;
    .param p4, "reason"    # Ljava/lang/Integer;

    .line 478
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 479
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_c

    .line 480
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 482
    :cond_c
    iget-object v8, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    .line 483
    .local v8, "tlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 484
    move v3, p2

    .line 485
    .local v3, "targetUid":I
    new-instance v9, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$xUd65bpeb_3cGXv8w6rHG0fu89U;

    move-object v1, v9

    move-object v2, p0

    move-object v4, v8

    move v5, p1

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$xUd65bpeb_3cGXv8w6rHG0fu89U;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;)V

    invoke-direct {p0, v9}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 505
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method


# virtual methods
.method clearHistoryProcessExitInfo(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 781
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    .line 782
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_a
    invoke-direct {p0, p2}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 784
    monitor-exit v0

    goto :goto_23

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_a .. :try_end_11} :catchall_f

    throw v1

    .line 786
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    const/high16 v2, 0x20000

    invoke-virtual {v0, p1, v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    .line 788
    .local v0, "uid":I
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 789
    :try_start_1f
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 790
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_27

    .line 792
    .end local v0    # "uid":I
    :goto_23
    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 793
    return-void

    .line 790
    .restart local v0    # "uid":I
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v2
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v1
.end method

.method clearProcessExitInfo(Z)V
    .registers 5
    .param p1, "removeFile"    # Z

    .line 762
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_13

    .line 764
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 765
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 767
    :cond_13
    if-eqz p1, :cond_1e

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    if-eqz v1, :cond_1e

    .line 768
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 770
    :cond_1e
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 771
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 772
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 773
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 774
    monitor-exit v0

    .line 775
    return-void

    .line 774
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v1
.end method

.method dumpHistoryProcessExitInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 796
    const-string v0, "ACTIVITY MANAGER PROCESS EXIT INFO (dumpsys activity exit-info)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 797
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 798
    .local v0, "sdf":Landroid/icu/text/SimpleDateFormat;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 799
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Last Timestamp of Persistence Into Persistent Storage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 800
    invoke-virtual {v0, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 799
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 801
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 802
    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ykvdMbwZILd9oyb6cyIe3GfomwU;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$ykvdMbwZILd9oyb6cyIe3GfomwU;-><init>(Lcom/android/server/am/AppExitInfoTracker;Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;)V

    invoke-direct {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    goto :goto_57

    .line 807
    :cond_3e
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    move-object v8, v2

    .line 808
    .local v8, "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    if-eqz v8, :cond_57

    .line 809
    const-string v4, "  "

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v8

    move-object v7, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 812
    .end local v8    # "array":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;>;"
    :cond_57
    :goto_57
    monitor-exit v1

    .line 813
    return-void

    .line 812
    :catchall_59
    move-exception v2

    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_10 .. :try_end_5b} :catchall_59

    throw v2
.end method

.method getExitInfo(Ljava/lang/String;IIILjava/util/ArrayList;)V
    .registers 14
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "filterUid"    # I
    .param p3, "filterPid"    # I
    .param p4, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/ArrayList<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)V"
        }
    .end annotation

    .line 514
    .local p5, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 516
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_53

    .line 517
    :try_start_7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 518
    .local v3, "emptyPackageName":Z
    if-nez v3, :cond_1b

    .line 520
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v4, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 521
    .local v4, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v4, :cond_1a

    .line 522
    invoke-virtual {v4, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 524
    .end local v4    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_1a
    goto :goto_4a

    .line 526
    :cond_1b
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList2:Ljava/util/ArrayList;

    .line 527
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 529
    new-instance v5, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;

    invoke-direct {v5, p0, p2, v4, p3}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$eDSFQ6mRzgNt-3VDBtVv4kawCFk;-><init>(Lcom/android/server/am/AppExitInfoTracker;ILjava/util/ArrayList;I)V

    invoke-direct {p0, v5}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 538
    sget-object v5, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$DgW09rn1xYgswF2bIX-IptVkNqg;

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 540
    .local v5, "size":I
    if-lez p4, :cond_38

    .line 541
    invoke-static {v5, p4}, Ljava/lang/Math;->min(II)I

    move-result v6

    move v5, v6

    .line 543
    :cond_38
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    if-ge v6, v5, :cond_47

    .line 544
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ApplicationExitInfo;

    invoke-virtual {p5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 546
    .end local v6    # "i":I
    :cond_47
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 548
    .end local v3    # "emptyPackageName":Z
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    .end local v5    # "size":I
    :goto_4a
    monitor-exit v2
    :try_end_4b
    .catchall {:try_start_7 .. :try_end_4b} :catchall_50

    .line 550
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    nop

    .line 552
    return-void

    .line 548
    :catchall_50
    move-exception v3

    :try_start_51
    monitor-exit v2
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .end local p1    # "packageName":Ljava/lang/String;
    .end local p2    # "filterUid":I
    .end local p3    # "filterPid":I
    .end local p4    # "maxNum":I
    .end local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :try_start_52
    throw v3
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_53

    .line 550
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .restart local p1    # "packageName":Ljava/lang/String;
    .restart local p2    # "filterUid":I
    .restart local p3    # "filterPid":I
    .restart local p4    # "maxNum":I
    .restart local p5    # "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ApplicationExitInfo;>;"
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    throw v2
.end method

.method getProcessStateSummary(II)[B
    .registers 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .line 985
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 986
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 987
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_10

    .line 988
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 990
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    .line 991
    .local v2, "index":I
    if-gez v2, :cond_1b

    .line 992
    const/4 v3, 0x0

    monitor-exit v0

    return-object v3

    .line 994
    :cond_1b
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    monitor-exit v0

    return-object v3

    .line 995
    .end local v1    # "k":Ljava/lang/Integer;
    .end local v2    # "index":I
    :catchall_2b
    move-exception v1

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method handleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 28
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1014
    move-object/from16 v1, p0

    move/from16 v8, p1

    move-object/from16 v9, p3

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e7

    invoke-static/range {p3 .. p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    move/from16 v2, p2

    goto/16 :goto_e9

    .line 1017
    :cond_16
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v10

    .line 1018
    .local v10, "size":J
    sub-long v12, p7, p5

    .line 1019
    .local v12, "length":J
    cmp-long v0, p5, v10

    if-gez v0, :cond_e4

    cmp-long v0, p7, v10

    if-gtz v0, :cond_e4

    const-wide/16 v2, 0x0

    cmp-long v0, v12, v2

    if-gtz v0, :cond_2e

    move/from16 v2, p2

    goto/16 :goto_e6

    .line 1023
    :cond_2e
    new-instance v0, Ljava/io/File;

    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".gz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v14, v0

    .line 1026
    .local v14, "outFile":Ljava/io/File;
    move-object/from16 v2, p4

    move-object v3, v14

    move-wide/from16 v4, p5

    move-wide v6, v12

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->copyToGzFile(Ljava/io/File;Ljava/io/File;JJ)Z

    move-result v0

    if-eqz v0, :cond_e1

    .line 1028
    iget-object v15, v1, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 1029
    :try_start_5a
    iget-object v0, v1, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_d9

    move/from16 v2, p2

    :try_start_5e
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1030
    .local v0, "k":Ljava/lang/Integer;
    if-eqz v0, :cond_6b

    .line 1031
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_68
    .catchall {:try_start_5e .. :try_end_68} :catchall_d7

    move v2, v3

    move v7, v2

    .end local p2    # "uid":I
    .local v2, "uid":I
    goto :goto_6c

    .line 1030
    .end local v2    # "uid":I
    .restart local p2    # "uid":I
    :cond_6b
    move v7, v2

    .line 1033
    .end local p2    # "uid":I
    .local v7, "uid":I
    :goto_6c
    :try_start_6c
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z
    :try_end_6e
    .catchall {:try_start_6c .. :try_end_6e} :catchall_d3

    if-eqz v2, :cond_96

    .line 1034
    :try_start_70
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stored ANR traces of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catchall {:try_start_70 .. :try_end_96} :catchall_df

    .line 1036
    :cond_96
    const/4 v2, 0x1

    .line 1038
    .local v2, "pending":Z
    const/4 v3, 0x0

    move/from16 v16, v2

    .end local v2    # "pending":Z
    .local v3, "i":I
    .local v16, "pending":Z
    :goto_9a
    :try_start_9a
    array-length v2, v9
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_d3

    if-ge v3, v2, :cond_b5

    .line 1039
    :try_start_9d
    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mData:Lcom/android/internal/app/ProcessMap;

    aget-object v4, v9, v3

    invoke-virtual {v2, v4, v7}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 1041
    .local v2, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v2, :cond_b2

    invoke-virtual {v2, v8, v14}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->appendTraceIfNecessaryLocked(ILjava/io/File;)Z

    move-result v4
    :try_end_ad
    .catchall {:try_start_9d .. :try_end_ad} :catchall_df

    if-eqz v4, :cond_b2

    .line 1043
    const/4 v4, 0x0

    move/from16 v16, v4

    .line 1038
    .end local v2    # "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    :cond_b2
    add-int/lit8 v3, v3, 0x1

    goto :goto_9a

    .line 1046
    .end local v3    # "i":I
    :cond_b5
    if-eqz v16, :cond_c9

    .line 1048
    :try_start_b7
    iget-object v2, v1, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppTraces:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    sget-object v17, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;->INSTANCE:Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$IvsxxpH-tYhqZSARqXULzKdbmW4;
    :try_end_bd
    .catchall {:try_start_b7 .. :try_end_bd} :catchall_d3

    move v3, v7

    move/from16 v4, p1

    move-object v5, v14

    move/from16 v18, v7

    .end local v7    # "uid":I
    .local v18, "uid":I
    move-object/from16 v7, v17

    :try_start_c5
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    goto :goto_cb

    .line 1046
    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :cond_c9
    move/from16 v18, v7

    .line 1051
    .end local v0    # "k":Ljava/lang/Integer;
    .end local v7    # "uid":I
    .end local v16    # "pending":Z
    .restart local v18    # "uid":I
    :goto_cb
    monitor-exit v15
    :try_end_cc
    .catchall {:try_start_c5 .. :try_end_cc} :catchall_cf

    move/from16 v2, v18

    goto :goto_e3

    :catchall_cf
    move-exception v0

    move/from16 v7, v18

    goto :goto_dd

    .end local v18    # "uid":I
    .restart local v7    # "uid":I
    :catchall_d3
    move-exception v0

    move/from16 v18, v7

    .end local v7    # "uid":I
    .restart local v18    # "uid":I
    goto :goto_dd

    .end local v18    # "uid":I
    .restart local p2    # "uid":I
    :catchall_d7
    move-exception v0

    goto :goto_dc

    :catchall_d9
    move-exception v0

    move/from16 v2, p2

    :goto_dc
    move v7, v2

    .end local p2    # "uid":I
    .restart local v7    # "uid":I
    :goto_dd
    :try_start_dd
    monitor-exit v15
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_df

    throw v0

    :catchall_df
    move-exception v0

    goto :goto_dd

    .line 1026
    .end local v7    # "uid":I
    .restart local p2    # "uid":I
    :cond_e1
    move/from16 v2, p2

    .line 1053
    .end local p2    # "uid":I
    .local v2, "uid":I
    :goto_e3
    return-void

    .line 1019
    .end local v2    # "uid":I
    .end local v14    # "outFile":Ljava/io/File;
    .restart local p2    # "uid":I
    :cond_e4
    move/from16 v2, p2

    .line 1020
    :goto_e6
    return-void

    .line 1014
    .end local v10    # "size":J
    .end local v12    # "length":J
    :cond_e7
    move/from16 v2, p2

    .line 1015
    :goto_e9
    return-void
.end method

.method handleNoteAppKillLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 5
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 404
    nop

    .line 405
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 404
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 407
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_17

    .line 408
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    goto :goto_37

    .line 411
    :cond_17
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 412
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getSubReason()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 413
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 414
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 415
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 417
    :goto_37
    return-void
.end method

.method handleNoteProcessDiedLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 7
    .param p1, "raw"    # Landroid/app/ApplicationExitInfo;

    .line 369
    if-eqz p1, :cond_8d

    .line 370
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_3d

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update process exit info for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_3d
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPackageUid()I

    move-result v1

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    .line 375
    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/AppExitInfoTracker;->getExitInfoLocked(Ljava/lang/String;II)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 379
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 380
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    .line 379
    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v1

    .line 381
    .local v1, "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    .line 382
    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v3

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    .line 381
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->remove(II)Landroid/util/Pair;

    move-result-object v2

    .line 383
    .local v2, "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {p1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeIsolatedUidLocked(I)I

    .line 385
    if-nez v0, :cond_78

    .line 386
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->addExitInfoLocked(Landroid/app/ApplicationExitInfo;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 389
    :cond_78
    const/4 v3, 0x0

    if-eqz v2, :cond_84

    .line 390
    const/4 v4, 0x3

    .line 391
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 390
    invoke-direct {p0, v0, v3, v4}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_8d

    .line 392
    :cond_84
    if-eqz v1, :cond_8d

    .line 393
    iget-object v4, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v0, v4, v3}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 396
    .end local v0    # "info":Landroid/app/ApplicationExitInfo;
    .end local v1    # "zygote":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    .end local v2    # "lmkd":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Object;>;"
    :cond_8d
    :goto_8d
    return-void
.end method

.method handleZygoteSigChld(III)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "status"    # I

    .line 355
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_2e

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got SIGCHLD from zygote: pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_2e
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppExitInfoTracker;->scheduleChildProcDied(III)V

    .line 360
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;)V
    .registers 6
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 247
    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 248
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "ActivityManager:killHandler"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 250
    .local v0, "thread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 251
    new-instance v1, Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;-><init>(Lcom/android/server/am/AppExitInfoTracker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    .line 253
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "procexitstore"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    .line 254
    invoke-static {v1}, Landroid/os/FileUtils;->createDir(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_47

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-void

    .line 258
    :cond_47
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitStoreDir:Ljava/io/File;

    const-string/jumbo v3, "procexitinfo"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    .line 260
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoHistoryListSize:I

    .line 262
    return-void
.end method

.method public synthetic lambda$dumpHistoryProcessExitInfo$6$AppExitInfoTracker(Ljava/io/PrintWriter;Landroid/icu/text/SimpleDateFormat;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sdf"    # Landroid/icu/text/SimpleDateFormat;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "records"    # Landroid/util/SparseArray;

    .line 803
    const-string v2, "  "

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppExitInfoTracker;->dumpHistoryProcessExitInfoLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;Landroid/icu/text/SimpleDateFormat;)V

    .line 804
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$getExitInfo$3$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 8
    .param p1, "filterUid"    # I
    .param p2, "list"    # Ljava/util/ArrayList;
    .param p3, "filterPid"    # I
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "records"    # Landroid/util/SparseArray;

    .line 530
    invoke-virtual {p5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 531
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    if-eqz v0, :cond_16

    .line 532
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 533
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mTmpInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->toListLocked(Ljava/util/List;I)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 535
    :cond_16
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public synthetic lambda$onSystemReady$0$AppExitInfoTracker()V
    .registers 3

    .line 269
    nop

    .line 270
    const-string/jumbo v0, "sys.lmk.reportkills"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 269
    const-string/jumbo v1, "persist.sys.lmk.reportkills"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0}, Lcom/android/server/am/AppExitInfoTracker;->loadExistingProcessExitInfo()V

    .line 272
    return-void
.end method

.method public synthetic lambda$updateExitInfoIfNecessaryLocked$2$AppExitInfoTracker(ILjava/util/ArrayList;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Landroid/util/SparseArray;)Ljava/lang/Integer;
    .registers 12
    .param p1, "targetUid"    # I
    .param p2, "tlist"    # Ljava/util/ArrayList;
    .param p3, "pid"    # I
    .param p4, "status"    # Ljava/lang/Integer;
    .param p5, "reason"    # Ljava/lang/Integer;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "records"    # Landroid/util/SparseArray;

    .line 486
    invoke-virtual {p7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;

    .line 487
    .local v0, "container":Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;
    const/4 v1, 0x0

    .line 488
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 487
    if-nez v0, :cond_e

    .line 488
    return-object v2

    .line 490
    :cond_e
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 491
    const/4 v3, 0x1

    invoke-virtual {v0, p3, v3, p2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoContainer;->getExitInfoLocked(IILjava/util/ArrayList;)V

    .line 492
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 493
    return-object v2

    .line 495
    :cond_1c
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ApplicationExitInfo;

    .line 496
    .local v1, "info":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1}, Landroid/app/ApplicationExitInfo;->getRealUid()I

    move-result v3

    if-eq v3, p1, :cond_2c

    .line 497
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 498
    return-object v2

    .line 501
    :cond_2c
    invoke-direct {p0, v1, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->updateExistingExitInfoRecordLocked(Landroid/app/ApplicationExitInfo;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 503
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method loadExistingProcessExitInfo()V
    .registers 9

    .line 637
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_13

    .line 638
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_c
    iput-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    .line 640
    monitor-exit v0

    .line 641
    return-void

    .line 640
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v1

    .line 644
    :cond_13
    const/4 v0, 0x0

    .line 646
    .local v0, "fin":Ljava/io/FileInputStream;
    :try_start_14
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v2, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 647
    .local v2, "af":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 648
    new-instance v3, Landroid/util/proto/ProtoInputStream;

    invoke-direct {v3, v0}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    .line 649
    .local v3, "proto":Landroid/util/proto/ProtoInputStream;
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v4

    .line 650
    .local v4, "next":I
    :goto_29
    const/4 v5, -0x1

    if-eq v4, v5, :cond_50

    .line 652
    if-eq v4, v1, :cond_37

    const/4 v5, 0x2

    if-eq v4, v5, :cond_32

    goto :goto_47

    .line 660
    :cond_32
    int-to-long v5, v4

    invoke-direct {p0, v3, v5, v6}, Lcom/android/server/am/AppExitInfoTracker;->loadPackagesFromProto(Landroid/util/proto/ProtoInputStream;J)V

    goto :goto_47

    .line 654
    :cond_37
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_3a} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_3a} :catch_5c
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_14 .. :try_end_3a} :catch_5c
    .catchall {:try_start_14 .. :try_end_3a} :catchall_5a

    .line 655
    const-wide v6, 0x10300000001L

    .line 656
    :try_start_3f
    invoke-virtual {v3, v6, v7}, Landroid/util/proto/ProtoInputStream;->readLong(J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 657
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4d

    .line 658
    nop

    .line 651
    :goto_47
    :try_start_47
    invoke-virtual {v3}, Landroid/util/proto/ProtoInputStream;->nextField()I

    move-result v5
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4b} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_47 .. :try_end_4b} :catch_5c
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_47 .. :try_end_4b} :catch_5c
    .catchall {:try_start_47 .. :try_end_4b} :catchall_5a

    move v4, v5

    goto :goto_29

    .line 657
    :catchall_4d
    move-exception v6

    :try_start_4e
    monitor-exit v5
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    .end local v0    # "fin":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_4f
    throw v6
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_50} :catch_5c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_50} :catch_5c
    .catch Landroid/util/proto/WireTypeMismatchException; {:try_start_4f .. :try_end_50} :catch_5c
    .catchall {:try_start_4f .. :try_end_50} :catchall_5a

    .line 667
    .end local v2    # "af":Landroid/util/AtomicFile;
    .end local v3    # "proto":Landroid/util/proto/ProtoInputStream;
    .end local v4    # "next":I
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :cond_50
    if-eqz v0, :cond_58

    .line 669
    :try_start_52
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    .line 671
    :goto_55
    goto :goto_58

    .line 670
    :catch_56
    move-exception v2

    goto :goto_55

    .line 674
    :cond_58
    :goto_58
    move-object v2, v0

    goto :goto_7c

    .line 667
    :catchall_5a
    move-exception v1

    goto :goto_89

    .line 664
    :catch_5c
    move-exception v2

    .line 665
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5d
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in loading historical app exit info from persistent storage: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_5d .. :try_end_73} :catchall_5a

    .line 667
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_58

    .line 669
    :try_start_76
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_79} :catch_7a

    goto :goto_55

    .line 670
    :catch_7a
    move-exception v2

    goto :goto_55

    .line 674
    .end local v0    # "fin":Ljava/io/FileInputStream;
    .local v2, "fin":Ljava/io/FileInputStream;
    :goto_7c
    iget-object v3, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 675
    :try_start_7f
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->pruneAnrTracesIfNecessaryLocked()V

    .line 676
    iput-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    .line 677
    monitor-exit v3

    .line 678
    return-void

    .line 677
    :catchall_86
    move-exception v0

    monitor-exit v3
    :try_end_88
    .catchall {:try_start_7f .. :try_end_88} :catchall_86

    throw v0

    .line 667
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v0    # "fin":Ljava/io/FileInputStream;
    :goto_89
    if-eqz v0, :cond_90

    .line 669
    :try_start_8b
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    .line 671
    goto :goto_90

    .line 670
    :catch_8f
    move-exception v2

    .line 673
    :cond_90
    :goto_90
    throw v1
.end method

.method obtainRawRecordLocked(Lcom/android/server/am/ProcessRecord;)Landroid/app/ApplicationExitInfo;
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 935
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ApplicationExitInfo;

    .line 936
    .local v0, "info":Landroid/app/ApplicationExitInfo;
    if-nez v0, :cond_10

    .line 937
    new-instance v1, Landroid/app/ApplicationExitInfo;

    invoke-direct {v1}, Landroid/app/ApplicationExitInfo;-><init>()V

    move-object v0, v1

    .line 940
    :cond_10
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_1c

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->hostingRecord:Lcom/android/server/am/HostingRecord;

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    goto :goto_1d

    :cond_1c
    move v1, v2

    .line 941
    .local v1, "definingUid":I
    :goto_1d
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPid(I)V

    .line 942
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setRealUid(I)V

    .line 943
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageUid(I)V

    .line 944
    if-lez v1, :cond_32

    move v3, v1

    goto :goto_36

    :cond_32
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_36
    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setDefiningUid(I)V

    .line 945
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 946
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->connectionGroup:I

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setConnectionGroup(I)V

    .line 947
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageName(Ljava/lang/String;)V

    .line 948
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 949
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 950
    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setStatus(I)V

    .line 951
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-static {v2}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ApplicationExitInfo;->setImportance(I)V

    .line 952
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setPss(J)V

    .line 953
    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->mLastRss:J

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setRss(J)V

    .line 954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/app/ApplicationExitInfo;->setTimestamp(J)V

    .line 956
    return-object v0
.end method

.method onPackageRemoved(Ljava/lang/String;IZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "allUsers"    # Z

    .line 583
    if-eqz p1, :cond_39

    .line 584
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 585
    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManagerInternal;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 584
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 586
    .local v0, "removeUid":Z
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 587
    if-eqz v0, :cond_25

    .line 588
    :try_start_13
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 589
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUidLocked(IZ)V

    .line 590
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v2, p2, p3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeAppUid(IZ)V

    goto :goto_25

    .line 595
    :catchall_23
    move-exception v2

    goto :goto_37

    .line 592
    :cond_25
    :goto_25
    nop

    .line 593
    if-eqz p3, :cond_2a

    const/4 v2, -0x1

    goto :goto_2e

    :cond_2a
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 592
    :goto_2e
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/server/am/AppExitInfoTracker;->removePackageLocked(Ljava/lang/String;IZI)V

    .line 594
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 595
    monitor-exit v1

    goto :goto_39

    :goto_37
    monitor-exit v1
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_23

    throw v2

    .line 597
    .end local v0    # "removeUid":Z
    :cond_39
    :goto_39
    return-void
.end method

.method onSystemReady()V
    .registers 3

    .line 265
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForUserRemoval()V

    .line 266
    invoke-direct {p0}, Lcom/android/server/am/AppExitInfoTracker;->registerForPackageRemoval()V

    .line 267
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$Yc6vluAEWPBi2TSflPrFu351ztU;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    return-void
.end method

.method onUserRemoved(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 572
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceZygote:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 573
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->removeByUserId(I)V

    .line 574
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->removeByUserId(I)V

    .line 575
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_12
    invoke-direct {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->removeByUserIdLocked(I)V

    .line 577
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/AppExitInfoTracker;->schedulePersistProcessExitInfo(Z)V

    .line 578
    monitor-exit v0

    .line 579
    return-void

    .line 578
    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    throw v1
.end method

.method persistProcessExitInfo()V
    .registers 8

    .line 709
    new-instance v0, Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mProcExitInfoFile:Ljava/io/File;

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 710
    .local v0, "af":Landroid/util/AtomicFile;
    const/4 v1, 0x0

    .line 711
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 713
    .local v2, "now":J
    :try_start_c
    invoke-virtual {v0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v1, v4

    .line 714
    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 715
    .local v4, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v5, 0x10300000001L

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 716
    iget-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_21} :catch_36

    .line 717
    :try_start_21
    new-instance v6, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;

    invoke-direct {v6, v4}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$M7pmR3pU58DetrzQsI3M2-go5XU;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-direct {p0, v6}, Lcom/android/server/am/AppExitInfoTracker;->forEachPackageLocked(Ljava/util/function/BiFunction;)V

    .line 727
    iput-wide v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mLastAppExitInfoPersistTimestamp:J

    .line 728
    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_33

    .line 729
    :try_start_2c
    invoke-virtual {v4}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 730
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_32} :catch_36

    .line 734
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    goto :goto_50

    .line 728
    .restart local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    :catchall_33
    move-exception v6

    :try_start_34
    monitor-exit v5
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    .end local v0    # "af":Landroid/util/AtomicFile;
    .end local v1    # "out":Ljava/io/FileOutputStream;
    .end local v2    # "now":J
    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :try_start_35
    throw v6
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_36} :catch_36

    .line 731
    .end local v4    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v0    # "af":Landroid/util/AtomicFile;
    .restart local v1    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "now":J
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    :catch_36
    move-exception v4

    .line 732
    .local v4, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to write historical app exit info into persistent storage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    invoke-virtual {v0, v1}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 735
    .end local v4    # "e":Ljava/io/IOException;
    :goto_50
    iget-object v4, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 736
    const/4 v5, 0x0

    :try_start_54
    iput-object v5, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 737
    monitor-exit v4

    .line 738
    return-void

    .line 737
    :catchall_58
    move-exception v5

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_54 .. :try_end_5a} :catchall_58

    throw v5
.end method

.method recycleRawRecordLocked(Landroid/app/ApplicationExitInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/app/ApplicationExitInfo;

    .line 962
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setProcessName(Ljava/lang/String;)V

    .line 963
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p1, v0}, Landroid/app/ApplicationExitInfo;->setPackageList([Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mRawRecordsPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 967
    return-void
.end method

.method scheduleLogAnrTrace(II[Ljava/lang/String;Ljava/io/File;JJ)V
    .registers 18
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "packageList"    # [Ljava/lang/String;
    .param p4, "traceFile"    # Ljava/io/File;
    .param p5, "startOff"    # J
    .param p7, "endOff"    # J

    .line 1003
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    new-instance v2, Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;

    invoke-direct {v2, p0}, Lcom/android/server/am/-$$Lambda$VSkN0NYXfJkOHZPqzFU-0f4s4R4;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    .line 1004
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1005
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p7 .. p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 1003
    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1006
    return-void
.end method

.method scheduleNoteAppKill(IIIILjava/lang/String;)V
    .registers 11
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "reason"    # I
    .param p4, "subReason"    # I
    .param p5, "msg"    # Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v1, :cond_9

    .line 311
    monitor-exit v0

    return-void

    .line 314
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_49

    .line 315
    :try_start_e
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 316
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_46

    .line 317
    if-nez v2, :cond_41

    .line 318
    :try_start_19
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_44

    .line 319
    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping saving the kill reason for pid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "(uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") since its process record is not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_44

    .line 323
    :cond_41
    invoke-virtual {p0, v2, p3, p4, p5}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 325
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_44
    :goto_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_19 .. :try_end_45} :catchall_49

    .line 326
    return-void

    .line 316
    :catchall_46
    move-exception v2

    :try_start_47
    monitor-exit v1
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    .end local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .end local p1    # "pid":I
    .end local p2    # "uid":I
    .end local p3    # "reason":I
    .end local p4    # "subReason":I
    .end local p5    # "msg":Ljava/lang/String;
    :try_start_48
    throw v2

    .line 325
    .restart local p0    # "this":Lcom/android/server/am/AppExitInfoTracker;
    .restart local p1    # "pid":I
    .restart local p2    # "uid":I
    .restart local p3    # "reason":I
    .restart local p4    # "subReason":I
    .restart local p5    # "msg":Ljava/lang/String;
    :catchall_49
    move-exception v1

    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_49

    throw v1
.end method

.method scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 9
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"    # I
    .param p3, "subReason"    # I
    .param p4, "msg"    # Ljava/lang/String;

    .line 291
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 292
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v1, :cond_9

    .line 293
    monitor-exit v0

    return-void

    .line 295
    :cond_9
    if-eqz p1, :cond_2a

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_10

    goto :goto_2a

    .line 299
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecordLocked(Lcom/android/server/am/ProcessRecord;)Landroid/app/ApplicationExitInfo;

    move-result-object v1

    .line 300
    .local v1, "raw":Landroid/app/ApplicationExitInfo;
    invoke-virtual {v1, p2}, Landroid/app/ApplicationExitInfo;->setReason(I)V

    .line 301
    invoke-virtual {v1, p3}, Landroid/app/ApplicationExitInfo;->setSubReason(I)V

    .line 302
    invoke-virtual {v1, p4}, Landroid/app/ApplicationExitInfo;->setDescription(Ljava/lang/String;)V

    .line 303
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v3, 0x1008

    invoke-virtual {v2, v3, v1}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 304
    .end local v1    # "raw":Landroid/app/ApplicationExitInfo;
    monitor-exit v0

    .line 305
    return-void

    .line 296
    :cond_2a
    :goto_2a
    monitor-exit v0

    return-void

    .line 304
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v1
.end method

.method scheduleNoteLmkdProcKilled(II)V
    .registers 5
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 344
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 346
    return-void
.end method

.method scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .line 276
    if-eqz p1, :cond_24

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_7

    goto :goto_24

    .line 280
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 281
    :try_start_a
    iget-boolean v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoLoaded:Z

    if-nez v1, :cond_10

    .line 282
    monitor-exit v0

    return-void

    .line 284
    :cond_10
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mKillHandler:Lcom/android/server/am/AppExitInfoTracker$KillHandler;

    const/16 v2, 0x1007

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppExitInfoTracker;->obtainRawRecordLocked(Lcom/android/server/am/ProcessRecord;)Landroid/app/ApplicationExitInfo;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppExitInfoTracker$KillHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 286
    monitor-exit v0

    .line 287
    return-void

    .line 286
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_21

    throw v1

    .line 277
    :cond_24
    :goto_24
    return-void
.end method

.method schedulePersistProcessExitInfo(Z)V
    .registers 7
    .param p1, "immediately"    # Z

    .line 745
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 746
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_9

    if-eqz p1, :cond_2d

    .line 747
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    if-eqz v1, :cond_16

    .line 748
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 750
    :cond_16
    new-instance v1, Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;

    invoke-direct {v1, p0}, Lcom/android/server/am/-$$Lambda$nvO8eEA3_tju6oGhhJ2BoQfYghg;-><init>(Lcom/android/server/am/AppExitInfoTracker;)V

    iput-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 751
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoPersistTask:Ljava/lang/Runnable;

    .line 752
    if-eqz p1, :cond_28

    const-wide/16 v3, 0x0

    goto :goto_2a

    :cond_28
    sget-wide v3, Lcom/android/server/am/AppExitInfoTracker;->APP_EXIT_INFO_PERSIST_INTERVAL:J

    .line 751
    :goto_2a
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 754
    :cond_2d
    monitor-exit v0

    .line 755
    return-void

    .line 754
    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_2f

    throw v1
.end method

.method setLmkdKillListener(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;

    .line 336
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 337
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mAppExitInfoSourceLmkd:Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;

    new-instance v2, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;

    invoke-direct {v2, p1}, Lcom/android/server/am/-$$Lambda$AppExitInfoTracker$LrV5fgRdrB2bonNSZZAbUAXpryI;-><init>(Lcom/android/server/am/AppExitInfoTracker$LmkdKillListener;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppExitInfoTracker$AppExitInfoExternalSource;->setOnProcDiedListener(Ljava/util/function/BiConsumer;)V

    .line 339
    monitor-exit v0

    .line 340
    return-void

    .line 339
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1
.end method

.method setProcessStateSummary(II[B)V
    .registers 12
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "data"    # [B

    .line 974
    iget-object v0, p0, Lcom/android/server/am/AppExitInfoTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 975
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->getUidByIsolatedUid(I)Ljava/lang/Integer;

    move-result-object v1

    .line 976
    .local v1, "k":Ljava/lang/Integer;
    if-eqz v1, :cond_10

    .line 977
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move p1, v2

    .line 979
    :cond_10
    iget-object v2, p0, Lcom/android/server/am/AppExitInfoTracker;->mActiveAppStateSummary:Landroid/util/SparseArray;

    sget-object v6, Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;->INSTANCE:Lcom/android/server/am/-$$Lambda$WVd6ghNMbVDukmkxia3ZwNeZzEY;

    const/4 v7, 0x0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->putToSparse2dArray(Landroid/util/SparseArray;IILjava/lang/Object;Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 980
    .end local v1    # "k":Ljava/lang/Integer;
    monitor-exit v0

    .line 981
    return-void

    .line 980
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v1
.end method
