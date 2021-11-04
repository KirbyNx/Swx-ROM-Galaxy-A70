.class Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICameraServiceWorker.java"

# interfaces
.implements Lcom/samsung/android/camera/ICameraServiceWorker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/ICameraServiceWorker$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/camera/ICameraServiceWorker;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I

    .line 154
    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 152
    return-void
.end method


# virtual methods
.method public acquireRequestInjector()Landroid/os/IBinder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 228
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 229
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/ICameraServiceWorker;->acquireRequestInjector()Landroid/os/IBinder;

    move-result-object v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3e

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 229
    return-object v3

    .line 231
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_3e

    move-object v2, v3

    .line 235
    .local v2, "_result":Landroid/os/IBinder;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    nop

    .line 238
    return-object v2

    .line 235
    .end local v2    # "_result":Landroid/os/IBinder;
    :catchall_3e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 161
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    .line 264
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 268
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 269
    iget-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 270
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 271
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 272
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/ICameraServiceWorker;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 278
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 272
    monitor-exit p0

    return-object v3

    .line 275
    .end local p0    # "this":Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 278
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    goto :goto_54

    .line 278
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 279
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 280
    throw v2

    .line 282
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 263
    :catchall_58
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInterfaceVersion()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 242
    iget v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 244
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 246
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 248
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 249
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 250
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/ICameraServiceWorker;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 250
    return v3

    .line 253
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 256
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    goto :goto_4d

    .line 256
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 257
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    throw v2

    .line 260
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    .registers 15
    .param p1, "cameraId"    # Ljava/lang/String;
    .param p2, "facing"    # I
    .param p3, "newCameraState"    # I
    .param p4, "clientName"    # Ljava/lang/String;
    .param p5, "apiLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 182
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v1, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 189
    .local v1, "_status":Z
    if-nez v1, :cond_3b

    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 190
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/camera/ICameraServiceWorker;->notifyCameraState(Ljava/lang/String;IILjava/lang/String;I)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_40

    .line 195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 191
    return-void

    .line 195
    .end local v1    # "_status":Z
    :cond_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    nop

    .line 197
    return-void

    .line 195
    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 196
    throw v1
.end method

.method public pingForUpdate()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 165
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 169
    .local v1, "_status":Z
    if-nez v1, :cond_26

    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v2

    if-eqz v2, :cond_26

    .line 170
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/camera/ICameraServiceWorker;->pingForUpdate()V
    :try_end_22
    .catchall {:try_start_4 .. :try_end_22} :catchall_2b

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 171
    return-void

    .line 175
    .end local v1    # "_status":Z
    :cond_26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    nop

    .line 177
    return-void

    .line 175
    :catchall_2b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v1
.end method

.method public queryPackageName(II)Ljava/lang/String;
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 200
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 201
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 204
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v2, p0, Lcom/samsung/android/camera/ICameraServiceWorker$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 208
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 209
    invoke-static {}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->getDefaultImpl()Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/samsung/android/camera/ICameraServiceWorker;->queryPackageName(II)Ljava/lang/String;

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_44

    .line 215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 209
    return-object v3

    .line 211
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_44

    move-object v2, v3

    .line 215
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    nop

    .line 218
    return-object v2

    .line 215
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 217
    throw v2
.end method
