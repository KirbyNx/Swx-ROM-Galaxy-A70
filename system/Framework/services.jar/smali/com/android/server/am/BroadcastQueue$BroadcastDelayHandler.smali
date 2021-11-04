.class final Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;
.super Landroid/os/Handler;
.source "BroadcastQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BroadcastQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BroadcastDelayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BroadcastQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastQueue;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 280
    iput-object p1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    .line 281
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 282
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 286
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_7

    goto :goto_22

    .line 288
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v0, v0, Lcom/android/server/am/BroadcastQueue;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 289
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->clearDelayedParallelQueueLocked()V

    .line 290
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->clearDelayedOrderedQueueLocked()V

    .line 291
    iget-object v1, p0, Lcom/android/server/am/BroadcastQueue$BroadcastDelayHandler;->this$0:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v1}, Lcom/android/server/am/BroadcastQueue;->scheduleBroadcastsLocked()V

    .line 292
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_c .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 295
    :goto_22
    return-void

    .line 292
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
