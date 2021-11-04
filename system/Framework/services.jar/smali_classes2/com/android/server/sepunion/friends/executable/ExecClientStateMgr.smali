.class public Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;
.super Ljava/lang/Object;
.source "ExecClientStateMgr.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;
.implements Lcom/android/server/sepunion/friends/common/Dump;


# static fields
.field private static final CMD_CLEAR_CLIENT_STATE:I = 0x3

.field private static final CMD_REMOVE_CLIENT_STATE:I = 0x2

.field private static final CMD_RESTORE_CLIENT_STATE:I = 0x1

.field private static final CMD_SAVE_CLIENT_STATE:I


# instance fields
.field private final mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    .line 21
    return-void
.end method

.method private commandClearClientState()Landroid/os/Bundle;
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 75
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 76
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 78
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 76
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private commandRemoveClientState(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 70
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 68
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method

.method private commandRestoreClientState(Ljava/lang/String;)Landroid/os/Bundle;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 61
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    monitor-exit v0

    return-object v1

    .line 62
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method private commandSaveClientState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 52
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_f

    .line 56
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/sepunion/friends/common/BundleFrs;->getResultBundle(Z)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 54
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flag"    # I
    .param p3, "extra"    # I

    .line 25
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 26
    return-object v0

    .line 29
    :cond_4
    const/4 v1, -0x1

    const-string v2, "clientStateAction"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 30
    .local v1, "action":I
    const-string/jumbo v2, "stateId"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "key":Ljava/lang/String;
    if-eqz v1, :cond_2d

    const/4 v3, 0x1

    if-eq v1, v3, :cond_28

    const/4 v3, 0x2

    if-eq v1, v3, :cond_23

    const/4 v3, 0x3

    if-eq v1, v3, :cond_1e

    .line 47
    return-object v0

    .line 44
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandClearClientState()Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 41
    :cond_23
    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandRemoveClientState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 38
    :cond_28
    invoke-direct {p0, v2}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandRestoreClientState(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    .line 35
    :cond_2d
    const-string v0, "clientStateBundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->commandSaveClientState(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getDump(Ljava/lang/StringBuilder;)V
    .registers 6
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 83
    const-string v0, "\n---- client state\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    iget-object v0, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 85
    :try_start_8
    iget-object v1, p0, Lcom/android/server/sepunion/friends/executable/ExecClientStateMgr;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 86
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    if-nez v2, :cond_21

    .line 87
    goto :goto_12

    .line 90
    :cond_21
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    nop

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/os/Bundle;>;"
    goto :goto_12

    .line 93
    :cond_43
    monitor-exit v0

    .line 94
    return-void

    .line 93
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_8 .. :try_end_47} :catchall_45

    throw v1
.end method
