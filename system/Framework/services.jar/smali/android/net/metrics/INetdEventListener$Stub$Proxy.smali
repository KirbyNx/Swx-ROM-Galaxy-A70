.class Landroid/net/metrics/INetdEventListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "INetdEventListener.java"

# interfaces
.implements Landroid/net/metrics/INetdEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/metrics/INetdEventListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/metrics/INetdEventListener;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    .line 225
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 222
    iput-object p1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 223
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 228
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 232
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

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

    .line 385
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 386
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 387
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 389
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 391
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 392
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 393
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/metrics/INetdEventListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 399
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 393
    monitor-exit p0

    return-object v3

    .line 396
    .end local p0    # "this":Landroid/net/metrics/INetdEventListener$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 397
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 399
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    goto :goto_54

    .line 399
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 400
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    throw v2

    .line 403
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 384
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

    .line 363
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 364
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 365
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 367
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 368
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 369
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 370
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 371
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/metrics/INetdEventListener;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 371
    return v3

    .line 374
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 377
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    goto :goto_4d

    .line 377
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 378
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 379
    throw v2

    .line 381
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onConnectEvent(IIILjava/lang/String;II)V
    .registers 23
    .param p1, "netId"    # I
    .param p2, "error"    # I
    .param p3, "latencyMs"    # I
    .param p4, "ipAddr"    # Ljava/lang/String;
    .param p5, "port"    # I
    .param p6, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 280
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_72

    .line 281
    move/from16 v9, p1

    :try_start_d
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_6e

    .line 282
    move/from16 v10, p2

    :try_start_12
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_6a

    .line 283
    move/from16 v11, p3

    :try_start_17
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_66

    .line 284
    move-object/from16 v12, p4

    :try_start_1c
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_62

    .line 285
    move/from16 v13, p5

    :try_start_21
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_5e

    .line 286
    move/from16 v14, p6

    :try_start_26
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_5a

    .line 287
    move-object/from16 v15, p0

    :try_start_2b
    iget-object v0, v15, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 288
    .local v0, "_status":Z
    if-nez v0, :cond_53

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 289
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/net/metrics/INetdEventListener;->onConnectEvent(IIILjava/lang/String;II)V
    :try_end_4f
    .catchall {:try_start_2b .. :try_end_4f} :catchall_58

    .line 294
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 290
    return-void

    .line 294
    .end local v0    # "_status":Z
    :cond_53
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    nop

    .line 296
    return-void

    .line 294
    :catchall_58
    move-exception v0

    goto :goto_81

    :catchall_5a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_81

    :catchall_5e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7f

    :catchall_62
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7d

    :catchall_66
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_7b

    :catchall_6a
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_79

    :catchall_6e
    move-exception v0

    move-object/from16 v15, p0

    goto :goto_77

    :catchall_72
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v9, p1

    :goto_77
    move/from16 v10, p2

    :goto_79
    move/from16 v11, p3

    :goto_7b
    move-object/from16 v12, p4

    :goto_7d
    move/from16 v13, p5

    :goto_7f
    move/from16 v14, p6

    :goto_81
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 295
    throw v0
.end method

