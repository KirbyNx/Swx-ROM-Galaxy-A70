.class Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
.super Ljava/lang/Object;
.source "ExecAccessMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PrivilegedPkg"
.end annotation


# static fields
.field private static final TIME_INTERVAL:J = 0x1d4c0L


# instance fields
.field private final mFingerprint:[B

.field private mLastGrantedTime:J

.field private final mPkgName:Ljava/lang/String;

.field private final mPlatformKeyOnly:Z

.field private mUid:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Z[B)V
    .registers 6
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "platformKeyOnly"    # Z
    .param p3, "fingerprint"    # [B

    .line 344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    .line 346
    iput-object p3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    .line 347
    iput-boolean p2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    .line 348
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    .line 349
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    .line 350
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Z[BLcom/android/server/sepunion/friends/executable/ExecAccessMgr$1;)V
    .registers 5
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Z
    .param p3, "x2"    # [B
    .param p4, "x3"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$1;

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;-><init>(Ljava/lang/String;Z[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    .line 336
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)[B
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    .line 336
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;

    .line 336
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 336
    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isCachedGranted(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .registers 5
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    .param p1, "x1"    # Landroid/content/pm/PackageManager;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # [B

    .line 336
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;
    .param p1, "x1"    # I

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->setCachedGranted(I)V

    return-void
.end method

.method private isCachedGranted(Ljava/lang/String;I)Z
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, "ret":Z
    const-wide/16 v1, 0x0

    .line 355
    .local v1, "timeInterval":J
    monitor-enter p0

    .line 356
    :try_start_4
    iget-wide v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_2f

    .line 357
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    sub-long v1, v6, v8

    .line 358
    iget-object v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    if-lez p2, :cond_2d

    iget v3, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    if-ne v3, p2, :cond_2d

    const-wide/32 v6, 0x1d4c0

    cmp-long v3, v1, v6

    if-gtz v3, :cond_2d

    move v3, v4

    goto :goto_2e

    :cond_2d
    move v3, v5

    :goto_2e
    move v0, v3

    .line 360
    :cond_2f
    monitor-exit p0
    :try_end_30
    .catchall {:try_start_4 .. :try_end_30} :catchall_5a

    .line 362
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-wide/16 v5, 0x3e8

    div-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "ExecAccessMgr"

    const-string/jumbo v5, "isCachedGranted %s %s %d %d"

    invoke-static {v4, v5, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 363
    return v0

    .line 360
    :catchall_5a
    move-exception v3

    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v3
.end method

.method private isGranted(Landroid/content/pm/PackageManager;Ljava/lang/String;[B)Z
    .registers 9
    .param p1, "pkgMgr"    # Landroid/content/pm/PackageManager;
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "fingerprint"    # [B

    .line 381
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    .line 382
    const-string v0, "android"

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_23

    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPlatformKeyOnly:Z

    if-nez v0, :cond_25

    if-eqz p3, :cond_25

    array-length v0, p3

    if-lez v0, :cond_25

    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mFingerprint:[B

    .line 384
    invoke-static {v0, p3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_25

    :cond_23
    move v0, v1

    goto :goto_26

    :cond_25
    move v0, v2

    .line 386
    .local v0, "ret":Z
    :goto_26
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    const-string v1, "ExecAccessMgr"

    const-string/jumbo v2, "isGranted %s %s"

    invoke-static {v1, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 388
    return v0
.end method

.method private setCachedGranted(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 367
    const-wide/16 v0, -0x1

    .line 368
    .local v0, "sec":J
    monitor-enter p0

    .line 369
    :try_start_3
    iput p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mUid:I

    .line 370
    if-lez p1, :cond_11

    .line 371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mLastGrantedTime:J

    .line 372
    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    move-wide v0, v2

    .line 375
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_35

    .line 377
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr$PrivilegedPkg;->mPkgName:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "ExecAccessMgr"

    const-string/jumbo v4, "setCachedGranted %d %s %d"

    invoke-static {v3, v4, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 378
    return-void

    .line 375
    :catchall_35
    move-exception v2

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v2
.end method
