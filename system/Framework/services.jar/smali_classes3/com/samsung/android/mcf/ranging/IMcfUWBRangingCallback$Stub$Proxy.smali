.class public Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IMcfUWBRangingCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object p1, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    return-object v0
.end method

.method public onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    .line 144
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 145
    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 146
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 147
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 148
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onDataReceived([Lcom/samsung/android/mcf/ranging/McfUWBRangingData;)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 153
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 154
    throw p1
.end method

.method public onDeviceDiscovered(Landroid/os/PersistableBundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    .line 194
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 196
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 200
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    :goto_18
    iget-object v2, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2f

    .line 203
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    if-eqz v1, :cond_2f

    .line 204
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onDeviceDiscovered(Landroid/os/PersistableBundle;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_33

    .line 209
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_33
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw p1
.end method

.method public onStatusChanged(IILjava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    .line 160
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_2a

    .line 165
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 166
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onStatusChanged(IILjava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_2e

    .line 171
    :cond_2a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2e
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 172
    throw p1
.end method

.method public onStatusError(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 176
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    .line 178
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 181
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 182
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onStatusError(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 187
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw p1
.end method

.method public onUWBParamChanged(Ljava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ranging.IMcfUWBRangingCallback"

    .line 216
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 219
    iget-object v1, p0, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 220
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 221
    invoke-static {}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ranging/IMcfUWBRangingCallback;->onUWBParamChanged(Ljava/lang/String;[B)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2b

    .line 226
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 227
    throw p1
.end method
