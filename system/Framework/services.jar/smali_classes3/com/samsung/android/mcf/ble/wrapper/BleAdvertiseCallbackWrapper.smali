.class public Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;
.source "BleAdvertiseCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;
    .registers 2

    .line 21
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;)Z
    .registers 3

    .line 17
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onAdvertisingStarted(II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;->onAdvertisingStarted(II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 29
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onAdvertisingStopped()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 36
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleAdvertiseCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;

    invoke-virtual {v0}, Lcom/samsung/android/mcf/ble/BleAdvertiseCallback;->onAdvertisingStopped()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 38
    :catch_6
    move-exception v0

    invoke-static {v0}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
