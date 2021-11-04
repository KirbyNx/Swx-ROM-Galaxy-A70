.class public Lcom/android/server/ipm/chimera/ChimeraAppManager;
.super Ljava/lang/Object;
.source "ChimeraAppManager.java"


# static fields
.field private static final CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

.field private static final MSG_REMOVE_APP:I = 0x5

.field private static final SYSTEM_PROPERTY_CHIMERA_CEM_PKG_PROTECTED_INTERVAL:Ljava/lang/String; = "persist.sys.chimera_cem_pkg_protected_interval_ms"

.field private static final TAG:Ljava/lang/String; = "ChimeraAppManager"


# instance fields
.field private mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

.field private mCemPkgProtectedIntervalMs:I

.field private mForegroundG3ProcList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mGcApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReclaimApps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mStandbyInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 34
    const v0, 0xea60

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/ipm/chimera/SystemRepository;)V
    .registers 4
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 36
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    .line 37
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    .line 44
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    invoke-direct {v0, p1}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    .line 45
    iput-object p1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 47
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->CEM_PKG_PROTECTED_INTERVAL_DEFAULT:Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "persist.sys.chimera_cem_pkg_protected_interval_ms"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    .line 50
    invoke-virtual {p0}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->collectStandbyBucketList()V

    .line 51
    return-void
.end method


# virtual methods
.method public addToGcAppList(Ljava/lang/String;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 63
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 64
    .local v0, "userApp":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    if-nez v0, :cond_15

    .line 65
    new-instance v1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    invoke-direct {v1, p2, p1}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 66
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    :cond_15
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v2, v0

    move v3, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJ)V

    .line 69
    return-void
.end method

.method public addToReclaimAppList(Ljava/lang/String;II)V
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .line 54
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 55
    .local v0, "userApp":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    if-nez v0, :cond_15

    .line 56
    new-instance v1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    invoke-direct {v1, p2, p1}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 57
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_15
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v2, v0

    move v3, p3

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJ)V

    .line 60
    return-void
.end method

.method public addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "proc"    # Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 72
    invoke-static {}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getInstance()Lcom/android/server/ipm/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isGcEnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 73
    iget v0, p2, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget v1, p2, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->addToGcAppList(Ljava/lang/String;II)V

    .line 75
    :cond_17
    invoke-static {}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getInstance()Lcom/android/server/ipm/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/SettingRepository;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 76
    iget v0, p2, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    iget v1, p2, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->addToReclaimAppList(Ljava/lang/String;II)V

    .line 78
    :cond_2e
    return-void
.end method

.method public collectStandbyBucketList()V
    .registers 2

    .line 351
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SystemRepository;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    .line 353
    return-void
.end method

