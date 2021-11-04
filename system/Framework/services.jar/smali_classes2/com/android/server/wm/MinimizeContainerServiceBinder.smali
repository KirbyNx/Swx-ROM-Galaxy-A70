.class Lcom/android/server/wm/MinimizeContainerServiceBinder;
.super Lcom/android/server/wm/BubbleContainerServiceBinder;
.source "MinimizeContainerServiceBinder.java"


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4
    .param p1, "atm"    # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 28
    invoke-direct {p0, p1}, Lcom/android/server/wm/BubbleContainerServiceBinder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 29
    const-string v0, "com.android.systemui"

    const-string v1, "com.samsung.android.systemui.minimizecontainer.MinimizeContainerService"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MinimizeContainerServiceBinder;->setServiceComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    return-void
.end method

.method private hasFreeformStack()Z
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/MinimizeContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 51
    iget-object v1, p0, Lcom/android/server/wm/MinimizeContainerServiceBinder;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    const/4 v2, 0x5

    .line 52
    invoke-virtual {v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getTopStackInWindowingMode(I)Lcom/android/server/wm/ActivityStack;

    move-result-object v1

    .line 53
    .local v1, "topFreeformStack":Lcom/android/server/wm/ActivityStack;
    if-eqz v1, :cond_1b

    const/4 v2, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    :goto_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 54
    .end local v1    # "topFreeformStack":Lcom/android/server/wm/ActivityStack;
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method


# virtual methods
.method protected okToBind()Z
    .registers 2

    .line 36
    invoke-super {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToBind()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/server/wm/MinimizeContainerServiceBinder;->hasFreeformStack()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected okToUnbind()Z
    .registers 2

    .line 44
    invoke-super {p0}, Lcom/android/server/wm/BubbleContainerServiceBinder;->okToUnbind()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/server/wm/MinimizeContainerServiceBinder;->hasFreeformStack()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method
