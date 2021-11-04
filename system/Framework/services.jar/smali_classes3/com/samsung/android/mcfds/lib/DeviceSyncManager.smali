.class public Lcom/samsung/android/mcfds/lib/DeviceSyncManager;
.super Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;
.source "DeviceSyncManager.java"


# instance fields
.field private final mHandOffManager:Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;

.field private final mRemoteClipManager:Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 21
    invoke-direct {p0, p1}, Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager;-><init>(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-direct {v0, v1}, Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;-><init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mHandOffManager:Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;

    .line 23
    new-instance v0, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mCoreInterface:Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;

    invoke-direct {v0, v1}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;-><init>(Lcom/samsung/android/mcfds/lib/common/AbstractManager$CoreInterface;)V

    iput-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mRemoteClipManager:Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    .line 24
    return-void
.end method


# virtual methods
.method protected bindService(Landroid/os/UserHandle;Landroid/content/Intent;Landroid/content/ServiceConnection;)Z
    .registers 6
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "serviceConnection"    # Landroid/content/ServiceConnection;

    .line 27
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1, p1}, Landroid/content/Context;->semBindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public getClipManager()Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mRemoteClipManager:Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    return-object v0
.end method

.method public getHandOffManager()Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mHandOffManager:Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;

    return-object v0
.end method

.method protected start()V
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mHandOffManager:Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;->start()V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mRemoteClipManager:Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->start()V

    .line 44
    return-void
.end method

.method protected stop()V
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mHandOffManager:Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/handoff/HandOffManager;->stop()V

    .line 49
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncManager;->mRemoteClipManager:Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;

    invoke-virtual {v0}, Lcom/samsung/android/mcfds/lib/remoteclip/RemoteClipManager;->stop()V

    .line 50
    return-void
.end method
