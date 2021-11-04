.class public Lcom/android/server/sepunion/friends/action/ActionDispatcher;
.super Ljava/lang/Object;
.source "ActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionDispatcher"


# instance fields
.field private volatile mAcceptable:Z

.field private final mAccessMgr:Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

.field private mDefault:Lcom/android/server/sepunion/friends/action/ActionExecutable;

.field private mExecService:Ljava/util/concurrent/ExecutorService;

.field private final mExecutes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/sepunion/friends/action/ActionExecutable;",
            ">;"
        }
    .end annotation
.end field

.field private mLogger:Lcom/android/server/sepunion/friends/common/Logger;

.field private final mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;Lcom/android/server/sepunion/friends/common/Logger;)V
    .registers 4
    .param p1, "accessMgr"    # Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;
    .param p2, "logger"    # Lcom/android/server/sepunion/friends/common/Logger;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    .line 28
    iput-object p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAccessMgr:Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    .line 29
    iput-object p2, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAcceptable:Z

    .line 31
    return-void
.end method

.method private getExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_14

    .line 35
    monitor-enter p0

    .line 36
    :try_start_5
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_f

    .line 37
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    .line 39
    :cond_f
    monitor-exit p0

    goto :goto_14

    :catchall_11
    move-exception v0

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw v0

    .line 42
    :cond_14
    :goto_14
    iget-object v0, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method


# virtual methods
.method public varargs add(Lcom/android/server/sepunion/friends/action/ActionExecutable;[I)Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .registers 7
    .param p1, "executable"    # Lcom/android/server/sepunion/friends/action/ActionExecutable;
    .param p2, "actions"    # [I

    .line 46
    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    array-length v0, p2

    if-lez v0, :cond_15

    .line 47
    array-length v0, p2

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    aget v2, p2, v1

    .line 48
    .local v2, "cur":I
    iget-object v3, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 47
    .end local v2    # "cur":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 51
    :cond_15
    return-object p0
.end method

.method public execute(ILandroid/os/Bundle;)Landroid/os/Bundle;
    .registers 20
    .param p1, "action"    # I
    .param p2, "args"    # Landroid/os/Bundle;

    .line 66
    move-object/from16 v1, p0

    move/from16 v9, p1

    move-object/from16 v10, p2

    iget-boolean v0, v1, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAcceptable:Z

    const-string v11, "ActionDispatcher"

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-nez v0, :cond_2a

    .line 67
    iget-object v0, v1, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mLogger:Lcom/android/server/sepunion/friends/common/Logger;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-array v4, v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    const-string/jumbo v5, "skipped action 0x%x - not ready"

    invoke-static {v11, v5, v4}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v12, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/android/server/sepunion/friends/common/Logger;->append(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 68
    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_2a
    const/4 v14, 0x0

    .line 72
    .local v14, "ret":Landroid/os/Bundle;
    new-array v0, v13, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v12

    const-string v2, "execute 0x%x"

    invoke-static {v11, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    :try_start_38
    iget-object v0, v1, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAccessMgr:Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;

    invoke-virtual {v0, v9}, Lcom/android/server/sepunion/friends/executable/ExecAccessMgr;->isAccessible(I)Z

    move-result v0

    if-eqz v0, :cond_9e

    .line 78
    const/4 v0, 0x0

    .line 79
    .local v0, "flag":I
    iget-object v2, v1, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mExecutes:Landroid/util/SparseArray;

    iget-object v3, v1, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mDefault:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    invoke-virtual {v2, v9, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/friends/action/ActionExecutable;

    move-object v15, v2

    .line 81
    .local v15, "found":Lcom/android/server/sepunion/friends/action/ActionExecutable;
    if-eqz v10, :cond_55

    .line 82
    const-string/jumbo v2, "sysSvcVer"

    const/4 v3, 0x4

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    :cond_55
    if-eqz v15, :cond_9d

    invoke-interface {v15, v10, v0, v9}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->preExecute(Landroid/os/Bundle;II)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 85
    invoke-interface {v15, v9}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->executeOnSameThread(I)Z

    move-result v2

    if-eqz v2, :cond_69

    .line 86
    invoke-interface {v15, v10, v0, v9}, Lcom/android/server/sepunion/friends/action/ActionExecutable;->execute(Landroid/os/Bundle;II)Landroid/os/Bundle;

    move-result-object v2

    move-object v14, v2

    goto :goto_9d

    .line 88
    :cond_69
    iget-object v2, v1, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mTaskId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v3

    .line 89
    .local v3, "taskId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->getExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    new-instance v7, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;

    const/16 v16, 0x0

    move-object v2, v7

    move-object v4, v15

    move-object/from16 v5, p2

    move v6, v0

    move-object v12, v7

    move/from16 v7, p1

    move-object v13, v8

    move-object/from16 v8, v16

    invoke-direct/range {v2 .. v8}, Lcom/android/server/sepunion/friends/action/ActionDispatcher$Task;-><init>(ILcom/android/server/sepunion/friends/action/ActionExecutable;Landroid/os/Bundle;IILcom/android/server/sepunion/friends/action/ActionDispatcher$1;)V

    invoke-interface {v13, v12}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 90
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v4

    move-object v14, v4

    .line 92
    const-string/jumbo v4, "submit task[%d]"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    invoke-static {v11, v4, v2}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .end local v0    # "flag":I
    .end local v3    # "taskId":I
    .end local v15    # "found":Lcom/android/server/sepunion/friends/action/ActionExecutable;
    :cond_9d
    :goto_9d
    goto :goto_b2

    .line 76
    :cond_9e
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Not accessible"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v14    # "ret":Landroid/os/Bundle;
    .end local p0    # "this":Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .end local p1    # "action":I
    .end local p2    # "args":Landroid/os/Bundle;
    throw v0
    :try_end_a6
    .catchall {:try_start_38 .. :try_end_a6} :catchall_a6

    .line 96
    .restart local v14    # "ret":Landroid/os/Bundle;
    .restart local p0    # "this":Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .restart local p1    # "action":I
    .restart local p2    # "args":Landroid/os/Bundle;
    :catchall_a6
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Throwable;
    instance-of v2, v0, Landroid/os/RemoteException;

    if-nez v2, :cond_b3

    instance-of v2, v0, Ljava/lang/SecurityException;

    if-nez v2, :cond_b3

    .line 101
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 104
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b2
    return-object v14

    .line 98
    .restart local v0    # "e":Ljava/lang/Throwable;
    :cond_b3
    throw v0
.end method

.method public setAcceptable(Z)Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .registers 2
    .param p1, "acceptable"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mAcceptable:Z

    .line 62
    return-object p0
.end method

.method public setDefault(Lcom/android/server/sepunion/friends/action/ActionExecutable;)Lcom/android/server/sepunion/friends/action/ActionDispatcher;
    .registers 2
    .param p1, "executable"    # Lcom/android/server/sepunion/friends/action/ActionExecutable;

    .line 55
    iput-object p1, p0, Lcom/android/server/sepunion/friends/action/ActionDispatcher;->mDefault:Lcom/android/server/sepunion/friends/action/ActionExecutable;

    .line 56
    return-object p0
.end method
