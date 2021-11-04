.class Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDeviceSyncCallback.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 115
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 122
    const-string v0, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    return-object v0
.end method

.method public onDeviceFound(Landroid/os/PersistableBundle;)V
    .registers 6
    .param p1, "myAccountDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 128
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 129
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 134
    :cond_14
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    :goto_17
    iget-object v1, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 137
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 138
    invoke-static {}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;->onDeviceFound(Landroid/os/PersistableBundle;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 143
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    nop

    .line 145
    return-void

    .line 143
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw v1
.end method

.method public onDeviceLost(Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "myAccountDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 170
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 172
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 174
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 178
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    :goto_17
    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 181
    .local v1, "_status":Z
    if-nez v1, :cond_32

    invoke-static {}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 182
    invoke-static {}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;->onDeviceLost(Landroid/os/PersistableBundle;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    return-void

    .line 187
    .end local v1    # "_status":Z
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    nop

    .line 189
    return-void

    .line 187
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v1
.end method

.method public onDeviceUpdated(Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "myAccountDevice"    # Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 148
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 150
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.samsung.android.mcfds.lib.IDeviceSyncCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 151
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 152
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_17

    .line 156
    :cond_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    :goto_17
    iget-object v2, p0, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 159
    .local v1, "_status":Z
    if-nez v1, :cond_32

    invoke-static {}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 160
    invoke-static {}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/samsung/android/mcfds/lib/IDeviceSyncCallback;->onDeviceUpdated(Landroid/os/PersistableBundle;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 161
    return-void

    .line 165
    .end local v1    # "_status":Z
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    nop

    .line 167
    return-void

    .line 165
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v1
.end method
