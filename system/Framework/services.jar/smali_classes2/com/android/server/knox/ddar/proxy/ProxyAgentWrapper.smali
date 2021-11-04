.class public Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
.super Ljava/lang/Object;
.source "ProxyAgentWrapper.java"


# static fields
.field private static final INITIALIZE_SECURE_SESSION:Ljava/lang/String; = "INITIALIZE_SECURE_SESSION"

.field private static final SECURE_CLIENT_ID:Ljava/lang/String; = "SECURE_CLIENT_ID"

.field private static final SECURE_CLIENT_PUB_KEY:Ljava/lang/String; = "SECURE_CLIENT_PUB_KEY"

.field private static final TAG:Ljava/lang/String; = "KnoxService::ProxyAgentWrapper"

.field private static final TERMINATE_SECURE_SESSION:Ljava/lang/String; = "TERMINATE_SECURE_SESSION"

.field private static final WAIT_TIME_MS:J = 0xbb8L


# instance fields
.field private mBindPending:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

.field private mIsNotify:Z

.field private mIsReconnection:Z

.field private mIsStale:Z

.field private mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

.field public final mProxyAgentLock:Ljava/lang/Object;

.field private mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/knox/ddar/proxy/DualDARComnService;Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .param p3, "info"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 138
    new-instance v1, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper$1;-><init>(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V

    iput-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    .line 55
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string v2, "ProxyAgentWrapper()"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 57
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    .line 59
    iput-object p3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 33
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/android/server/knox/ddar/proxy/DualDARComnService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 33
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 33
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;)Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .param p1, "x1"    # Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    .line 33
    iput-object p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 33
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    .param p1, "x1"    # Z

    .line 33
    iput-boolean p1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 33
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->onAgentReconnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;

    .line 33
    invoke-direct {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->triggerRestart()V

    return-void
.end method

.method private onAgentReconnected()V
    .registers 6

    .line 220
    const-string v0, "KnoxService::ProxyAgentWrapper"

    const/4 v1, 0x0

    :try_start_3
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v2, :cond_14

    .line 221
    const-string/jumbo v2, "sending onAgentReconnected signal"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v2}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->onAgentReconnected()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_14} :catch_15

    .line 228
    :cond_14
    goto :goto_3c

    .line 224
    :catch_15
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v4, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 226
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " -- onAgentReconnected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 225
    invoke-static {v0, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 227
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 229
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_3c
    return-void
.end method

.method private triggerRestart()V
    .registers 5

    .line 199
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    const/4 v1, 0x0

    const-string v2, "KnoxService::ProxyAgentWrapper"

    if-nez v0, :cond_2f

    .line 200
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "triggerRestart"

    invoke-static {v2, v1, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 201
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 202
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mService:Lcom/android/server/knox/ddar/proxy/DualDARComnService;

    invoke-virtual {v2}, Lcom/android/server/knox/ddar/proxy/DualDARComnService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_37

    .line 204
    :cond_2f
    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "skipping triggerRestart because this is a stale object"

    invoke-static {v2, v1, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 206
    :goto_37
    return-void
.end method


# virtual methods
.method public connectAsync()Z
    .registers 11

    .line 92
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    const-string v3, "connectAsync"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 93
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 94
    :try_start_d
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v2, v2, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 95
    .local v2, "name":Landroid/content/ComponentName;
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3c

    .line 96
    const-string v3, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already bound"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v5, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 97
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_9f

    return v4

    .line 100
    :cond_3c
    :try_start_3c
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    .line 102
    .local v3, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    const v7, 0x4000001

    new-instance v8, Landroid/os/UserHandle;

    iget-object v9, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget v9, v9, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mUserId:I

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v7, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 105
    if-nez v5, :cond_7b

    .line 106
    const-string v4, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t bind to container service "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_79} :catch_7d
    .catchall {:try_start_3c .. :try_end_79} :catchall_9f

    .line 107
    :try_start_79
    monitor-exit v1

    return v0

    .line 110
    :cond_7b
    monitor-exit v1

    return v4

    .line 111
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_7d
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "KnoxService::ProxyAgentWrapper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 113
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    .end local v3    # "e":Ljava/lang/Exception;
    monitor-exit v1

    return v0

    .line 116
    .end local v2    # "name":Landroid/content/ComponentName;
    :catchall_9f
    move-exception v0

    monitor-exit v1
    :try_end_a1
    .catchall {:try_start_79 .. :try_end_a1} :catchall_9f

    throw v0
.end method

.method public connectSync()Z
    .registers 7

    .line 63
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    const-string v3, "connectSync"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 66
    :try_start_a
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_47

    .line 67
    :try_start_d
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v2

    if-nez v2, :cond_41

    .line 68
    iget-boolean v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    if-nez v2, :cond_28

    .line 69
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->connectAsync()Z

    move-result v2

    .line 70
    .local v2, "ret":Z
    if-nez v2, :cond_28

    .line 71
    const-string v3, "KnoxService::ProxyAgentWrapper"

    const-string v4, "connection to Proxy Agent failed"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 72
    monitor-exit v1

    return v2

    .line 75
    .end local v2    # "ret":Z
    :cond_28
    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    .line 76
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 77
    iget-boolean v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsNotify:Z

    if-nez v2, :cond_41

    .line 78
    const-string v2, "KnoxService::ProxyAgentWrapper"

    const-string/jumbo v3, "thread waken up without notify"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 79
    monitor-exit v1

    return v0

    .line 82
    :cond_41
    monitor-exit v1

    .line 83
    const/4 v0, 0x1

    return v0

    .line 82
    :catchall_44
    move-exception v2

    monitor-exit v1
    :try_end_46
    .catchall {:try_start_d .. :try_end_46} :catchall_44

    .end local p0    # "this":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :try_start_46
    throw v2
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_47} :catch_47

    .line 84
    .restart local p0    # "this":Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;
    :catch_47
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .end local v1    # "e":Ljava/lang/Exception;
    return v0
.end method

.method public disconnect()V
    .registers 5

    .line 120
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    const-string v3, "disconnect"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 121
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->isBound()Z

    move-result v1

    if-nez v1, :cond_11

    .line 122
    return-void

    .line 124
    :cond_11
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v1

    .line 125
    :try_start_14
    iget-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 126
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    .line 127
    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    .line 128
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2b

    .line 129
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "KnoxService::ProxyAgentWrapper"

    const-string v2, "Unbinding to agent done"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 130
    return-void

    .line 128
    :catchall_2b
    move-exception v0

    :try_start_2c
    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v0
.end method

.method enableReconnectionFlag()V
    .registers 4

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableReconnectionFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsReconnection:Z

    .line 216
    return-void
.end method

.method public isBindPending()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mBindPending:Z

    return v0
.end method

.method public isBound()Z
    .registers 3

    .line 133
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgentLock:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_3
    iget-object v1, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    monitor-exit v0

    return v1

    .line 135
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method

.method markStale()V
    .registers 4

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "markStale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "KnoxService::ProxyAgentWrapper"

    invoke-static {v2, v0, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mIsStale:Z

    .line 211
    return-void
.end method

.method public relay(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "svcName"    # Ljava/lang/String;
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "args"    # Landroid/os/Bundle;

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "relay to Service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "KnoxService::ProxyAgentWrapper"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 235
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    if-eqz v0, :cond_7b

    .line 236
    const-string v0, "SECURE_CLIENT_ID"

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 237
    .local v0, "secureClientId":Ljava/lang/String;
    const-string v2, "SECURE_CLIENT_PUB_KEY"

    invoke-virtual {p4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "secureClientPubKey":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, 0x25e9423d

    const/4 v7, 0x1

    if-eq v5, v6, :cond_45

    const v6, 0x2897d36c

    if-eq v5, v6, :cond_3b

    :cond_3a
    goto :goto_4e

    :cond_3b
    const-string v5, "TERMINATE_SECURE_SESSION"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    move v4, v7

    goto :goto_4e

    :cond_45
    const-string v5, "INITIALIZE_SECURE_SESSION"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_4b} :catch_7c

    if-eqz v5, :cond_3a

    move v4, v1

    :goto_4e
    const-string v5, "dual_dar_response"

    if-eqz v4, :cond_6b

    if-eq v4, v7, :cond_5b

    .line 251
    :try_start_54
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v4, p1, p2, p3, p4}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->onMessage(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, "out":Landroid/os/Bundle;
    goto :goto_7a

    .line 246
    .end local v1    # "out":Landroid/os/Bundle;
    :cond_5b
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v4, p1, p2, v0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->terminateSecureSession(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    .line 247
    .local v4, "res":Z
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 248
    .local v6, "out":Landroid/os/Bundle;
    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    move-object v1, v6

    goto :goto_7a

    .line 241
    .end local v4    # "res":Z
    .end local v6    # "out":Landroid/os/Bundle;
    :cond_6b
    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mProxyAgent:Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;

    invoke-interface {v4, p1, p2, v0, v2}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgent;->initializeSecureSession(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "pubKey":Ljava/lang/String;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 243
    .restart local v6    # "out":Landroid/os/Bundle;
    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_79
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_79} :catch_7c

    .line 244
    move-object v1, v6

    .line 255
    .end local v4    # "pubKey":Ljava/lang/String;
    .end local v6    # "out":Landroid/os/Bundle;
    .restart local v1    # "out":Landroid/os/Bundle;
    :goto_7a
    return-object v1

    .line 261
    .end local v0    # "secureClientId":Ljava/lang/String;
    .end local v1    # "out":Landroid/os/Bundle;
    .end local v2    # "secureClientPubKey":Ljava/lang/String;
    :cond_7b
    goto :goto_a6

    .line 257
    :catch_7c
    move-exception v0

    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException: name:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/knox/ddar/proxy/ProxyAgentWrapper;->mInfo:Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;

    iget-object v4, v4, Lcom/android/server/knox/ddar/proxy/ProxyAgentInfo;->mCompName:Landroid/content/ComponentName;

    .line 259
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " command:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    .line 258
    invoke-static {v3, v2, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 260
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 262
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a6
    const/4 v0, 0x0

    return-object v0
.end method
