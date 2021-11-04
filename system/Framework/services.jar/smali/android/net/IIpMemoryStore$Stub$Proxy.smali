.class Landroid/net/IIpMemoryStore$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpMemoryStore.java"

# interfaces
.implements Landroid/net/IIpMemoryStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStore$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IIpMemoryStore;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    .line 244
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 241
    iput-object p1, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 242
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 247
    iget-object v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V
    .registers 9
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "needWipe"    # Z
    .param p3, "listener"    # Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 397
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 400
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 401
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/4 v2, 0x0

    if-eqz p3, :cond_1f

    invoke-interface {p3}, Landroid/net/ipmemorystore/IOnStatusAndCountListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 403
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 404
    .local v1, "_status":Z
    if-nez v1, :cond_3e

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 405
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/IIpMemoryStore;->delete(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_43

    .line 410
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 406
    return-void

    .line 410
    .end local v1    # "_status":Z
    :cond_3e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    nop

    .line 412
    return-void

    .line 410
    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 411
    throw v1
.end method

.method public deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V
    .registers 9
    .param p1, "cluster"    # Ljava/lang/String;
    .param p2, "needWipe"    # Z
    .param p3, "listener"    # Landroid/net/ipmemorystore/IOnStatusAndCountListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 415
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 417
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/4 v2, 0x0

    if-eqz p3, :cond_1f

    invoke-interface {p3}, Landroid/net/ipmemorystore/IOnStatusAndCountListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_20

    :cond_1f
    move-object v3, v2

    :goto_20
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 421
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 422
    .local v1, "_status":Z
    if-nez v1, :cond_3e

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_3e

    .line 423
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/IIpMemoryStore;->deleteCluster(Ljava/lang/String;ZLandroid/net/ipmemorystore/IOnStatusAndCountListener;)V
    :try_end_3a
    .catchall {:try_start_4 .. :try_end_3a} :catchall_43

    .line 428
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    return-void

    .line 428
    .end local v1    # "_status":Z
    :cond_3e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    nop

    .line 430
    return-void

    .line 428
    :catchall_43
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 429
    throw v1
.end method

.method public factoryReset()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    iget-object v1, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 386
    .local v1, "_status":Z
    if-nez v1, :cond_27

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 387
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/IIpMemoryStore;->factoryReset()V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    .line 392
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    return-void

    .line 392
    .end local v1    # "_status":Z
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    nop

    .line 394
    return-void

    .line 392
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 393
    throw v1
.end method

.method public findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V
    .registers 8
    .param p1, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .param p2, "listener"    # Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 305
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 308
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    .line 309
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 313
    :cond_16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    :goto_19
    const/4 v2, 0x0

    if-eqz p2, :cond_21

    invoke-interface {p2}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_22

    :cond_21
    move-object v3, v2

    :goto_22
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 316
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 317
    .local v1, "_status":Z
    if-nez v1, :cond_3f

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 318
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/IIpMemoryStore;->findL2Key(Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnL2KeyResponseListener;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_44

    .line 323
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 319
    return-void

    .line 323
    .end local v1    # "_status":Z
    :cond_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    nop

    .line 325
    return-void

    .line 323
    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 324
    throw v1
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 251
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

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

    .line 455
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 457
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 459
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 460
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 461
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 462
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 463
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IIpMemoryStore;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 469
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 463
    monitor-exit p0

    return-object v3

    .line 466
    .end local p0    # "this":Landroid/net/IIpMemoryStore$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 467
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 469
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    goto :goto_54

    .line 469
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 471
    throw v2

    .line 473
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 454
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

    .line 433
    iget v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 434
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 435
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 437
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 438
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 439
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 440
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 441
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IIpMemoryStore;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 441
    return v3

    .line 444
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 445
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 447
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    goto :goto_4d

    .line 447
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 448
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    throw v2

    .line 451
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V
    .registers 9
    .param p1, "l2Key1"    # Ljava/lang/String;
    .param p2, "l2Key2"    # Ljava/lang/String;
    .param p3, "listener"    # Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 330
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 333
    const/4 v1, 0x0

    if-eqz p3, :cond_19

    invoke-interface {p3}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1a

    :cond_19
    move-object v2, v1

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 334
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 335
    .local v1, "_status":Z
    if-nez v1, :cond_38

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 336
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/IIpMemoryStore;->isSameNetwork(Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    .line 341
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 337
    return-void

    .line 341
    .end local v1    # "_status":Z
    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    nop

    .line 343
    return-void

    .line 341
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    throw v1
.end method

.method public retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V
    .registers 10
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/net/ipmemorystore/IOnBlobRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 369
    const/4 v1, 0x0

    if-eqz p4, :cond_1c

    invoke-interface {p4}, Landroid/net/ipmemorystore/IOnBlobRetrievedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_1d

    :cond_1c
    move-object v2, v1

    :goto_1d
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 370
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 371
    .local v1, "_status":Z
    if-nez v1, :cond_3b

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 372
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/IIpMemoryStore;->retrieveBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/IOnBlobRetrievedListener;)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_40

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 373
    return-void

    .line 377
    .end local v1    # "_status":Z
    :cond_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    nop

    .line 379
    return-void

    .line 377
    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v1
.end method

.method public retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V
    .registers 8
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 346
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 348
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    const/4 v1, 0x0

    if-eqz p2, :cond_16

    invoke-interface {p2}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_17

    :cond_16
    move-object v2, v1

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 351
    iget-object v2, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 352
    .local v1, "_status":Z
    if-nez v1, :cond_35

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_35

    .line 353
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/IIpMemoryStore;->retrieveNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;)V
    :try_end_31
    .catchall {:try_start_4 .. :try_end_31} :catchall_3a

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    return-void

    .line 358
    .end local v1    # "_status":Z
    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_3a
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    throw v1
.end method

.method public storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V
    .registers 15
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "data"    # Landroid/net/ipmemorystore/Blob;
    .param p5, "listener"    # Landroid/net/ipmemorystore/IOnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 279
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 281
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 283
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_1f

    .line 286
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    invoke-virtual {p4, v0, v2}, Landroid/net/ipmemorystore/Blob;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_22

    .line 290
    :cond_1f
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    :goto_22
    const/4 v2, 0x0

    if-eqz p5, :cond_2a

    invoke-interface {p5}, Landroid/net/ipmemorystore/IOnStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_2b

    :cond_2a
    move-object v3, v2

    :goto_2b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 293
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    invoke-interface {v3, v4, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 294
    .local v1, "_status":Z
    if-nez v1, :cond_4d

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 295
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/IIpMemoryStore;->storeBlob(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/ipmemorystore/Blob;Landroid/net/ipmemorystore/IOnStatusListener;)V
    :try_end_49
    .catchall {:try_start_4 .. :try_end_49} :catchall_52

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 296
    return-void

    .line 300
    .end local v1    # "_status":Z
    :cond_4d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    nop

    .line 302
    return-void

    .line 300
    :catchall_52
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v1
.end method

.method public storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V
    .registers 8
    .param p1, "l2Key"    # Ljava/lang/String;
    .param p2, "attributes"    # Landroid/net/ipmemorystore/NetworkAttributesParcelable;
    .param p3, "listener"    # Landroid/net/ipmemorystore/IOnStatusListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 257
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStore$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 259
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_19

    .line 260
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 261
    invoke-virtual {p2, v0, v1}, Landroid/net/ipmemorystore/NetworkAttributesParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1c

    .line 264
    :cond_19
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    :goto_1c
    const/4 v1, 0x0

    if-eqz p3, :cond_24

    invoke-interface {p3}, Landroid/net/ipmemorystore/IOnStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_25

    :cond_24
    move-object v3, v1

    :goto_25
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 267
    iget-object v3, p0, Landroid/net/IIpMemoryStore$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 268
    .local v1, "_status":Z
    if-nez v1, :cond_41

    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    if-eqz v2, :cond_41

    .line 269
    invoke-static {}, Landroid/net/IIpMemoryStore$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStore;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Landroid/net/IIpMemoryStore;->storeNetworkAttributes(Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;Landroid/net/ipmemorystore/IOnStatusListener;)V
    :try_end_3d
    .catchall {:try_start_4 .. :try_end_3d} :catchall_46

    .line 274
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 270
    return-void

    .line 274
    .end local v1    # "_status":Z
    :cond_41
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    nop

    .line 276
    return-void

    .line 274
    :catchall_46
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 275
    throw v1
.end method
