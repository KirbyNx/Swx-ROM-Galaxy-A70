.class Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;
.super Ljava/lang/Object;
.source "ISehHyPer.java"

# interfaces
.implements Lvendor/samsung/hardware/hyper/ISehHyPer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lvendor/samsung/hardware/hyper/ISehHyPer;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    const/4 v0, -0x1

    iput v0, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedVersion:I

    .line 213
    const-string v0, "-1"

    iput-object v0, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 210
    iput-object p1, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 211
    return-void
.end method


# virtual methods
.method public acquire(III[I)V
    .registers 9
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .param p3, "hint"    # I
    .param p4, "list"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 224
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 226
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 231
    iget-object v1, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 232
    .local v1, "_status":Z
    if-nez v1, :cond_32

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 233
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lvendor/samsung/hardware/hyper/ISehHyPer;->acquire(III[I)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 238
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    return-void

    .line 238
    .end local v1    # "_status":Z
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    nop

    .line 240
    return-void

    .line 238
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 239
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 216
    iget-object v0, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkHintExist(I)Z
    .registers 7
    .param p1, "hint"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 342
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 345
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 348
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 349
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/hyper/ISehHyPer;->checkHintExist(I)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_44

    .line 355
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 349
    return v3

    .line 351
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 352
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_44

    if-eqz v3, :cond_3b

    const/4 v4, 0x1

    :cond_3b
    move v2, v4

    .line 355
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    nop

    .line 358
    return v2

    .line 355
    .end local v2    # "_result":Z
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 356
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 357
    throw v2
.end method

.method public checkResourceExist(I)Z
    .registers 7
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 362
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 363
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 366
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 367
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 369
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 370
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/hyper/ISehHyPer;->checkResourceExist(I)Z

    move-result v3
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_45

    .line 376
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 370
    return v3

    .line 372
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_45

    if-eqz v3, :cond_3c

    const/4 v4, 0x1

    :cond_3c
    move v2, v4

    .line 376
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    nop

    .line 379
    return v2

    .line 376
    .end local v2    # "_result":Z
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 378
    throw v2
.end method

.method public checkSysfsIdExist(I)Z
    .registers 7
    .param p1, "sysfsId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 321
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 324
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 327
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 328
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/hyper/ISehHyPer;->checkSysfsIdExist(I)Z

    move-result v3
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_44

    .line 334
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    return v3

    .line 330
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_44

    if-eqz v3, :cond_3b

    const/4 v4, 0x1

    :cond_3b
    move v2, v4

    .line 334
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    nop

    .line 337
    return v2

    .line 334
    .end local v2    # "_result":Z
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 335
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 336
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 220
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

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

    .line 405
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 407
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 409
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 410
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 411
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 412
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 413
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/hyper/ISehHyPer;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 419
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 413
    monitor-exit p0

    return-object v3

    .line 416
    .end local p0    # "this":Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 417
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 419
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    goto :goto_54

    .line 419
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 421
    throw v2

    .line 423
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 404
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

    .line 383
    iget v0, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 385
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 387
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 389
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 390
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 391
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3}, Lvendor/samsung/hardware/hyper/ISehHyPer;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 391
    return v3

    .line 394
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 395
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 397
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    goto :goto_4d

    .line 397
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 398
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 399
    throw v2

    .line 401
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getSupportedFrequency(II)[I
    .registers 8
    .param p1, "resourceId"    # I
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 268
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 269
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lvendor/samsung/hardware/hyper/ISehHyPer;->getSupportedFrequency(II)[I

    move-result-object v3
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_44

    .line 275
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-object v3

    .line 271
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 272
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v3
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_44

    move-object v2, v3

    .line 275
    .local v2, "_result":[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    nop

    .line 278
    return-object v2

    .line 275
    .end local v2    # "_result":[I
    :catchall_44
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 276
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 277
    throw v2
.end method

.method public readSysfs(I)Ljava/lang/String;
    .registers 7
    .param p1, "sysfsId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 300
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 303
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    iget-object v2, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 306
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 307
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v3

    invoke-interface {v3, p1}, Lvendor/samsung/hardware/hyper/ISehHyPer;->readSysfs(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_41

    .line 313
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    return-object v3

    .line 309
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 310
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_41

    move-object v2, v3

    .line 313
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    nop

    .line 316
    return-object v2

    .line 313
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 314
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 315
    throw v2
.end method

.method public release(II)V
    .registers 8
    .param p1, "pid"    # I
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 245
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    iget-object v1, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 249
    .local v1, "_status":Z
    if-nez v1, :cond_2d

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 250
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/hyper/ISehHyPer;->release(II)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    .line 255
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 251
    return-void

    .line 255
    .end local v1    # "_status":Z
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    nop

    .line 257
    return-void

    .line 255
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 256
    throw v1
.end method

.method public writeSysfs(ILjava/lang/String;)V
    .registers 8
    .param p1, "sysfsId"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 286
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 287
    iget-object v1, p0, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 288
    .local v1, "_status":Z
    if-nez v1, :cond_2d

    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 289
    invoke-static {}, Lvendor/samsung/hardware/hyper/ISehHyPer$Stub;->getDefaultImpl()Lvendor/samsung/hardware/hyper/ISehHyPer;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lvendor/samsung/hardware/hyper/ISehHyPer;->writeSysfs(ILjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_4 .. :try_end_29} :catchall_32

    .line 294
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 290
    return-void

    .line 294
    .end local v1    # "_status":Z
    :cond_2d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_32
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v1
.end method
