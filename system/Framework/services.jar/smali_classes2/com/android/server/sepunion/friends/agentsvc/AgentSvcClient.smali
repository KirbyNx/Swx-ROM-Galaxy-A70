.class Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgentSvcClient"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IInterface;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Landroid/os/IInterface;

.field private final mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "svcCloseable"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    .line 34
    new-instance v0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;-><init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    .line 68
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    .line 24
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;
    .param p1, "x1"    # Z

    .line 24
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    .line 24
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;
    .param p1, "x1"    # Landroid/os/IInterface;

    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v0

    return-object v0
.end method

.method private closedForced()V
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    if-eqz v0, :cond_8

    .line 151
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;->setContPreserved(Z)V

    .line 153
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->close()V

    .line 154
    return-void
.end method

.method private getService()Landroid/os/IInterface;
    .registers 2

    .line 125
    monitor-enter p0

    .line 126
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    monitor-exit p0

    return-object v0

    .line 127
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private isAlive()Z
    .registers 3

    .line 118
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 120
    .local v0, "binder":Landroid/os/IBinder;
    :goto_d
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    .line 121
    if-eqz v0, :cond_18

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1

    .line 120
    .end local v0    # "binder":Landroid/os/IBinder;
    :catchall_1a
    move-exception v0

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw v0
.end method

.method private isConnected()Z
    .registers 2

    .line 111
    monitor-enter p0

    .line 112
    :try_start_1
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 113
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method private setService(Landroid/os/IInterface;)Landroid/os/IInterface;
    .registers 3
    .param p1, "service"    # Landroid/os/IInterface;

    .line 131
    monitor-enter p0

    .line 132
    :try_start_1
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mService:Landroid/os/IInterface;

    .line 133
    monitor-exit p0

    .line 134
    return-object p1

    .line 133
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method


# virtual methods
.method public close()V
    .registers 5

    .line 139
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mSvcCloseable:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;

    const-string v1, "AgentSvcClient"

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    invoke-interface {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;->closeable()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_16

    .line 145
    :cond_e
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "close - connection is remained"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2a

    .line 140
    :cond_16
    :goto_16
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "close"

    invoke-static {v1, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 142
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    .line 143
    iput-boolean v2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnectedAtLeastOnce:Z

    .line 147
    :goto_2a
    return-void
.end method

.method connect()Z
    .registers 9

    .line 73
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AgentSvcClient"

    const/4 v3, 0x0

    if-eqz v0, :cond_22

    .line 74
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 75
    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "FSvc is already connected"

    invoke-static {v2, v3, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 76
    return v1

    .line 78
    :cond_18
    new-array v0, v3, [Ljava/lang/Object;

    const-string v4, "Connection of FSvs is invalid"

    invoke-static {v2, v4, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->closedForced()V

    .line 82
    :cond_22
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.samsung.android.mateagent"

    const-string v5, "com.samsung.android.mateagent.interact.AgentService"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    iget-object v4, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mConnection:Landroid/content/ServiceConnection;

    .line 88
    const-string v6, "SYSTEM"

    invoke-static {v6}, Lcom/android/server/sepunion/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v6

    .line 87
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/server/sepunion/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 90
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v5, 0x7d0

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v4, v5, v6, v7}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IInterface;

    invoke-direct {p0, v4}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->setService(Landroid/os/IInterface;)Landroid/os/IInterface;

    move-result-object v4

    if-nez v4, :cond_5c

    .line 91
    const-string v4, "bound but binder is null"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_3e .. :try_end_57} :catch_58

    goto :goto_5c

    .line 94
    :catch_58
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 96
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :cond_5c
    :goto_5c
    goto :goto_64

    .line 98
    :cond_5d
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "failed to bind FSvc"

    invoke-static {v2, v5, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    :goto_64
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->isConnected()Z

    move-result v4

    if-nez v4, :cond_76

    .line 102
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->closedForced()V

    .line 103
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "not connected"

    invoke-static {v2, v4, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    return v3

    .line 107
    :cond_76
    return v1
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 8
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mateservice/IAgentService;

    .line 159
    .local v0, "service":Lcom/samsung/android/mateservice/IAgentService;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "service = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "AgentSvcClient"

    invoke-static {v4, v1, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    if-eqz v0, :cond_32

    .line 161
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "executeSysAction is triggered"

    invoke-static {v4, v2, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 162
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/mateservice/IAgentService;->executeSysAction(ILandroid/os/Bundle;)V

    .line 163
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 166
    :cond_32
    const/4 v1, 0x0

    return-object v1
.end method