.method public dumpStandbyBucket()Ljava/lang/String;
    .registers 6

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 358
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " apps in mStandbyInfoMap: \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_58

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 360
    .local v2, "key":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 362
    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_29

    .line 364
    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAppStandbyBucket(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 332
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 333
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 334
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 333
    invoke-interface {v1, p1, v0, v2, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v1

    return v1
.end method

.method public getAppStandbyBucket(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V
    .registers 8
    .param p1, "appInfo"    # Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 338
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 339
    .local v0, "standby":Ljava/lang/Integer;
    if-eqz v0, :cond_13

    .line 340
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    goto :goto_34

    .line 342
    :cond_13
    iget v1, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 343
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v3, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    .line 344
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 343
    invoke-interface {v2, v3, v1, v4, v5}, Lcom/android/server/ipm/chimera/SystemRepository;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v2

    iput v2, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    .line 345
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mStandbyInfoMap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    iget v4, p1, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->cacStandbyBucket:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .end local v1    # "userId":I
    :goto_34
    return-void
.end method

.method public getAppsForPMMCritical()Landroid/util/Pair;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;>;"
        }
    .end annotation

    .line 261
    move-object/from16 v0, p0

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 262
    .local v1, "appList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v2, "pkgsForMARs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v3}, Lcom/android/server/ipm/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "launcher":Ljava/lang/String;
    iget-object v4, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v4}, Lcom/android/server/ipm/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "ChimeraAppManager"

    if-eqz v5, :cond_e6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 266
    .local v5, "proc":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    iget v7, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v8, 0x11

    if-ne v7, v8, :cond_31

    .line 267
    goto :goto_1c

    .line 270
    :cond_31
    iget-object v7, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v7, :cond_dc

    iget-object v7, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v7, v7

    if-lez v7, :cond_dc

    .line 271
    iget-object v7, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    .line 272
    .local v7, "packageName":Ljava/lang/String;
    invoke-static {v7, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_46

    .line 273
    goto :goto_1c

    .line 276
    :cond_46
    iget v8, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v8

    if-nez v8, :cond_66

    .line 277
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "handlePMMCritical() - Skipped by uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    goto :goto_1c

    .line 281
    :cond_66
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 282
    .local v8, "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    if-nez v8, :cond_9e

    .line 283
    new-instance v9, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    iget v10, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v9, v10, v7}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    move-object v8, v9

    .line 284
    invoke-virtual {v1, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget v9, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 286
    .local v9, "userId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    .end local v9    # "userId":I
    :cond_9e
    iget-wide v9, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 290
    .local v9, "pss":J
    const-wide/16 v11, 0x0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_c6

    .line 291
    iget-object v11, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ": proc.lastPss <= 0, fetching right now"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v6, v12}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v6, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v11, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v6, v11}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v9

    .line 295
    :cond_c6
    iget v12, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v13, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget-wide v14, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .end local v3    # "launcher":Ljava/lang/String;
    .local v20, "launcher":Ljava/lang/String;
    iget-wide v3, v5, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object v11, v8

    move-wide/from16 v16, v14

    move-wide v14, v9

    move-wide/from16 v18, v3

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJ)V

    goto :goto_e0

    .line 270
    .end local v7    # "packageName":Ljava/lang/String;
    .end local v8    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v9    # "pss":J
    .end local v20    # "launcher":Ljava/lang/String;
    .restart local v3    # "launcher":Ljava/lang/String;
    :cond_dc
    move-object/from16 v20, v3

    move-object/from16 v21, v4

    .line 297
    .end local v3    # "launcher":Ljava/lang/String;
    .end local v5    # "proc":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    .restart local v20    # "launcher":Ljava/lang/String;
    :goto_e0
    move-object/from16 v3, v20

    move-object/from16 v4, v21

    goto/16 :goto_1c

    .line 299
    .end local v20    # "launcher":Ljava/lang/String;
    .restart local v3    # "launcher":Ljava/lang/String;
    :cond_e6
    move-object/from16 v20, v3

    .end local v3    # "launcher":Ljava/lang/String;
    .restart local v20    # "launcher":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_16a

    .line 302
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    sget-object v4, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v3, v4}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 303
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v2}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, "pidSize":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v4, "lockScreenApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 308
    .local v5, "otherApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_10d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_164

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 309
    .local v8, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget v9, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 310
    .local v9, "userId":I
    iget-object v10, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    iget-object v11, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v12

    iget v13, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v10, v11, v9, v12, v13}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v10

    iput v10, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 311
    iget v10, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v10}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v10

    iput v10, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    .line 313
    invoke-virtual {v8}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->isInPMMCriticalProtectedGroup()Z

    move-result v10

    if-eqz v10, :cond_155

    .line 314
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "handlePMMCritical() - Skipped by protected app: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    goto :goto_10d

    .line 318
    :cond_155
    iget v10, v8, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-lez v10, :cond_160

    .line 319
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_163

    .line 321
    :cond_160
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v8    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v9    # "userId":I
    :goto_163
    goto :goto_10d

    .line 325
    :cond_164
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6

    .line 327
    .end local v3    # "pidSize":I
    .end local v4    # "lockScreenApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v5    # "otherApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    :cond_16a
    const/4 v3, 0x0

    return-object v3
.end method

