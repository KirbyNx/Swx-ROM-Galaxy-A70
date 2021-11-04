.class public Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;
.super Ljava/lang/Object;
.source "AgentSvcMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;
.implements Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field private static final RETRY_COUNT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "AgentSvcMgr"


# instance fields
.field private final mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

.field private final mCompName:Landroid/content/ComponentName;

.field private mContPreserved:Z

.field private final mContext:Landroid/content/Context;

.field private volatile mEnabled:Z

.field private final mLockCont:Ljava/lang/Object;

.field private final mLogger:Lcom/android/server/sepunion/friends/common/Logger;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/common/Logger;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logger"    # Lcom/android/server/sepunion/friends/common/Logger;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    .line 29
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    .line 32
    iput v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 33
    iput-object p2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    .line 34
    new-instance v0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-direct {v0, p1, p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcCloseable;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    .line 35
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    .line 36
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.mateagent"

    const-string v2, "com.samsung.android.mateagent.interact.AgentService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    .line 37
    return-void
.end method

.method private changeRefCount(Z)I
    .registers 3
    .param p1, "increased"    # Z

    .line 155
    monitor-enter p0

    .line 156
    if-eqz p1, :cond_a

    .line 157
    :try_start_3
    iget v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    goto :goto_14

    .line 158
    :cond_a
    iget v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    if-lez v0, :cond_14

    .line 159
    iget v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 161
    :cond_14
    :goto_14
    iget v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 162
    .local v0, "refCount":I
    monitor-exit p0

    .line 164
    return v0

    .line 162
    .end local v0    # "refCount":I
    :catchall_18
    move-exception v0

    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method private existAgentSvc()Z
    .registers 5

    .line 55
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 56
    .local v1, "pkgMgr":Landroid/content/pm/PackageManager;
    iget-object v2, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mCompName:Landroid/content/ComponentName;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2
    :try_end_f
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_f} :catch_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_f} :catch_13

    if-eqz v2, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0

    .line 58
    .end local v1    # "pkgMgr":Landroid/content/pm/PackageManager;
    :catch_13
    move-exception v1

    .line 59
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 60
    :cond_20
    invoke-static {v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 64
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_23
    return v0
.end method

.method private getConnectedSvc()Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;
    .registers 4

    .line 40
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->existAgentSvc()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 41
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->connect()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 42
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    .line 43
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    return-object v0

    .line 45
    :cond_16
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    goto :goto_24

    .line 47
    :cond_1a
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "AgentSvcMgr"

    const-string/jumbo v2, "no FSvc"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    :goto_24
    const/4 v0, 0x0

    return-object v0
.end method

.method private getContPreserved()Z
    .registers 3

    .line 137
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    monitor-exit v0

    return v1

    .line 139
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private getRefCount()I
    .registers 2

    .line 168
    monitor-enter p0

    .line 169
    :try_start_1
    iget v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    monitor-exit p0

    return v0

    .line 170
    :catchall_5
    move-exception v0

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5

    throw v0
.end method

.method private resetRefCount()V
    .registers 2

    .line 174
    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    :try_start_2
    iput v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mRefCount:I

    .line 176
    monitor-exit p0

    .line 177
    return-void

    .line 176
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method


# virtual methods
.method public closeable()Z
    .registers 8

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->changeRefCount(Z)I

    move-result v1

    .line 130
    .local v1, "refCount":I
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v2

    .line 132
    .local v2, "contPreserved":Z
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const-string v4, "AgentSvcMgr"

    const-string v6, "closeable %d %s"

    invoke-static {v4, v6, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 133
    if-nez v1, :cond_25

    if-nez v2, :cond_25

    move v0, v5

    :cond_25
    return v0
.end method

.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 6
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "actionNo"    # I

    .line 115
    if-eqz p1, :cond_1a

    .line 116
    const/4 v0, 0x0

    const-string/jumbo v1, "keepConnectionState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 118
    .local v0, "preserved":Z
    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->setContPreserved(Z)V

    .line 119
    if-nez v0, :cond_1a

    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getRefCount()I

    move-result v1

    if-nez v1, :cond_1a

    .line 120
    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mAgentSvc:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-virtual {v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->close()V

    .line 124
    .end local v0    # "preserved":Z
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEnabled()Z
    .registers 2

    .line 105
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    return v0
.end method

.method public perform(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 69
    invoke-virtual {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->isEnabled()Z

    move-result v0

    const-string v1, "AgentSvcMgr"

    const/4 v2, 0x0

    if-nez v0, :cond_24

    .line 70
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    if-eqz v0, :cond_22

    .line 71
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string/jumbo v4, "skipped action 0x%x - app cannot start"

    invoke-static {v1, v4, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/android/server/sepunion/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_22
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_24
    const/4 v0, 0x2

    .line 77
    .local v0, "retryCount":I
    const/4 v3, 0x0

    .line 80
    .local v3, "ret":Landroid/os/Bundle;
    :cond_26
    :try_start_26
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getConnectedSvc()Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;

    move-result-object v4
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2a} :catch_70
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2a} :catch_70
    .catchall {:try_start_26 .. :try_end_2a} :catchall_6e

    .line 81
    .local v4, "connectedSvc":Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;
    if-eqz v4, :cond_49

    .line 82
    :try_start_2c
    const-string v5, "FSvc is connected"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    .line 84
    const-string/jumbo v5, "perform(execute) triggered"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    invoke-interface {v4, p1, p2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;->execute(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_62

    move-object v3, v5

    .line 92
    if-eqz v4, :cond_46

    :try_start_43
    invoke-interface {v4}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_46} :catch_70
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_70
    .catchall {:try_start_43 .. :try_end_46} :catchall_6e

    .line 95
    :cond_46
    add-int/lit8 v0, v0, -0x1

    .line 86
    goto :goto_79

    .line 88
    :cond_49
    :try_start_49
    iget-object v5, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    if-eqz v5, :cond_5c

    .line 89
    iget-object v5, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    const-string v6, "failed to connect FSvc"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v1, v6, v7}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/android/server/sepunion/friends/common/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5c
    .catchall {:try_start_49 .. :try_end_5c} :catchall_62

    .line 92
    :cond_5c
    if-eqz v4, :cond_74

    :try_start_5e
    invoke-interface {v4}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_61} :catch_70
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_70
    .catchall {:try_start_5e .. :try_end_61} :catchall_6e

    goto :goto_74

    .line 80
    :catchall_62
    move-exception v5

    if-eqz v4, :cond_6d

    :try_start_65
    invoke-interface {v4}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;->close()V
    :try_end_68
    .catchall {:try_start_65 .. :try_end_68} :catchall_69

    goto :goto_6d

    :catchall_69
    move-exception v6

    :try_start_6a
    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "retryCount":I
    .end local v3    # "ret":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;
    .end local p1    # "action":I
    .end local p2    # "args":Landroid/os/Bundle;
    :cond_6d
    :goto_6d
    throw v5
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6e} :catch_70
    .catch Ljava/io/IOException; {:try_start_6a .. :try_end_6e} :catch_70
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6e

    .line 95
    .end local v4    # "connectedSvc":Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcExecutable;
    .restart local v0    # "retryCount":I
    .restart local v3    # "ret":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;
    .restart local p1    # "action":I
    .restart local p2    # "args":Landroid/os/Bundle;
    :catchall_6e
    move-exception v1

    goto :goto_7a

    .line 92
    :catch_70
    move-exception v4

    .line 93
    .local v4, "e":Ljava/lang/Exception;
    :try_start_71
    invoke-static {v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_6e

    .line 95
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_74
    :goto_74
    add-int/lit8 v0, v0, -0x1

    .line 96
    nop

    .line 98
    if-gtz v0, :cond_26

    .line 100
    :goto_79
    return-object v3

    .line 95
    :goto_7a
    add-int/lit8 v0, v0, -0x1

    .line 96
    throw v1
.end method

.method public setContPreserved(Z)V
    .registers 5
    .param p1, "contPreserved"    # Z

    .line 144
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->getContPreserved()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "AgentSvcMgr"

    const-string/jumbo v2, "setContPreserved %s => %s"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mLockCont:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_20
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mContPreserved:Z

    .line 147
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_29

    .line 148
    if-nez p1, :cond_28

    .line 149
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->resetRefCount()V

    .line 151
    :cond_28
    return-void

    .line 147
    :catchall_29
    move-exception v1

    :try_start_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v1
.end method

.method public setEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .line 110
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcMgr;->mEnabled:Z

    .line 111
    return-void
.end method
