.class final Lcom/android/server/wm/MultiSplitBlockListController$H;
.super Landroid/os/Handler;
.source "MultiSplitBlockListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiSplitBlockListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field private static final MSG_MULTI_SPLIT_BLOCK_LIST_CHANGED:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiSplitBlockListController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiSplitBlockListController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MultiSplitBlockListController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 165
    iput-object p1, p0, Lcom/android/server/wm/MultiSplitBlockListController$H;->this$0:Lcom/android/server/wm/MultiSplitBlockListController;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 171
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_19

    .line 173
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/MultiSplitBlockListController$H;->this$0:Lcom/android/server/wm/MultiSplitBlockListController;

    # getter for: Lcom/android/server/wm/MultiSplitBlockListController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;
    invoke-static {v0}, Lcom/android/server/wm/MultiSplitBlockListController;->access$000(Lcom/android/server/wm/MultiSplitBlockListController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 174
    iget-object v1, p0, Lcom/android/server/wm/MultiSplitBlockListController$H;->this$0:Lcom/android/server/wm/MultiSplitBlockListController;

    # invokes: Lcom/android/server/wm/MultiSplitBlockListController;->updateDeferredBlockListLocked()V
    invoke-static {v1}, Lcom/android/server/wm/MultiSplitBlockListController;->access$100(Lcom/android/server/wm/MultiSplitBlockListController;)V

    .line 175
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 179
    :goto_19
    return-void

    .line 175
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
