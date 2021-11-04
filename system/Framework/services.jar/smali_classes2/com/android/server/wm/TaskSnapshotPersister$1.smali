.class Lcom/android/server/wm/TaskSnapshotPersister$1;
.super Ljava/lang/Thread;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/TaskSnapshotPersister;
    .param p2, "name"    # Ljava/lang/String;

    .line 275
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 277
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 280
    :goto_5
    const/4 v0, 0x0

    .line 281
    .local v0, "isReadyToWrite":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 282
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z
    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 283
    const/4 v2, 0x0

    .local v2, "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_39

    .line 285
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :cond_17
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;
    invoke-static {v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;

    .line 286
    .restart local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    if-eqz v2, :cond_39

    .line 287
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->isReady()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 288
    const/4 v0, 0x1

    .line 289
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->onDequeuedLocked()V

    goto :goto_39

    .line 291
    :cond_30
    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;
    invoke-static {v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 295
    :cond_39
    :goto_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_d .. :try_end_3a} :catchall_7e

    .line 296
    if-eqz v2, :cond_46

    .line 297
    if-eqz v0, :cond_41

    .line 298
    invoke-virtual {v2}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;->write()V

    .line 300
    :cond_41
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 302
    :cond_46
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 303
    :try_start_4d
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mWriteQueue:Ljava/util/ArrayDeque;
    invoke-static {v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$300(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    .line 304
    .local v1, "writeQueueEmpty":Z
    if-nez v1, :cond_63

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mPaused:Z
    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->access$200(Lcom/android/server/wm/TaskSnapshotPersister;)Z

    move-result v4

    if-nez v4, :cond_63

    .line 305
    monitor-exit v3
    :try_end_62
    .catchall {:try_start_4d .. :try_end_62} :catchall_7b

    goto :goto_5

    .line 308
    :cond_63
    :try_start_63
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # setter for: Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z
    invoke-static {v4, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z

    .line 309
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    # getter for: Lcom/android/server/wm/TaskSnapshotPersister;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/wm/TaskSnapshotPersister;->access$100(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V

    .line 310
    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$1;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/wm/TaskSnapshotPersister;->mQueueIdling:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->access$402(Lcom/android/server/wm/TaskSnapshotPersister;Z)Z
    :try_end_77
    .catch Ljava/lang/InterruptedException; {:try_start_63 .. :try_end_77} :catch_78
    .catchall {:try_start_63 .. :try_end_77} :catchall_7b

    .line 312
    goto :goto_79

    .line 311
    :catch_78
    move-exception v4

    .line 313
    .end local v1    # "writeQueueEmpty":Z
    :goto_79
    :try_start_79
    monitor-exit v3

    .line 314
    .end local v0    # "isReadyToWrite":Z
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    goto :goto_5

    .line 313
    .restart local v0    # "isReadyToWrite":Z
    .restart local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_7b
    move-exception v1

    monitor-exit v3
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7b

    throw v1

    .line 295
    .end local v2    # "next":Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
    :catchall_7e
    move-exception v2

    :try_start_7f
    monitor-exit v1
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v2
.end method
