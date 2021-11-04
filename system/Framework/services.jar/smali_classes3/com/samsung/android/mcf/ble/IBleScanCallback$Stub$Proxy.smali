.class public Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBleScanCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/IBleScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleScanCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.ble.IBleScanCallback"

    return-object v0
.end method

.method public onScanFailed(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 135
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ble.IBleScanCallback"

    .line 137
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 140
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleScanCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 141
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleScanCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ble/IBleScanCallback;->onScanFailed(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 146
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    throw p1
.end method

.method public onScanResult(Landroid/bluetooth/le/ScanResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 113
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ble.IBleScanCallback"

    .line 115
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 117
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/bluetooth/le/ScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    :goto_18
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 124
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleScanCallback;

    move-result-object v1

    if-eqz v1, :cond_2e

    .line 125
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleScanCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleScanCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ble/IBleScanCallback;->onScanResult(Landroid/bluetooth/le/ScanResult;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_32

    .line 130
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_32
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 131
    throw p1
.end method
