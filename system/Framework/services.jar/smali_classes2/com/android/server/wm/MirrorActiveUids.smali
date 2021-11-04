.class Lcom/android/server/wm/MirrorActiveUids;
.super Ljava/lang/Object;
.source "MirrorActiveUids.java"


# instance fields
.field private mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method declared-synchronized getUidState(I)I
    .registers 4
    .param p1, "uid"    # I

    monitor-enter p0

    .line 51
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return v0

    .line 51
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onActiveUidsCleared()V
    .registers 2

    monitor-enter p0

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 41
    monitor-exit p0

    return-void

    .line 39
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized onUidActive(II)V
    .registers 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    monitor-enter p0

    .line 32
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 33
    monitor-exit p0

    return-void

    .line 31
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidInactive(I)V
    .registers 3
    .param p1, "uid"    # I

    monitor-enter p0

    .line 36
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 37
    monitor-exit p0

    return-void

    .line 35
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    .end local p1    # "uid":I
    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized onUidProcStateChanged(II)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    monitor-enter p0

    .line 44
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    .line 45
    .local v0, "index":I
    if-ltz v0, :cond_e

    .line 46
    iget-object v1, p0, Lcom/android/server/wm/MirrorActiveUids;->mUidStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->setValueAt(II)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 48
    .end local p0    # "this":Lcom/android/server/wm/MirrorActiveUids;
    :cond_e
    monitor-exit p0

    return-void

    .line 43
    .end local v0    # "index":I
    .end local p1    # "uid":I
    .end local p2    # "procState":I
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method
