.class final Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;
.super Landroid/os/Handler;
.source "PermissionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnPermissionChangeListeners"
.end annotation


# static fields
.field private static final MSG_ON_PERMISSIONS_CHANGED:I = 0x1


# instance fields
.field private final mPermissionListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/permission/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 6086
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 6082
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 6087
    return-void
.end method

.method private handleOnPermissionsChanged(I)V
    .registers 8
    .param p1, "uid"    # I

    .line 6115
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 6117
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 6118
    :try_start_9
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    .line 6119
    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/permission/IOnPermissionsChangeListener;
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_20

    .line 6121
    .local v2, "callback":Landroid/permission/IOnPermissionsChangeListener;
    :try_start_11
    invoke-interface {v2, p1}, Landroid/permission/IOnPermissionsChangeListener;->onPermissionsChanged(I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_14} :catch_15
    .catchall {:try_start_11 .. :try_end_14} :catchall_20

    .line 6124
    goto :goto_1d

    .line 6122
    :catch_15
    move-exception v3

    .line 6123
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_16
    const-string v4, "PackageManager"

    const-string v5, "Permission listener is dead"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1d
    .catchall {:try_start_16 .. :try_end_1d} :catchall_20

    .line 6117
    .end local v2    # "callback":Landroid/permission/IOnPermissionsChangeListener;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 6127
    .end local v1    # "i":I
    :catchall_20
    move-exception v1

    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6128
    throw v1

    .line 6127
    :cond_27
    iget-object v1, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 6128
    nop

    .line 6129
    return-void
.end method


# virtual methods
.method public addListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 6100
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6102
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 6091
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_b

    .line 6093
    :cond_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 6094
    .local v0, "uid":I
    invoke-direct {p0, v0}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->handleOnPermissionsChanged(I)V

    .line 6097
    .end local v0    # "uid":I
    :goto_b
    return-void
.end method

.method public onPermissionsChanged(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 6109
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-lez v0, :cond_11

    .line 6110
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 6112
    :cond_11
    return-void
.end method

.method public removeListenerLocked(Landroid/permission/IOnPermissionsChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/permission/IOnPermissionsChangeListener;

    .line 6105
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$OnPermissionChangeListeners;->mPermissionListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 6106
    return-void
.end method
