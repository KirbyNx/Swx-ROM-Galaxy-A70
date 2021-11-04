.class public Lcom/android/server/ipm/chimera/ChimeraManager;
.super Ljava/lang/Object;
.source "ChimeraManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ChimeraManager"


# instance fields
.field private mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

.field private mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

.field private mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

.field private final mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

.field private final mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

.field private final mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p3, "handlerThread"    # Landroid/os/HandlerThread;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    .line 15
    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 16
    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 23
    invoke-static {}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getInstance()Lcom/android/server/ipm/chimera/RepositoryFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getSystemRepository(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/ipm/chimera/SystemRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 24
    invoke-static {}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getInstance()Lcom/android/server/ipm/chimera/RepositoryFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/RepositoryFactory;->getSettingRepository(Lcom/android/server/ipm/chimera/SystemRepository;)Lcom/android/server/ipm/chimera/SettingRepository;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    .line 25
    new-instance v1, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    .line 26
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;Landroid/os/Looper;)V

    move-object v0, v1

    .line 27
    .local v0, "recentAppManager":Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;
    new-instance v1, Lcom/android/server/ipm/chimera/ChimeraStrategy;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/ipm/chimera/ChimeraStrategy;-><init>(Lcom/android/server/ipm/chimera/ChimeraRecentAppManager;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V

    iput-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    .line 28
    new-instance v1, Lcom/android/server/ipm/chimera/ChimeraAppManager;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-direct {v1, v2}, Lcom/android/server/ipm/chimera/ChimeraAppManager;-><init>(Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    .line 30
    new-instance v1, Lcom/android/server/ipm/chimera/SystemEventListener;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/ipm/chimera/SystemEventListener;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/ipm/chimera/SystemRepository;)V

    iput-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    .line 33
    invoke-static {p1}, Lcom/android/server/ipm/chimera/ChimeraStandbyBucketCollectorService;->schedule(Landroid/content/Context;)V

    .line 35
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraManager;->createPolicyHandler()V

    .line 36
    return-void
.end method

.method private createPolicyHandler()V
    .registers 6

    .line 57
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v0}, Lcom/android/server/ipm/chimera/SettingRepository;->isConservativeMode()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 58
    new-instance v0, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ipm/chimera/ConservativePolicyHandler;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    goto :goto_27

    .line 60
    :cond_18
    new-instance v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    iget-object v3, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemRepository:Lcom/android/server/ipm/chimera/SystemRepository;

    iget-object v4, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler;-><init>(Lcom/android/server/ipm/chimera/ChimeraAppManager;Lcom/android/server/ipm/chimera/ChimeraStrategy;Lcom/android/server/ipm/chimera/SystemRepository;Lcom/android/server/ipm/chimera/SettingRepository;)V

    iput-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    .line 63
    :goto_27
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraManager;->registerSystemEventListener()V

    .line 64
    return-void
.end method

.method public static isRescheduleExceptionPackage(Ljava/lang/String;)Z
    .registers 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 115
    invoke-static {}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->getInstance()Lcom/android/server/ipm/chimera/RestartImmediatePackages;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/ipm/chimera/RestartImmediatePackages;->hasPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private registerSystemEventListener()V
    .registers 3

    .line 39
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->addBottleNeckHintListener(Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;)V

    .line 40
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->addPmmCriticalListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;)V

    .line 41
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->addPmmStateChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;)V

    .line 42
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->addLmkdEventListener(Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;)V

    .line 43
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->addHomeLaunchListener(Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 44
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->addCarModeChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;)V

    .line 45
    return-void
.end method

.method private unRegisterSystemEventListener()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->removeBottleNeckHintListener(Lcom/android/server/ipm/chimera/SystemEventListener$BottleNeckHintListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->removePmmCriticalListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmCriticalListener;)V

    .line 50
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->removePmmStateChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$PmmStateChangeListener;)V

    .line 51
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->removeLmkdEventListener(Lcom/android/server/ipm/chimera/SystemEventListener$LmkdEventListener;)V

    .line 52
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->removeHomeLaunchListener(Lcom/android/server/ipm/chimera/SystemEventListener$HomeLaunchListener;)V

    .line 53
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSystemEventListener:Lcom/android/server/ipm/chimera/SystemEventListener;

    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/ipm/chimera/SystemEventListener;->removeCarModeChangeListener(Lcom/android/server/ipm/chimera/SystemEventListener$CarModeChangeListener;)V

    .line 54
    return-void
