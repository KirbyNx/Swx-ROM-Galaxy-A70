.class Lsamsung/uwb/IUwbAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IUwbAdapter.java"

# interfaces
.implements Lsamsung/uwb/IUwbAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsamsung/uwb/IUwbAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lsamsung/uwb/IUwbAdapter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 847
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 848
    iput-object p1, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 849
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 852
    iget-object v0, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public checkRestrict()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1752
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1753
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1756
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1757
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1758
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1759
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->checkRestrict()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1765
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1759
    return v3

    .line 1761
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1762
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1765
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    nop

    .line 1768
    return v2

    .line 1765
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1766
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    throw v2
.end method

.method public closeSession(I)I
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1234
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1237
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1240
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1241
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->closeSession(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1247
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1241
    return v3

    .line 1243
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1244
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1247
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    nop

    .line 1250
    return v2

    .line 1247
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    throw v2
.end method

.method public controllerMulticastListUpdate(IBB[I[I)B
    .registers 16
    .param p1, "sessionId"    # I
    .param p2, "action"    # B
    .param p3, "noOfControlees"    # B
    .param p4, "shortAddress"    # [I
    .param p5, "subSessionId"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1834
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1837
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1838
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1839
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1840
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByte(B)V

    .line 1841
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1842
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1843
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1844
    .local v2, "_status":Z
    if-nez v2, :cond_41

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_41

    .line 1845
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v4

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lsamsung/uwb/IUwbAdapter;->controllerMulticastListUpdate(IBB[I[I)B

    move-result v3
    :try_end_3a
    .catchall {:try_start_8 .. :try_end_3a} :catchall_51

    .line 1851
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1845
    return v3

    .line 1847
    :cond_41
    :try_start_41
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1848
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3
    :try_end_48
    .catchall {:try_start_41 .. :try_end_48} :catchall_51

    move v2, v3

    .line 1851
    .local v2, "_result":B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    nop

    .line 1854
    return v2

    .line 1851
    .end local v2    # "_result":B
    :catchall_51
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1852
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1853
    throw v2
.end method

.method public deprecate0()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 900
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 901
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 903
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 904
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 905
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 906
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate0()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 912
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 907
    return-void

    .line 909
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 912
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    nop

    .line 915
    return-void

    .line 912
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 913
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 914
    throw v2
.end method

.method public deprecate1()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1041
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1042
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1044
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1045
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1046
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1047
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate1()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1053
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    return-void

    .line 1050
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1053
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    nop

    .line 1056
    return-void

    .line 1053
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    throw v2
.end method

.method public deprecate10()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1401
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1402
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1404
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1406
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1407
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate10()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1413
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1408
    return-void

    .line 1410
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1413
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1415
    nop

    .line 1416
    return-void

    .line 1413
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1415
    throw v2
.end method

.method public deprecate11()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1531
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1532
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1534
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1535
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1536
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1537
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate11()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1538
    return-void

    .line 1540
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1543
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    nop

    .line 1546
    return-void

    .line 1543
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    throw v2
.end method

.method public deprecate12()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1551
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1552
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1554
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1555
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1556
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1557
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate12()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1558
    return-void

    .line 1560
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1563
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    nop

    .line 1566
    return-void

    .line 1563
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1564
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1565
    throw v2
.end method

.method public deprecate13()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1591
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1592
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1594
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1595
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1596
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1597
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate13()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    return-void

    .line 1600
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1603
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    nop

    .line 1606
    return-void

    .line 1603
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw v2
.end method

.method public deprecate14()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1614
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1615
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1616
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1617
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate14()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1623
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    return-void

    .line 1620
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1623
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    nop

    .line 1626
    return-void

    .line 1623
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1624
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1625
    throw v2
.end method

.method public deprecate15()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1632
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1634
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1635
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1636
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1637
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate15()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1643
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1638
    return-void

    .line 1640
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1643
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    nop

    .line 1646
    return-void

    .line 1643
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1645
    throw v2
.end method

.method public deprecate16()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1651
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1652
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1654
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1655
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1656
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1657
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate16()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1663
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    return-void

    .line 1660
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1663
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    nop

    .line 1666
    return-void

    .line 1663
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1664
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1665
    throw v2
.end method

.method public deprecate17()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1671
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1672
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1675
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1676
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1677
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate17()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1678
    return-void

    .line 1680
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1683
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    nop

    .line 1686
    return-void

    .line 1683
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1685
    throw v2
.end method

.method public deprecate18()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1691
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1692
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1694
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1695
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1696
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1697
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate18()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1703
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1698
    return-void

    .line 1700
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1703
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    nop

    .line 1706
    return-void

    .line 1703
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1704
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1705
    throw v2
.end method

.method public deprecate19()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1793
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1794
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1796
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1797
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1798
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1799
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate19()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1805
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1800
    return-void

    .line 1802
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1805
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1807
    nop

    .line 1808
    return-void

    .line 1805
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1806
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1807
    throw v2
.end method

.method public deprecate2()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1061
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1062
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1064
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1065
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1066
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1067
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate2()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void

    .line 1070
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1073
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1075
    nop

    .line 1076
    return-void

    .line 1073
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1075
    throw v2
.end method

.method public deprecate20()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1814
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1816
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1817
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1818
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1819
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate20()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1825
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    return-void

    .line 1822
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1825
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    nop

    .line 1828
    return-void

    .line 1825
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1827
    throw v2
.end method

.method public deprecate21()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1574
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1575
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x22

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1576
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1577
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate21()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1583
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1578
    return-void

    .line 1580
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1583
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    nop

    .line 1586
    return-void

    .line 1583
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1584
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1585
    throw v2
.end method

.method public deprecate22()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 961
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 963
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 965
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 966
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate22()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_36

    .line 972
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 967
    return-void

    .line 969
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_36

    .line 972
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    nop

    .line 975
    return-void

    .line 972
    :catchall_36
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 973
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 974
    throw v2
.end method

.method public deprecate23()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1300
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x16

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1301
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1302
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate23()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1303
    return-void

    .line 1305
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1310
    nop

    .line 1311
    return-void

    .line 1308
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1310
    throw v2
.end method

.method public deprecate3()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1085
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1086
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1087
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate3()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1088
    return-void

    .line 1090
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1093
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1095
    nop

    .line 1096
    return-void

    .line 1093
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1094
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1095
    throw v2
.end method

.method public deprecate4()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1101
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1102
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1105
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1106
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1107
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate4()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1108
    return-void

    .line 1110
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1113
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1115
    nop

    .line 1116
    return-void

    .line 1113
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1115
    throw v2
.end method

.method public deprecate5()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1122
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1124
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1125
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1126
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1127
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate5()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1133
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1128
    return-void

    .line 1130
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1133
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1135
    nop

    .line 1136
    return-void

    .line 1133
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1134
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1135
    throw v2
.end method

.method public deprecate6()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1142
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1144
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1145
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1146
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1147
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate6()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1148
    return-void

    .line 1150
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1153
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    nop

    .line 1156
    return-void

    .line 1153
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1155
    throw v2
.end method

.method public deprecate7()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1165
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1166
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1167
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate7()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1173
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1168
    return-void

    .line 1170
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1173
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    nop

    .line 1176
    return-void

    .line 1173
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1174
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    throw v2
.end method

.method public deprecate8()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1182
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1184
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1185
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1186
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1187
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate8()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1193
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1188
    return-void

    .line 1190
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1193
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    nop

    .line 1196
    return-void

    .line 1193
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1194
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1195
    throw v2
.end method

.method public deprecate9()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1381
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1382
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1384
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1385
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1386
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1387
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->deprecate9()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_37

    .line 1393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1388
    return-void

    .line 1390
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_37

    .line 1393
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    nop

    .line 1396
    return-void

    .line 1393
    :catchall_37
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    throw v2
.end method

.method public disable()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 880
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 881
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 884
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 885
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 886
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 887
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->disable()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 887
    return v3

    .line 889
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 890
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 893
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    nop

    .line 896
    return v2

    .line 893
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 894
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 895
    throw v2
.end method

.method public enable()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 861
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 866
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 867
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->enable()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 867
    return v3

    .line 869
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 873
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    nop

    .line 876
    return v2

    .line 873
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    throw v2
.end method

.method public enableRangeDataNtf(IB)I
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "enable"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1359
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1360
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1365
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1366
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1367
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1368
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->enableRangeDataNtf(IB)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1368
    return v3

    .line 1370
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1371
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1374
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    nop

    .line 1377
    return v2

    .line 1374
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    throw v2
.end method

.method public getAntennaPair(B)I
    .registers 7
    .param p1, "rxAntennaPair"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1711
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1712
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1715
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1716
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1717
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1718
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1719
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->getAntennaPair(B)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1725
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1719
    return v3

    .line 1721
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1722
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1725
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    nop

    .line 1728
    return v2

    .line 1725
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1726
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    throw v2
.end method

.method public getAntennaPairConfig(B)I
    .registers 7
    .param p1, "config"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1772
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1773
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1776
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1778
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1779
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1780
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->getAntennaPairConfig(B)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1786
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1780
    return v3

    .line 1782
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1783
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1786
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    nop

    .line 1789
    return v2

    .line 1786
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    throw v2
.end method

.method public getAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigParameters;
    .registers 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lsamsung/uwb/AppConfigParameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1449
    .local p2, "appConfigParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1450
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1453
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1455
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1456
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1457
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1458
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->getAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigParameters;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1458
    return-object v3

    .line 1460
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1461
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_45

    .line 1462
    sget-object v3, Lsamsung/uwb/AppConfigParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsamsung/uwb/AppConfigParameters;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    .local v3, "_result":Lsamsung/uwb/AppConfigParameters;
    goto :goto_46

    .line 1465
    .end local v3    # "_result":Lsamsung/uwb/AppConfigParameters;
    :cond_45
    const/4 v3, 0x0

    .line 1469
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lsamsung/uwb/AppConfigParameters;
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    nop

    .line 1472
    return-object v3

    .line 1469
    .end local v3    # "_result":Lsamsung/uwb/AppConfigParameters;
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1471
    throw v2
.end method

.method public getDecentChannelNumber()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 920
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 921
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 925
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 926
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 927
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getDecentChannelNumber()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 933
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 927
    return v3

    .line 929
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 930
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 933
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    nop

    .line 936
    return v2

    .line 933
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 934
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 935
    throw v2
.end method

.method public getDecentPreambleCode()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 940
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 941
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 944
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 945
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 946
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 947
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getDecentPreambleCode()I

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3c

    .line 953
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    return v3

    .line 949
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 950
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3c

    move v2, v3

    .line 953
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 955
    nop

    .line 956
    return v2

    .line 953
    .end local v2    # "_result":I
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 954
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 955
    throw v2
.end method

.method public getExtAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigExtParameters;
    .registers 8
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lsamsung/uwb/AppConfigExtParameters;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1504
    .local p2, "appConfigParamList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1505
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1508
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1510
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1511
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1512
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1513
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->getExtAppConfigurations(ILjava/util/List;)Lsamsung/uwb/AppConfigExtParameters;

    move-result-object v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_4e

    .line 1524
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1513
    return-object v3

    .line 1515
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1516
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_45

    .line 1517
    sget-object v3, Lsamsung/uwb/AppConfigExtParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsamsung/uwb/AppConfigExtParameters;
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_4e

    .local v3, "_result":Lsamsung/uwb/AppConfigExtParameters;
    goto :goto_46

    .line 1520
    .end local v3    # "_result":Lsamsung/uwb/AppConfigExtParameters;
    :cond_45
    const/4 v3, 0x0

    .line 1524
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lsamsung/uwb/AppConfigExtParameters;
    :goto_46
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1526
    nop

    .line 1527
    return-object v3

    .line 1524
    .end local v3    # "_result":Lsamsung/uwb/AppConfigExtParameters;
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1525
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1526
    throw v2
.end method

.method public getExtDeviceCapability()Lsamsung/uwb/DeviceCapabilityParameters;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1884
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1887
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1888
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x31

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1889
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1890
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getExtDeviceCapability()Lsamsung/uwb/DeviceCapabilityParameters;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_48

    .line 1901
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1890
    return-object v3

    .line 1892
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1893
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    .line 1894
    sget-object v3, Lsamsung/uwb/DeviceCapabilityParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsamsung/uwb/DeviceCapabilityParameters;
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_48

    .local v3, "_result":Lsamsung/uwb/DeviceCapabilityParameters;
    goto :goto_40

    .line 1897
    .end local v3    # "_result":Lsamsung/uwb/DeviceCapabilityParameters;
    :cond_3f
    const/4 v3, 0x0

    .line 1901
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lsamsung/uwb/DeviceCapabilityParameters;
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    nop

    .line 1904
    return-object v3

    .line 1901
    .end local v3    # "_result":Lsamsung/uwb/DeviceCapabilityParameters;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1902
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1903
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 856
    const-string v0, "samsung.uwb.IUwbAdapter"

    return-object v0
.end method

.method public getRanMultiplier()B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1953
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1957
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x34

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1958
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1959
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getRanMultiplier()B

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1965
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1959
    return v3

    .line 1961
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1962
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1965
    .local v2, "_result":B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    nop

    .line 1968
    return v2

    .line 1965
    .end local v2    # "_result":B
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1966
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1967
    throw v2
.end method

.method public getRangingCount(I)I
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1339
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1342
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1344
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1345
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1346
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->getRangingCount(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1346
    return v3

    .line 1348
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1349
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1352
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    nop

    .line 1355
    return v2

    .line 1352
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1354
    throw v2
.end method

.method public getRxAntennaPair()[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1733
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1736
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1737
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1738
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1739
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getRxAntennaPair()[B

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1745
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1739
    return-object v3

    .line 1741
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1742
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move-object v2, v3

    .line 1745
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    nop

    .line 1748
    return-object v2

    .line 1745
    .end local v2    # "_result":[B
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1746
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1747
    throw v2
.end method

.method public getSessionCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1021
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1022
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1025
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1027
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1028
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getSessionCount()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 1034
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1028
    return v3

    .line 1030
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1031
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 1034
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1036
    nop

    .line 1037
    return v2

    .line 1034
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1035
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1036
    throw v2
.end method

.method public getSessionState(I)I
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1000
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1001
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1004
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1005
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1006
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1007
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1008
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->getSessionState(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1014
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1008
    return v3

    .line 1010
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1011
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1014
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    nop

    .line 1017
    return v2

    .line 1014
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1016
    throw v2
.end method

.method public getUwbDeviceTimeStamp()Lsamsung/uwb/UwbDeviceTimeStamp;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1976
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1977
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x35

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1978
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 1979
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getUwbDeviceTimeStamp()Lsamsung/uwb/UwbDeviceTimeStamp;

    move-result-object v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_48

    .line 1990
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1979
    return-object v3

    .line 1981
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1982
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3f

    .line 1983
    sget-object v3, Lsamsung/uwb/UwbDeviceTimeStamp;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsamsung/uwb/UwbDeviceTimeStamp;
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_48

    .local v3, "_result":Lsamsung/uwb/UwbDeviceTimeStamp;
    goto :goto_40

    .line 1986
    .end local v3    # "_result":Lsamsung/uwb/UwbDeviceTimeStamp;
    :cond_3f
    const/4 v3, 0x0

    .line 1990
    .end local v2    # "_status":Z
    .restart local v3    # "_result":Lsamsung/uwb/UwbDeviceTimeStamp;
    :goto_40
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1992
    nop

    .line 1993
    return-object v3

    .line 1990
    .end local v3    # "_result":Lsamsung/uwb/UwbDeviceTimeStamp;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1991
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1992
    throw v2
.end method

.method public getUwbMaxPpm()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2021
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2024
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2025
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2026
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 2027
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->getUwbMaxPpm()I

    move-result v3
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_3d

    .line 2033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2027
    return v3

    .line 2029
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2030
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_34
    .catchall {:try_start_2d .. :try_end_34} :catchall_3d

    move v2, v3

    .line 2033
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2035
    nop

    .line 2036
    return v2

    .line 2033
    .end local v2    # "_result":I
    :catchall_3d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2034
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2035
    throw v2
.end method

.method public isEnabled()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 980
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 981
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 984
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 985
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 986
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 987
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3}, Lsamsung/uwb/IUwbAdapter;->isEnabled()Z

    move-result v3
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3f

    .line 993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 987
    return v3

    .line 989
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 990
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_3f

    if-eqz v3, :cond_36

    const/4 v4, 0x1

    :cond_36
    move v2, v4

    .line 993
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    nop

    .line 996
    return v2

    .line 993
    .end local v2    # "_result":Z
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 994
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    throw v2
.end method

.method public openSession(IILsamsung/uwb/UwbDefaultConfig;Landroid/os/IBinder;ZLsamsung/uwb/IUwbCallback;)I
    .registers 22
    .param p1, "sessionId"    # I
    .param p2, "serviceType"    # I
    .param p3, "defaultConfig"    # Lsamsung/uwb/UwbDefaultConfig;
    .param p4, "iBinder"    # Landroid/os/IBinder;
    .param p5, "bBackgroundMode"    # Z
    .param p6, "callback"    # Lsamsung/uwb/IUwbCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1201
    move-object/from16 v8, p3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 1202
    .local v9, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v10

    .line 1205
    .local v10, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v0, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_85

    .line 1206
    move/from16 v11, p1

    :try_start_11
    invoke-virtual {v9, v11}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_82

    .line 1207
    move/from16 v12, p2

    :try_start_16
    invoke-virtual {v9, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 1208
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz v8, :cond_24

    .line 1209
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    invoke-virtual {v8, v9, v1}, Lsamsung/uwb/UwbDefaultConfig;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_27

    .line 1213
    :cond_24
    invoke-virtual {v9, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_7f

    .line 1215
    :goto_27
    move-object/from16 v13, p4

    :try_start_29
    invoke-virtual {v9, v13}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1216
    if-eqz p5, :cond_2f

    goto :goto_30

    :cond_2f
    move v0, v1

    :goto_30
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    if-eqz p6, :cond_3a

    invoke-interface/range {p6 .. p6}, Lsamsung/uwb/IUwbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    invoke-virtual {v9, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V
    :try_end_3e
    .catchall {:try_start_29 .. :try_end_3e} :catchall_7c

    .line 1218
    move-object v14, p0

    :try_start_3f
    iget-object v0, v14, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    invoke-interface {v0, v2, v9, v10, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 1219
    .local v0, "_status":Z
    if-nez v0, :cond_6a

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v1

    if-eqz v1, :cond_6a

    .line 1220
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v1

    move/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lsamsung/uwb/IUwbAdapter;->openSession(IILsamsung/uwb/UwbDefaultConfig;Landroid/os/IBinder;ZLsamsung/uwb/IUwbCallback;)I

    move-result v1
    :try_end_63
    .catchall {:try_start_3f .. :try_end_63} :catchall_7a

    .line 1226
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1220
    return v1

    .line 1222
    :cond_6a
    :try_start_6a
    invoke-virtual {v10}, Landroid/os/Parcel;->readException()V

    .line 1223
    invoke-virtual {v10}, Landroid/os/Parcel;->readInt()I

    move-result v1
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_7a

    move v0, v1

    .line 1226
    .local v0, "_result":I
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1228
    nop

    .line 1229
    return v0

    .line 1226
    .end local v0    # "_result":I
    :catchall_7a
    move-exception v0

    goto :goto_8d

    :catchall_7c
    move-exception v0

    move-object v14, p0

    goto :goto_8d

    :catchall_7f
    move-exception v0

    move-object v14, p0

    goto :goto_8b

    :catchall_82
    move-exception v0

    move-object v14, p0

    goto :goto_89

    :catchall_85
    move-exception v0

    move-object v14, p0

    move/from16 v11, p1

    :goto_89
    move/from16 v12, p2

    :goto_8b
    move-object/from16 v13, p4

    :goto_8d
    invoke-virtual {v10}, Landroid/os/Parcel;->recycle()V

    .line 1227
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1228
    throw v0
.end method

.method public rangingStart(I)I
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1254
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1255
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1258
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1260
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1261
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1262
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->rangingStart(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1268
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1262
    return v3

    .line 1264
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1265
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1268
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1270
    nop

    .line 1271
    return v2

    .line 1268
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1269
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1270
    throw v2
.end method

.method public rangingStop(I)I
    .registers 7
    .param p1, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1275
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1276
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1279
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1280
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1281
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x15

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1282
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1283
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1}, Lsamsung/uwb/IUwbAdapter;->rangingStop(I)I

    move-result v3
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_40

    .line 1289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1283
    return v3

    .line 1285
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1286
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_40

    move v2, v3

    .line 1289
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1291
    nop

    .line 1292
    return v2

    .line 1289
    .end local v2    # "_result":I
    :catchall_40
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1290
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1291
    throw v2
.end method

.method public registerRangingCallback(ILsamsung/uwb/IRangingCallback;)Z
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "callback"    # Lsamsung/uwb/IRangingCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1914
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lsamsung/uwb/IRangingCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1915
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1916
    .local v2, "_status":Z
    if-nez v2, :cond_3b

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 1917
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->registerRangingCallback(ILsamsung/uwb/IRangingCallback;)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4e

    .line 1923
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1917
    return v3

    .line 1919
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1920
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    if-eqz v3, :cond_45

    const/4 v4, 0x1

    :cond_45
    move v2, v4

    .line 1923
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    nop

    .line 1926
    return v2

    .line 1923
    .end local v2    # "_result":Z
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1925
    throw v2
.end method

.method public registerUwbCallback(ILsamsung/uwb/IUwbCallback;)Z
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "callback"    # Lsamsung/uwb/IUwbCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1931
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1934
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1935
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1936
    if-eqz p2, :cond_17

    invoke-interface {p2}, Lsamsung/uwb/IUwbCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1937
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1938
    .local v2, "_status":Z
    if-nez v2, :cond_3b

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_3b

    .line 1939
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->registerUwbCallback(ILsamsung/uwb/IUwbCallback;)Z

    move-result v3
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_4e

    .line 1945
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1939
    return v3

    .line 1941
    :cond_3b
    :try_start_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1942
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_4e

    if-eqz v3, :cond_45

    const/4 v4, 0x1

    :cond_45
    move v2, v4

    .line 1945
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    nop

    .line 1948
    return v2

    .line 1945
    .end local v2    # "_result":Z
    :catchall_4e
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1946
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1947
    throw v2
.end method

.method public sendBlinkData(IB[B)B
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "repetitionCount"    # B
    .param p3, "appData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1858
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1862
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1863
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1864
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1865
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1866
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1867
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 1868
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lsamsung/uwb/IUwbAdapter;->sendBlinkData(IB[B)B

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 1874
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1868
    return v3

    .line 1870
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1871
    invoke-virtual {v1}, Landroid/os/Parcel;->readByte()B

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 1874
    .local v2, "_result":B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    nop

    .line 1877
    return v2

    .line 1874
    .end local v2    # "_result":B
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1875
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1876
    throw v2
.end method

.method public sendData(I[B[B)I
    .registers 9
    .param p1, "sessionId"    # I
    .param p2, "address"    # [B
    .param p3, "appData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1997
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1998
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2001
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2002
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2003
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2004
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2005
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x36

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2006
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 2007
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lsamsung/uwb/IUwbAdapter;->sendData(I[B[B)I

    move-result v3
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_46

    .line 2013
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2007
    return v3

    .line 2009
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2010
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_46

    move v2, v3

    .line 2013
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2015
    nop

    .line 2016
    return v2

    .line 2013
    .end local v2    # "_result":I
    :catchall_46
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2014
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2015
    throw v2
.end method

.method public setAppConfigurations(ILsamsung/uwb/AppConfigParameters;)I
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "appConfig"    # Lsamsung/uwb/AppConfigParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1427
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 1428
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1429
    invoke-virtual {p2, v0, v2}, Lsamsung/uwb/AppConfigParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1432
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    :goto_1e
    iget-object v3, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1435
    .local v2, "_status":Z
    if-nez v2, :cond_3d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 1436
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->setAppConfigurations(ILsamsung/uwb/AppConfigParameters;)I

    move-result v3
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_4d

    .line 1442
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1436
    return v3

    .line 1438
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1439
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_4d

    move v2, v3

    .line 1442
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    nop

    .line 1445
    return v2

    .line 1442
    .end local v2    # "_result":I
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1443
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1444
    throw v2
.end method

.method public setExtAppConfigurations(ILsamsung/uwb/AppConfigExtParameters;)I
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "appExtConfig"    # Lsamsung/uwb/AppConfigExtParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1477
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1480
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1481
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1482
    const/4 v2, 0x0

    if-eqz p2, :cond_1b

    .line 1483
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1484
    invoke-virtual {p2, v0, v2}, Lsamsung/uwb/AppConfigExtParameters;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1e

    .line 1487
    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1489
    :goto_1e
    iget-object v3, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1490
    .local v2, "_status":Z
    if-nez v2, :cond_3d

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_3d

    .line 1491
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->setExtAppConfigurations(ILsamsung/uwb/AppConfigExtParameters;)I

    move-result v3
    :try_end_36
    .catchall {:try_start_8 .. :try_end_36} :catchall_4d

    .line 1497
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1491
    return v3

    .line 1493
    :cond_3d
    :try_start_3d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1494
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_4d

    move v2, v3

    .line 1497
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    nop

    .line 1500
    return v2

    .line 1497
    .end local v2    # "_result":I
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1498
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1499
    throw v2
.end method

.method public setRangingDataSamplingRate(IB)I
    .registers 8
    .param p1, "sessionId"    # I
    .param p2, "samplingRate"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1316
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1317
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1320
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v2, "samsung.uwb.IUwbAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1321
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1322
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 1323
    iget-object v2, p0, Lsamsung/uwb/IUwbAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1324
    .local v2, "_status":Z
    if-nez v2, :cond_33

    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    if-eqz v3, :cond_33

    .line 1325
    invoke-static {}, Lsamsung/uwb/IUwbAdapter$Stub;->getDefaultImpl()Lsamsung/uwb/IUwbAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lsamsung/uwb/IUwbAdapter;->setRangingDataSamplingRate(IB)I

    move-result v3
    :try_end_2c
    .catchall {:try_start_8 .. :try_end_2c} :catchall_43

    .line 1331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1325
    return v3

    .line 1327
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_33 .. :try_end_3a} :catchall_43

    move v2, v3

    .line 1331
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    nop

    .line 1334
    return v2

    .line 1331
    .end local v2    # "_result":I
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1333
    throw v2
.end method
