.class public Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
.super Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;
.source "SystemProxyAgent.java"


# static fields
.field private static final DAEMON_PROXY_SERVICE:Ljava/lang/String; = "DAEMON_PROXY_SERVICE"

.field private static final DDAR_CACHE_SERVICE:Ljava/lang/String; = "DDAR_CACHE_SERVICE"

.field private static final DDAR_LOG_SERVICE:Ljava/lang/String; = "DDAR_LOG_SERVICE"

.field private static final DDAR_PLATFORM_SERVICE:Ljava/lang/String; = "DDAR_PLATFORM_SERVICE"

.field private static final INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field private static final SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field private static final SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field private static final STATE_MACHINE_SERVICE:Ljava/lang/String; = "STATE_MACHINE_SERVICE"

.field private static final TAG:Ljava/lang/String; = "SystemProxyAgent"

.field private static final TA_PROXY_SERVICE:Ljava/lang/String; = "TA_PROXY_SERVICE"

.field private static final TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"

.field public static mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    .line 63
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    monitor-enter v0

    .line 54
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    if-nez v1, :cond_e

    .line 55
    new-instance v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;

    .line 58
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mInstance:Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 53
    .end local p0    # "ctx":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public init()V
    .registers 3

    .line 66
    invoke-super {p0}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;->onCreate()V

    .line 68
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/ta/TAProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/ta/TAProxy;

    move-result-object v0

    const-string v1, "TA_PROXY_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    .line 69
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    move-result-object v0

    const-string v1, "DAEMON_PROXY_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    .line 70
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/fsm/StateMachineProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/fsm/StateMachineProxy;

    move-result-object v0

    const-string v1, "STATE_MACHINE_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    .line 71
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDLog$LoggerProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDLog$LoggerProxy;

    move-result-object v0

    const-string v1, "DDAR_LOG_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    .line 72
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/DDCache;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/DDCache;

    move-result-object v0

    const-string v1, "DDAR_CACHE_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    .line 73
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;->getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/proxy/DualDARPlatformProxy;

    move-result-object v0

    const-string v1, "DDAR_PLATFORM_SERVICE"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->register(Ljava/lang/String;Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;)Z

    .line 74
    return-void
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 12
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relay to Service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SystemProxyAgent"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 83
    const/4 v0, -0x1

    :try_start_1b
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v4, 0x25e9423d

    const/4 v5, 0x1

    if-eq v2, v4, :cond_35

    const v4, 0x2897d36c

    if-eq v2, v4, :cond_2b

    :cond_2a
    goto :goto_3e

    :cond_2b
    const-string v2, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    move v0, v5

    goto :goto_3e

    :cond_35
    const-string v2, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3b} :catch_75

    if-eqz v2, :cond_2a

    move v0, v1

    :goto_3e
    const-string v2, "dual_dar_response"

    const-string v4, "SECURE_CLIENT_ID"

    if-eqz v0, :cond_5d

    if-eq v0, v5, :cond_4b

    .line 98
    :try_start_46
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/KnoxProxyAgent;->relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .local v0, "out":Landroid/os/Bundle;
    goto :goto_74

    .line 92
    .end local v0    # "out":Landroid/os/Bundle;
    :cond_4b
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "secureClientId":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->teardownSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 94
    .local v4, "res":Z
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v5, "out":Landroid/os/Bundle;
    invoke-virtual {v5, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 96
    move-object v0, v5

    goto :goto_74

    .line 85
    .end local v0    # "secureClientId":Ljava/lang/String;
    .end local v4    # "res":Z
    .end local v5    # "out":Landroid/os/Bundle;
    :cond_5d
    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0    # "secureClientId":Ljava/lang/String;
    const-string v4, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {p4, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 87
    .local v4, "secureClientPubKey":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/android/server/knox/ddar/proxy/SystemProxyAgent;->establishSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 88
    .local v5, "pubKey":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 89
    .local v6, "out":Landroid/os/Bundle;
    invoke-virtual {v6, v2, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_73} :catch_75

    .line 90
    move-object v0, v6

    .line 102
    .end local v4    # "secureClientPubKey":Ljava/lang/String;
    .end local v5    # "pubKey":Ljava/lang/String;
    .end local v6    # "out":Landroid/os/Bundle;
    .local v0, "out":Landroid/os/Bundle;
    :goto_74
    return-object v0

    .line 103
    .end local v0    # "out":Landroid/os/Bundle;
    :catch_75
    move-exception v0

    .line 104
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " command:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 105
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method
