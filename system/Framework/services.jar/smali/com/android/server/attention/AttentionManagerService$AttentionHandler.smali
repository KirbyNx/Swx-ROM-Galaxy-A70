.class public Lcom/android/server/attention/AttentionManagerService$AttentionHandler;
.super Landroid/os/Handler;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "AttentionHandler"
.end annotation


# static fields
.field private static final ATTENTION_CHECK_TIMEOUT:I = 0x2

.field private static final CHECK_CONNECTION_EXPIRATION:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/attention/AttentionManagerService;

    .line 662
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 663
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 664
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 668
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    goto :goto_40

    .line 679
    :cond_9
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    # getter for: Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService;->access$1000(Lcom/android/server/attention/AttentionManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 680
    :try_start_10
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    iget-object v2, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v2}, Lcom/android/server/attention/AttentionManagerService;->peekCurrentUserStateLocked()Lcom/android/server/attention/AttentionManagerService$UserState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->cancel(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 681
    monitor-exit v0

    .line 683
    goto :goto_40

    .line 681
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_10 .. :try_end_1f} :catchall_1d

    throw v1

    .line 671
    :cond_20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_21
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    # getter for: Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$1900(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3f

    .line 672
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionHandler;->this$0:Lcom/android/server/attention/AttentionManagerService;

    # getter for: Lcom/android/server/attention/AttentionManagerService;->mUserStates:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService;->access$1900(Lcom/android/server/attention/AttentionManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/attention/AttentionManagerService$UserState;

    # invokes: Lcom/android/server/attention/AttentionManagerService;->cancelAndUnbindLocked(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    invoke-static {v1, v2}, Lcom/android/server/attention/AttentionManagerService;->access$2000(Lcom/android/server/attention/AttentionManagerService;Lcom/android/server/attention/AttentionManagerService$UserState;)V

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 675
    .end local v0    # "i":I
    :cond_3f
    nop

    .line 688
    :goto_40
    return-void
.end method
