.class Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;
.super Ljava/lang/Object;
.source "TaskOrganizerController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskOrganizerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field final synthetic this$0:Lcom/android/server/wm/TaskOrganizerController;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskOrganizerController;Landroid/window/ITaskOrganizer;)V
    .registers 3
    .param p2, "organizer"    # Landroid/window/ITaskOrganizer;

    .line 99
    iput-object p1, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 101
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    # getter for: Lcom/android/server/wm/TaskOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;
    invoke-static {v0}, Lcom/android/server/wm/TaskOrganizerController;->access$000(Lcom/android/server/wm/TaskOrganizerController;)Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 106
    iget-object v1, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->this$0:Lcom/android/server/wm/TaskOrganizerController;

    # getter for: Lcom/android/server/wm/TaskOrganizerController;->mTaskOrganizerStates:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/wm/TaskOrganizerController;->access$100(Lcom/android/server/wm/TaskOrganizerController;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskOrganizerController$DeathRecipient;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 107
    invoke-interface {v2}, Landroid/window/ITaskOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 106
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;

    .line 108
    .local v1, "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    if-eqz v1, :cond_21

    .line 109
    invoke-virtual {v1}, Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;->dispose()V

    .line 111
    .end local v1    # "state":Lcom/android/server/wm/TaskOrganizerController$TaskOrganizerState;
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_7 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 112
    return-void

    .line 111
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