.method public onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    .registers 25
    .param p1, "netId"    # I
    .param p2, "eventType"    # I
    .param p3, "returnCode"    # I
    .param p4, "latencyMs"    # I
    .param p5, "hostname"    # Ljava/lang/String;
    .param p6, "ipAddresses"    # [Ljava/lang/String;
    .param p7, "ipAddressesCount"    # I
    .param p8, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 238
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_6f

    .line 239
    move/from16 v11, p1

    :try_start_d
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_6d

    .line 240
    move/from16 v12, p2

    :try_start_12
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_6b

    .line 241
    move/from16 v13, p3

    :try_start_17
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_69

    .line 242
    move/from16 v14, p4

    :try_start_1c
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_67

    .line 243
    move-object/from16 v15, p5

    :try_start_21
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 245
    move/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    move-object/from16 v7, p0

    iget-object v0, v7, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 248
    .local v0, "_status":Z
    if-nez v0, :cond_60

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_60

    .line 249
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-interface/range {v2 .. v10}, Landroid/net/metrics/INetdEventListener;->onDnsEvent(IIIILjava/lang/String;[Ljava/lang/String;II)V
    :try_end_5c
    .catchall {:try_start_21 .. :try_end_5c} :catchall_65

    .line 254
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 250
    return-void

    .line 254
    .end local v0    # "_status":Z
    :cond_60
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    nop

    .line 256
    return-void

    .line 254
    :catchall_65
    move-exception v0

    goto :goto_7a

    :catchall_67
    move-exception v0

    goto :goto_78

    :catchall_69
    move-exception v0

    goto :goto_76

    :catchall_6b
    move-exception v0

    goto :goto_74

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move/from16 v11, p1

    :goto_72
    move/from16 v12, p2

    :goto_74
    move/from16 v13, p3

    :goto_76
    move/from16 v14, p4

    :goto_78
    move-object/from16 v15, p5

    :goto_7a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 255
    throw v0
.end method

.method public onNat64PrefixEvent(IZLjava/lang/String;I)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "added"    # Z
    .param p3, "prefixString"    # Ljava/lang/String;
    .param p4, "prefixLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 350
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 351
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 352
    .local v1, "_status":Z
    if-nez v1, :cond_38

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 353
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/metrics/INetdEventListener;->onNat64PrefixEvent(IZLjava/lang/String;I)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    .line 358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 354
    return-void

    .line 358
    .end local v1    # "_status":Z
    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    nop

    .line 360
    return-void

    .line 358
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 359
    throw v1
.end method

.method public onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 261
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    const/4 v1, 0x1

    if-eqz p4, :cond_19

    move v2, v1

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v2, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 267
    .local v1, "_status":Z
    if-nez v1, :cond_38

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_38

    .line 268
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Landroid/net/metrics/INetdEventListener;->onPrivateDnsValidationEvent(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_34
    .catchall {:try_start_4 .. :try_end_34} :catchall_3d

    .line 273
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 269
    return-void

    .line 273
    .end local v1    # "_status":Z
    :cond_38
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    nop

    .line 275
    return-void

    .line 273
    :catchall_3d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    throw v1
.end method

.method public onTcpSocketStatsEvent([I[I[I[I[I)V
    .registers 15
    .param p1, "networkIds"    # [I
    .param p2, "sentPackets"    # [I
    .param p3, "lostPackets"    # [I
    .param p4, "rttUs"    # [I
    .param p5, "sentAckDiffMs"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 324
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 326
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 328
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 329
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 330
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 331
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 332
    iget-object v1, p0, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 333
    .local v1, "_status":Z
    if-nez v1, :cond_3b

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_3b

    .line 334
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-interface/range {v3 .. v8}, Landroid/net/metrics/INetdEventListener;->onTcpSocketStatsEvent([I[I[I[I[I)V
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_40

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 335
    return-void

    .line 339
    .end local v1    # "_status":Z
    :cond_3b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    nop

    .line 341
    return-void

    .line 339
    :catchall_40
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw v1
.end method

.method public onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    .registers 28
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "ethertype"    # I
    .param p4, "ipNextHeader"    # I
    .param p5, "dstHw"    # [B
    .param p6, "srcIp"    # Ljava/lang/String;
    .param p7, "dstIp"    # Ljava/lang/String;
    .param p8, "srcPort"    # I
    .param p9, "dstPort"    # I
    .param p10, "timestampNs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 299
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 301
    .local v1, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/metrics/INetdEventListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_78

    .line 302
    move-object/from16 v14, p1

    :try_start_d
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_76

    .line 303
    move/from16 v15, p2

    :try_start_12
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeInt(I)V

    .line 304
    move/from16 v12, p3

    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    move/from16 v13, p4

    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 306
    move-object/from16 v11, p5

    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 307
    move-object/from16 v10, p6

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 308
    move-object/from16 v9, p7

    invoke-virtual {v1, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    move/from16 v8, p8

    invoke-virtual {v1, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 310
    move/from16 v7, p9

    invoke-virtual {v1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 311
    move-wide/from16 v5, p10

    invoke-virtual {v1, v5, v6}, Landroid/os/Parcel;->writeLong(J)V

    .line 312
    move-object/from16 v4, p0

    iget-object v0, v4, Landroid/net/metrics/INetdEventListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 313
    .local v0, "_status":Z
    if-nez v0, :cond_6f

    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 314
    invoke-static {}, Landroid/net/metrics/INetdEventListener$Stub;->getDefaultImpl()Landroid/net/metrics/INetdEventListener;

    move-result-object v2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    invoke-interface/range {v2 .. v13}, Landroid/net/metrics/INetdEventListener;->onWakeupEvent(Ljava/lang/String;III[BLjava/lang/String;Ljava/lang/String;IIJ)V
    :try_end_6b
    .catchall {:try_start_12 .. :try_end_6b} :catchall_74

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 315
    return-void

    .line 319
    .end local v0    # "_status":Z
    :cond_6f
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    nop

    .line 321
    return-void

    .line 319
    :catchall_74
    move-exception v0

    goto :goto_7d

    :catchall_76
    move-exception v0

    goto :goto_7b

    :catchall_78
    move-exception v0

    move-object/from16 v14, p1

    :goto_7b
    move/from16 v15, p2

    :goto_7d
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    throw v0
.end method
