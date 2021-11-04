.class public Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICasterCallback.java"

# interfaces
.implements Lcom/samsung/android/mcf/ICasterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/ICasterCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/mcf/ICasterCallback;


# instance fields
.field public mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "com.samsung.android.mcf.ICasterCallback"

    return-object v0
.end method

.method public onAdvertiseStarted(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 206
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object v1, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 209
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 210
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onAdvertiseStarted(I)V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_27

    .line 215
    :cond_23
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_27
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 216
    throw p1
.end method

.method public onAdvertiseStopped(I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 224
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget-object v1, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 227
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_24

    .line 228
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/samsung/android/mcf/ICasterCallback;->onAdvertiseStopped(I)V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_28

    .line 233
    :cond_24
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_28
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 234
    throw p1
.end method

.method public onConnectionFailed(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 308
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 310
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 314
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget-object v2, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 318
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 319
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onConnectionFailed(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 324
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 325
    throw p1
.end method

.method public onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 285
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 287
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 291
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget-object v2, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 295
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 296
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onConnectionStateChanged(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 301
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    throw p1
.end method

.method public onHandoverRequest(ILandroid/os/PersistableBundle;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 261
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_17

    .line 264
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    invoke-virtual {p2, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1b

    :cond_17
    nop

    .line 268
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    :goto_1b
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object v2, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_35

    .line 272
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 273
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/mcf/ICasterCallback;->onHandoverRequest(ILandroid/os/PersistableBundle;I)V
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_39

    .line 278
    :cond_35
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_39
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 279
    throw p1
.end method

.method public onHandoverResult(Landroid/os/PersistableBundle;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 331
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_14

    .line 333
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 334
    invoke-virtual {p1, v0, v2}, Landroid/os/PersistableBundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_18

    :cond_14
    nop

    .line 337
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    :goto_18
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-object v2, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_32

    .line 341
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 342
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onHandoverResult(Landroid/os/PersistableBundle;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_36

    .line 347
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_36
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 348
    throw p1
.end method

.method public onMcfServiceStateChanged(II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 352
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 354
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 356
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_28

    .line 358
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 359
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onMcfServiceStateChanged(II)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_2c

    .line 364
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2c
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    throw p1
.end method

.method public onPilotScanResult(Ljava/lang/String;I)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 240
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_4
    const-string v1, "com.samsung.android.mcf.ICasterCallback"

    .line 242
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget-object v1, p0, Lcom/samsung/android/mcf/ICasterCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    if-nez v1, :cond_27

    .line 246
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    if-eqz v1, :cond_27

    .line 247
    invoke-static {}, Lcom/samsung/android/mcf/ICasterCallback$Stub;->getDefaultImpl()Lcom/samsung/android/mcf/ICasterCallback;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/mcf/ICasterCallback;->onPilotScanResult(Ljava/lang/String;I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_2b

    .line 252
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_2b
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw p1
.end method
