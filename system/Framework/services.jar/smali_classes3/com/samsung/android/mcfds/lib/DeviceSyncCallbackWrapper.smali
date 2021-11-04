.class public Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;
.super Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;
.source "DeviceSyncCallbackWrapper.java"


# instance fields
.field private final mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;)V
    .registers 2
    .param p1, "callBack"    # Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    .line 15
    return-void
.end method


# virtual methods
.method public getDeviceSyncCallback()Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    return-object v0
.end method

.method public onDeviceFound(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    if-eqz v0, :cond_d

    .line 26
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;->onDeviceFound(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 30
    :cond_d
    goto :goto_12

    .line 28
    :catch_e
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/common/LibUtil;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 31
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public onDeviceLost(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    if-eqz v0, :cond_d

    .line 48
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;->onDeviceLost(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 52
    :cond_d
    goto :goto_12

    .line 50
    :catch_e
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/common/LibUtil;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method public onDeviceUpdated(Landroid/os/PersistableBundle;)V
    .registers 4
    .param p1, "mcfDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    if-eqz v0, :cond_d

    .line 37
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/DeviceSyncCallbackWrapper;->mCallback:Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;

    invoke-static {p1}, Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/mcfds/lib/DeviceSyncCallback;->onDeviceUpdated(Lcom/samsung/android/mcfds/lib/common/NeaybyAccountDevice;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 41
    :cond_d
    goto :goto_12

    .line 39
    :catch_e
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/mcfds/lib/common/LibUtil;->throwOnMainThread(Ljava/lang/Exception;)V

    .line 42
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method
