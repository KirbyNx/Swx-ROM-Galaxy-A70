.class public final Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcOperation;


# static fields
.field private static final MSG_TYPE_CMD:I = 0x0

.field private static final MSG_TYPE_MAP:I = 0x1

.field private static final MSG_TYPE_SYS_EVENT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "CmdSvc"

.field private static final WAIT_TIME:J = 0x7d0L


# instance fields
.field private final mBlockingQueue:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mClient:Landroid/os/Messenger;

.field private volatile mConnectedAtLeastOnce:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mReplyMessenger:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    .line 37
    new-instance v0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;-><init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    .line 65
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    .line 66
    if-eqz p2, :cond_26

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    goto :goto_27

    :cond_26
    const/4 v0, 0x0

    :goto_27
    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    .line 23
    iget-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    .param p1, "x1"    # Z

    .line 23
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnectedAtLeastOnce:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    .line 23
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    .param p1, "x1"    # Landroid/os/Messenger;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    return-void
.end method

.method private connect(J)Z
    .registers 9
    .param p1, "timeOut"    # J

    .line 87
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 88
    const-string v2, "com.samsung.android.friendscmder"

    const-string v3, "com.samsung.android.friendscmder.FrsShellCmdExecutor"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    .line 90
    const-string v4, "SYSTEM"

    invoke-static {v4}, Lcom/android/server/sepunion/friends/common/FwDependency;->getUserHandle(Ljava/lang/String;)Landroid/os/UserHandle;

    move-result-object v4

    .line 87
    const/4 v5, 0x1

    invoke-static {v0, v1, v2, v5, v4}, Lcom/android/server/sepunion/friends/common/FwDependency;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_39

    .line 92
    :try_start_1f
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mBlockingQueue:Ljava/util/concurrent/BlockingDeque;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p1, p2, v2}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 93
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_38

    .line 94
    new-instance v2, Landroid/os/Messenger;

    invoke-direct {v2, v0}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_33} :catch_34

    goto :goto_38

    .line 97
    .end local v0    # "binder":Landroid/os/IBinder;
    :catch_34
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 99
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_38
    :goto_38
    goto :goto_55

    .line 102
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to bind svc: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->getSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "CmdSvc"

    invoke-static {v3, v0, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 106
    :goto_55
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v0

    if-eqz v0, :cond_5c

    goto :goto_5d

    :cond_5c
    move v5, v1

    :goto_5d
    return v5
.end method

.method public static createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .line 71
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_17

    .line 72
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "CmdSvc"

    const-string/jumbo v2, "wrong current thread"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_17
    new-instance v0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-direct {v0, p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 77
    .local v0, "svcInstance":Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
    const-wide/16 v1, 0x7d0

    invoke-direct {v0, v1, v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->connect(J)Z

    move-result v1

    if-nez v1, :cond_28

    .line 78
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    .line 79
    const/4 v0, 0x0

    .line 82
    :cond_28
    return-object v0
.end method

.method private getClient()Landroid/os/Messenger;
    .registers 3

    .line 117
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;

    monitor-exit v0

    return-object v1

    .line 119
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method private setClient(Landroid/os/Messenger;)V
    .registers 4
    .param p1, "client"    # Landroid/os/Messenger;

    .line 123
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mClient:Landroid/os/Messenger;

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 112
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->setClient(Landroid/os/Messenger;)V

    .line 114
    return-void
.end method

.method public command(Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 130
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 131
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v1

    .line 133
    .local v1, "client":Landroid/os/Messenger;
    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 135
    const/4 v3, 0x0

    .line 136
    :try_start_9
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "paramStrA0"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Ljava/util/List;)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "sysSvcVer"

    const/4 v6, 0x4

    .line 137
    invoke-virtual {v4, v5, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    .line 138
    invoke-virtual {v4}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    .line 135
    invoke-static {v3, v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 139
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v4, :cond_2c

    .line 140
    iget-object v4, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v4, v3, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 142
    :cond_2c
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_2f} :catch_31

    .line 143
    const/4 v0, 0x1

    .line 146
    .end local v3    # "msg":Landroid/os/Message;
    goto :goto_35

    .line 144
    :catch_31
    move-exception v3

    .line 145
    .local v3, "e":Landroid/os/RemoteException;
    invoke-static {v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 148
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_35
    :goto_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "command "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "CmdSvc"

    invoke-static {v4, v3, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    return v0
.end method

.method public mappedAccessory([B[BZ)Z
    .registers 11
    .param p1, "data"    # [B
    .param p2, "extraData"    # [B
    .param p3, "isAttached"    # Z

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v1

    .line 157
    .local v1, "client":Landroid/os/Messenger;
    if-eqz v1, :cond_40

    .line 159
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_9
    invoke-static {}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->create()Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "data"

    invoke-virtual {v4, v5, p1}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "extraData"

    .line 160
    invoke-virtual {v4, v5, p2}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;[B)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string v5, "attached"

    .line 161
    invoke-virtual {v4, v5, p3}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;Z)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    const-string/jumbo v5, "sysSvcVer"

    const/4 v6, 0x4

    .line 162
    invoke-virtual {v4, v5, v6}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->put(Ljava/lang/String;I)Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;

    move-result-object v4

    .line 163
    invoke-virtual {v4}, Lcom/android/server/sepunion/friends/common/BundleFrs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    .line 159
    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 164
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_37

    .line 165
    iget-object v3, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 168
    :cond_37
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_3a} :catch_3c

    .line 169
    const/4 v0, 0x1

    .line 172
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_40

    .line 170
    :catch_3c
    move-exception v2

    .line 171
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 174
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_40
    :goto_40
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mappedAccessory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CmdSvc"

    invoke-static {v4, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 175
    return v0
.end method

.method public sysEvent(Landroid/os/Bundle;)Z
    .registers 7
    .param p1, "args"    # Landroid/os/Bundle;

    .line 180
    const/4 v0, 0x0

    .line 181
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->getClient()Landroid/os/Messenger;

    move-result-object v1

    .line 182
    .local v1, "client":Landroid/os/Messenger;
    if-eqz v1, :cond_27

    if-eqz p1, :cond_27

    .line 184
    :try_start_9
    const-string/jumbo v2, "sysSvcVer"

    const/4 v3, 0x4

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 185
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v2, v3, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 186
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    if-eqz v3, :cond_1e

    .line 187
    iget-object v3, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->mReplyMessenger:Landroid/os/Messenger;

    iput-object v3, v2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 190
    :cond_1e
    invoke-virtual {v1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_21} :catch_23

    .line 191
    const/4 v0, 0x1

    .line 194
    .end local v2    # "msg":Landroid/os/Message;
    goto :goto_27

    .line 192
    :catch_23
    move-exception v2

    .line 193
    .local v2, "e":Landroid/os/RemoteException;
    invoke-static {v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 196
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_27
    :goto_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sysEvent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "CmdSvc"

    invoke-static {v4, v2, v3}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 197
    return v0
.end method
