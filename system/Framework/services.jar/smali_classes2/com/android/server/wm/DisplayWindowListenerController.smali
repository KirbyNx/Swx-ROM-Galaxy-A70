.class Lcom/android/server/wm/DisplayWindowListenerController;
.super Ljava/lang/Object;
.source "DisplayWindowListenerController.java"


# instance fields
.field mDisplayListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/view/IDisplayWindowListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    .line 39
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 40
    return-void
.end method


# virtual methods
.method dispatchDisplayAdded(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 60
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 61
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 63
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onDisplayAdded(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 65
    goto :goto_18

    .line 64
    :catch_17
    move-exception v2

    .line 61
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 67
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 68
    return-void
.end method

.method dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DisplayWindowListenerController;->dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Z)V

    .line 73
    return-void
.end method

.method dispatchDisplayChanged(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;Z)V
    .registers 9
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "newConfig"    # Landroid/content/res/Configuration;
    .param p3, "remoteConfigChangesStarted"    # Z

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "isInHierarchy":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 81
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-ne v2, p1, :cond_17

    .line 82
    const/4 v0, 0x1

    .line 80
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 85
    .end local v1    # "i":I
    :cond_1a
    if-nez v0, :cond_1d

    .line 86
    return-void

    .line 88
    :cond_1d
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 89
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_24
    if-ge v2, v1, :cond_4b

    .line 92
    if-eqz p3, :cond_37

    .line 93
    :try_start_28
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayWindowListener;

    .line 94
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 93
    invoke-interface {v3, v4}, Landroid/view/IDisplayWindowListener;->onStartRemoteConfigurationChanged(I)V

    .line 97
    :cond_37
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/view/IDisplayWindowListener;

    .line 98
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v4

    .line 97
    invoke-interface {v3, v4, p2}, Landroid/view/IDisplayWindowListener;->onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_46} :catch_47

    .line 100
    goto :goto_48

    .line 99
    :catch_47
    move-exception v3

    .line 89
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 102
    .end local v2    # "i":I
    :cond_4b
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 103
    return-void
.end method

.method dispatchDisplayRemoved(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 106
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 107
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 109
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onDisplayRemoved(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 111
    goto :goto_18

    .line 110
    :catch_17
    move-exception v2

    .line 107
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 113
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 114
    return-void
.end method

.method dispatchFixedRotationFinished(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 130
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 132
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3}, Landroid/view/IDisplayWindowListener;->onFixedRotationFinished(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 134
    goto :goto_18

    .line 133
    :catch_17
    move-exception v2

    .line 130
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 136
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 137
    return-void
.end method

.method dispatchFixedRotationStarted(Lcom/android/server/wm/DisplayContent;I)V
    .registers 7
    .param p1, "display"    # Lcom/android/server/wm/DisplayContent;
    .param p2, "newRotation"    # I

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 120
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IDisplayWindowListener;

    iget v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {v2, v3, p2}, Landroid/view/IDisplayWindowListener;->onFixedRotationStarted(II)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_16} :catch_17

    .line 123
    goto :goto_18

    .line 122
    :catch_17
    move-exception v2

    .line 118
    :goto_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 125
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 126
    return-void
.end method

.method registerListener(Landroid/view/IDisplayWindowListener;)V
    .registers 6
    .param p1, "listener"    # Landroid/view/IDisplayWindowListener;

    .line 43
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 44
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_36

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 48
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayContent;

    .line 49
    .local v2, "d":Lcom/android/server/wm/DisplayContent;
    iget v3, v2, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-interface {p1, v3}, Landroid/view/IDisplayWindowListener;->onDisplayAdded(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_2b} :catch_2f
    .catchall {:try_start_e .. :try_end_2b} :catchall_36

    .line 47
    .end local v2    # "d":Lcom/android/server/wm/DisplayContent;
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 46
    .end local v1    # "i":I
    :cond_2e
    goto :goto_30

    .line 51
    :catch_2f
    move-exception v1

    :goto_30
    nop

    .line 52
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 53
    return-void

    .line 52
    :catchall_36
    move-exception v1

    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method unregisterListener(Landroid/view/IDisplayWindowListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/view/IDisplayWindowListener;

    .line 56
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowListenerController;->mDisplayListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 57
    return-void
.end method
