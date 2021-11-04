.class public final Lcom/android/server/DropBoxManagerService;
.super Lcom/android/server/SystemService;
.source "DropBoxManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DropBoxManagerService$EntryFile;,
        Lcom/android/server/DropBoxManagerService$FileList;,
        Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;,
        Lcom/android/server/DropBoxManagerService$ShellCmd;
    }
.end annotation


# static fields
.field private static final DEFAULT_AGE_SECONDS:I = 0x13c680

.field private static final DEFAULT_MAX_FILES:I = 0x3e8

.field private static final DEFAULT_MAX_FILES_LOWRAM:I = 0x12c

.field private static final DEFAULT_QUOTA_KB:I = 0x1400

.field private static final DEFAULT_QUOTA_PERCENT:I = 0xa

.field private static final DEFAULT_RESERVE_PERCENT:I = 0xa

.field private static final PROFILE_DUMP:Z = false

.field private static final PROTO_MAX_DATA_BYTES:I = 0x40000

.field private static final QUOTA_RESCAN_MILLIS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "DropBoxManagerService"


# instance fields
.field private mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

.field private mBlockSize:I

.field private volatile mBooted:Z

.field private mCachedQuotaBlocks:I

.field private mCachedQuotaUptimeMillis:J

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mDropBoxDir:Ljava/io/File;

.field private mFilesByTag:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/DropBoxManagerService$FileList;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

.field private mLowPriorityRateLimitPeriod:J

.field private mLowPriorityTags:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxFiles:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatFs:Landroid/os/StatFs;