.method public getAppsToGc()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "appsToGc":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 92
    .local v2, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppsToGc(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChimeraAppManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local v2    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_f

    .line 95
    :cond_37
    return-object v0
.end method

.method public getAppsToKill(Lcom/android/server/ipm/chimera/SkipReasonLogger;ILcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)Ljava/util/List;
    .registers 36
    .param p1, "skipReasonLogger"    # Lcom/android/server/ipm/chimera/SkipReasonLogger;
    .param p2, "protectedLruCount"    # I
    .param p3, "triggerSource"    # Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ipm/chimera/SkipReasonLogger;",
            "I",
            "Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 100
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppsToKill() - protectedLruCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "ChimeraAppManager"

    invoke-interface {v2, v5, v3}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 102
    .local v2, "appList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 103
    .local v3, "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 104
    .local v6, "pkgsForMARs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 106
    .local v7, "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    const/4 v8, -0x1

    .line 107
    .local v8, "lru":I
    iget-object v9, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-static {v9}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->isBubEnabled(Lcom/android/server/ipm/chimera/SystemRepository;)Z

    move-result v9

    .line 108
    .local v9, "isBubEnabled":Z
    iget-object v10, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v10}, Lcom/android/server/ipm/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "launcher":Ljava/lang/String;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 111
    .local v11, "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v12, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 112
    iget-object v12, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mGcApps:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->clear()V

    .line 114
    iget-object v12, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-interface {v12}, Lcom/android/server/ipm/chimera/SystemRepository;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local p2    # "protectedLruCount":I
    .local v4, "protectedLruCount":I
    :goto_54
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_262

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    .line 115
    .local v13, "proc":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    add-int/lit8 v8, v8, 0x1

    .line 116
    iget v14, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v14, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    if-eqz v14, :cond_244

    iget-object v14, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v14, v14

    if-gtz v14, :cond_84

    .line 119
    move-object/from16 v17, v3

    move/from16 v27, v4

    move-object/from16 v16, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 p2, v10

    move-object/from16 v31, v11

    goto/16 :goto_252

    .line 122
    :cond_84
    iget-object v14, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    .line 125
    .local v14, "packageName":Ljava/lang/String;
    iget v15, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    move-object/from16 v16, v7

    .end local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .local v16, "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    const/16 v7, 0x11

    if-ne v15, v7, :cond_a6

    .line 126
    iget v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v15, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v7, v15}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 127
    move-object/from16 v17, v3

    move/from16 v27, v4

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 p2, v10

    move-object/from16 v31, v11

    goto/16 :goto_252

    .line 131
    :cond_a6
    invoke-static {v14, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_ba

    .line 132
    move-object/from16 v17, v3

    move/from16 v27, v4

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 p2, v10

    move-object/from16 v31, v11

    goto/16 :goto_252

    .line 136
    :cond_ba
    iget v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v15, 0x13

    if-ne v7, v15, :cond_e9

    .line 137
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    move-object v7, v10

    move-object v15, v11

    .end local v10    # "launcher":Ljava/lang/String;
    .end local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v7, "launcher":Ljava/lang/String;
    .local v15, "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-wide v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    sub-long v17, v17, v10

    iget v10, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mCemPkgProtectedIntervalMs:I

    int-to-long v10, v10

    cmp-long v10, v17, v10

    if-gez v10, :cond_eb

    .line 138
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 139
    iget v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v11, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v10, v11}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 140
    move-object/from16 v17, v3

    move/from16 v27, v4

    move-object/from16 p2, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 v31, v15

    goto/16 :goto_252

    .line 136
    .end local v7    # "launcher":Ljava/lang/String;
    .end local v15    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v10    # "launcher":Ljava/lang/String;
    .restart local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_e9
    move-object v7, v10

    move-object v15, v11

    .line 143
    .end local v10    # "launcher":Ljava/lang/String;
    .end local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v7    # "launcher":Ljava/lang/String;
    .restart local v15    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_eb
    invoke-interface {v3, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_102

    .line 144
    invoke-virtual {v0, v14, v13}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)V

    .line 145
    move-object/from16 v17, v3

    move/from16 v27, v4

    move-object/from16 p2, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 v31, v15

    goto/16 :goto_252

    .line 148
    :cond_102
    iget v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v10, v10, 0x4

    if-gtz v10, :cond_112

    iget v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/16 v11, 0x12

    if-ne v10, v11, :cond_10f

    goto :goto_112

    :cond_10f
    move-object/from16 p2, v7

    goto :goto_144

    .line 150
    :cond_112
    :goto_112
    invoke-virtual {v0, v14, v13}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->addToReclaimGcAppList(Ljava/lang/String;Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;)V

    .line 152
    if-lez v4, :cond_142

    .line 153
    iget-object v10, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v7

    .end local v7    # "launcher":Ljava/lang/String;
    .local p2, "launcher":Ljava/lang/String;
    const-string v7, "getAppsToKill() - Protected by LRU : "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v10, v5, v7}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    add-int/lit8 v4, v4, -0x1

    .line 155
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 156
    iget v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 157
    move-object/from16 v10, p2

    move-object v11, v15

    move-object/from16 v7, v16

    goto/16 :goto_54

    .line 152
    .end local p2    # "launcher":Ljava/lang/String;
    .restart local v7    # "launcher":Ljava/lang/String;
    :cond_142
    move-object/from16 p2, v7

    .line 161
    .end local v7    # "launcher":Ljava/lang/String;
    .restart local p2    # "launcher":Ljava/lang/String;
    :goto_144
    iget v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    const/4 v10, 0x1

    if-gt v7, v10, :cond_15f

    .line 162
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    iget v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 164
    move-object/from16 v17, v3

    move/from16 v27, v4

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 v31, v15

    goto/16 :goto_252

    .line 167
    :cond_15f
    if-nez v9, :cond_191

    iget-boolean v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    if-eqz v7, :cond_191

    .line 168
    iget-object v7, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAppsToKill() - Protected by Picked "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v5, v10}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-interface {v3, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    iget v7, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    sget-object v10, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v7, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 171
    move-object/from16 v17, v3

    move/from16 v27, v4

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 v31, v15

    goto/16 :goto_252

    .line 174
    :cond_191
    invoke-virtual {v2, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 175
    .local v7, "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    if-nez v7, :cond_1d9

    .line 176
    new-instance v10, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    iget v11, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-direct {v10, v11, v14}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;-><init>(ILjava/lang/String;)V

    move-object v7, v10

    .line 177
    iput v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->lruIdx:I

    .line 178
    invoke-virtual {v0, v7}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppStandbyBucket(Lcom/android/server/ipm/chimera/ChimeraAppInfo;)V

    .line 179
    iget v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v0, v14, v10}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->getAppStandbyBucket(Ljava/lang/String;I)I

    move-result v10

    iput v10, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->curStandbyBucket:I

    .line 180
    invoke-virtual {v2, v14, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 182
    .local v10, "userId":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v3

    .end local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v17, "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v3, "/"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1db

    .line 175
    .end local v10    # "userId":I
    .end local v17    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1d9
    move-object/from16 v17, v3

    .line 185
    .end local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_1db
    iget-wide v10, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 186
    .local v10, "pss":J
    const-wide/16 v18, 0x0

    cmp-long v3, v10, v18

    if-gtz v3, :cond_208

    .line 187
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    move/from16 v27, v4

    .end local v4    # "protectedLruCount":I
    .local v27, "protectedLruCount":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v8

    .end local v8    # "lru":I
    .local v28, "lru":I
    iget-object v8, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": proc.lastPss <= 0, fetching right now"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Lcom/android/server/ipm/chimera/SystemRepository;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget v4, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    invoke-static {v3, v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil;->getProcPss(Lcom/android/server/ipm/chimera/SystemRepository;I)J

    move-result-wide v10

    goto :goto_20c

    .line 186
    .end local v27    # "protectedLruCount":I
    .end local v28    # "lru":I
    .restart local v4    # "protectedLruCount":I
    .restart local v8    # "lru":I
    :cond_208
    move/from16 v27, v4

    move/from16 v28, v8

    .line 191
    .end local v4    # "protectedLruCount":I
    .end local v8    # "lru":I
    .restart local v27    # "protectedLruCount":I
    .restart local v28    # "lru":I
    :goto_20c
    iget v3, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    iget-object v4, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move/from16 v29, v9

    .end local v9    # "isBubEnabled":Z
    .local v29, "isBubEnabled":Z
    iget-wide v8, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    move-object/from16 v30, v14

    move-object/from16 v31, v15

    .end local v14    # "packageName":Ljava/lang/String;
    .end local v15    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v30, "packageName":Ljava/lang/String;
    .local v31, "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-wide v14, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    move-object/from16 v18, v7

    move/from16 v19, v3

    move-object/from16 v20, v4

    move-wide/from16 v21, v10

    move-wide/from16 v23, v8

    move-wide/from16 v25, v14

    invoke-virtual/range {v18 .. v26}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->addProcess(ILjava/lang/String;JJJ)V

    .line 193
    iget v3, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-lez v3, :cond_236

    .line 194
    iget v3, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v4, 0x20000

    or-int/2addr v3, v4

    iput v3, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 197
    :cond_236
    iget v3, v13, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_243

    .line 198
    iget v3, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    const/high16 v4, 0x1000000

    or-int/2addr v3, v4

    iput v3, v7, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 200
    .end local v7    # "appInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v10    # "pss":J
    .end local v13    # "proc":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    .end local v30    # "packageName":Ljava/lang/String;
    :cond_243
    goto :goto_252

    .line 118
    .end local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v17    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "protectedLruCount":I
    .end local v28    # "lru":I
    .end local v29    # "isBubEnabled":Z
    .end local v31    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "launcher":Ljava/lang/String;
    .restart local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "protectedLruCount":I
    .local v7, "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v8    # "lru":I
    .restart local v9    # "isBubEnabled":Z
    .local v10, "launcher":Ljava/lang/String;
    .restart local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v13    # "proc":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    :cond_244
    move-object/from16 v17, v3

    move/from16 v27, v4

    move-object/from16 v16, v7

    move/from16 v28, v8

    move/from16 v29, v9

    move-object/from16 p2, v10

    move-object/from16 v31, v11

    .line 114
    .end local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "protectedLruCount":I
    .end local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v8    # "lru":I
    .end local v9    # "isBubEnabled":Z
    .end local v10    # "launcher":Ljava/lang/String;
    .end local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v13    # "proc":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    .restart local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v17    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "protectedLruCount":I
    .restart local v28    # "lru":I
    .restart local v29    # "isBubEnabled":Z
    .restart local v31    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "launcher":Ljava/lang/String;
    :goto_252
    move-object/from16 v10, p2

    move-object/from16 v7, v16

    move-object/from16 v3, v17

    move/from16 v4, v27

    move/from16 v8, v28

    move/from16 v9, v29

    move-object/from16 v11, v31

    goto/16 :goto_54

    .line 202
    .end local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v17    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v27    # "protectedLruCount":I
    .end local v28    # "lru":I
    .end local v29    # "isBubEnabled":Z
    .end local v31    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local p2    # "launcher":Ljava/lang/String;
    .restart local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "protectedLruCount":I
    .restart local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v8    # "lru":I
    .restart local v9    # "isBubEnabled":Z
    .restart local v10    # "launcher":Ljava/lang/String;
    .restart local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_262
    move-object/from16 v17, v3

    move/from16 v27, v4

    move-object/from16 v16, v7

    move/from16 v29, v9

    move-object/from16 p2, v10

    move-object/from16 v31, v11

    .end local v3    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "protectedLruCount":I
    .end local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v9    # "isBubEnabled":Z
    .end local v10    # "launcher":Ljava/lang/String;
    .end local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v17    # "protectedPkgList":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v27    # "protectedLruCount":I
    .restart local v29    # "isBubEnabled":Z
    .restart local v31    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local p2    # "launcher":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-lez v3, :cond_351

    .line 204
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->prepare(Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;)V

    .line 205
    iget-object v3, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    invoke-virtual {v3, v6}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->updatePackagesType(Ljava/util/List;)V

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v7, v3

    .line 208
    .end local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_28e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_355

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 209
    .local v5, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    iget-wide v9, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->pss:J

    iput-wide v9, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->killGain:J

    .line 210
    iget v9, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 211
    .local v9, "userId":I
    iget v10, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    iget-object v11, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mAppClassifier:Lcom/android/server/ipm/chimera/ChimeraAppClassifier;

    iget-object v12, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->getPidList()Ljava/util/Set;

    move-result-object v13

    iget v14, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v11, v12, v9, v13, v14}, Lcom/android/server/ipm/chimera/ChimeraAppClassifier;->getPackageType(Ljava/lang/String;ILjava/util/Set;I)I

    move-result v11

    or-int/2addr v10, v11

    iput v10, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    .line 212
    iget v10, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType:I

    invoke-static {v10}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->appType2group(I)I

    move-result v10

    iput v10, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    .line 214
    iget v10, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->group:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_2f6

    .line 215
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v10

    iget v11, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->uid:I

    invoke-virtual {v10, v11}, Lcom/android/server/am/MARsPolicyManager;->isForegroundServicePkg(I)Z

    move-result v10

    .line 216
    .local v10, "hasForegroundService":Z
    if-eqz v10, :cond_2f6

    .line 217
    iget-object v11, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2d6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2f5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 218
    .local v12, "procInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget v13, v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v14, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v13, v14}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 219
    iget-object v13, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v14, v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 220
    .end local v12    # "procInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    goto :goto_2d6

    .line 221
    :cond_2f5
    goto :goto_28e

    .line 225
    .end local v10    # "hasForegroundService":Z
    :cond_2f6
    invoke-virtual {v5}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->isInfoNotFeteched()Z

    move-result v10

    if-nez v10, :cond_335

    invoke-virtual {v5}, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->isInProtectedGroup()Z

    move-result v10

    if-eqz v10, :cond_303

    goto :goto_335

    .line 232
    :cond_303
    const/4 v10, 0x0

    .line 233
    .local v10, "wasForegroundG3":Z
    iget-object v11, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_30a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_32e

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 234
    .restart local v12    # "procInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget-object v13, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    iget v14, v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_32d

    .line 235
    iget v11, v12, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v13, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v11, v13}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 236
    const/4 v10, 0x1

    .line 237
    goto :goto_32e

    .line 239
    .end local v12    # "procInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    :cond_32d
    goto :goto_30a

    .line 241
    :cond_32e
    :goto_32e
    if-nez v10, :cond_333

    .line 242
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    .end local v5    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v9    # "userId":I
    .end local v10    # "wasForegroundG3":Z
    :cond_333
    goto/16 :goto_28e

    .line 226
    .restart local v5    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .restart local v9    # "userId":I
    :cond_335
    :goto_335
    iget-object v10, v5, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_33b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_34f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;

    .line 227
    .local v11, "procInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    iget v12, v11, Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    sget-object v13, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v1, v12, v13}, Lcom/android/server/ipm/chimera/SkipReasonLogger;->mark(ILcom/android/server/ipm/chimera/SkipReasonLogger$Reason;)V

    .line 228
    .end local v11    # "procInfo":Lcom/android/server/ipm/chimera/ChimeraAppInfo$ProcessInfo;
    goto :goto_33b

    .line 229
    :cond_34f
    goto/16 :goto_28e

    .line 202
    .end local v5    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    .end local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .end local v9    # "userId":I
    .restart local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    :cond_351
    move-object/from16 v4, p3

    move-object/from16 v7, v16

    .line 247
    .end local v16    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    .restart local v7    # "appsToKill":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    :cond_355
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v3, "removePids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_360
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_386

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 250
    .local v9, "pid":I
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object/from16 v11, v31

    .end local v31    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v11, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_383

    .line 251
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    .end local v9    # "pid":I
    :cond_383
    move-object/from16 v31, v11

    goto :goto_360

    .line 255
    .end local v11    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v31    # "procDump":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_386
    iget-object v5, v0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mForegroundG3ProcList:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 257
    return-object v7
.end method

.method public getAppsToReclaim()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/ChimeraAppInfo;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "appsToReclaim":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/ChimeraAppInfo;>;"
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraAppManager;->mReclaimApps:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;

    .line 83
    .local v2, "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppsToReclaim(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/server/ipm/chimera/ChimeraAppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChimeraAppManager"

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    .end local v2    # "app":Lcom/android/server/ipm/chimera/ChimeraAppInfo;
    goto :goto_f

    .line 86
    :cond_37
    return-object v0
.end method
