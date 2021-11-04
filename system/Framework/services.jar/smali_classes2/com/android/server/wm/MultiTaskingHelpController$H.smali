.class final Lcom/android/server/wm/MultiTaskingHelpController$H;
.super Landroid/os/Handler;
.source "MultiTaskingHelpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingHelpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field static final NOTIFY_SPLIT_ADJACENT:I = 0x6b


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/MultiTaskingHelpController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/MultiTaskingHelpController;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/MultiTaskingHelpController;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 157
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    .line 158
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x6b

    if-eq v0, v1, :cond_7

    goto :goto_41

    .line 166
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    # getter for: Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingHelpController;->access$000(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 167
    :try_start_e
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    # getter for: Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v1}, Lcom/android/server/wm/MultiTaskingHelpController;->access$000(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 168
    .local v1, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 169
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    # getter for: Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingHelpController;->access$000(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_42

    .line 171
    .local v3, "callback":Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    :try_start_27
    invoke-interface {v3}, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;->onAdjacentLaunched()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_42

    .line 174
    goto :goto_33

    .line 172
    :catch_2b
    move-exception v4

    .line 173
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2c
    const-string v5, "MultiTaskingHelpController"

    const-string v6, "NOTIFY_SPLIT_ADJACENT, RemoteException occurred"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    .end local v3    # "callback":Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 176
    .end local v2    # "i":I
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    # getter for: Lcom/android/server/wm/MultiTaskingHelpController;->mSplitAdjacentCallbacks:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingHelpController;->access$000(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 177
    .end local v1    # "N":I
    monitor-exit v0

    .line 178
    nop

    .line 183
    :goto_41
    return-void

    .line 177
    :catchall_42
    move-exception v1

    monitor-exit v0
    :try_end_44
    .catchall {:try_start_2c .. :try_end_44} :catchall_42

    throw v1
.end method
