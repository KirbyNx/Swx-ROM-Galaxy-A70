.class Lcom/android/server/ipm/chimera/SystemRepositoryDefault;
.super Ljava/lang/Object;
.source "SystemRepositoryDefault.java"

# interfaces
.implements Lcom/android/server/ipm/chimera/SystemRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAUNCHER_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final IS_USER_SHIP_BUILD:Z

.field private static final TAG:Ljava/lang/String; = "SystemRepositoryDefault"


# instance fields
.field private final mActivityManager:Landroid/app/ActivityManager;

.field private final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAudioManager:Landroid/media/AudioManager;

.field private final mChimeraProcessObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mChimeraUidObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPkgIconMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessObserver:Landroid/app/IProcessObserver;

.field private mSmartSwitchEventReceiver:Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

.field private final mUidObserver:Landroid/app/IUidObserver;

.field private final mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 50
    const-string/jumbo v0, "ro.build.type"

    const-string/jumbo v1, "user"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 51
    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, "0x4f4c"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 52
    const-string/jumbo v0, "ro.product_ship"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    goto :goto_32

    :cond_31
    const/4 v0, 0x0

    :goto_32
    sput-boolean v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->IS_USER_SHIP_BUILD:Z

    .line 50
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    .line 364
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    .line 366
    new-instance v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$2;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$2;-><init>(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mUidObserver:Landroid/app/IUidObserver;

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    .line 401
    new-instance v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;

    invoke-direct {v0, p0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$3;-><init>(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 110
    iput-object p1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    .line 111
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManager:Landroid/app/ActivityManager;

    .line 112
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 114
    iput-object p2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 115
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    .line 117
    new-instance v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

    invoke-direct {v0, p1}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mSmartSwitchEventReceiver:Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    .line 45
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    .line 45
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    return-object v0
.end method

.method private static convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;

    .line 187
    const-string v0, "Chimera"

    .line 188
    .local v0, "TAG_PREFIX":Ljava/lang/String;
    if-eqz p0, :cond_1b

    const-string v1, "Chimera"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    :cond_1b
    return-object p0
.end method

.method private declared-synchronized getDeviceIdleController()Landroid/os/IDeviceIdleController;
    .registers 4

    monitor-enter p0

    .line 269
    :try_start_1
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_34

    .line 270
    const-string v0, "deviceidle"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 271
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_2d

    .line 272
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_38

    .line 273
    if-eqz v1, :cond_24

    .line 275
    :try_start_15
    new-instance v1, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$1;

    invoke-direct {v1, p0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$1;-><init>(Lcom/android/server/ipm/chimera/SystemRepositoryDefault;)V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1e} :catch_1f
    .catchall {:try_start_15 .. :try_end_1e} :catchall_38

    .line 283
    goto :goto_34

    .line 281
    .end local p0    # "this":Lcom/android/server/ipm/chimera/SystemRepositoryDefault;
    :catch_1f
    move-exception v1

    .line 282
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_20
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 283
    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_34

    .line 285
    :cond_24
    const-string v1, "SystemRepositoryDefault"

    const-string/jumbo v2, "mDeviceIdleController is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 288
    :cond_2d
    const-string v1, "SystemRepositoryDefault"

    const-string v2, "binder is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mDeviceIdleController:Landroid/os/IDeviceIdleController;
    :try_end_36
    .catchall {:try_start_20 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-object v0

    .line 268
    :catchall_38
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic lambda$getFullPowerWhitelist$0(Landroid/os/IDeviceIdleController;)[Ljava/lang/String;
    .registers 2
    .param p0, "iDeviceIdleController"    # Landroid/os/IDeviceIdleController;

    .line 299
    :try_start_0
    invoke-interface {p0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 300
    :catch_5
    move-exception v0

    .line 301
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 303
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public currentTimeMillis()J
    .registers 3

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public forceGc(I)V
    .registers 3
    .param p1, "pid"    # I

    .line 196
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->forceGc(I)V

    .line 197
    return-void
.end method

.method public getAppStandbyBucket(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 222
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public getAppStandbyBucket(Ljava/lang/String;IJ)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "elapsedRealtime"    # J

    .line 227
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/usage/UsageStatsManagerInternal;->getAppStandbyBucket(Ljava/lang/String;IJ)I

    move-result v0

    return v0
.end method

.method public getAppStandbyBuckets()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/usage/UsageStatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 317
    .local v0, "usageStatsService":Landroid/app/usage/UsageStatsManager;
    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManager;->getAppStandbyBuckets()Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method public getAvailableMemory()J
    .registers 4

    .line 127
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 128
    .local v0, "memoryInfo":Landroid/app/ActivityManager$MemoryInfo;
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 129
    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    return-wide v1
.end method

.method public getCurrentHomePackageName()Ljava/lang/String;
    .registers 3

    .line 453
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/HomeFilter;->getInstance()Lcom/android/server/am/mars/filter/filter/HomeFilter;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$SEIyz0vYR92_G4PzpU5jUazAAro;

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 455
    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 453
    return-object v0
.end method

.method public getFullPowerWhitelist()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->getDeviceIdleController()Landroid/os/IDeviceIdleController;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/ipm/chimera/-$$Lambda$SystemRepositoryDefault$zsi926kDWlWN4Imt4va78F28gu4;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$SystemRepositoryDefault$zsi926kDWlWN4Imt4va78F28gu4;

    .line 297
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$Rs9_gA1xTep2nMo43Ri8tER5SOw;

    .line 305
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    .line 306
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 296
    return-object v0
.end method

.method public getLongLiveProcessesForUser(I)Ljava/util/List;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 311
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->getLongLiveProcessesForUser(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPackageNameFromUid(I)[Ljava/lang/String;
    .registers 4
    .param p1, "uid"    # I

    .line 447
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, "packages":[Ljava/lang/String;
    if-eqz v0, :cond_a

    move-object v1, v0

    goto :goto_d

    :cond_a
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    :goto_d
    return-object v1
.end method

.method public getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;
    .registers 6
    .param p1, "pids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Landroid/util/Pair<",
            "[I[I>;"
        }
    .end annotation

    .line 151
    array-length v0, p1

    .line 152
    .local v0, "len":I
    if-gtz v0, :cond_5

    .line 153
    const/4 v1, 0x0

    return-object v1

    .line 155
    :cond_5
    new-array v1, v0, [I

    .line 156
    .local v1, "states":[I
    new-array v2, v0, [I

    .line 157
    .local v2, "scores":[I
    iget-object v3, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 158
    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3
.end method

.method public getPss(I[J)J
    .registers 5
    .param p1, "pid"    # I
    .param p2, "outUssSwapPssRss"    # [J

    .line 134
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/Debug;->getPss(I[J[J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 333
    .local v0, "runningAppProcesses":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;>;"
    const/4 v1, 0x0

    .line 335
    .local v1, "lru":I
    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 336
    .local v3, "org":Landroid/app/ActivityManager$RunningAppProcessInfo;
    new-instance v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;

    invoke-direct {v4}, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;-><init>()V

    .line 337
    .local v4, "info":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 338
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pid:I

    .line 339
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iput v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->uid:I

    .line 340
    iget-object v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    iput-object v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 341
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    iput v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->flags:I

    .line 342
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    iput v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->importance:I

    .line 343
    iget v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    iput v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->processState:I

    .line 344
    iget-boolean v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    iput-boolean v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->isFocused:Z

    .line 345
    iget-wide v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    iput-wide v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lastActivityTime:J

    .line 346
    iget-wide v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastPss:J

    iput-wide v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lastPss:J

    .line 347
    iget-wide v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->initialIdlePss:J

    iput-wide v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->initialIdlePss:J

    .line 348
    iget-boolean v5, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->isProtectedInPicked:Z

    iput-boolean v5, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->isProtectedInPicked:Z

    .line 349
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "lru":I
    .local v5, "lru":I
    iput v1, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->lru:I

    .line 350
    iget-wide v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->minPss:J

    iput-wide v6, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->minPss:J

    .line 351
    iget-wide v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->avgPss:J

    iput-wide v6, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->avgPss:J

    .line 352
    iget-wide v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->maxPss:J

    iput-wide v6, v4, Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;->maxPss:J

    .line 353
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 354
    .end local v3    # "org":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v4    # "info":Lcom/android/server/ipm/chimera/SystemRepository$RunningAppProcessInfo;
    move v1, v5

    goto :goto_10

    .line 355
    .end local v5    # "lru":I
    .restart local v1    # "lru":I
    :cond_66
    return-object v0
.end method

.method public getSystemPid()I
    .registers 2

    .line 327
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    return v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 122
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserId(I)I
    .registers 3
    .param p1, "uid"    # I

    .line 476
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWakeLockPackageList()[Ljava/lang/String;
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/android/server/ipm/chimera/-$$Lambda$XWYtRYsOmv33QiJGXQk-PW6L_A0;->INSTANCE:Lcom/android/server/ipm/chimera/-$$Lambda$XWYtRYsOmv33QiJGXQk-PW6L_A0;

    .line 262
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    .line 263
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 261
    return-object v0
.end method

.method public hasChimeraProtectedProc(Ljava/lang/String;I)I
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 173
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->hasChimeraProtectedProc(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public hasMessages(Landroid/os/Handler;ILjava/lang/Object;)Z
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 481
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hasPkgIcon(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 207
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 210
    :cond_15
    new-instance v0, Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 211
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 215
    .local v1, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_35

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_35

    const/4 v2, 0x1

    .line 216
    .local v2, "pkgHasIcon":Z
    :cond_35
    iget-object v3, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mPkgIconMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    return v2
.end method

.method public hasRestartService(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 183
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->hasRestartService(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isApp(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 256
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    return v0
.end method

.method public isInCall()Z
    .registers 3

    .line 232
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_10

    .line 233
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    .line 235
    :cond_10
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public isKilledByRecentTask(ILjava/lang/String;)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 178
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->isKilledByRecentTask(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isOnScreenWindow(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 168
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->isOnScreenWindow(I)Z

    move-result v0

    return v0
.end method

.method public isScreenOff()Z
    .registers 3

    .line 360
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 361
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isSmartSwitchWorking()Z
    .registers 2

    .line 322
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mSmartSwitchEventReceiver:Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->isSmartSwitchWorking()Z

    move-result v0

    return v0
.end method

.method public isThreadGroupLeader(I)Z
    .registers 3
    .param p1, "pid"    # I

    .line 491
    invoke-static {p1}, Landroid/os/Process;->getThreadGroupLeader(I)I

    move-result v0

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isUserShipBuild()Z
    .registers 2

    .line 138
    sget-boolean v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->IS_USER_SHIP_BUILD:Z

    return v0
.end method

.method public killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "reason"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerService;->killProcessForChimera(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 201
    invoke-static {p1}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    return-void
.end method

.method public logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "log"    # Ljava/lang/String;

    .line 143
    sget-boolean v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->IS_USER_SHIP_BUILD:Z

    if-nez v0, :cond_b

    .line 144
    invoke-static {p1}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->convertToChimeraTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_b
    return-void
.end method

.method public registerProcessObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;)V
    .registers 5
    .param p1, "observer"    # Lcom/android/server/ipm/chimera/SystemRepository$ChimeraProcessObserver;

    .line 432
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    monitor-enter v0

    .line 433
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraProcessObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_21

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    .line 436
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1a} :catch_1b
    .catchall {:try_start_11 .. :try_end_1a} :catchall_21

    .line 439
    goto :goto_1f

    .line 437
    :catch_1b
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1c
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 441
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    :goto_1f
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_21
    move-exception v1

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1c .. :try_end_23} :catchall_21

    throw v1
.end method

.method public registerUidObserver(Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;)V
    .registers 8
    .param p1, "observer"    # Lcom/android/server/ipm/chimera/SystemRepository$ChimeraUidObserver;

    .line 240
    iget-object v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    monitor-enter v0

    .line 241
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    iget-object v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mChimeraUidObservers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_24

    const/4 v2, 0x1

    if-ne v1, v2, :cond_22

    .line 244
    :try_start_11
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v3, 0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_1d} :catch_1e
    .catchall {:try_start_11 .. :try_end_1d} :catchall_24

    .line 249
    goto :goto_22

    .line 247
    :catch_1e
    move-exception v1

    .line 248
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_1f
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 251
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    :goto_22
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    throw v1
.end method

.method public removeMessages(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 486
    invoke-virtual {p1, p2, p3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 487
    return-void
.end method

.method public sendMessage(Landroid/os/Handler;ILjava/lang/Object;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .line 460
    if-eqz p1, :cond_9

    .line 461
    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 462
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    .end local v0    # "msg":Landroid/os/Message;
    :cond_9
    return-void
.end method

.method public sendMessageDelayed(Landroid/os/Handler;ILjava/lang/Object;J)V
    .registers 7
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "delayMillis"    # J

    .line 468
    if-eqz p1, :cond_9

    .line 469
    invoke-static {p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 470
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {p1, v0, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 472
    .end local v0    # "msg":Landroid/os/Message;
    :cond_9
    return-void
.end method
