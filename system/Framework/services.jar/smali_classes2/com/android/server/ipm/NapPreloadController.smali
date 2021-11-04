.class public Lcom/android/server/ipm/NapPreloadController;
.super Ljava/lang/Object;
.source "NapPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/NapPreloadController$PreloadHandler;,
        Lcom/android/server/ipm/NapPreloadController$PreloadedPkgInfo;
    }
.end annotation


# static fields
.field public static final ACTION_LOW_MEMORY:Ljava/lang/String; = "com.samsung.pkgpredictor.lowmemory"

.field public static final ACTION_PRELOAD_CLEARLIST:Ljava/lang/String; = "com.samsung.DO_ML_LIST_CLEAR"

.field public static final ACTION_PRELOAD_REPLY:Ljava/lang/String; = "com.samsung.DO_ML_LAUNCH_REPLY"

.field public static final ACTION_PRELOAD_SEND:Ljava/lang/String; = "com.samsung.DO_ML_LAUNCH"

.field private static final AI:I = 0x1

.field private static final BOOSTER:I = 0x2

.field private static final BOOSTER_FINALLY:I = 0x4

.field private static final CLEARLIST:I = 0x3

.field private static DEBUG:Z = false

.field private static IPM_AI_PRELOAD_ACTION_DELAY:J = 0x0L

.field private static final PRELOAD_BOOSTER_PKG:Ljava/lang/String; = "booster_pkgs"

.field private static final PRELOAD_BOOSTER_PKG_UID:Ljava/lang/String; = "booster_pkgs_uid"

.field private static final PRELOAD_LISTCLEAR_TYPE:Ljava/lang/String; = "preload_listclear_type"

.field private static final PRELOAD_PKGS:Ljava/lang/String; = "preload_pkgs"

.field private static final PRELOAD_TYPE:Ljava/lang/String; = "preload_type"

.field private static final PRELOAD_UID:Ljava/lang/String; = "preload_uid"

.field private static final PRELOAD_USE_PAGEBOOST:Ljava/lang/String; = "use_pageboost"

.field private static final TAG:Ljava/lang/String; = "PkgPredictorService-NapPreloadController"

.field private static final mPreloadPkgLock:Ljava/lang/Object;


# instance fields
.field iPkgManager:Landroid/content/pm/IPackageManager;

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private mHandler:Landroid/os/Handler;

.field private mNapPreloadPkg:Ljava/lang/String;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPreloadedPkg:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ipm/NapPreloadController;->DEBUG:Z

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    .line 67
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/ipm/NapPreloadController;->IPM_AI_PRELOAD_ACTION_DELAY:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "handlerThread"    # Landroid/os/HandlerThread;

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    .line 63
    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/android/server/ipm/NapPreloadController$1;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/NapPreloadController$1;-><init>(Lcom/android/server/ipm/NapPreloadController;)V

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 230
    sget-boolean v0, Lcom/android/server/ipm/PkgPredictorService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/ipm/NapPreloadController;->DEBUG:Z

    .line 231
    iput-object p2, p0, Lcom/android/server/ipm/NapPreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    .line 232
    iput-object p1, p0, Lcom/android/server/ipm/NapPreloadController;->mContext:Landroid/content/Context;

    .line 233
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    .line 234
    if-eqz p3, :cond_2e

    .line 235
    new-instance v0, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ipm/NapPreloadController$PreloadHandler;-><init>(Lcom/android/server/ipm/NapPreloadController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    goto :goto_35

    .line 237
    :cond_2e
    const-string v0, "PkgPredictorService-NapPreloadController"

    const-string v1, "error: handlerThread == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_35
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 241
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.DO_ML_LAUNCH_REPLY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/ipm/NapPreloadController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->iPkgManager:Landroid/content/pm/IPackageManager;

    .line 245
    const-class v1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageManagerInternal;

    iput-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 246
    const-string v1, "deviceidle"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    .line 247
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/NapPreloadController;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/NapPreloadController;

    .line 44
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/NapPreloadController;Ljava/lang/String;I)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/ipm/NapPreloadController;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/server/ipm/NapPreloadController;->determinAppBeBlocked(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/ipm/NapPreloadController;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/ipm/NapPreloadController;
    .param p1, "x1"    # I

    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/ipm/NapPreloadController;->isUserRunningAndUnlocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300()Z
    .registers 1

    .line 44
    sget-boolean v0, Lcom/android/server/ipm/NapPreloadController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$400()Ljava/lang/Object;
    .registers 1

    .line 44
    sget-object v0, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/ipm/NapPreloadController;)Landroid/util/ArraySet;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/NapPreloadController;

    .line 44
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/ipm/NapPreloadController;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/NapPreloadController;
    .param p1, "x1"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    return-object p1
