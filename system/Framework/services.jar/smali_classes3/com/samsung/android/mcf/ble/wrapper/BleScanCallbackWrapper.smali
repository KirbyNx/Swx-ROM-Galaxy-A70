.class public Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;
.super Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;
.source "BleScanCallbackWrapper.java"


# instance fields
.field public final mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/ble/BleScanCallback;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    return-void
.end method


# virtual methods
.method public getBleAdapterCallback()Lcom/samsung/android/mcf/ble/BleScanCallback;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    return-object v0
.end method

.method public isMyCallback(Lcom/samsung/android/mcf/ble/BleScanCallback;)Z
    .registers 3

    .line 18
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    if-ne v0, p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method public onScanFailed(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/ble/BleScanCallback;->onScanFailed(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 40
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/wrapper/BleScanCallbackWrapper;->mCallback:Lcom/samsung/android/mcf/ble/BleScanCallback;

    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/ble/BleScanCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    .line 31
    :catch_6
    move-exception p1

    invoke-static {p1}, Lcom/samsung/android/mcf/common/Utils;->throwOnMainThread(Ljava/lang/Exception;)V

    :goto_a
    return-void
.end method
