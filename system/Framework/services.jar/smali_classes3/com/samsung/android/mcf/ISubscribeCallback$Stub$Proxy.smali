.class public Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISubscribeCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ISubscribeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ISubscribeCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/ISubscribeCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.ISubscribeCallback"

    return-object v0
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 369
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 371
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 373
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 377
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 379
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    iget-object v2, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 381
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 382
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ISubscribeCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_37

    .line 387
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw p1
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 348
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 350
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 354
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v2, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 358
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 359
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ISubscribeCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_37

    .line 364
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    throw p1
.end method

.method public onDiscoveryStarted(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 229
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 230
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 232
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 233
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onDiscoveryStarted(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 238
    :cond_23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw p1
.end method

.method public onDiscoveryStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 245
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 248
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 249
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onDiscoveryStopped(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 254
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw p1
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 394
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 396
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 400
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 403
    iget-object v2, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_33

    .line 404
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 405
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ISubscribeCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V
    :try_end_33
    .catchall {:try_start_4 .. :try_end_33} :catchall_37

    .line 410
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_37
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw p1
.end method

.method public onHandoverStarted(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 264
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 265
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onHandoverStarted(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 270
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 271
    throw p1
.end method

.method public onHandoverStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 277
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 278
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 280
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 281
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onHandoverStopped(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 286
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 287
    throw p1
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 417
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 419
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 421
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 422
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ISubscribeCallback;->onMcfServiceStateChanged(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2c

    .line 427
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 428
    throw p1
.end method

.method public onPilotAdvertiseStarted(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 296
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 297
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onPilotAdvertiseStarted(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 302
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 303
    throw p1
.end method

.method public onPilotAdvertiseStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 307
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 310
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    iget-object v1, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 312
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 313
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ISubscribeCallback;->onPilotAdvertiseStopped(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 318
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    throw p1
.end method

.method public onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ISubscribeCallback"

    .line 325
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 327
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 331
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    iget-object v2, p0, Lcom/samsung/android/mcf/ISubscribeCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 335
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 336
    invoke-static {}, Lcom/samsung/android/mcf/ISubscribeCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ISubscribeCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ISubscribeCallback;->onReceiveHandoverResponse(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 341
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    throw p1
.end method