.end method

.method private determinAppBeBlocked(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 394
    const/4 v0, 0x0

    .line 395
    .local v0, "isPkgEverLaunched":Z
    const/4 v1, 0x1

    .line 396
    .local v1, "isPkgStopped":Z
    const/4 v2, 0x0

    .line 397
    .local v2, "isDataCleared":Z
    const/4 v3, 0x0

    .line 398
    .local v3, "isAutoRunBlocked":Z
    const/4 v4, 0x0

    .line 401
    .local v4, "isPkgDisabled":Z
    :try_start_5
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-eqz v5, :cond_17

    .line 402
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageEverLaunched(Ljava/lang/String;I)Z

    move-result v5

    move v0, v5

    .line 403
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {v5, p1, p2}, Landroid/content/pm/PackageManagerInternal;->wasPackageStopped(Ljava/lang/String;I)Z

    move-result v5

    move v1, v5

    .line 406
    :cond_17
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/MARsPolicyManager;->getMARsEnabled()Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 407
    invoke-static {}, Lcom/android/server/am/MARsPolicyManager;->getInstance()Lcom/android/server/am/MARsPolicyManager;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/android/server/am/MARsPolicyManager;->isAutoRunBlockedApp(Ljava/lang/String;I)Z

    move-result v5

    move v3, v5

    .line 410
    :cond_2a
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController;->iPkgManager:Landroid/content/pm/IPackageManager;

    if-eqz v5, :cond_3e

    .line 411
    iget-object v5, p0, Lcom/android/server/ipm/NapPreloadController;->iPkgManager:Landroid/content/pm/IPackageManager;

    invoke-interface {v5, p1, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v5
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_3f

    .line 412
    .local v5, "appState":I
    const/4 v6, 0x4

    if-eq v5, v6, :cond_3d

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3d

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3e

    .line 415
    :cond_3d
    const/4 v4, 0x1

    .line 419
    .end local v5    # "appState":I
    :cond_3e
    goto :goto_40

    .line 418
    :catch_3f
    move-exception v5

    .line 421
    :goto_40
    if-eqz v0, :cond_4b

    if-nez v1, :cond_4b

    if-nez v4, :cond_4b

    if-eqz v3, :cond_49

    goto :goto_4b

    .line 424
    :cond_49
    const/4 v5, 0x0

    return v5

    .line 422
    :cond_4b
    :goto_4b
    const/4 v5, 0x1

    return v5
.end method

.method private isUserRunningAndUnlocked(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 385
    if-nez p1, :cond_4

    .line 386
    const/4 v0, 0x1

    return v0

    .line 388
    :cond_4
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected die(Ljava/lang/String;)V
    .registers 6
    .param p1, "pkg"    # Ljava/lang/String;

    .line 346
    sget-object v0, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    if-eqz p1, :cond_36

    :try_start_5
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 348
    sget-boolean v1, Lcom/android/server/ipm/NapPreloadController;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "PkgPredictorService-NapPreloadController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Die remove: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] from preloaded : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :cond_31
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 351
    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_47

    .line 352
    if-eqz p1, :cond_46

    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    if-eqz v0, :cond_46

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 353
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    .line 355
    :cond_46
    return-void

    .line 351
    :catchall_47
    move-exception v1

    :try_start_48
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 370
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    if-eqz v0, :cond_1f

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preloaded NAP pkgs info:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 373
    :cond_1f
    sget-object v0, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 374
    :try_start_22
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_45

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preloaded AUF pkgs info:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 376
    :cond_45
    monitor-exit v0

    .line 377
    return-void

    .line 376
    :catchall_47
    move-exception v1

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_22 .. :try_end_49} :catchall_47

    throw v1
.end method

.method protected dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 380
    .local p2, "app":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/ipm/PkgInfo;>;"
    invoke-virtual {p0, p2, p3}, Lcom/android/server/ipm/NapPreloadController;->preloadWithUid(Ljava/util/List;Ljava/lang/String;)V

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "preloaded type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  pkgs info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method protected isPreloadedPkg(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 221
    sget-object v0, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 222
    if-eqz p1, :cond_10

    :try_start_5
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 223
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 225
    :cond_10
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 226
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v1
.end method

.method protected listClear(I)V
    .registers 7
    .param p1, "clearflag"    # I

    .line 325
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 326
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 328
    :cond_e
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 329
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    :cond_1c
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 332
    .local v0, "msg":Landroid/os/Message;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 334
    .local v2, "data":Landroid/os/Bundle;
    iput v1, v0, Landroid/os/Message;->what:I

    .line 335
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x0

    :goto_2d
    const-string/jumbo v3, "preload_listclear_type"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 336
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 337
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 338
    return-void
.end method

.method protected declared-synchronized preloadWithUid(Ljava/util/List;Ljava/lang/String;)V
    .registers 24
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/PkgInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/PkgInfo;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    .line 250
    if-eqz v2, :cond_190

    :try_start_9
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_190

    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_15

    goto/16 :goto_190

    .line 252
    :cond_15
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    move-object v4, v0

    .line 253
    .local v4, "meminfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 254
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    .line 255
    .local v5, "limitSize":I
    sget-object v6, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_28
    .catchall {:try_start_9 .. :try_end_28} :catchall_18d

    .line 256
    :try_start_28
    const-string/jumbo v0, "ml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 257
    const/4 v5, 0x1

    .line 259
    :cond_32
    monitor-exit v6
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_18a

    .line 261
    :try_start_33
    iget-boolean v0, v4, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v0, :cond_180

    .line 263
    const-string/jumbo v0, "ml"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_4e

    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 264
    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 266
    .end local p0    # "this":Lcom/android/server/ipm/NapPreloadController;
    :cond_4e
    const-string v0, "booster"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x2

    if-eqz v0, :cond_64

    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 267
    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 269
    :cond_64
    const-string v0, "booster_withoutIO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 270
    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 273
    :cond_79
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 274
    .local v8, "time":J
    const/4 v0, 0x0

    .line 275
    .local v0, "i":I
    const/4 v0, 0x0

    move v10, v0

    .end local v0    # "i":I
    .local v10, "i":I
    :goto_80
    if-ge v10, v5, :cond_149

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_149

    .line 276
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/PkgInfo;

    iget-object v0, v0, Lcom/android/server/ipm/PkgInfo;->packageName:Ljava/lang/String;

    .line 277
    .local v0, "pkgName":Ljava/lang/String;
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/ipm/PkgInfo;

    iget v11, v11, Lcom/android/server/ipm/PkgInfo;->userId:I

    .line 279
    .local v11, "userId":I
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 280
    .local v12, "msg":Landroid/os/Message;
    new-instance v13, Landroid/os/Bundle;

    invoke-direct {v13}, Landroid/os/Bundle;-><init>()V

    .line 281
    .local v13, "data":Landroid/os/Bundle;
    const-string/jumbo v14, "preload_pkgs"

    invoke-virtual {v13, v14, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string/jumbo v14, "preload_uid"

    invoke-virtual {v13, v14, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 284
    const-string/jumbo v14, "ml"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const/4 v15, 0x0

    if-eqz v14, :cond_d8

    .line 285
    const-string/jumbo v14, "preload_type"

    const-string/jumbo v7, "ml"

    invoke-virtual {v13, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string/jumbo v7, "use_pageboost"

    invoke-virtual {v13, v7, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 287
    iput v6, v12, Landroid/os/Message;->what:I

    .line 288
    invoke-virtual {v12, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 289
    iget-object v7, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    sget-wide v14, Lcom/android/server/ipm/NapPreloadController;->IPM_AI_PRELOAD_ACTION_DELAY:J

    const-wide/16 v17, 0x3

    mul-long v14, v14, v17

    invoke-virtual {v7, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_143

    .line 290
    :cond_d8
    const-string v7, "booster"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-wide/16 v17, 0x5

    if-eqz v7, :cond_10f

    .line 291
    const-string/jumbo v7, "preload_type"

    const-string v14, "booster"

    invoke-virtual {v13, v7, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v7, "use_pageboost"

    invoke-virtual {v13, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 293
    const-string v7, "booster_batch"

    invoke-virtual {v13, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 294
    const/4 v7, 0x2

    iput v7, v12, Landroid/os/Message;->what:I

    .line 295
    invoke-virtual {v12, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 296
    iget-object v7, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    sget-wide v14, Lcom/android/server/ipm/NapPreloadController;->IPM_AI_PRELOAD_ACTION_DELAY:J

    mul-long v14, v14, v17

    move-object/from16 v19, v7

    int-to-long v6, v10

    sget-wide v17, Lcom/android/server/ipm/NapPreloadController;->IPM_AI_PRELOAD_ACTION_DELAY:J

    mul-long v6, v6, v17

    add-long/2addr v14, v6

    move-object/from16 v6, v19

    invoke-virtual {v6, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_143

    .line 297
    :cond_10f
    const-string v6, "booster_withoutIO"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_143

    .line 298
    const-string/jumbo v6, "preload_type"

    const-string v7, "booster"

    invoke-virtual {v13, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string/jumbo v6, "use_pageboost"

    invoke-virtual {v13, v6, v15}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 300
    const-string v6, "booster_batch"

    invoke-virtual {v13, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 301
    const/4 v6, 0x2

    iput v6, v12, Landroid/os/Message;->what:I

    .line 302
    invoke-virtual {v12, v13}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 303
    iget-object v7, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    sget-wide v14, Lcom/android/server/ipm/NapPreloadController;->IPM_AI_PRELOAD_ACTION_DELAY:J

    mul-long v14, v14, v17

    move-object/from16 v17, v7

    int-to-long v6, v10

    sget-wide v19, Lcom/android/server/ipm/NapPreloadController;->IPM_AI_PRELOAD_ACTION_DELAY:J

    mul-long v6, v6, v19

    add-long/2addr v14, v6

    move-object/from16 v6, v17

    invoke-virtual {v6, v12, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 275
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v11    # "userId":I
    .end local v12    # "msg":Landroid/os/Message;
    .end local v13    # "data":Landroid/os/Bundle;
    :cond_143
    :goto_143
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x2

    goto/16 :goto_80

    .line 307
    :cond_149
    const-string v0, "booster"

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17f

    .line 308
    sget-object v6, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_154
    .catchall {:try_start_33 .. :try_end_154} :catchall_18d

    .line 309
    :try_start_154
    iget-object v0, v1, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 310
    monitor-exit v6
    :try_end_15a
    .catchall {:try_start_154 .. :try_end_15a} :catchall_17c

    .line 311
    :try_start_15a
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 312
    .local v0, "msg":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v6, "data":Landroid/os/Bundle;
    const-string v7, "booster_batch"

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    const/4 v7, 0x4

    iput v7, v0, Landroid/os/Message;->what:I

    .line 315
    invoke-virtual {v0, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 316
    iget-object v7, v1, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x1388

    int-to-long v13, v10

    const-wide/16 v15, 0x3e8

    mul-long/2addr v13, v15

    add-long/2addr v13, v11

    invoke-virtual {v7, v0, v13, v14}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_17b
    .catchall {:try_start_15a .. :try_end_17b} :catchall_18d

    goto :goto_17f

    .line 310
    .end local v0    # "msg":Landroid/os/Message;
    .end local v6    # "data":Landroid/os/Bundle;
    :catchall_17c
    move-exception v0

    :try_start_17d
    monitor-exit v6
    :try_end_17e
    .catchall {:try_start_17d .. :try_end_17e} :catchall_17c

    :try_start_17e
    throw v0

    .line 318
    .end local v8    # "time":J
    .end local v10    # "i":I
    :cond_17f
    :goto_17f
    goto :goto_188

    .line 319
    :cond_180
    const-string v0, "PkgPredictorService-NapPreloadController"

    const-string/jumbo v6, "give up preloading for low memory!"

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_188
    .catchall {:try_start_17e .. :try_end_188} :catchall_18d

    .line 321
    :goto_188
    monitor-exit p0

    return-void

    .line 259
    :catchall_18a
    move-exception v0

    :try_start_18b
    monitor-exit v6
    :try_end_18c
    .catchall {:try_start_18b .. :try_end_18c} :catchall_18a

    :try_start_18c
    throw v0
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18d

    .line 249
    .end local v4    # "meminfo":Landroid/app/ActivityManager$MemoryInfo;
    .end local v5    # "limitSize":I
    .end local p1    # "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/PkgInfo;>;"
    .end local p2    # "type":Ljava/lang/String;
    :catchall_18d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 251
    .restart local p0    # "this":Lcom/android/server/ipm/NapPreloadController;
    .restart local p1    # "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/PkgInfo;>;"
    .restart local p2    # "type":Ljava/lang/String;
    :cond_190
    :goto_190
    monitor-exit p0

    return-void
.end method

.method protected setCurrent(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .line 359
    sget-boolean v0, Lcom/android/server/ipm/NapPreloadController;->DEBUG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User using: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PkgPredictorService-NapPreloadController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_1a
    sget-object v0, Lcom/android/server/ipm/NapPreloadController;->mPreloadPkgLock:Ljava/lang/Object;

    monitor-enter v0

    .line 361
    if-eqz p1, :cond_2c

    :try_start_1f
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 362
    iget-object v1, p0, Lcom/android/server/ipm/NapPreloadController;->mPreloadedPkg:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 363
    :cond_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_1f .. :try_end_2d} :catchall_3d

    .line 364
    if-eqz p1, :cond_3c

    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    if-eqz v0, :cond_3c

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mNapPreloadPkg:Ljava/lang/String;

    .line 367
    :cond_3c
    return-void

    .line 363
    :catchall_3d
    move-exception v1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v1
.end method

.method protected stopPreloading()V
    .registers 3

    .line 340
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 341
    iget-object v0, p0, Lcom/android/server/ipm/NapPreloadController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 343
    :cond_e
    return-void
.end method