.end method


# virtual methods
.method public collectStandbyBucket()V
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->collectStandbyBucketList()V

    .line 68
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 71
    if-eqz p2, :cond_109

    array-length v0, p2

    if-nez v0, :cond_7

    goto/16 :goto_109

    .line 75
    :cond_7
    const/4 v0, 0x0

    aget-object v1, p2, v0

    const-string v2, "-a"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "Chimera enabled: true"

    if-eqz v1, :cond_19

    .line 77
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_fe

    .line 78
    :cond_19
    aget-object v0, p2, v0

    const-string v1, "-chimera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_fe

    .line 79
    array-length v0, p2

    const/4 v1, 0x1

    if-le v0, v1, :cond_fe

    .line 80
    aget-object v0, p2, v1

    .line 81
    .local v0, "type":Ljava/lang/String;
    const-string/jumbo v1, "info"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 83
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_fe

    .line 84
    :cond_37
    const-string/jumbo v1, "standby"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 85
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mAppManager:Lcom/android/server/ipm/chimera/ChimeraAppManager;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ChimeraAppManager;->dumpStandbyBucket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_fe

    .line 86
    :cond_4b
    const-string/jumbo v1, "use_bg_keeping_policy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_8c

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chimera set ConservativePolicy mode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    aget-object v1, p2, v2

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 89
    .local v1, "conservativeMode":Z
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v2}, Lcom/android/server/ipm/chimera/SettingRepository;->isConservativeMode()Z

    move-result v2

    if-eq v1, v2, :cond_8b

    .line 90
    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v2, v1}, Lcom/android/server/ipm/chimera/SettingRepository;->enableConservativeMode(Z)V

    .line 91
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraManager;->unRegisterSystemEventListener()V

    .line 92
    invoke-direct {p0}, Lcom/android/server/ipm/chimera/ChimeraManager;->createPolicyHandler()V

    .line 94
    .end local v1    # "conservativeMode":Z
    :cond_8b
    goto :goto_fe

    :cond_8c
    const-string/jumbo v1, "reclaim_cache"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string/jumbo v3, "off"

    const-string/jumbo v4, "on"

    if-eqz v1, :cond_c9

    .line 95
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/ipm/chimera/SettingRepository;->enableReclaimPageCache(Z)V

    .line 96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reclaim_cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v2}, Lcom/android/server/ipm/chimera/SettingRepository;->isReclaimPageCacheEnabled()Z

    move-result v2

    if-eqz v2, :cond_be

    move-object v3, v4

    :cond_be
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_fe

    .line 97
    :cond_c9
    const-string v1, "gc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fe

    .line 98
    iget-object v1, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    aget-object v2, p2, v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/server/ipm/chimera/SettingRepository;->enableGc(Z)V

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsGcenable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mSettingRepository:Lcom/android/server/ipm/chimera/SettingRepository;

    invoke-interface {v2}, Lcom/android/server/ipm/chimera/SettingRepository;->isGcEnabled()Z

    move-result v2

    if-eqz v2, :cond_f4

    move-object v3, v4

    :cond_f4
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 104
    .end local v0    # "type":Ljava/lang/String;
    :cond_fe
    :goto_fe
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ipm/chimera/PolicyHandler;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mChimeraStrategy:Lcom/android/server/ipm/chimera/ChimeraStrategy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ipm/chimera/ChimeraStrategy;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 106
    return-void

    .line 72
    :cond_109
    :goto_109
    return-void
.end method

.method public getChimeraStat()Lcom/android/server/ipm/chimera/ChimeraDataInfo;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/ipm/chimera/ChimeraManager;->mPolicyHandler:Lcom/android/server/ipm/chimera/PolicyHandler;

    invoke-virtual {v0}, Lcom/android/server/ipm/chimera/PolicyHandler;->getChimeraStat()Lcom/android/server/ipm/chimera/ChimeraDataInfo;

    move-result-object v0

    return-object v0
.end method
