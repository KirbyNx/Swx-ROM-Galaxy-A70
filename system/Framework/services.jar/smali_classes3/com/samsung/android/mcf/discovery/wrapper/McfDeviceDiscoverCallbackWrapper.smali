.class public Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;
.super Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;
.source "McfDeviceDiscoverCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    return-void
.end method


# virtual methods
.method public isMyCallback(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)Z
    .registers 3

    .line 20
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    .line 28
    :catch_a
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onDeviceRemoved(Landroid/os/PersistableBundle;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfDevice;->createFrom(Landroid/os/PersistableBundle;)Lcom/samsung/android/mcf/McfDevice;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    .line 37
    :catch_a
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_e
    return-void
.end method

.method public onDiscoveryStarted(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDiscoveryStarted(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 46
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onDiscoveryStopped(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/wrapper/McfDeviceDiscoverCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;->onDiscoveryStopped(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 55
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
