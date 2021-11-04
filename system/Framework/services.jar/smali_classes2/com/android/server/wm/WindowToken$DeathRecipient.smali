.class Lcom/android/server/wm/WindowToken$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowToken.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field private mHasUnlinkToDeath:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowToken;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowToken;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->mHasUnlinkToDeath:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/wm/WindowToken;
    .param p2, "x1"    # Lcom/android/server/wm/WindowToken$1;

    .line 196
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowToken$DeathRecipient;-><init>(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 201
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 202
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/wm/WindowToken;->mBinderDied:Z
    invoke-static {v1, v2}, Lcom/android/server/wm/WindowToken;->access$002(Lcom/android/server/wm/WindowToken;Z)Z

    .line 203
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 204
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 205
    return-void

    .line 204
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method linkToDeath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 209
    return-void
.end method

.method unlinkToDeath()V
    .registers 3

    .line 212
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->mHasUnlinkToDeath:Z

    if-eqz v0, :cond_5

    .line 213
    return-void

    .line 215
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->mHasUnlinkToDeath:Z

    .line 217
    return-void
.end method