.field private final mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 312
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/dropbox"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/io/File;Landroid/os/Looper;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "path"    # Ljava/io/File;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 324
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 107
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 109
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 110
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 114
    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 115
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 116
    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 117
    iput-wide v1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    .line 119
    iput-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 127
    new-instance v0, Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$1;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 149
    new-instance v0, Lcom/android/server/DropBoxManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DropBoxManagerService$2;-><init>(Lcom/android/server/DropBoxManagerService;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    .line 325
    iput-object p2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    .line 326
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    .line 327
    new-instance v0, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    .line 328
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/DropBoxManagerService;J)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 80
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/DropBoxManagerService;)Landroid/content/BroadcastReceiver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 80
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/server/DropBoxManagerService;J)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # J

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/android/server/DropBoxManagerService;->setLowPriorityRateLimit(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->addLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/DropBoxManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0, p1}, Lcom/android/server/DropBoxManagerService;->removeLowPriorityTag(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/DropBoxManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 80
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->restoreDefaults()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/DropBoxManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 80
    iget-boolean v0, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/DropBoxManagerService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/DropBoxManagerService;

    .line 80
    iget-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    return-wide v0
.end method

.method private declared-synchronized addLowPriorityTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 539
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 540
    monitor-exit p0

    return-void

    .line 538
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private checkPermission(ILjava/lang/String;)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "callingPackage"    # Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.PEEK_DROPBOX_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_e

    .line 479
    return v1

    .line 483
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.READ_LOGS"

    const-string v3, "DropBoxManagerService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    .line 488
    invoke-virtual {v0, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v2, 0x3

    if-eq v0, v2, :cond_32

    .line 496
    const/4 v0, 0x0

    return v0

    .line 492
    :cond_32
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    return v1

    .line 490
    :cond_3c
    return v1
.end method

.method private declared-synchronized createEntry(Ljava/io/File;Ljava/lang/String;I)J
    .registers 32
    .param p1, "temp"    # Ljava/io/File;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1019
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1025
    .local v2, "t":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v5, 0x2710

    add-long/2addr v5, v2

    invoke-direct {v4, v5, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 1026
    .local v0, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    const/4 v4, 0x0

    .line 1027
    .local v4, "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2e

    .line 1028
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v5

    new-array v5, v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    invoke-interface {v0, v5}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v4, v5

    .line 1029
    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 1032
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2e
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v5

    const-wide/16 v6, 0x1

    if-nez v5, :cond_4c

    .line 1033
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-wide v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    add-long/2addr v8, v6

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 1036
    :cond_4c
    if-eqz v4, :cond_c1

    .line 1037
    array-length v5, v4

    const/4 v8, 0x0

    move-wide v13, v2

    .end local v2    # "t":J
    .local v13, "t":J
    :goto_51
    if-ge v8, v5, :cond_bd

    aget-object v2, v4, v8

    .line 1038
    .local v2, "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1039
    iget-object v3, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1040
    .local v3, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v3, :cond_79

    iget-object v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v9, v2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 1041
    iget v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v9, v10

    iput v9, v3, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1043
    :cond_79
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v9, v9, 0x1

    if-nez v9, :cond_a4

    .line 1044
    new-instance v15, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v9, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v9}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v10

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    add-long v17, v13, v6

    .end local v13    # "t":J
    .local v17, "t":J
    iget v9, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move v7, v9

    move-object v9, v15

    move-object/from16 v19, v0

    move-object v0, v15

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v19, "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move v15, v7

    move/from16 v16, v6

    invoke-direct/range {v9 .. v16}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide/from16 v13, v17

    const-wide/16 v9, 0x1

    goto :goto_b7

    .line 1047
    .end local v17    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v13    # "t":J
    :cond_a4
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v7, v2, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    const-wide/16 v9, 0x1

    add-long v11, v13, v9

    .end local v13    # "t":J
    .local v11, "t":J
    invoke-direct {v0, v6, v7, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    move-wide v13, v11

    .line 1037
    .end local v2    # "late":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v3    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    .end local v11    # "t":J
    .restart local v13    # "t":J
    :goto_b7
    add-int/lit8 v8, v8, 0x1

    move-wide v6, v9

    move-object/from16 v0, v19

    goto :goto_51

    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :cond_bd
    move-object/from16 v19, v0

    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    move-wide v2, v13

    goto :goto_c3

    .line 1036
    .end local v13    # "t":J
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .local v2, "t":J
    :cond_c1
    move-object/from16 v19, v0

    .line 1052
    .end local v0    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .restart local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    :goto_c3
    if-nez p1, :cond_d2

    .line 1053
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    move-object/from16 v6, p2

    invoke-direct {v0, v5, v6, v2, v3}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    goto :goto_ee

    .line 1055
    :cond_d2
    move-object/from16 v6, p2

    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    move-object/from16 v20, v0

    move-object/from16 v21, p1

    move-object/from16 v22, v5

    move-object/from16 v23, p2

    move-wide/from16 v24, v2

    move/from16 v26, p3

    move/from16 v27, v7

    invoke-direct/range {v20 .. v27}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/lang/String;JII)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_ee
    .catchall {:try_start_3 .. :try_end_ee} :catchall_f0

    .line 1057
    :goto_ee
    monitor-exit p0

    return-wide v2

    .line 1018
    .end local v2    # "t":J
    .end local v4    # "future":[Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v19    # "tail":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lcom/android/server/DropBoxManagerService$EntryFile;>;"
    .end local p1    # "temp":Ljava/io/File;
    .end local p2    # "tag":Ljava/lang/String;
    .end local p3    # "flags":I
    :catchall_f0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    .registers 19
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 714
    .local p2, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v1, p0

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v3, v0

    .line 716
    .local v3, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 717
    .local v5, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    move-object/from16 v6, p2

    invoke-direct {v1, v5, v6}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_12

    .line 719
    :cond_28
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v5, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v13

    .line 720
    .local v13, "file":Ljava/io/File;
    if-eqz v13, :cond_c2

    iget v0, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_37

    .line 721
    goto :goto_12

    .line 724
    :cond_37
    const-wide v7, 0x20b00000001L

    invoke-virtual {v3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 725
    .local v14, "bToken":J
    const-wide v7, 0x10300000001L

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-virtual {v3, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 727
    :try_start_4a
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v8, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v9, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v12, v5, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v7, v0

    move-object v11, v13

    invoke-direct/range {v7 .. v12}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_57} :catch_a4

    move-object v7, v0

    .line 729
    .local v7, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_58
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_98

    move-object v8, v0

    .line 731
    .local v8, "is":Ljava/io/InputStream;
    if-eqz v8, :cond_8f

    .line 732
    const/high16 v0, 0x40000

    :try_start_61
    new-array v9, v0, [B

    .line 733
    .local v9, "buf":[B
    const/4 v10, 0x0

    .line 734
    .local v10, "readBytes":I
    const/4 v11, 0x0

    .line 735
    .local v11, "n":I
    :goto_65
    if-ltz v11, :cond_74

    add-int v12, v10, v11

    move v10, v12

    if-ge v12, v0, :cond_74

    .line 736
    sub-int v12, v0, v10

    invoke-virtual {v8, v9, v10, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    move v11, v12

    goto :goto_65

    .line 738
    :cond_74
    const-wide v0, 0x10c00000002L

    .line 739
    invoke-static {v9, v10}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v12

    .line 738
    invoke-virtual {v3, v0, v1, v12}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V
    :try_end_80
    .catchall {:try_start_61 .. :try_end_80} :catchall_81

    goto :goto_8f

    .line 726
    .end local v9    # "buf":[B
    .end local v10    # "readBytes":I
    .end local v11    # "n":I
    :catchall_81
    move-exception v0

    move-object v1, v0

    if-eqz v8, :cond_8e

    :try_start_85
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8e

    :catchall_89
    move-exception v0

    move-object v9, v0

    :try_start_8b
    invoke-virtual {v1, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8e
    :goto_8e
    throw v1

    .line 741
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "bToken":J
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8f
    :goto_8f
    if-eqz v8, :cond_94

    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_94
    .catchall {:try_start_8b .. :try_end_94} :catchall_98

    .end local v8    # "is":Ljava/io/InputStream;
    :cond_94
    :try_start_94
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_a4

    .line 743
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    goto :goto_bb

    .line 726
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_98
    move-exception v0

    move-object v1, v0

    :try_start_9a
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_9e

    goto :goto_a3

    :catchall_9e
    move-exception v0

    move-object v8, v0

    :try_start_a0
    invoke-virtual {v1, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_a3
    throw v1
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a0 .. :try_end_a4} :catch_a4

    .line 741
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v3    # "proto":Landroid/util/proto/ProtoOutputStream;
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "file":Ljava/io/File;
    .restart local v14    # "bToken":J
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "fd":Ljava/io/FileDescriptor;
    .restart local p2    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_a4
    move-exception v0

    .line 742
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t read: "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v7, "DropBoxManagerService"

    invoke-static {v7, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 745
    .end local v0    # "e":Ljava/io/IOException;
    :goto_bb
    invoke-virtual {v3, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 746
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    .end local v14    # "bToken":J
    move-object/from16 v1, p0

    goto/16 :goto_12

    .line 720
    .restart local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .restart local v13    # "file":Ljava/io/File;
    :cond_c2
    move-object/from16 v1, p0

    goto/16 :goto_12

    .line 748
    .end local v5    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "file":Ljava/io/File;
    :cond_c6
    move-object/from16 v6, p2

    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 749
    return-void
.end method

.method private declared-synchronized enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    .registers 5
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;

    monitor-enter p0

    .line 1000
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1001
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1006
    invoke-virtual {p1}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v0

    if-eqz v0, :cond_45

    iget v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    if-lez v0, :cond_45

    .line 1007
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v1, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1008
    .local v0, "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v0, :cond_39

    .line 1009
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    move-object v0, v1

    .line 1010
    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->safeIntern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1012
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_39
    iget-object v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v1, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1013
    iget v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 1015
    .end local v0    # "tagFiles":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_45
    monitor-exit p0

    return-void

    .line 999
    .end local p1    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getLowPriorityResourceConfigs()V
    .registers 6

    .line 1165
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0073

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    .line 1168
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107009f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, "lowPrioritytags":[Ljava/lang/String;
    array-length v1, v0

    .line 1171
    .local v1, "size":I
    if-nez v1, :cond_20

    .line 1172
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1173
    return-void

    .line 1175
    :cond_20
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    .line 1176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_34

    .line 1177
    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1176
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 1179
    .end local v2    # "i":I
    :cond_34
    return-void
.end method

.method private declared-synchronized init()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 960
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    if-nez v0, :cond_5d

    .line 961
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_2f

    .line 962
    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t mkdir: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_d2

    .line 965
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_2f
    :goto_2f
    :try_start_2f
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    .line 966
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_42
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f .. :try_end_42} :catch_43
    .catchall {:try_start_2f .. :try_end_42} :catchall_d2

    .line 969
    goto :goto_5d

    .line 967
    :catch_43
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_44
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t statfs: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 972
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_5d
    :goto_5d
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    if-nez v0, :cond_d0

    .line 973
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 974
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_b7

    .line 976
    new-instance v1, Lcom/android/server/DropBoxManagerService$FileList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/DropBoxManagerService$FileList;-><init>(Lcom/android/server/DropBoxManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    .line 977
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    .line 980
    array-length v1, v0

    const/4 v2, 0x0

    :goto_7a
    if-ge v2, v1, :cond_d0

    aget-object v3, v0, v2

    .line 981
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 982
    const-string v4, "DropBoxManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cleaning temp file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 984
    goto :goto_b4

    .line 987
    :cond_a4
    new-instance v4, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget v5, p0, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    invoke-direct {v4, v3, v5}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;I)V

    .line 989
    .local v4, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-virtual {v4}, Lcom/android/server/DropBoxManagerService$EntryFile;->hasFile()Z

    move-result v5

    if-eqz v5, :cond_b4

    .line 992
    invoke-direct {p0, v4}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V

    .line 980
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :cond_b4
    :goto_b4
    add-int/lit8 v2, v2, 0x1

    goto :goto_7a

    .line 974
    :cond_b7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t list files: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_d0
    .catchall {:try_start_44 .. :try_end_d0} :catchall_d2

    .line 996
    .end local v0    # "files":[Ljava/io/File;
    :cond_d0
    monitor-exit p0

    return-void

    .line 959
    :catchall_d2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z
    .registers 9
    .param p1, "entry"    # Lcom/android/server/DropBoxManagerService$EntryFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/DropBoxManagerService$EntryFile;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 703
    .local p2, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-wide v0, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v0, v1}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "date":Ljava/lang/String;
    const/4 v1, 0x1

    .line 705
    .local v1, "match":Z
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 706
    .local v2, "numArgs":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_c
    if-ge v3, v2, :cond_2c

    if-eqz v1, :cond_2c

    .line 707
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 708
    .local v4, "arg":Ljava/lang/String;
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_27

    iget-object v5, p1, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    goto :goto_27

    :cond_25
    const/4 v5, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v5, 0x1

    :goto_28
    move v1, v5

    .line 706
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 710
    .end local v3    # "i":I
    :cond_2c
    return v1
.end method

.method private declared-synchronized removeLowPriorityTag(Ljava/lang/String;)V
    .registers 3
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 543
    :try_start_1
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 544
    monitor-exit p0

    return-void

    .line 542
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized restoreDefaults()V
    .registers 2

    monitor-enter p0

    .line 547
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 548
    monitor-exit p0

    return-void

    .line 546
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLowPriorityRateLimit(J)V
    .registers 3
    .param p1, "period"    # J

    monitor-enter p0

    .line 535
    :try_start_1
    iput-wide p1, p0, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 536
    monitor-exit p0

    return-void

    .line 534
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "period":J
    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized trimToFit()J
    .registers 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    monitor-enter p0

    .line 1067
    :try_start_3
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "dropbox_age_seconds"

    const v3, 0x13c680

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v2, v0

    .line 1069
    .local v2, "ageSeconds":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "dropbox_max_files"

    .line 1071
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 1072
    const/16 v4, 0x12c

    goto :goto_1e

    :cond_1c
    const/16 v4, 0x3e8

    .line 1069
    :goto_1e
    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    .line 1073
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit16 v0, v2, 0x3e8

    int-to-long v5, v0

    sub-long/2addr v3, v5

    .line 1074
    .local v3, "cutoffMillis":J
    :goto_2c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_87

    .line 1075
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 1076
    .local v0, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-wide v5, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    cmp-long v5, v5, v3

    if-lez v5, :cond_53

    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v5, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    iget v6, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    if-ge v5, v6, :cond_53

    .line 1077
    goto :goto_87

    .line 1080
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_53
    iget-object v5, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    iget-object v6, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1081
    .local v5, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-eqz v5, :cond_6e

    iget-object v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6e

    iget v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v7, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1082
    :cond_6e
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v6, v6, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v6, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v8, v0, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1083
    :cond_81
    iget-object v6, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0, v6}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1084
    .end local v0    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v5    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    goto :goto_2c

    .line 1091
    :cond_87
    :goto_87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 1092
    .local v5, "uptimeMillis":J
    iget-wide v7, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    const-wide/16 v9, 0x1388

    add-long/2addr v7, v9

    cmp-long v0, v5, v7

    if-lez v0, :cond_11c

    .line 1093
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v7, "dropbox_quota_percent"

    const/16 v8, 0xa

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 1095
    .local v7, "quotaPercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_reserve_percent"

    invoke-static {v0, v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 1097
    .local v8, "reservePercent":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v9, "dropbox_quota_kb"

    const/16 v10, 0x1400

    invoke-static {v0, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 1100
    .local v9, "quotaKb":I
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0
    :try_end_b9
    .catchall {:try_start_3 .. :try_end_b9} :catchall_1d7

    move-object v10, v0

    .line 1102
    .local v10, "dirPath":Ljava/lang/String;
    :try_start_ba
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0, v10}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ba .. :try_end_bf} :catch_fe
    .catchall {:try_start_ba .. :try_end_bf} :catchall_1d7

    .line 1105
    nop

    .line 1106
    :try_start_c0
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v11

    .line 1107
    .local v11, "available":J
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mStatFs:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v13

    move v15, v2

    move-wide/from16 v16, v3

    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .local v15, "ageSeconds":I
    .local v16, "cutoffMillis":J
    int-to-long v2, v8

    mul-long/2addr v13, v2

    const-wide/16 v2, 0x64

    div-long/2addr v13, v2

    sub-long v13, v11, v13

    .line 1108
    .local v13, "nonreserved":J
    move-object v4, v10

    move-wide/from16 v18, v11

    .end local v10    # "dirPath":Ljava/lang/String;
    .end local v11    # "available":J
    .local v4, "dirPath":Ljava/lang/String;
    .local v18, "available":J
    int-to-long v10, v7

    mul-long/2addr v10, v13

    div-long/2addr v10, v2

    move-wide v2, v10

    .line 1109
    .local v2, "maxAvailableLong":J
    const-wide/32 v10, 0x7fffffff

    .line 1110
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 1109
    move-wide/from16 v20, v2

    const-wide/16 v2, 0x0

    .end local v2    # "maxAvailableLong":J
    .local v20, "maxAvailableLong":J
    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toIntExact(J)I

    move-result v0

    .line 1111
    .local v0, "maxAvailable":I
    mul-int/lit16 v2, v9, 0x400

    iget v3, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    div-int/2addr v2, v3

    .line 1112
    .local v2, "maximum":I
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    .line 1113
    iput-wide v5, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaUptimeMillis:J

    goto :goto_11f

    .line 1103
    .end local v0    # "maxAvailable":I
    .end local v4    # "dirPath":Ljava/lang/String;
    .end local v13    # "nonreserved":J
    .end local v15    # "ageSeconds":I
    .end local v16    # "cutoffMillis":J
    .end local v18    # "available":J
    .end local v20    # "maxAvailableLong":J
    .local v2, "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    .restart local v10    # "dirPath":Ljava/lang/String;
    :catch_fe
    move-exception v0

    move v15, v2

    move-wide/from16 v16, v3

    move-object v4, v10

    .line 1104
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .end local v10    # "dirPath":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "dirPath":Ljava/lang/String;
    .restart local v15    # "ageSeconds":I
    .restart local v16    # "cutoffMillis":J
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t restat: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1092
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v4    # "dirPath":Ljava/lang/String;
    .end local v7    # "quotaPercent":I
    .end local v8    # "reservePercent":I
    .end local v9    # "quotaKb":I
    .end local v15    # "ageSeconds":I
    .end local v16    # "cutoffMillis":J
    .restart local v2    # "ageSeconds":I
    .restart local v3    # "cutoffMillis":J
    :cond_11c
    move v15, v2

    move-wide/from16 v16, v3

    .line 1130
    .end local v2    # "ageSeconds":I
    .end local v3    # "cutoffMillis":J
    .restart local v15    # "ageSeconds":I
    .restart local v16    # "cutoffMillis":J
    :goto_11f
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-le v0, v2, :cond_1cf

    .line 1132
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .local v0, "unsqueezed":I
    const/4 v2, 0x0

    .line 1133
    .local v2, "squeezed":I
    new-instance v3, Ljava/util/TreeSet;

    iget-object v4, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1134
    .local v3, "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v7, v2

    move v2, v0

    .end local v0    # "unsqueezed":I
    .local v2, "unsqueezed":I
    .local v7, "squeezed":I
    :goto_13d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    .line 1135
    .local v0, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    if-lez v7, :cond_154

    iget v8, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v9, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v9, v2

    div-int/2addr v9, v7

    if-gt v8, v9, :cond_154

    .line 1136
    goto :goto_15b

    .line 1138
    :cond_154
    iget v8, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    sub-int/2addr v2, v8

    .line 1139
    nop

    .end local v0    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    add-int/lit8 v7, v7, 0x1

    .line 1140
    goto :goto_13d

    .line 1141
    :cond_15b
    :goto_15b
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    sub-int/2addr v0, v2

    div-int/2addr v0, v7

    move v4, v0

    .line 1144
    .local v4, "tagQuota":I
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_164
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1cf

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;

    move-object v9, v0

    .line 1145
    .local v9, "tag":Lcom/android/server/DropBoxManagerService$FileList;
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v10, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    if-ge v0, v10, :cond_17a

    goto :goto_1cf

    .line 1146
    :cond_17a
    :goto_17a
    iget v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    if-le v0, v4, :cond_1ce

    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ce

    .line 1147
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v10, v0

    .line 1148
    .local v10, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19e

    iget v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v11, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v0, v11

    iput v0, v9, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    .line 1149
    :cond_19e
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0, v10}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b1

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I

    iget v12, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->blocks:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/server/DropBoxManagerService$FileList;->blocks:I
    :try_end_1b1
    .catchall {:try_start_c0 .. :try_end_1b1} :catchall_1d7

    .line 1152
    :cond_1b1
    :try_start_1b1
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v10, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->deleteFile(Ljava/io/File;)V

    .line 1153
    new-instance v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    iget-object v11, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    iget-object v12, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v13, v10, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(Ljava/io/File;Ljava/lang/String;J)V

    invoke-direct {v1, v0}, Lcom/android/server/DropBoxManagerService;->enrollEntry(Lcom/android/server/DropBoxManagerService$EntryFile;)V
    :try_end_1c4
    .catch Ljava/io/IOException; {:try_start_1b1 .. :try_end_1c4} :catch_1c5
    .catchall {:try_start_1b1 .. :try_end_1c4} :catchall_1d7

    .line 1156
    goto :goto_1cd

    .line 1154
    :catch_1c5
    move-exception v0

    .line 1155
    .local v0, "e":Ljava/io/IOException;
    :try_start_1c6
    const-string v11, "DropBoxManagerService"

    const-string v12, "Can\'t write tombstone file"

    invoke-static {v11, v12, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1157
    .end local v0    # "e":Ljava/io/IOException;
    .end local v10    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    :goto_1cd
    goto :goto_17a

    .line 1158
    .end local v9    # "tag":Lcom/android/server/DropBoxManagerService$FileList;
    :cond_1ce
    goto :goto_164

    .line 1161
    .end local v2    # "unsqueezed":I
    .end local v3    # "tags":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Lcom/android/server/DropBoxManagerService$FileList;>;"
    .end local v4    # "tagQuota":I
    .end local v7    # "squeezed":I
    :cond_1cf
    :goto_1cf
    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mCachedQuotaBlocks:I

    iget v2, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I
    :try_end_1d3
    .catchall {:try_start_1c6 .. :try_end_1d3} :catchall_1d7

    mul-int/2addr v0, v2

    int-to-long v2, v0

    monitor-exit p0

    return-wide v2

    .line 1066
    .end local v5    # "uptimeMillis":J
    .end local v15    # "ageSeconds":I
    .end local v16    # "cutoffMillis":J
    :catchall_1d7
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public add(Landroid/os/DropBoxManager$Entry;)V
    .registers 27
    .param p1, "entry"    # Landroid/os/DropBoxManager$Entry;

    .line 370
    move-object/from16 v1, p0

    const-string v2, "DropBoxManagerService"

    const/4 v3, 0x0

    .line 371
    .local v3, "temp":Ljava/io/File;
    const/4 v4, 0x0

    .line 372
    .local v4, "input":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 373
    .local v5, "output":Ljava/io/OutputStream;
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "tag":Ljava/lang/String;
    :try_start_b
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    .line 376
    .local v0, "flags":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add tag="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isTagEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " flags=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 376
    invoke-static {v2, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    and-int/lit8 v7, v0, 0x1

    if-nez v7, :cond_179

    .line 380
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V

    .line 381
    invoke-virtual {v1, v6}, Lcom/android/server/DropBoxManagerService;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_46} :catch_18d
    .catchall {:try_start_b .. :try_end_46} :catchall_189

    if-nez v7, :cond_57

    .line 456
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 459
    if-eqz v3, :cond_56

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 381
    :cond_56
    return-void

    .line 382
    :cond_57
    :try_start_57
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v7

    .line 383
    .local v7, "max":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 385
    .local v9, "lastTrim":J
    iget v11, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    new-array v11, v11, [B

    .line 386
    .local v11, "buffer":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    move-object v4, v12

    .line 391
    const/4 v12, 0x0

    .line 392
    .local v12, "read":I
    :goto_69
    array-length v13, v11
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_6a} :catch_18d
    .catchall {:try_start_57 .. :try_end_6a} :catchall_189

    if-ge v12, v13, :cond_7a

    .line 393
    :try_start_6c
    array-length v13, v11

    sub-int/2addr v13, v12

    invoke-virtual {v4, v11, v12, v13}, Ljava/io/InputStream;->read([BII)I

    move-result v13
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_72} :catch_77
    .catchall {:try_start_6c .. :try_end_72} :catchall_1b2

    .line 394
    .local v13, "n":I
    if-gtz v13, :cond_75

    goto :goto_7a

    .line 395
    :cond_75
    add-int/2addr v12, v13

    .line 396
    .end local v13    # "n":I
    goto :goto_69

    .line 453
    .end local v0    # "flags":I
    .end local v7    # "max":J
    .end local v9    # "lastTrim":J
    .end local v11    # "buffer":[B
    .end local v12    # "read":I
    :catch_77
    move-exception v0

    goto/16 :goto_190

    .line 401
    .restart local v0    # "flags":I
    .restart local v7    # "max":J
    .restart local v9    # "lastTrim":J
    .restart local v11    # "buffer":[B
    .restart local v12    # "read":I
    :cond_7a
    :goto_7a
    :try_start_7a
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_83} :catch_18d
    .catchall {:try_start_7a .. :try_end_83} :catchall_189

    move-object/from16 v16, v3

    .end local v3    # "temp":Ljava/io/File;
    .local v16, "temp":Ljava/io/File;
    :try_start_85
    const-string v3, "drop"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    move-wide/from16 v17, v7

    .end local v7    # "max":J
    .local v17, "max":J
    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v7

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v14, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_a3} :catch_185
    .catchall {:try_start_85 .. :try_end_a3} :catchall_181

    move-object v3, v13

    .line 402
    .end local v16    # "temp":Ljava/io/File;
    .restart local v3    # "temp":Ljava/io/File;
    :try_start_a4
    iget v7, v1, Lcom/android/server/DropBoxManagerService;->mBlockSize:I

    .line 403
    .local v7, "bufferSize":I
    const/16 v8, 0x1000

    if-le v7, v8, :cond_ac

    const/16 v7, 0x1000

    .line 404
    :cond_ac
    const/16 v8, 0x200

    if-ge v7, v8, :cond_b2

    const/16 v7, 0x200

    .line 405
    :cond_b2
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 406
    .local v8, "foutput":Ljava/io/FileOutputStream;
    new-instance v13, Ljava/io/BufferedOutputStream;

    invoke-direct {v13, v8, v7}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v5, v13

    .line 407
    array-length v13, v11

    if-ne v12, v13, :cond_cc

    and-int/lit8 v13, v0, 0x4

    if-nez v13, :cond_cc

    .line 408
    new-instance v13, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v13, v5}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v5, v13

    .line 409
    or-int/lit8 v0, v0, 0x4

    .line 413
    :cond_cc
    :goto_cc
    const/4 v13, 0x0

    invoke-virtual {v5, v11, v13, v12}, Ljava/io/OutputStream;->write([BII)V

    .line 415
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 416
    .local v13, "now":J
    sub-long v15, v13, v9

    const-wide/16 v19, 0x7530

    cmp-long v15, v15, v19

    if-lez v15, :cond_e7

    .line 417
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->trimToFit()J

    move-result-wide v15

    .line 418
    .end local v17    # "max":J
    .local v15, "max":J
    move-wide v9, v13

    move-wide/from16 v23, v9

    move-wide v9, v15

    move-wide/from16 v15, v23

    goto :goto_ea

    .line 416
    .end local v15    # "max":J
    .restart local v17    # "max":J
    :cond_e7
    move-wide v15, v9

    move-wide/from16 v9, v17

    .line 421
    .end local v17    # "max":J
    .local v9, "max":J
    .local v15, "lastTrim":J
    :goto_ea
    invoke-virtual {v4, v11}, Ljava/io/InputStream;->read([B)I

    move-result v17

    move/from16 v12, v17

    .line 422
    if-gtz v12, :cond_fa

    .line 423
    invoke-static {v8}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 424
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 425
    const/4 v5, 0x0

    goto :goto_fd

    .line 427
    :cond_fa
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 430
    :goto_fd
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v17

    .line 431
    .local v17, "len":J
    cmp-long v19, v17, v9

    if-lez v19, :cond_13d

    .line 432
    move/from16 v19, v7

    .end local v7    # "bufferSize":I
    .local v19, "bufferSize":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v20, v8

    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .local v20, "foutput":Ljava/io/FileOutputStream;
    const-string v8, "Dropping: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v21, v13

    .end local v13    # "now":J
    .local v21, "now":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " bytes)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 435
    const/4 v3, 0x0

    .line 436
    goto :goto_145

    .line 431
    .end local v19    # "bufferSize":I
    .end local v20    # "foutput":Ljava/io/FileOutputStream;
    .end local v21    # "now":J
    .restart local v7    # "bufferSize":I
    .restart local v8    # "foutput":Ljava/io/FileOutputStream;
    .restart local v13    # "now":J
    :cond_13d
    move/from16 v19, v7

    move-object/from16 v20, v8

    move-wide/from16 v21, v13

    .line 438
    .end local v7    # "bufferSize":I
    .end local v8    # "foutput":Ljava/io/FileOutputStream;
    .end local v13    # "now":J
    .end local v17    # "len":J
    .restart local v19    # "bufferSize":I
    .restart local v20    # "foutput":Ljava/io/FileOutputStream;
    if-gtz v12, :cond_170

    .line 440
    :goto_145
    invoke-direct {v1, v3, v6, v0}, Lcom/android/server/DropBoxManagerService;->createEntry(Ljava/io/File;Ljava/lang/String;I)J

    move-result-wide v7

    .line 441
    .local v7, "time":J
    const/4 v3, 0x0

    .line 447
    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    if-eqz v13, :cond_15c

    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v13, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15c

    .line 449
    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v13, v6, v7, v8}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->maybeDeferBroadcast(Ljava/lang/String;J)V

    goto :goto_161

    .line 451
    :cond_15c
    iget-object v13, v1, Lcom/android/server/DropBoxManagerService;->mHandler:Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;

    invoke-virtual {v13, v6, v7, v8}, Lcom/android/server/DropBoxManagerService$DropBoxManagerBroadcastHandler;->sendBroadcast(Ljava/lang/String;J)V
    :try_end_161
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_161} :catch_77
    .catchall {:try_start_a4 .. :try_end_161} :catchall_1b2

    .line 456
    .end local v0    # "flags":I
    .end local v7    # "time":J
    .end local v9    # "max":J
    .end local v11    # "buffer":[B
    .end local v12    # "read":I
    .end local v15    # "lastTrim":J
    .end local v19    # "bufferSize":I
    .end local v20    # "foutput":Ljava/io/FileOutputStream;
    :goto_161
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 459
    if-eqz v3, :cond_1b1

    :goto_16c
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1b1

    .line 438
    .restart local v0    # "flags":I
    .restart local v9    # "max":J
    .restart local v11    # "buffer":[B
    .restart local v12    # "read":I
    .restart local v15    # "lastTrim":J
    .restart local v19    # "bufferSize":I
    .restart local v20    # "foutput":Ljava/io/FileOutputStream;
    :cond_170
    move-wide/from16 v17, v9

    move-wide v9, v15

    move/from16 v7, v19

    move-object/from16 v8, v20

    goto/16 :goto_cc

    .line 378
    .end local v9    # "max":J
    .end local v11    # "buffer":[B
    .end local v12    # "read":I
    .end local v15    # "lastTrim":J
    .end local v19    # "bufferSize":I
    .end local v20    # "foutput":Ljava/io/FileOutputStream;
    :cond_179
    move-object/from16 v16, v3

    .end local v3    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    :try_start_17b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    .end local v4    # "input":Ljava/io/InputStream;
    .end local v5    # "output":Ljava/io/OutputStream;
    .end local v6    # "tag":Ljava/lang/String;
    .end local v16    # "temp":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .end local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    throw v3
    :try_end_181
    .catch Ljava/io/IOException; {:try_start_17b .. :try_end_181} :catch_185
    .catchall {:try_start_17b .. :try_end_181} :catchall_181

    .line 456
    .end local v0    # "flags":I
    .restart local v4    # "input":Ljava/io/InputStream;
    .restart local v5    # "output":Ljava/io/OutputStream;
    .restart local v6    # "tag":Ljava/lang/String;
    .restart local v16    # "temp":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    .restart local p1    # "entry":Landroid/os/DropBoxManager$Entry;
    :catchall_181
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1b3

    .line 453
    :catch_185
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_190

    .line 456
    .end local v16    # "temp":Ljava/io/File;
    .restart local v3    # "temp":Ljava/io/File;
    :catchall_189
    move-exception v0

    move-object/from16 v16, v3

    .end local v3    # "temp":Ljava/io/File;
    .restart local v16    # "temp":Ljava/io/File;
    goto :goto_1b3

    .line 453
    .end local v16    # "temp":Ljava/io/File;
    .restart local v3    # "temp":Ljava/io/File;
    :catch_18d
    move-exception v0

    move-object/from16 v16, v3

    .line 454
    .local v0, "e":Ljava/io/IOException;
    :goto_190
    :try_start_190
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t write: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1a4
    .catchall {:try_start_190 .. :try_end_1a4} :catchall_1b2

    .line 456
    nop

    .end local v0    # "e":Ljava/io/IOException;
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 459
    if-eqz v3, :cond_1b1

    goto :goto_16c

    .line 461
    :cond_1b1
    :goto_1b1
    return-void

    .line 456
    :catchall_1b2
    move-exception v0

    :goto_1b3
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 457
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 458
    invoke-virtual/range {p1 .. p1}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 459
    if-eqz v3, :cond_1c1

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 460
    :cond_1c1
    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 32
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    monitor-enter p0

    .line 551
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "DropBoxManagerService"

    invoke-static {v0, v4, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_3ca

    if-nez v0, :cond_15

    monitor-exit p0

    return-void

    .line 554
    :cond_15
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3a8
    .catchall {:try_start_15 .. :try_end_18} :catchall_3ca

    .line 559
    nop

    .line 563
    :try_start_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v0

    .line 564
    .local v4, "out":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "doPrint":Z
    const/4 v5, 0x0

    .line 565
    .local v5, "doFile":Z
    const/4 v6, 0x0

    .line 566
    .local v6, "dumpProto":Z
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 567
    .local v7, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v8, 0x0

    move/from16 v27, v5

    move v5, v0

    move v0, v8

    move v8, v6

    move/from16 v6, v27

    .local v0, "i":I
    .local v5, "doPrint":Z
    .local v6, "doFile":Z
    .local v8, "dumpProto":Z
    :goto_2f
    if-eqz v3, :cond_cc

    array-length v9, v3

    if-ge v0, v9, :cond_cc

    .line 568
    aget-object v9, v3, v0

    const-string v10, "-p"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c7

    aget-object v9, v3, v0

    const-string v10, "--print"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4a

    goto/16 :goto_c7

    .line 570
    :cond_4a
    aget-object v9, v3, v0

    const-string v10, "-f"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c5

    aget-object v9, v3, v0

    const-string v10, "--file"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5f

    goto :goto_c5

    .line 572
    :cond_5f
    aget-object v9, v3, v0

    const-string v10, "--proto"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6b

    .line 573
    const/4 v8, 0x1

    goto :goto_c8

    .line 574
    :cond_6b
    aget-object v9, v3, v0

    const-string v10, "-h"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a0

    aget-object v9, v3, v0

    const-string v10, "--help"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_80

    goto :goto_a0

    .line 583
    :cond_80
    aget-object v9, v3, v0

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9a

    .line 584
    const-string v9, "Unknown argument: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v3, v0

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c8

    .line 586
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_9a
    aget-object v9, v3, v0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c8

    .line 575
    :cond_a0
    :goto_a0
    const-string v9, "Dropbox (dropbox) dump options:"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v9, "  [-h|--help] [-p|--print] [-f|--file] [timestamp]"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v9, "    -h|--help: print this help"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string v9, "    -p|--print: print full contents of each entry"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string v9, "    -f|--file: print path of each entry\'s file"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v9, "    --proto: dump data to proto"

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v9, "  [timestamp] optionally filters to only those entries."

    invoke-virtual {v2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_c3
    .catchall {:try_start_19 .. :try_end_c3} :catchall_3ca

    .line 582
    monitor-exit p0

    return-void

    .line 571
    :cond_c5
    :goto_c5
    const/4 v6, 0x1

    goto :goto_c8

    .line 569
    :cond_c7
    :goto_c7
    const/4 v5, 0x1

    .line 567
    :goto_c8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2f

    .line 590
    .end local v0    # "i":I
    :cond_cc
    if-eqz v8, :cond_d5

    .line 591
    move-object/from16 v9, p1

    :try_start_d0
    invoke-direct {v1, v9, v7}, Lcom/android/server/DropBoxManagerService;->dumpProtoLocked(Ljava/io/FileDescriptor;Ljava/util/ArrayList;)V
    :try_end_d3
    .catchall {:try_start_d0 .. :try_end_d3} :catchall_3ca

    .line 592
    monitor-exit p0

    return-void

    .line 595
    :cond_d5
    move-object/from16 v9, p1

    :try_start_d7
    const-string v0, "Drop box contents: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " entries\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 596
    const-string v0, "Max entries: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v1, Lcom/android/server/DropBoxManagerService;->mMaxFiles:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 598
    const-string v0, "Low priority rate limit period: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    iget-wide v10, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityRateLimitPeriod:J

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    const-string v0, "Low priority tags: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mLowPriorityTags:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 602
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_142

    .line 603
    const-string v0, "Searching for:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_128
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_13d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, "a":Ljava/lang/String;
    const-string v11, " "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_128

    .line 605
    .end local v10    # "a":Ljava/lang/String;
    :cond_13d
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 608
    :cond_142
    const/4 v0, 0x0

    .line 609
    .local v0, "numFound":I
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    iget-object v10, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    iget-object v10, v10, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    invoke-virtual {v10}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_150
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_381

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/DropBoxManagerService$EntryFile;

    .line 611
    .local v11, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    invoke-direct {v1, v11, v7}, Lcom/android/server/DropBoxManagerService;->matchEntry(Lcom/android/server/DropBoxManagerService$EntryFile;Ljava/util/ArrayList;)Z

    move-result v12

    if-nez v12, :cond_163

    goto :goto_150

    .line 613
    :cond_163
    add-int/lit8 v12, v0, 0x1

    .line 614
    .end local v0    # "numFound":I
    .local v12, "numFound":I
    if-eqz v5, :cond_16c

    const-string v0, "========================================\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 616
    :cond_16c
    iget-wide v13, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-static {v13, v14}, Landroid/text/format/TimeMigrationUtils;->formatMillisWithFixedFormat(J)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 617
    .local v13, "date":Ljava/lang/String;
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_182

    const-string v0, "(no tag)"

    goto :goto_184

    :cond_182
    iget-object v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    :goto_184
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v11, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    move-object v15, v0

    .line 620
    .local v15, "file":Ljava/io/File;
    if-nez v15, :cond_19d

    .line 621
    const-string v0, " (no file)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_378

    .line 623
    :cond_19d
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    const/16 v20, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1b2

    .line 624
    const-string v0, " (contents lost)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    goto/16 :goto_378

    .line 627
    :cond_1b2
    const-string v0, " ("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1c2

    const-string v0, "compressed "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_1c2
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1cc

    const-string/jumbo v0, "text"

    goto :goto_1ce

    :cond_1cc
    const-string v0, "data"

    :goto_1ce
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .local v21, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v22, "dumpProto":Z
    invoke-virtual {v15}, Ljava/io/File;->length()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " bytes)\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    if-nez v6, :cond_1f0

    if-eqz v5, :cond_203

    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_203

    .line 634
    :cond_1f0
    if-nez v5, :cond_1f7

    const-string v0, "    "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_1f7
    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    :cond_203
    iget v0, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_205
    .catchall {:try_start_d7 .. :try_end_205} :catchall_3ca

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_36e

    if-nez v5, :cond_212

    if-nez v6, :cond_20e

    goto :goto_212

    :cond_20e
    move/from16 v23, v6

    goto/16 :goto_370

    .line 639
    :cond_212
    :goto_212
    const/4 v7, 0x0

    .line 640
    .local v7, "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v8, 0x0

    .line 642
    .local v8, "isr":Ljava/io/InputStreamReader;
    :try_start_214
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v14, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_214 .. :try_end_218} :catch_31b
    .catchall {:try_start_214 .. :try_end_218} :catchall_312

    move/from16 v23, v6

    move-object/from16 v24, v7

    .end local v6    # "doFile":Z
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .local v23, "doFile":Z
    .local v24, "dbe":Landroid/os/DropBoxManager$Entry;
    :try_start_21c
    iget-wide v6, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J
    :try_end_21e
    .catch Ljava/io/IOException; {:try_start_21c .. :try_end_21e} :catch_30a
    .catchall {:try_start_21c .. :try_end_21e} :catchall_303

    move-object/from16 v25, v8

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .local v25, "isr":Ljava/io/InputStreamReader;
    :try_start_220
    iget v8, v11, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I
    :try_end_222
    .catch Ljava/io/IOException; {:try_start_220 .. :try_end_222} :catch_2fb
    .catchall {:try_start_220 .. :try_end_222} :catchall_2f3

    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v26, v15

    .end local v15    # "file":Ljava/io/File;
    .local v26, "file":Ljava/io/File;
    move-object/from16 v15, v16

    move-wide/from16 v16, v6

    move-object/from16 v18, v26

    move/from16 v19, v8

    :try_start_22f
    invoke-direct/range {v14 .. v19}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_232
    .catch Ljava/io/IOException; {:try_start_22f .. :try_end_232} :catch_2ed
    .catchall {:try_start_22f .. :try_end_232} :catchall_2e3

    move-object v7, v0

    .line 645
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    const/4 v6, 0x0

    if-eqz v5, :cond_289

    .line 646
    :try_start_236
    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v14

    invoke-direct {v8, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23f
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_23f} :catch_2df
    .catchall {:try_start_236 .. :try_end_23f} :catchall_2d7

    .line 647
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    const/16 v14, 0x1000

    :try_start_241
    new-array v14, v14, [C

    .line 648
    .local v14, "buf":[C
    const/4 v15, 0x0

    .line 650
    .local v15, "newline":Z
    :goto_244
    invoke-virtual {v8, v14}, Ljava/io/InputStreamReader;->read([C)I

    move-result v16

    move/from16 v17, v16

    .line 651
    .local v17, "n":I
    move/from16 v0, v17

    .end local v17    # "n":I
    .local v0, "n":I
    if-gtz v0, :cond_257

    .line 661
    .end local v0    # "n":I
    if-nez v15, :cond_255

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .end local v14    # "buf":[C
    .end local v15    # "newline":Z
    :cond_255
    goto/16 :goto_2c5

    .line 652
    .restart local v0    # "n":I
    .restart local v14    # "buf":[C
    .restart local v15    # "newline":Z
    :cond_257
    invoke-virtual {v4, v14, v6, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 653
    add-int/lit8 v17, v0, -0x1

    aget-char v6, v14, v17

    move/from16 v17, v0

    const/16 v0, 0xa

    .end local v0    # "n":I
    .restart local v17    # "n":I
    if-ne v6, v0, :cond_267

    move/from16 v0, v20

    goto :goto_268

    :cond_267
    const/4 v0, 0x0

    :goto_268
    move v15, v0

    .line 656
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/high16 v6, 0x10000

    if-le v0, v6, :cond_27d

    .line 657
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 658
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_27c
    .catch Ljava/io/IOException; {:try_start_241 .. :try_end_27c} :catch_286
    .catchall {:try_start_241 .. :try_end_27c} :catchall_280

    goto :goto_27e

    .line 656
    :cond_27d
    const/4 v0, 0x0

    .line 660
    .end local v17    # "n":I
    :goto_27e
    move v6, v0

    goto :goto_244

    .line 678
    .end local v14    # "buf":[C
    .end local v15    # "newline":Z
    :catchall_280
    move-exception v0

    move-object v6, v0

    move-object/from16 v15, v26

    goto/16 :goto_361

    .line 674
    :catch_286
    move-exception v0

    goto/16 :goto_324

    .line 663
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    :cond_289
    move v0, v6

    const/16 v6, 0x46

    :try_start_28c
    invoke-virtual {v7, v6}, Landroid/os/DropBoxManager$Entry;->getText(I)Ljava/lang/String;

    move-result-object v8

    .line 664
    .local v8, "text":Ljava/lang/String;
    const-string v14, "    "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 665
    if-nez v8, :cond_29d

    .line 666
    const-string v0, "[null]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2be

    .line 668
    :cond_29d
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v6, :cond_2a4

    goto :goto_2a6

    :cond_2a4
    move/from16 v20, v0

    :goto_2a6
    move/from16 v0, v20

    .line 669
    .local v0, "truncated":Z
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/16 v14, 0x2f

    const/16 v15, 0xa

    invoke-virtual {v6, v15, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 670
    if-eqz v0, :cond_2be

    const-string v6, " ..."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .end local v0    # "truncated":Z
    :cond_2be
    :goto_2be
    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2c3
    .catch Ljava/io/IOException; {:try_start_28c .. :try_end_2c3} :catch_2df
    .catchall {:try_start_28c .. :try_end_2c3} :catchall_2d7

    move-object/from16 v8, v25

    .line 678
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .local v8, "isr":Ljava/io/InputStreamReader;
    :goto_2c5
    :try_start_2c5
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_2c8
    .catchall {:try_start_2c5 .. :try_end_2c8} :catchall_3ca

    .line 679
    if-eqz v8, :cond_2d3

    .line 681
    :try_start_2ca
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_2cd
    .catch Ljava/io/IOException; {:try_start_2ca .. :try_end_2cd} :catch_2d1
    .catchall {:try_start_2ca .. :try_end_2cd} :catchall_3ca

    .line 683
    :goto_2cd
    move-object/from16 v15, v26

    goto/16 :goto_370

    .line 682
    :catch_2d1
    move-exception v0

    goto :goto_2cd

    .line 679
    :cond_2d3
    move-object/from16 v15, v26

    goto/16 :goto_370

    .line 678
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    :catchall_2d7
    move-exception v0

    move-object v6, v0

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto/16 :goto_361

    .line 674
    :catch_2df
    move-exception v0

    move-object/from16 v8, v25

    goto :goto_324

    .line 678
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    :catchall_2e3
    move-exception v0

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v15, v26

    goto/16 :goto_361

    .line 674
    :catch_2ed
    move-exception v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    goto :goto_324

    .line 678
    .end local v26    # "file":Ljava/io/File;
    .local v15, "file":Ljava/io/File;
    :catchall_2f3
    move-exception v0

    move-object v6, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    goto/16 :goto_361

    .line 674
    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :catch_2fb
    move-exception v0

    move-object/from16 v26, v15

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_324

    .line 678
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catchall_303
    move-exception v0

    move-object/from16 v25, v8

    move-object v6, v0

    move-object/from16 v7, v24

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_361

    .line 674
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catch_30a
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v26, v15

    move-object/from16 v7, v24

    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_324

    .line 678
    .end local v23    # "doFile":Z
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v6    # "doFile":Z
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catchall_312
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object v6, v0

    .end local v6    # "doFile":Z
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v15    # "file":Ljava/io/File;
    .restart local v23    # "doFile":Z
    .restart local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v25    # "isr":Ljava/io/InputStreamReader;
    .restart local v26    # "file":Ljava/io/File;
    goto :goto_361

    .line 674
    .end local v23    # "doFile":Z
    .end local v24    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v25    # "isr":Ljava/io/InputStreamReader;
    .end local v26    # "file":Ljava/io/File;
    .restart local v6    # "doFile":Z
    .restart local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .restart local v8    # "isr":Ljava/io/InputStreamReader;
    .restart local v15    # "file":Ljava/io/File;
    :catch_31b
    move-exception v0

    move/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v26, v15

    .line 675
    .end local v6    # "doFile":Z
    .end local v15    # "file":Ljava/io/File;
    .local v0, "e":Ljava/io/IOException;
    .restart local v23    # "doFile":Z
    .restart local v26    # "file":Ljava/io/File;
    :goto_324
    :try_start_324
    const-string v6, "*** "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v6, "DropBoxManagerService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Can\'t read: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_341
    .catchall {:try_start_324 .. :try_end_341} :catchall_35d

    move-object/from16 v15, v26

    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :try_start_343
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v6, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_34d
    .catchall {:try_start_343 .. :try_end_34d} :catchall_35a

    .line 678
    .end local v0    # "e":Ljava/io/IOException;
    if-eqz v7, :cond_352

    :try_start_34f
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_352
    .catchall {:try_start_34f .. :try_end_352} :catchall_3ca

    .line 679
    :cond_352
    if-eqz v8, :cond_370

    .line 681
    :try_start_354
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_357
    .catch Ljava/io/IOException; {:try_start_354 .. :try_end_357} :catch_358
    .catchall {:try_start_354 .. :try_end_357} :catchall_3ca

    .line 683
    :goto_357
    goto :goto_370

    .line 682
    :catch_358
    move-exception v0

    goto :goto_357

    .line 678
    :catchall_35a
    move-exception v0

    move-object v6, v0

    goto :goto_361

    .end local v15    # "file":Ljava/io/File;
    .restart local v26    # "file":Ljava/io/File;
    :catchall_35d
    move-exception v0

    move-object/from16 v15, v26

    move-object v6, v0

    .end local v26    # "file":Ljava/io/File;
    .restart local v15    # "file":Ljava/io/File;
    :goto_361
    if-eqz v7, :cond_366

    :try_start_363
    invoke-virtual {v7}, Landroid/os/DropBoxManager$Entry;->close()V
    :try_end_366
    .catchall {:try_start_363 .. :try_end_366} :catchall_3ca

    .line 679
    :cond_366
    if-eqz v8, :cond_36d

    .line 681
    :try_start_368
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_36b
    .catch Ljava/io/IOException; {:try_start_368 .. :try_end_36b} :catch_36c
    .catchall {:try_start_368 .. :try_end_36b} :catchall_3ca

    .line 683
    goto :goto_36d

    .line 682
    :catch_36c
    move-exception v0

    .line 685
    :cond_36d
    :goto_36d
    :try_start_36d
    throw v6

    .line 638
    .end local v7    # "dbe":Landroid/os/DropBoxManager$Entry;
    .end local v8    # "isr":Ljava/io/InputStreamReader;
    .end local v23    # "doFile":Z
    .restart local v6    # "doFile":Z
    :cond_36e
    move/from16 v23, v6

    .line 688
    .end local v6    # "doFile":Z
    .restart local v23    # "doFile":Z
    :cond_370
    :goto_370
    if-eqz v5, :cond_377

    const-string v0, "\n"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 689
    .end local v11    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v13    # "date":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    :cond_377
    nop

    .line 610
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    .restart local v6    # "doFile":Z
    .local v7, "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v8, "dumpProto":Z
    :goto_378
    move v0, v12

    move-object/from16 v7, v21

    move/from16 v8, v22

    move/from16 v6, v23

    .end local v6    # "doFile":Z
    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .restart local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "dumpProto":Z
    .restart local v23    # "doFile":Z
    goto/16 :goto_150

    .line 691
    .end local v12    # "numFound":I
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    .local v0, "numFound":I
    .restart local v6    # "doFile":Z
    .restart local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v8    # "dumpProto":Z
    :cond_381
    move/from16 v23, v6

    move-object/from16 v21, v7

    move/from16 v22, v8

    .end local v6    # "doFile":Z
    .end local v7    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "dumpProto":Z
    .restart local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v22    # "dumpProto":Z
    .restart local v23    # "doFile":Z
    if-nez v0, :cond_38e

    const-string v6, "(No entries found.)\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    :cond_38e
    if-eqz v3, :cond_393

    array-length v6, v3

    if-nez v6, :cond_39f

    .line 694
    :cond_393
    if-nez v5, :cond_39a

    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 695
    :cond_39a
    const-string v6, "Usage: dumpsys dropbox [--print|--file] [YYYY-mm-dd] [HH:MM:SS] [tag]\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 698
    :cond_39f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_3a6
    .catchall {:try_start_36d .. :try_end_3a6} :catchall_3ca

    .line 700
    monitor-exit p0

    return-void

    .line 555
    .end local v0    # "numFound":I
    .end local v4    # "out":Ljava/lang/StringBuilder;
    .end local v5    # "doPrint":Z
    .end local v21    # "searchArgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v22    # "dumpProto":Z
    .end local v23    # "doFile":Z
    :catch_3a8
    move-exception v0

    move-object/from16 v9, p1

    move-object v4, v0

    move-object v0, v4

    .line 556
    .local v0, "e":Ljava/io/IOException;
    :try_start_3ad
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t initialize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    const-string v4, "DropBoxManagerService"

    const-string v5, "Can\'t init"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c8
    .catchall {:try_start_3ad .. :try_end_3c8} :catchall_3ca

    .line 558
    monitor-exit p0

    return-void

    .line 550
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .end local p2    # "pw":Ljava/io/PrintWriter;
    .end local p3    # "args":[Ljava/lang/String;
    :catchall_3ca
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextEntry(Ljava/lang/String;JLjava/lang/String;)Landroid/os/DropBoxManager$Entry;
    .registers 20
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "millis"    # J
    .param p4, "callingPackage"    # Ljava/lang/String;

    move-object v1, p0

    move-object/from16 v2, p1

    monitor-enter p0

    .line 502
    :try_start_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    move-object/from16 v3, p4

    invoke-direct {p0, v0, v3}, Lcom/android/server/DropBoxManagerService;->checkPermission(ILjava/lang/String;)Z

    move-result v0
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_9c

    const/4 v4, 0x0

    if-nez v0, :cond_13

    .line 503
    monitor-exit p0

    return-object v4

    .line 507
    :cond_13
    :try_start_13
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->init()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_16} :catch_90
    .catchall {:try_start_13 .. :try_end_16} :catchall_9c

    .line 511
    nop

    .line 513
    if-nez v2, :cond_1c

    :try_start_19
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mAllFiles:Lcom/android/server/DropBoxManagerService$FileList;

    goto :goto_24

    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_1c
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mFilesByTag:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$FileList;
    :try_end_24
    .catchall {:try_start_19 .. :try_end_24} :catchall_9c

    :goto_24
    move-object v5, v0

    .line 514
    .local v5, "list":Lcom/android/server/DropBoxManagerService$FileList;
    if-nez v5, :cond_29

    monitor-exit p0

    return-object v4

    .line 516
    .restart local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_29
    :try_start_29
    iget-object v0, v5, Lcom/android/server/DropBoxManagerService$FileList;->contents:Ljava/util/TreeSet;

    new-instance v6, Lcom/android/server/DropBoxManagerService$EntryFile;

    const-wide/16 v7, 0x1

    add-long v7, p2, v7

    invoke-direct {v6, v7, v8}, Lcom/android/server/DropBoxManagerService$EntryFile;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DropBoxManagerService$EntryFile;

    move-object v7, v0

    .line 517
    .local v7, "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    iget-object v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    if-nez v0, :cond_4e

    goto :goto_3c

    .line 518
    :cond_4e
    iget v0, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5f

    .line 519
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v4, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v8, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    invoke-direct {v0, v4, v8, v9}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J)V
    :try_end_5d
    .catchall {:try_start_29 .. :try_end_5d} :catchall_9c

    monitor-exit p0

    return-object v0

    .line 521
    .end local p0    # "this":Lcom/android/server/DropBoxManagerService;
    :cond_5f
    :try_start_5f
    iget-object v0, v1, Lcom/android/server/DropBoxManagerService;->mDropBoxDir:Ljava/io/File;

    invoke-virtual {v7, v0}, Lcom/android/server/DropBoxManagerService$EntryFile;->getFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_9c

    move-object v14, v0

    .line 523
    .local v14, "file":Ljava/io/File;
    :try_start_66
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    iget-object v9, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->tag:Ljava/lang/String;

    iget-wide v10, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->timestampMillis:J

    iget v13, v7, Lcom/android/server/DropBoxManagerService$EntryFile;->flags:I

    move-object v8, v0

    move-object v12, v14

    invoke-direct/range {v8 .. v13}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLjava/io/File;I)V
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_73} :catch_75
    .catchall {:try_start_66 .. :try_end_73} :catchall_9c

    monitor-exit p0

    return-object v0

    .line 525
    :catch_75
    move-exception v0

    .line 526
    .local v0, "e":Ljava/io/IOException;
    :try_start_76
    const-string v8, "DropBoxManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t read: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8c
    .catchall {:try_start_76 .. :try_end_8c} :catchall_9c

    .line 529
    nop

    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "entry":Lcom/android/server/DropBoxManagerService$EntryFile;
    .end local v14    # "file":Ljava/io/File;
    goto :goto_3c

    .line 531
    :cond_8e
    monitor-exit p0

    return-object v4

    .line 508
    .end local v5    # "list":Lcom/android/server/DropBoxManagerService$FileList;
    :catch_90
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 509
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_93
    const-string v5, "DropBoxManagerService"

    const-string v6, "Can\'t init"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catchall {:try_start_93 .. :try_end_9a} :catchall_9c

    .line 510
    monitor-exit p0

    return-object v4

    .line 501
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # "tag":Ljava/lang/String;
    .end local p2    # "millis":J
    .end local p4    # "callingPackage":Ljava/lang/String;
    :catchall_9c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getServiceStub()Lcom/android/internal/os/IDropBoxManagerService;
    .registers 2

    .line 366
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    return-object v0
.end method

.method public isTagEnabled(Ljava/lang/String;)Z
    .registers 8
    .param p1, "tag"    # Ljava/lang/String;

    .line 464
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 466
    .local v0, "token":J
    :try_start_4
    const-string v2, "disabled"

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dropbox:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_27

    .line 469
    xor-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    return v2

    .line 469
    :catchall_27
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 470
    throw v2
.end method

.method public onBootPhase(I)V
    .registers 8
    .param p1, "phase"    # I

    .line 340
    const/16 v0, 0x1f4

    const/4 v1, 0x1

    if-eq p1, v0, :cond_d

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_a

    goto :goto_35

    .line 359
    :cond_a
    iput-boolean v1, p0, Lcom/android/server/DropBoxManagerService;->mBooted:Z

    goto :goto_35

    .line 342
    :cond_d
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 343
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/server/DropBoxManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/DropBoxManagerService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 346
    iget-object v2, p0, Lcom/android/server/DropBoxManagerService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Lcom/android/server/DropBoxManagerService$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/server/DropBoxManagerService$3;-><init>(Lcom/android/server/DropBoxManagerService;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 355
    invoke-direct {p0}, Lcom/android/server/DropBoxManagerService;->getLowPriorityResourceConfigs()V

    .line 356
    nop

    .line 362
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_35
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 332
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService;->mStub:Lcom/android/internal/os/IDropBoxManagerService$Stub;

    const-string v1, "dropbox"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/DropBoxManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 336
    return-void
.end method
