.class Landroid/net/IDnsResolver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IDnsResolver.java"

# interfaces
.implements Landroid/net/IDnsResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IDnsResolver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IDnsResolver;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 301
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    .line 305
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 302
    iput-object p1, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 303
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public createNetworkCache(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 501
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 503
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 505
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 506
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 507
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->createNetworkCache(I)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    return-void

    .line 510
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 513
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    nop

    .line 516
    return-void

    .line 513
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 515
    throw v2
.end method

.method public destroyNetworkCache(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 520
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 522
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 524
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 525
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 526
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->destroyNetworkCache(I)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 532
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 527
    return-void

    .line 529
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 532
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    nop

    .line 535
    return-void

    .line 532
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 533
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 534
    throw v2
.end method

.method public flushNetworkCache(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 558
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 560
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 562
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 563
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 564
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->flushNetworkCache(I)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 570
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 565
    return-void

    .line 567
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 570
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    nop

    .line 573
    return-void

    .line 570
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 571
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 572
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 312
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

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

    .line 618
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 620
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 622
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 623
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 624
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 625
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 626
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IDnsResolver;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 632
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 626
    monitor-exit p0

    return-object v3

    .line 629
    .end local p0    # "this":Landroid/net/IDnsResolver$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 632
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    goto :goto_54

    .line 632
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 633
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 634
    throw v2

    .line 636
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 617
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

    .line 596
    iget v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 600
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 601
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 602
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 603
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 604
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IDnsResolver;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 610
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 604
    return v3

    .line 607
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 610
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    goto :goto_4d

    .line 610
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 611
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 612
    throw v2

    .line 614
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public getPrefix64(I)Ljava/lang/String;
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 480
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 483
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 485
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 486
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 487
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->getPrefix64(I)Ljava/lang/String;

    move-result-object v3
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_41

    .line 493
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 487
    return-object v3

    .line 489
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 490
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_38
    .catchall {:try_start_31 .. :try_end_38} :catchall_41

    move-object v2, v3

    .line 493
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    nop

    .line 496
    return-object v2

    .line 493
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 494
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 495
    throw v2
.end method

.method public getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    .registers 25
    .param p1, "netId"    # I
    .param p2, "servers"    # [Ljava/lang/String;
    .param p3, "domains"    # [Ljava/lang/String;
    .param p4, "tlsServers"    # [Ljava/lang/String;
    .param p5, "params"    # [I
    .param p6, "stats"    # [I
    .param p7, "wait_for_pending_req_timeout_count"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 380
    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v15

    .line 381
    .local v15, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v8

    .line 383
    .local v8, "_reply":Landroid/os/Parcel;
    :try_start_14
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 384
    move/from16 v7, p1

    invoke-virtual {v15, v7}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_bf

    .line 385
    const/4 v0, -0x1

    if-nez v9, :cond_2b

    .line 386
    :try_start_23
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_26
    .catchall {:try_start_23 .. :try_end_26} :catchall_27

    goto :goto_2f

    .line 435
    :catchall_27
    move-exception v0

    move-object v1, v8

    goto/16 :goto_c1

    .line 389
    :cond_2b
    :try_start_2b
    array-length v1, v9

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2f
    .catchall {:try_start_2b .. :try_end_2f} :catchall_bf

    .line 391
    :goto_2f
    if-nez v10, :cond_35

    .line 392
    :try_start_31
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_27

    goto :goto_39

    .line 395
    :cond_35
    :try_start_35
    array-length v1, v10

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_bf

    .line 397
    :goto_39
    if-nez v11, :cond_3f

    .line 398
    :try_start_3b
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_27

    goto :goto_43

    .line 401
    :cond_3f
    :try_start_3f
    array-length v1, v11

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_3f .. :try_end_43} :catchall_bf

    .line 403
    :goto_43
    if-nez v12, :cond_49

    .line 404
    :try_start_45
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_27

    goto :goto_4d

    .line 407
    :cond_49
    :try_start_49
    array-length v1, v12

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_4d
    .catchall {:try_start_49 .. :try_end_4d} :catchall_bf

    .line 409
    :goto_4d
    if-nez v13, :cond_53

    .line 410
    :try_start_4f
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_27

    goto :goto_57

    .line 413
    :cond_53
    :try_start_53
    array-length v1, v13

    invoke-virtual {v15, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_bf

    .line 415
    :goto_57
    if-nez v14, :cond_5d

    .line 416
    :try_start_59
    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_27

    goto :goto_61

    .line 419
    :cond_5d
    :try_start_5d
    array-length v0, v14

    invoke-virtual {v15, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 421
    :goto_61
    move-object/from16 v6, p0

    iget-object v0, v6, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v15, v8, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_6b
    .catchall {:try_start_5d .. :try_end_6b} :catchall_bf

    .line 422
    .local v0, "_status":Z
    if-nez v0, :cond_98

    :try_start_6d
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v1

    if-eqz v1, :cond_98

    .line 423
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v1
    :try_end_77
    .catchall {:try_start_6d .. :try_end_77} :catchall_95

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v16, v8

    .end local v8    # "_reply":Landroid/os/Parcel;
    .local v16, "_reply":Landroid/os/Parcel;
    move-object/from16 v8, p7

    :try_start_87
    invoke-interface/range {v1 .. v8}, Landroid/net/IDnsResolver;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[I[I[I)V
    :try_end_8a
    .catchall {:try_start_87 .. :try_end_8a} :catchall_91

    .line 435
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->recycle()V

    .line 436
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 424
    return-void

    .line 435
    .end local v0    # "_status":Z
    :catchall_91
    move-exception v0

    move-object/from16 v1, v16

    goto :goto_c1

    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v8    # "_reply":Landroid/os/Parcel;
    :catchall_95
    move-exception v0

    move-object v1, v8

    .end local v8    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    goto :goto_c1

    .line 422
    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v0    # "_status":Z
    .restart local v8    # "_reply":Landroid/os/Parcel;
    :cond_98
    move-object/from16 v16, v8

    .line 426
    .end local v8    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :try_start_9a
    invoke-virtual/range {v16 .. v16}, Landroid/os/Parcel;->readException()V
    :try_end_9d
    .catchall {:try_start_9a .. :try_end_9d} :catchall_bb

    .line 427
    move-object/from16 v1, v16

    .end local v16    # "_reply":Landroid/os/Parcel;
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9f
    invoke-virtual {v1, v9}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 428
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 429
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    .line 430
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->readIntArray([I)V

    .line 431
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->readIntArray([I)V

    .line 432
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->readIntArray([I)V
    :try_end_b1
    .catchall {:try_start_9f .. :try_end_b1} :catchall_b9

    .line 435
    .end local v0    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 436
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 437
    nop

    .line 438
    return-void

    .line 435
    :catchall_b9
    move-exception v0

    goto :goto_c1

    .end local v1    # "_reply":Landroid/os/Parcel;
    .restart local v16    # "_reply":Landroid/os/Parcel;
    :catchall_bb
    move-exception v0

    move-object/from16 v1, v16

    .end local v16    # "_reply":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    goto :goto_c1

    .end local v1    # "_reply":Landroid/os/Parcel;
    .restart local v8    # "_reply":Landroid/os/Parcel;
    :catchall_bf
    move-exception v0

    move-object v1, v8

    .end local v8    # "_reply":Landroid/os/Parcel;
    .restart local v1    # "_reply":Landroid/os/Parcel;
    :goto_c1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 436
    invoke-virtual {v15}, Landroid/os/Parcel;->recycle()V

    .line 437
    throw v0
.end method

.method public isAlive()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 321
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 322
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 323
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IDnsResolver;->isAlive()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_41

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 323
    return v3

    .line 325
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 326
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_41

    if-eqz v5, :cond_38

    move v3, v4

    :cond_38
    move v2, v3

    .line 329
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    nop

    .line 332
    return v2

    .line 329
    .end local v2    # "_result":Z
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw v2
.end method

.method public registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/net/metrics/INetdEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 336
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 337
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    if-eqz p1, :cond_16

    invoke-interface {p1}, Landroid/net/metrics/INetdEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 341
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 342
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 343
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->registerEventListener(Landroid/net/metrics/INetdEventListener;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 344
    return-void

    .line 346
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

    .line 349
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    nop

    .line 352
    return-void

    .line 349
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v2
.end method

.method public setLogSeverity(I)V
    .registers 7
    .param p1, "logSeverity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 539
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 543
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 544
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 545
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->setLogSeverity(I)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 551
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 546
    return-void

    .line 548
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 551
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    nop

    .line 554
    return-void

    .line 551
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    throw v2
.end method

.method public setPrefix64(ILjava/lang/String;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 577
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 579
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 581
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 582
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 583
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 584
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Landroid/net/IDnsResolver;->setPrefix64(ILjava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 590
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 585
    return-void

    .line 587
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 590
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    nop

    .line 593
    return-void

    .line 590
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 592
    throw v2
.end method

.method public setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    .registers 7
    .param p1, "resolverParams"    # Landroid/net/ResolverParamsParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 355
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 356
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 358
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    const/4 v2, 0x0

    if-eqz p1, :cond_1a

    .line 360
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    invoke-virtual {p1, v0, v2}, Landroid/net/ResolverParamsParcel;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1d

    .line 364
    :cond_1a
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 366
    :goto_1d
    iget-object v3, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 367
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 368
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->setResolverConfiguration(Landroid/net/ResolverParamsParcel;)V
    :try_end_33
    .catchall {:try_start_8 .. :try_end_33} :catchall_45

    .line 374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 369
    return-void

    .line 371
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_45

    .line 374
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    nop

    .line 377
    return-void

    .line 374
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    throw v2
.end method

.method public startPrefix64Discovery(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 441
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 444
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 447
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 448
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->startPrefix64Discovery(I)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3b

    .line 454
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    return-void

    .line 451
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3b

    .line 454
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    nop

    .line 457
    return-void

    .line 454
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 455
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 456
    throw v2
.end method

.method public stopPrefix64Discovery(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 460
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 461
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 463
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Landroid/net/IDnsResolver$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 465
    iget-object v2, p0, Landroid/net/IDnsResolver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 466
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 467
    invoke-static {}, Landroid/net/IDnsResolver$Stub;->getDefaultImpl()Landroid/net/IDnsResolver;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/net/IDnsResolver;->stopPrefix64Discovery(I)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3b

    .line 473
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 468
    return-void

    .line 470
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3b

    .line 473
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    nop

    .line 476
    return-void

    .line 473
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 475
    throw v2
.end method
