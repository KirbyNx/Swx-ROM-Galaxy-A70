.class public Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcfDeviceDiscoverCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    return-object v0
.end method

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 134
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_14

    .line 138
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 142
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_31

    .line 146
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 147
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDeviceDiscovered(Landroid/os/PersistableBundle;I)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_35

    .line 152
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_35
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 153
    throw p1
.end method

.method public onDeviceRemoved(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 157
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    .line 159
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 161
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 165
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget-object v2, p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 169
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 170
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDeviceRemoved(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 175
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw p1
.end method

.method public onDiscoveryStarted(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    .line 182
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 185
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 186
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDiscoveryStarted(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 191
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 192
    throw p1
.end method

.method public onDiscoveryStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.discovery.IMcfDeviceDiscoverCallback"

    .line 198
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v1, p0, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 201
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 202
    invoke-static {}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/discovery/IMcfDeviceDiscoverCallback;->onDiscoveryStopped(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 207
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    throw p1
.end method
