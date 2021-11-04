.class public Lcom/android/server/knox/ddar/proxy/DualDARComnService;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyService$Stub;
.source "DualDARComnService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final DUALDAR_AGENT:Ljava/lang/String; = "com.samsung.android.knox.containercore"

.field public static final DUALDAR_AGENT_METADATA:Ljava/lang/String; = "proxyAgent.class"

.field public static final MSG_AGENT_DIED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DualDARComnService"


# instance fields
.field private final SYSTEM_PROXY_AGENT:Ljava/lang/String;

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;",
            "Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mProxyAgentsLock:Ljava/lang/Object;

.field private mRegisteredProxyAgents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRegisteredProxyAgentsLock:Ljava/lang/Object;

.field private mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyService$Stub;-><init>()V

    .line 68
    const-string v0, "SYSTEM_PROXY_AGENT"

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->SYSTEM_PROXY_AGENT:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 72
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    .line 73
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    .line 74
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    .line 75
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    .line 77
    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 80
    new-instance v0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$1;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    new-instance v0, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;

    invoke-direct {v0, p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$2;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 121
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    .line 122
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 123
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mUserManager:Landroid/os/UserManager;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DualDARComnService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "handlerThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 128
    new-instance v1, Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$3;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    .line 140
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DualDARComnService-bgThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 141
    .local v1, "backgroundThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 142
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectAgentsByUser(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->reConnectAgentsByPkgName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->hasKnoxKPUInternalPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->isDualDAREnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/knox/ddar/proxy/DualDARComnService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .param p1, "x1"    # I

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->addKPUAppToWhitelist(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/knox/ddar/proxy/DualDARComnService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    .line 62
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addKPUAppToWhitelist(I)V
    .registers 10
    .param p1, "userId"    # I

    .line 317
    const-string v0, "dualdar-config-datalock-whitelistpackages"

    const-string v1, "DualDARComnService"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 318
    .local v2, "bundle":Landroid/os/Bundle;
    const/4 v3, -0x1

    .line 320
    .local v3, "adminUid":I
    const/4 v4, 0x0

    :try_start_b
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getAdminComponentName(I)Landroid/content/ComponentName;

    move-result-object v5

    .line 321
    .local v5, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v6
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1d} :catch_1f

    move v3, v6

    .line 324
    .end local v5    # "cn":Landroid/content/ComponentName;
    goto :goto_3b

    .line 322
    :catch_1f
    move-exception v5

    .line 323
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setClientInfo failed ! Component may be null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 326
    .end local v5    # "e":Ljava/lang/Exception;
    :goto_3b
    :try_start_3b
    const-string v5, "DualDARPolicy"

    .line 327
    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/ddar/IDualDARPolicy;

    move-result-object v5

    .line 328
    .local v5, "ddarPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    if-eqz v5, :cond_61

    .line 329
    new-instance v6, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v6, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;

    move-result-object v6

    .line 330
    .local v6, "currentConfig":Landroid/os/Bundle;
    if-eqz v6, :cond_61

    .line 331
    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v7

    .line 332
    .local v7, "currentWhitelist":[Landroid/os/Parcelable;
    invoke-virtual {v2, v0, v7}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 333
    new-instance v0, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v0, v3, p1}, Lcom/samsung/android/knox/ContextInfo;-><init>(II)V

    invoke-interface {v5, v0, v2}, Lcom/samsung/android/knox/ddar/IDualDARPolicy;->setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_3b .. :try_end_61} :catch_62

    .line 338
    .end local v5    # "ddarPolicy":Lcom/samsung/android/knox/ddar/IDualDARPolicy;
    .end local v6    # "currentConfig":Landroid/os/Bundle;
    .end local v7    # "currentWhitelist":[Landroid/os/Parcelable;
    :cond_61
    goto :goto_6a

    .line 336
    :catch_62
    move-exception v0

    .line 337
    .local v0, "e":Landroid/os/RemoteException;
    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "addKPUAppToWhitelist Failed"

    invoke-static {v1, v5, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 339
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_6a
    return-void
.end method

.method private connectAgentsByUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connectAgentsByUser User : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 389
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 390
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    .local v1, "it":Ljava/util/Iterator;
    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_46

    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 393
    .local v2, "pair":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 394
    .local v3, "name":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 395
    .local v4, "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    iget v5, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    if-ne v5, p1, :cond_45

    .line 396
    invoke-direct {p0, v4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 398
    .end local v2    # "pair":Ljava/util/Map$Entry;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    :cond_45
    goto :goto_26

    .line 399
    .end local v1    # "it":Ljava/util/Iterator;
    :cond_46
    monitor-exit v0

    .line 400
    return-void

    .line 399
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_1c .. :try_end_4a} :catchall_48

    throw v1
.end method

.method private connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .registers 8
    .param p1, "info"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 509
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    const-string v3, "connectProxyAgentASync"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 510
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_d
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 512
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 513
    .local v2, "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    if-nez v3, :cond_33

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBindPending()Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_33

    .line 520
    :cond_2a
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 521
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4f

    .line 515
    :cond_33
    :goto_33
    const-string v3, "DualDARComnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proxy Agent is already bound or pending bound: Agent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 516
    monitor-exit v1

    return-object v2

    .line 524
    .end local v2    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :cond_4f
    :goto_4f
    new-instance v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0, p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    .line 525
    .restart local v2    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v3

    if-nez v3, :cond_7b

    .line 526
    const-string v3, "DualDARComnService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 527
    const/4 v0, 0x0

    monitor-exit v1

    return-object v0

    .line 530
    :cond_7b
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    monitor-exit v1

    return-object v2

    .line 532
    .end local v2    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :catchall_82
    move-exception v0

    monitor-exit v1
    :try_end_84
    .catchall {:try_start_d .. :try_end_84} :catchall_82

    throw v0
.end method

.method private connectProxyAgentSync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .registers 8
    .param p1, "info"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 442
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    const-string v3, "connectProxyAgentSync"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 444
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_d
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 446
    .local v2, "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_d2

    .line 450
    const/4 v1, 0x0

    if-eqz v2, :cond_74

    .line 451
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 453
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string v3, "Proxy Agent is already bound. So Noop"

    invoke-static {v1, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 454
    return-object v2

    .line 457
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBindPending()Z

    move-result v3

    if-eqz v3, :cond_5c

    .line 458
    new-array v3, v0, [Ljava/lang/Object;

    const-string v4, "DualDARComnService"

    const-string v5, "Bind Pending. So just wait"

    invoke-static {v4, v5, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 459
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    move-result v3

    if-nez v3, :cond_5b

    .line 460
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "DualDARComnService"

    invoke-static {v4, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 461
    return-object v1

    .line 464
    :cond_5b
    return-object v2

    .line 467
    :cond_5c
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 470
    :try_start_5f
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_6f

    .line 474
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 475
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    :cond_6f
    monitor-exit v3

    goto :goto_74

    :catchall_71
    move-exception v0

    monitor-exit v3
    :try_end_73
    .catchall {:try_start_5f .. :try_end_73} :catchall_71

    throw v0

    .line 484
    :cond_74
    :goto_74
    new-instance v3, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, p0, p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;-><init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    move-object v2, v3

    .line 485
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectSync()Z

    move-result v3

    if-nez v3, :cond_9f

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to bind to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v4, "DualDARComnService"

    invoke-static {v4, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 487
    return-object v1

    .line 490
    :cond_9f
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 491
    :try_start_a2
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_c8

    .line 493
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 495
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-object v2, v1

    .end local v2    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .local v1, "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    goto :goto_cd

    .line 498
    .end local v1    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .restart local v2    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :cond_c2
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cd

    .line 502
    :cond_c8
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    :goto_cd
    monitor-exit v0

    .line 505
    return-object v2

    .line 504
    :catchall_cf
    move-exception v1

    monitor-exit v0
    :try_end_d1
    .catchall {:try_start_a2 .. :try_end_d1} :catchall_cf

    throw v1

    .line 446
    .end local v2    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :catchall_d2
    move-exception v0

    :try_start_d3
    monitor-exit v1
    :try_end_d4
    .catchall {:try_start_d3 .. :try_end_d4} :catchall_d2

    throw v0
.end method

.method private deregisterAgentInternal(Ljava/lang/String;)V
    .registers 7
    .param p1, "agentName"    # Ljava/lang/String;

    .line 429
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 431
    .local v1, "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    if-nez v1, :cond_2d

    .line 432
    const-string v2, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Proxy Agent Not Registered Agent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "No action taken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 433
    monitor-exit v0

    return-void

    .line 436
    :cond_2d
    invoke-direct {p0, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->disconnectProxyAgent(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V

    .line 437
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object v3, v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    nop

    .end local v1    # "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    monitor-exit v0

    .line 439
    return-void

    .line 438
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3 .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method private disconnectProxyAgent(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .registers 5
    .param p1, "info"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 536
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 538
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 539
    .local v1, "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 541
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->disconnect()V

    .line 545
    :cond_1c
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 546
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 548
    .end local v1    # "wrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :cond_24
    monitor-exit v0

    .line 549
    return-void

    .line 548
    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_26

    throw v1
.end method

.method private enforceCallingUser()V
    .registers 4

    .line 649
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string v2, "enforceCallingUser"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 651
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 653
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_17

    .line 655
    return-void

    .line 657
    :cond_17
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_22

    .line 660
    return-void

    .line 658
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 4
    .param p1, "agentName"    # Ljava/lang/String;

    .line 423
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    monitor-exit v0

    return-object v1

    .line 425
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private findProxyAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 14
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "actionName"    # Ljava/lang/String;

    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findProxyAgentByAction : agent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "User = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " actionName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARComnService"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 619
    const/4 v0, 0x0

    .line 621
    .local v0, "proxyAgentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    :try_start_32
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 622
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 624
    .local v4, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v2, v1, p2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v5

    .line 625
    .local v5, "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of Apps with action = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3, v6, v7}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 626
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_98

    .line 627
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_74
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 628
    .local v7, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_97

    .line 629
    new-instance v6, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 630
    invoke-virtual {v8}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-direct {v6, p1, p2, v8}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_95} :catch_99

    move-object v0, v6

    .line 631
    goto :goto_98

    .line 633
    .end local v7    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_97
    goto :goto_74

    .line 637
    .end local v2    # "i":Landroid/content/Intent;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    .end local v5    # "proxyServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_98
    :goto_98
    goto :goto_9d

    .line 635
    :catch_99
    move-exception v2

    .line 636
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 639
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_9d
    if-nez v0, :cond_c6

    .line 640
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Proxy Agent Not Found : for package:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for action:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for user:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_dc

    .line 643
    :cond_c6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Knox Proxy Agent Found =   "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 645
    :goto_dc
    return-object v0
.end method

.method private findProxyAgentByMetaData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 15
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaDataName"    # Ljava/lang/String;

    .line 583
    nop

    .line 584
    const-string/jumbo v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 583
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 587
    .local v0, "ipm":Landroid/content/pm/IPackageManager;
    const/16 v1, 0x80

    const/4 v2, 0x0

    :try_start_f
    invoke-interface {v0, p3, v1, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 590
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-interface {v0, p3, p2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v3
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_79

    const/4 v4, 0x0

    const-string v5, "DualDARComnService"

    if-eqz v3, :cond_59

    if-nez v1, :cond_1f

    goto :goto_59

    .line 595
    :cond_1f
    const/4 v3, 0x0

    .line 596
    .local v3, "b":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 597
    .local v6, "pkgName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 599
    .local v7, "className":Ljava/lang/String;
    :try_start_22
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object v3, v8

    .line 600
    if-nez v3, :cond_28

    return-object v2

    .line 602
    :cond_28
    iget-object v8, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v6, v8

    .line 603
    invoke-virtual {v3, p4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v7, v8

    .line 604
    if-eqz v7, :cond_58

    if-nez v6, :cond_35

    goto :goto_58

    .line 607
    :cond_35
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " appInfo.uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v8, v4}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 608
    new-instance v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    new-instance v5, Landroid/content/ComponentName;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, p1, p2, v5}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;-><init>(Ljava/lang/String;ILandroid/content/ComponentName;)V

    return-object v4

    .line 605
    :cond_58
    :goto_58
    return-object v2

    .line 591
    .end local v3    # "b":Landroid/os/Bundle;
    .end local v6    # "pkgName":Ljava/lang/String;
    .end local v7    # "className":Ljava/lang/String;
    :cond_59
    :goto_59
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "package:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " not found user:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_78} :catch_79

    .line 592
    return-object v2

    .line 609
    .end local v1    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_79
    move-exception v1

    .line 610
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 613
    .end local v1    # "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method private hasKnoxKPUInternalPermission(Ljava/lang/String;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 664
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 665
    .local v1, "hasPerm":I
    const/4 v2, 0x0

    if-nez v1, :cond_2a

    .line 666
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hasKnoxKPUInternalPermission "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "DualDARComnService"

    invoke-static {v4, v3, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 667
    const/4 v2, 0x1

    return v2

    .line 669
    :cond_2a
    return v2
.end method

.method private init()V
    .registers 9

    .line 154
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "initialize"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 155
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 156
    .local v0, "userfilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 161
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v1, "packagefilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    const-string v2, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 166
    const-string/jumbo v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 167
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 169
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->init()V

    .line 171
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->initKnownProxyAgents()V

    .line 172
    return-void
.end method

.method private initDualDARAgentsIfRequired()V
    .registers 6

    .line 213
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 214
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "KNOXCORE_PROXY_AGENT"

    const-string v3, "com.samsung.android.knox.containercore"

    const-string/jumbo v4, "proxyAgent.class"

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyManager;->registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    .line 218
    :cond_17
    return-void
.end method

.method private initKnownProxyAgents()V
    .registers 4

    .line 195
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "initKnownProxyAgents"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 198
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->initDualDARAgentsIfRequired()V

    .line 199
    return-void
.end method

.method private isDualDAREnabled(I)Z
    .registers 3
    .param p1, "userId"    # I

    .line 208
    const/4 v0, 0x0

    return v0
.end method

.method private reConnectAgentsByPkgName(Ljava/lang/String;)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reConnectAgentsByPkgName:: package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARComnService"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 404
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 405
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 406
    .local v2, "it":Ljava/util/Iterator;
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5f

    .line 407
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 408
    .local v3, "pair":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 409
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 410
    .local v5, "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    iget-object v6, v5, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 411
    invoke-direct {p0, v5}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-result-object v6

    .line 412
    .local v6, "agentWrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    if-eqz v6, :cond_55

    .line 413
    invoke-virtual {v6}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->enableReconnectionFlag()V

    goto :goto_5e

    .line 415
    :cond_55
    const-string v7, "DualDARComnService"

    const-string v8, "ProxyAgentWrapper is NULL !"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-static {v7, v8, v9}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 418
    .end local v3    # "pair":Ljava/util/Map$Entry;
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .end local v6    # "agentWrapper":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :cond_5e
    :goto_5e
    goto :goto_27

    .line 419
    .end local v2    # "it":Ljava/util/Iterator;
    :cond_5f
    monitor-exit v0

    .line 420
    return-void

    .line 419
    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_1d .. :try_end_63} :catchall_61

    throw v1
.end method

.method private registerAgentByActionInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "actionName"    # Ljava/lang/String;
    .param p5, "connect"    # Z

    .line 366
    const/4 v0, 0x0

    .line 367
    .local v0, "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 368
    :try_start_4
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-object v0, v2

    .line 369
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 370
    const-string v4, "DualDARComnService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox Proxy Agent Already Registered Agent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "No action taken"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 371
    monitor-exit v1

    return v2

    .line 374
    :cond_30
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findProxyAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v4

    move-object v0, v4

    .line 375
    if-nez v0, :cond_42

    .line 376
    const-string v2, "DualDARComnService"

    const-string v4, "Knox Proxy Agent Not found"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 377
    monitor-exit v1

    return v3

    .line 379
    :cond_42
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_50

    .line 382
    if-eqz p5, :cond_4f

    .line 383
    invoke-direct {p0, v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 384
    :cond_4f
    return v2

    .line 380
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2
.end method

.method private registerAgentByMetadataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaDataName"    # Ljava/lang/String;
    .param p5, "connect"    # Z

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 345
    :try_start_4
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v2

    move-object v0, v2

    .line 346
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2c

    .line 347
    const-string v4, "DualDARComnService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox Proxy Agent Already Registered Agent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "No action taken"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 348
    monitor-exit v1

    return v2

    .line 351
    :cond_2c
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findProxyAgentByMetaData(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v4

    move-object v0, v4

    .line 352
    if-nez v0, :cond_3e

    .line 353
    const-string v2, "DualDARComnService"

    const-string v4, "Knox Proxy Agent Not found"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 354
    monitor-exit v1

    return v3

    .line 356
    :cond_3e
    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mRegisteredProxyAgents:Ljava/util/HashMap;

    iget-object v4, v0, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_4 .. :try_end_46} :catchall_4c

    .line 359
    if-eqz p5, :cond_4b

    .line 360
    invoke-direct {p0, v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 361
    :cond_4b
    return v2

    .line 357
    :catchall_4c
    move-exception v2

    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw v2
.end method


# virtual methods
.method public deregisterAgent(Ljava/lang/String;)V
    .registers 5
    .param p1, "agentName"    # Ljava/lang/String;

    .line 241
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string v2, "deregisterAgent"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 242
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 244
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->deregisterAgentInternal(Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 191
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .registers 2

    .line 146
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public handleAgentDied(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .registers 8
    .param p1, "info"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 552
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    const-string/jumbo v3, "handleAgentDied"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 553
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgentsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 554
    :try_start_e
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 556
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->markStale()V

    .line 557
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mProxyAgents:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    :cond_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_80

    .line 562
    :try_start_27
    const-string/jumbo v1, "package"

    .line 563
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 562
    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 564
    .local v1, "ipm":Landroid/content/pm/IPackageManager;
    iget-object v2, p1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v3, p1, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 565
    const-string v2, "DualDARComnService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not installed service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 566
    return-void

    .line 569
    :cond_5d
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentASync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-result-object v2

    .line 570
    .local v2, "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    if-eqz v2, :cond_67

    .line 571
    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->enableReconnectionFlag()V

    goto :goto_70

    .line 573
    :cond_67
    const-string v3, "DualDARComnService"

    const-string v4, "ProxyAgentWrapper is NULL !"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_70} :catch_71

    .line 578
    .end local v1    # "ipm":Landroid/content/pm/IPackageManager;
    .end local v2    # "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :goto_70
    goto :goto_7f

    .line 575
    :catch_71
    move-exception v1

    .line 576
    .local v1, "e":Landroid/os/RemoteException;
    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    const-string/jumbo v3, "reconnectService remote exception"

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 577
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 579
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_7f
    return-void

    .line 559
    :catchall_80
    move-exception v0

    :try_start_81
    monitor-exit v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_80

    throw v0
.end method

.method public synthetic lambda$relayAsync$0$DualDARComnService(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 11
    .param p1, "agentInfo"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .param p2, "agentName"    # Ljava/lang/String;
    .param p3, "svcName"    # Ljava/lang/String;
    .param p4, "command"    # Ljava/lang/String;
    .param p5, "params"    # Landroid/os/Bundle;

    .line 300
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-result-object v0

    .line 301
    .local v0, "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "relayAsync from bg thread, relay start to agent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DualDARComnService"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 302
    if-eqz v0, :cond_28

    .line 303
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2f

    .line 305
    :cond_28
    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "ProxyAgentWrapper is NULL !"

    invoke-static {v4, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 308
    :goto_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "relayAsync from bg thread, relay end to agent : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v4, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    return-void
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "obj"    # Landroid/os/IBinder;

    .line 188
    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 176
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 184
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2
    .param p1, "uid"    # I

    .line 180
    return-void
.end method

.method public registerAgentByAction(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "actionName"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "registerAgentByAction"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 226
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 228
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->registerAgentByActionInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public registerAgentByMetadata(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 14
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "metaDataName"    # Ljava/lang/String;

    .line 233
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARComnService"

    const-string/jumbo v2, "registerAgentByMetadata"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->enforceCallingUser()V

    .line 236
    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v3 .. v8}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->registerAgentByMetadataInternal(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public relay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 251
    const/4 v0, 0x0

    .line 252
    .local v0, "resp":Landroid/os/Bundle;
    const-string v1, "SYSTEM_PROXY_AGENT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 253
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4f

    .line 255
    :cond_18
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v1

    .line 256
    .local v1, "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    const/4 v2, 0x0

    const-string v3, "DualDARComnService"

    if-nez v1, :cond_39

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "relay: Agent not found, agent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_4f

    .line 259
    :cond_39
    invoke-direct {p0, v1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->connectProxyAgentSync(Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    move-result-object v4

    .line 260
    .local v4, "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    if-eqz v4, :cond_48

    .line 261
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v4, v2, p2, p3, p4}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_4f

    .line 263
    :cond_48
    new-array v2, v2, [Ljava/lang/Object;

    const-string v5, "ProxyAgentWrapper is NULL !"

    invoke-static {v3, v5, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 267
    .end local v1    # "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .end local v4    # "agent":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :goto_4f
    if-eqz p4, :cond_54

    .line 268
    invoke-virtual {p4}, Landroid/os/Bundle;->clear()V

    .line 269
    :cond_54
    return-object v0
.end method

.method public relayAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 19
    .param p1, "agentName"    # Ljava/lang/String;
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "params"    # Landroid/os/Bundle;

    .line 276
    move-object v7, p0

    move-object v8, p1

    const-string v0, "SYSTEM_PROXY_AGENT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const/4 v9, 0x1

    const-string v10, "dual_dar_response"

    if-eqz v0, :cond_29

    .line 277
    iget-object v6, v7, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v11, Lcom/android/server/knox/ddar/proxy/DualDARComnService$4;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/knox/ddar/proxy/DualDARComnService$4;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v6, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "response":Landroid/os/Bundle;
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 289
    return-object v0

    .line 292
    .end local v0    # "response":Landroid/os/Bundle;
    :cond_29
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->findAgent(Ljava/lang/String;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    move-result-object v11

    .line 293
    .local v11, "agentInfo":Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    if-nez v11, :cond_4b

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relay: Agent not found, agent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDARComnService"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_4b
    iget-object v12, v7, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->mBackgroundHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;

    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/knox/ddar/proxy/-$$Lambda$DualDARComnService$F7EFR5LW0TpExehCilzQrTiAHYw;-><init>(Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 312
    .restart local v0    # "response":Landroid/os/Bundle;
    invoke-virtual {v0, v10, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 313
    return-object v0
.end method

.method public systemReady()V
    .registers 1

    .line 150
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->init()V

    .line 151
    return-void
.end method
