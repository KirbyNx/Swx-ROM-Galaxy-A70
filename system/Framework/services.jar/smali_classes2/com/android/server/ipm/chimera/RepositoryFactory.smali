.class Lcom/android/server/ipm/chimera/RepositoryFactory;
.super Ljava/lang/Object;
.source "RepositoryFactory.java"


# static fields
.field static sInstance:Lcom/android/server/ipm/chimera/RepositoryFactory;

.field static sSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

.field static sSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sInstance:Lcom/android/server/ipm/chimera/RepositoryFactory;

    .line 14
    sput-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 17
    sput-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static declared-synchronized getInstance()Lcom/android/server/ipm/chimera/RepositoryFactory;
    .registers 2

    const-class v0, Lcom/android/server/ipm/chimera/RepositoryFactory;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/android/server/ipm/chimera/RepositoryFactory;->sInstance:Lcom/android/server/ipm/chimera/RepositoryFactory;

    if-nez v1, :cond_e

    .line 24
    new-instance v1, Lcom/android/server/ipm/chimera/RepositoryFactory;

    invoke-direct {v1}, Lcom/android/server/ipm/chimera/RepositoryFactory;-><init>()V

    sput-object v1, Lcom/android/server/ipm/chimera/RepositoryFactory;->sInstance:Lcom/android/server/ipm/chimera/RepositoryFactory;

    .line 26
    :cond_e
    sget-object v1, Lcom/android/server/ipm/chimera/RepositoryFactory;->sInstance:Lcom/android/server/ipm/chimera/RepositoryFactory;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 22
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method declared-synchronized getSettingRepository(Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/SettingRepository;
    .registers 3
    .param p1, "systemRepository"    # Lcom/android/server/ipm/chimera/SystemRepository;

    monitor-enter p0

    .line 37
    :try_start_1
    sget-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    if-nez v0, :cond_c

    .line 38
    new-instance v0, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;

    invoke-direct {v0, p1}, Lcom/android/server/ipm/chimera/SettingRepositoryDefault;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    sput-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    .line 40
    .end local p0    # "this":Lcom/android/server/ipm/chimera/RepositoryFactory;
    :cond_c
    sget-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 36
    .end local p1    # "systemRepository":Lcom/android/server/ipm/chimera/SystemRepository;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/ipm/chimera/SystemRepository;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    monitor-enter p0

    .line 30
    :try_start_1
    sget-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    if-nez v0, :cond_c

    .line 31
    new-instance v0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;

    invoke-direct {v0, p1, p2}, Lcom/android/server/ipm/chimera/SystemRepositoryDefault;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 33
    .end local p0    # "this":Lcom/android/server/ipm/chimera/RepositoryFactory;
    :cond_c
    sget-object v0, Lcom/android/server/ipm/chimera/RepositoryFactory;->sSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    .line 29
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "activityManagerService":Lcom/android/server/am/ActivityManagerService;
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
