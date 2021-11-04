.class public Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IBleAdvertiseCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

    return-object v0
.end method

.method public onAdvertisingStarted(II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 108
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

    .line 110
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 114
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    move-result-object v1

    if-eqz v1, :cond_26

    .line 115
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;->onAdvertisingStarted(II)V
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    .line 120
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2a
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 121
    throw p1
.end method

.method public onAdvertisingStopped()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ble.IBleAdvertiseCallback"

    .line 127
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 129
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 130
    invoke-static {}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/mcf/ble/IBleAdvertiseCallback;->onAdvertisingStopped()V
    :try_end_21
    .catchall {:try_start_4 .. :try_end_21} :catchall_25

    .line 135
    :cond_21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 136
    throw v1
.end method
