.class Lcom/android/internal/net/IOemNetd$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOemNetd.java"

# interfaces
.implements Lcom/android/internal/net/IOemNetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/IOemNetd$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/android/internal/net/IOemNetd;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 1549
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1550
    iput-object p1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 1551
    return-void
.end method


# virtual methods
.method public addMecUid(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2004
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2006
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2007
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2008
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2009
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 2010
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->addMecUid(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 2015
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2011
    return-void

    .line 2015
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2016
    nop

    .line 2017
    return-void

    .line 2015
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2016
    throw v1
.end method

.method public addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2972
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2973
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2975
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2976
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2977
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2978
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2979
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 2980
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->addMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 2986
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2981
    return-void

    .line 2983
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 2986
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2988
    nop

    .line 2989
    return-void

    .line 2986
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2987
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2988
    throw v2
.end method

.method public addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3102
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3103
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3105
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3106
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3107
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3108
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3109
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x55

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3110
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3111
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3117
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3112
    return-void

    .line 3114
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3117
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3119
    nop

    .line 3120
    return-void

    .line 3117
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3118
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3119
    throw v2
.end method

.method public addMptcpLinkIface(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2934
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2935
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2937
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2938
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2939
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2940
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2941
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/net/IOemNetd;->addMptcpLinkIface(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2942
    return-void

    .line 2944
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 2947
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2949
    nop

    .line 2950
    return-void

    .line 2947
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2949
    throw v2
.end method

.method public addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2888
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2889
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2891
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2892
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2893
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2894
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2896
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2897
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2898
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 2899
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_4d

    .line 2905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2900
    return-void

    .line 2902
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 2905
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2907
    nop

    .line 2908
    return-void

    .line 2905
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2906
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2907
    throw v2
.end method

.method public addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2846
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2847
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2849
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2850
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2851
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2852
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2853
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x49

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2854
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 2855
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 2861
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2856
    return-void

    .line 2858
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 2861
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    nop

    .line 2864
    return-void

    .line 2861
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2862
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2863
    throw v2
.end method

.method public addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3148
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3149
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3150
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3151
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3152
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3153
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x57

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3154
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 3155
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/net/IOemNetd;->addMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_4d

    .line 3161
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3156
    return-void

    .line 3158
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 3161
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    nop

    .line 3164
    return-void

    .line 3161
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3162
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3163
    throw v2
.end method

.method public addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "wifiIface"    # Ljava/lang/String;
    .param p2, "wifiMtu"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3190
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3191
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3193
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3194
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3195
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3196
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3197
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3198
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3199
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3200
    return-void

    .line 3202
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3205
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    nop

    .line 3208
    return-void

    .line 3205
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3207
    throw v2
.end method

.method public addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3340
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3341
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3342
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3343
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3344
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3345
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3346
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3352
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3347
    return-void

    .line 3349
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3352
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3354
    nop

    .line 3355
    return-void

    .line 3352
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3353
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3354
    throw v2
.end method

.method public addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 23
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3013
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3015
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_71

    .line 3016
    move-object/from16 v10, p1

    :try_start_11
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_6f

    .line 3017
    move-object/from16 v11, p2

    :try_start_16
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_6d

    .line 3018
    move-object/from16 v12, p3

    :try_start_1b
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_6b

    .line 3019
    move/from16 v13, p4

    :try_start_20
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_69

    .line 3020
    move/from16 v14, p5

    :try_start_25
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_67

    .line 3021
    move-object/from16 v15, p6

    :try_start_2a
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3022
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x51

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3023
    .local v0, "_status":Z
    if-nez v0, :cond_5a

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 3024
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/net/IOemNetd;->addMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_65

    .line 3030
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3025
    return-void

    .line 3027
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    .line 3030
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    nop

    .line 3033
    return-void

    .line 3030
    :catchall_65
    move-exception v0

    goto :goto_7e

    :catchall_67
    move-exception v0

    goto :goto_7c

    :catchall_69
    move-exception v0

    goto :goto_7a

    :catchall_6b
    move-exception v0

    goto :goto_78

    :catchall_6d
    move-exception v0

    goto :goto_76

    :catchall_6f
    move-exception v0

    goto :goto_74

    :catchall_71
    move-exception v0

    move-object/from16 v10, p1

    :goto_74
    move-object/from16 v11, p2

    :goto_76
    move-object/from16 v12, p3

    :goto_78
    move/from16 v13, p4

    :goto_7a
    move/from16 v14, p5

    :goto_7c
    move-object/from16 v15, p6

    :goto_7e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3031
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3032
    throw v0
.end method

.method public addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 15
    .param p1, "externalIface"    # Ljava/lang/String;
    .param p2, "internalIface"    # Ljava/lang/String;
    .param p3, "externalIp"    # Ljava/lang/String;
    .param p4, "internalIp"    # Ljava/lang/String;
    .param p5, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3531
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3532
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3533
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3534
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3535
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3536
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3537
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x6a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3538
    .local v1, "_status":Z
    if-nez v1, :cond_3c

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_3c

    .line 3539
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move v8, p5

    invoke-interface/range {v3 .. v8}, Lcom/android/internal/net/IOemNetd;->addPortFwdRules(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_38
    .catchall {:try_start_4 .. :try_end_38} :catchall_41

    .line 3544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3540
    return-void

    .line 3544
    .end local v1    # "_status":Z
    :cond_3c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3545
    nop

    .line 3546
    return-void

    .line 3544
    :catchall_41
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3545
    throw v1
.end method

.method public addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "proto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3060
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3061
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3063
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3064
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3065
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3066
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3067
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x53

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3068
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3069
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->addUidToMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3070
    return-void

    .line 3072
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3075
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3077
    nop

    .line 3078
    return-void

    .line 3075
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3076
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3077
    throw v2
.end method

.method public allSocketsDestroy([Landroid/net/UidRangeParcel;[I)V
    .registers 8
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .param p2, "exemptUids"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1986
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1987
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 1988
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1989
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1990
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 1991
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->allSocketsDestroy([Landroid/net/UidRangeParcel;[I)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 1996
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1992
    return-void

    .line 1996
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1997
    nop

    .line 1998
    return-void

    .line 1996
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1997
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 1554
    iget-object v0, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public bandwidthFlushFocTables()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1969
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1971
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1972
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1973
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1974
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->bandwidthFlushFocTables()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1975
    return-void

    .line 1979
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    nop

    .line 1981
    return-void

    .line 1979
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    throw v1
.end method

.method public bandwidthSetFocBlockList(ZI)V
    .registers 8
    .param p1, "allowed"    # Z
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1952
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1954
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1955
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1956
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1957
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x17

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1958
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1959
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->bandwidthSetFocBlockList(ZI)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 1964
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1960
    return-void

    .line 1964
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    nop

    .line 1966
    return-void

    .line 1964
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1965
    throw v1
.end method

.method public cleanAllBlock()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1824
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1826
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1827
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1828
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1829
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->cleanAllBlock()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1834
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1830
    return-void

    .line 1834
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1835
    nop

    .line 1836
    return-void

    .line 1834
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1835
    throw v1
.end method

.method public clearEbpfMap(I)V
    .registers 7
    .param p1, "mapId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2631
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2633
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2634
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2635
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2636
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 2637
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->clearEbpfMap(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 2642
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2638
    return-void

    .line 2642
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2643
    nop

    .line 2644
    return-void

    .line 2642
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2643
    throw v1
.end method

.method public delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "dest"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3123
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3124
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3126
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3130
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x56

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3131
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3132
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpIpAcceptRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3138
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3133
    return-void

    .line 3135
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3138
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3140
    nop

    .line 3141
    return-void

    .line 3138
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3139
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3140
    throw v2
.end method

.method public delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "wifiIface"    # Ljava/lang/String;
    .param p2, "wifiMtu"    # Ljava/lang/String;
    .param p3, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3215
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3216
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3217
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3218
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3219
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3220
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourcePortAcceptRule(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3226
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3221
    return-void

    .line 3223
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3226
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3228
    nop

    .line 3229
    return-void

    .line 3226
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3227
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3228
    throw v2
.end method

.method public delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "gateway"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3358
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3359
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3361
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3362
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3363
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3364
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3365
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3366
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3367
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->delMptcpSourceRoute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3368
    return-void

    .line 3370
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3373
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    nop

    .line 3376
    return-void

    .line 3373
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3375
    throw v2
.end method

.method public disableMptcpMode()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2828
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2829
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2831
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2832
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x48

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2833
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 2834
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/net/IOemNetd;->disableMptcpMode()V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_39

    .line 2840
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2835
    return-void

    .line 2837
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_39

    .line 2840
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2842
    nop

    .line 2843
    return-void

    .line 2840
    :catchall_39
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2841
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2842
    throw v2
.end method

.method public enableDscpConfig(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3511
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3513
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3514
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x69

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3515
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 3516
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->enableDscpConfig(IZ)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 3521
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3517
    return-void

    .line 3521
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    nop

    .line 3523
    return-void

    .line 3521
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3522
    throw v1
.end method

.method public enableKnoxVpnFlagForTether(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2669
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2671
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2672
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2673
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2674
    .local v1, "_status":Z
    if-nez v1, :cond_30

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 2675
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->enableKnoxVpnFlagForTether(Z)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 2680
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2676
    return-void

    .line 2680
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    nop

    .line 2682
    return-void

    .line 2680
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2681
    throw v1
.end method

.method public enableMptcpModes(Ljava/lang/String;)V
    .registers 7
    .param p1, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2809
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2810
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2812
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2813
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2814
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x47

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2815
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2816
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/net/IOemNetd;->enableMptcpModes(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 2822
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2817
    return-void

    .line 2819
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 2822
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    nop

    .line 2825
    return-void

    .line 2822
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2823
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2824
    throw v2
.end method

.method public enterpriseAddUidRanges(ILjava/lang/String;[Landroid/net/UidRangeParcel;)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3407
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3410
    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3411
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x63

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3412
    .local v1, "_status":Z
    if-nez v1, :cond_32

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 3413
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->enterpriseAddUidRanges(ILjava/lang/String;[Landroid/net/UidRangeParcel;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 3418
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    return-void

    .line 3418
    .end local v1    # "_status":Z
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    nop

    .line 3420
    return-void

    .line 3418
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3419
    throw v1
.end method

.method public enterpriseBlockUidRanges([Landroid/net/UidRangeParcel;)V
    .registers 7
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3439
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3441
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3442
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3443
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x65

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3444
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 3445
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->enterpriseBlockUidRanges([Landroid/net/UidRangeParcel;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 3450
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3446
    return-void

    .line 3450
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3451
    nop

    .line 3452
    return-void

    .line 3450
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3451
    throw v1
.end method

.method public enterpriseRemoveUidRanges([Landroid/net/UidRangeParcel;)V
    .registers 7
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3423
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3425
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3426
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3427
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x64

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3428
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 3429
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->enterpriseRemoveUidRanges([Landroid/net/UidRangeParcel;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 3434
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3430
    return-void

    .line 3434
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3435
    nop

    .line 3436
    return-void

    .line 3434
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3435
    throw v1
.end method

.method public enterpriseUnblockUidRanges([Landroid/net/UidRangeParcel;)V
    .registers 7
    .param p1, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3455
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3457
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3458
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3459
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x66

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3460
    .local v1, "_status":Z
    if-nez v1, :cond_2c

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2c

    .line 3461
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->enterpriseUnblockUidRanges([Landroid/net/UidRangeParcel;)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_31

    .line 3466
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3462
    return-void

    .line 3466
    .end local v1    # "_status":Z
    :cond_2c
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    nop

    .line 3468
    return-void

    .line 3466
    :catchall_31
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3467
    throw v1
.end method

.method public firewallBuild()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2075
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2076
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2077
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2078
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->firewallBuild()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2083
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2079
    return-void

    .line 2083
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2084
    nop

    .line 2085
    return-void

    .line 2083
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2084
    throw v1
.end method

.method public firewallSetRuleMobileData(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2105
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2107
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2108
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2109
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2110
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2111
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2112
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleMobileData(IZ)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2113
    return-void

    .line 2117
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2118
    nop

    .line 2119
    return-void

    .line 2117
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2118
    throw v1
.end method

.method public firewallSetRuleWifi(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allowed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2088
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2090
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2091
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2092
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2093
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2094
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2095
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->firewallSetRuleWifi(IZ)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2100
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2096
    return-void

    .line 2100
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2101
    nop

    .line 2102
    return-void

    .line 2100
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2101
    throw v1
.end method

.method public getDnbaStats()[Landroid/net/TetherStatsParcel;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2198
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2199
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2202
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2203
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x25

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2204
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 2205
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/net/IOemNetd;->getDnbaStats()[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_43

    .line 2211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2205
    return-object v3

    .line 2207
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2208
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_3a
    .catchall {:try_start_2f .. :try_end_3a} :catchall_43

    move-object v2, v3

    .line 2211
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2213
    nop

    .line 2214
    return-object v2

    .line 2211
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2213
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 1558
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "sport"    # I
    .param p3, "dport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1663
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1666
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1667
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1668
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1669
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1670
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1671
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1672
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->getVideoStats(Ljava/lang/String;II)[Landroid/net/TetherStatsParcel;

    move-result-object v3
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_4b

    .line 1678
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1672
    return-object v3

    .line 1674
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1675
    sget-object v3, Landroid/net/TetherStatsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/net/TetherStatsParcel;
    :try_end_42
    .catchall {:try_start_37 .. :try_end_42} :catchall_4b

    move-object v2, v3

    .line 1678
    .local v2, "_result":[Landroid/net/TetherStatsParcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    nop

    .line 1681
    return-object v2

    .line 1678
    .end local v2    # "_result":[Landroid/net/TetherStatsParcel;
    :catchall_4b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1679
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1680
    throw v2
.end method

.method public gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2126
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2127
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2128
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2129
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2131
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2132
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlMobileDataRule(ILjava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 2137
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2133
    return-void

    .line 2137
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    nop

    .line 2139
    return-void

    .line 2137
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2138
    throw v1
.end method

.method public gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "firewallRule"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2142
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2144
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2145
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2146
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2147
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2148
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2149
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2150
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->gmsCoreSetUidUrlWifiRule(ILjava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 2155
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2151
    return-void

    .line 2155
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2156
    nop

    .line 2157
    return-void

    .line 2155
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2156
    throw v1
.end method

.method public iptablesSetBidirectionalTCRule(Z)V
    .registers 7
    .param p1, "add"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2372
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2374
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2375
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2376
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2377
    .local v1, "_status":Z
    if-nez v1, :cond_30

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 2378
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->iptablesSetBidirectionalTCRule(Z)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 2383
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2379
    return-void

    .line 2383
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2384
    nop

    .line 2385
    return-void

    .line 2383
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2384
    throw v1
.end method

.method public isAlive()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1565
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1566
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1569
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1571
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v5

    if-eqz v5, :cond_2e

    .line 1572
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/net/IOemNetd;->isAlive()Z

    move-result v3
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_41

    .line 1578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1572
    return v3

    .line 1574
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1575
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v5
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_41

    if-eqz v5, :cond_38

    move v3, v4

    :cond_38
    move v2, v3

    .line 1578
    .local v2, "_result":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    nop

    .line 1581
    return v2

    .line 1578
    .end local v2    # "_result":Z
    :catchall_41
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1579
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1580
    throw v2
.end method

.method public knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2412
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2414
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2415
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2416
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2417
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2418
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2419
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnBlockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 2424
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2420
    return-void

    .line 2424
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2425
    nop

    .line 2426
    return-void

    .line 2424
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2425
    throw v1
.end method

.method public knoxVpnDestroyBlockedKnoxNetwork()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2480
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2482
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2483
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2484
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2485
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->knoxVpnDestroyBlockedKnoxNetwork()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2490
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2486
    return-void

    .line 2490
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2491
    nop

    .line 2492
    return-void

    .line 2490
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2491
    throw v1
.end method

.method public knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2448
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2450
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2451
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2452
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2453
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 2458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2454
    return-void

    .line 2458
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2459
    nop

    .line 2460
    return-void

    .line 2458
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2459
    throw v1
.end method

.method public knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2495
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2497
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2498
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2499
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2500
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2501
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2502
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 2507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2503
    return-void

    .line 2507
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2508
    nop

    .line 2509
    return-void

    .line 2507
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2508
    throw v1
.end method

.method public knoxVpnInsertUidForDnsAuthorization([I)V
    .registers 7
    .param p1, "appIds"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2544
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2546
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2547
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2548
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2549
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 2550
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->knoxVpnInsertUidForDnsAuthorization([I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 2555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2551
    return-void

    .line 2555
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    nop

    .line 2557
    return-void

    .line 2555
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2556
    throw v1
.end method

.method public knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2514
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2516
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2517
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2518
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2519
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptUidFromKnoxVpn(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 2524
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2520
    return-void

    .line 2524
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2525
    nop

    .line 2526
    return-void

    .line 2524
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2525
    throw v1
.end method

.method public knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2465
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2467
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2468
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2469
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2470
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveExemptedDnsQueryForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 2475
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2471
    return-void

    .line 2475
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2476
    nop

    .line 2477
    return-void

    .line 2475
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2476
    throw v1
.end method

.method public knoxVpnRemoveUidFromDnsAuthorization()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2529
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2531
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2532
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2533
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2534
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->knoxVpnRemoveUidFromDnsAuthorization()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2539
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2535
    return-void

    .line 2539
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    nop

    .line 2541
    return-void

    .line 2539
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2540
    throw v1
.end method

.method public knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    .registers 8
    .param p1, "netId"    # I
    .param p2, "uidRanges"    # [Landroid/net/UidRangeParcel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2431
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2432
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2433
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 2434
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2435
    .local v1, "_status":Z
    if-nez v1, :cond_2f

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2436
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->knoxVpnUnblockDnsQueriesForUid(I[Landroid/net/UidRangeParcel;)V
    :try_end_2b
    .catchall {:try_start_4 .. :try_end_2b} :catchall_34

    .line 2441
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2437
    return-void

    .line 2441
    .end local v1    # "_status":Z
    :cond_2f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2442
    nop

    .line 2443
    return-void

    .line 2441
    :catchall_34
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2442
    throw v1
.end method

.method public makeBlockChildChain()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1761
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1763
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1764
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1765
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1766
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->makeBlockChildChain()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1771
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1767
    return-void

    .line 1771
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1772
    nop

    .line 1773
    return-void

    .line 1771
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1772
    throw v1
.end method

.method public makeVideoCallChain()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1613
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1614
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1615
    .local v1, "_status":Z
    if-nez v1, :cond_27

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1616
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->makeVideoCallChain()V
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_2c

    .line 1621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    return-void

    .line 1621
    .end local v1    # "_status":Z
    :cond_27
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    nop

    .line 1623
    return-void

    .line 1621
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1622
    throw v1
.end method

.method public modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .param p1, "enable"    # Z
    .param p2, "mobileInterface"    # Ljava/lang/String;
    .param p3, "tunnelingInterface"    # Ljava/lang/String;
    .param p4, "deleteSkip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2721
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2722
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2724
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2725
    if-eqz p4, :cond_1e

    move v1, v2

    :cond_1e
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2726
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x43

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2727
    .local v1, "_status":Z
    if-nez v1, :cond_3d

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 2728
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/net/IOemNetd;->modifyEpdg(ZLjava/lang/String;Ljava/lang/String;Z)V
    :try_end_39
    .catchall {:try_start_4 .. :try_end_39} :catchall_42

    .line 2733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2729
    return-void

    .line 2733
    .end local v1    # "_status":Z
    :cond_3d
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2734
    nop

    .line 2735
    return-void

    .line 2733
    :catchall_42
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2734
    throw v1
.end method

.method public nalMmsFirewallBuild()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3476
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3477
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x67

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3478
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 3479
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->nalMmsFirewallBuild()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 3484
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3480
    return-void

    .line 3484
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    nop

    .line 3486
    return-void

    .line 3484
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3485
    throw v1
.end method

.method public networkClearFocUidList()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1937
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1939
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1940
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1941
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1942
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->networkClearFocUidList()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1947
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1943
    return-void

    .line 1947
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    nop

    .line 1949
    return-void

    .line 1947
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1948
    throw v1
.end method

.method public networkClearMdoUidList()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1890
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1892
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1893
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1894
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1895
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->networkClearMdoUidList()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1900
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1896
    return-void

    .line 1900
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    nop

    .line 1902
    return-void

    .line 1900
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1901
    throw v1
.end method

.method public networkGuardCreateChain()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2223
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2224
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2225
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2226
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->networkGuardCreateChain()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2227
    return-void

    .line 2231
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2232
    nop

    .line 2233
    return-void

    .line 2231
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2232
    throw v1
.end method

.method public networkGuardDeleteChain()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2238
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2239
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2240
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2241
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->networkGuardDeleteChain()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2246
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2242
    return-void

    .line 2246
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2247
    nop

    .line 2248
    return-void

    .line 2246
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2247
    throw v1
.end method

.method public networkGuardDeleteWhiteListRule()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2282
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2284
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2285
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2286
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2287
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->networkGuardDeleteWhiteListRule()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2288
    return-void

    .line 2292
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    nop

    .line 2294
    return-void

    .line 2292
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2293
    throw v1
.end method

.method public networkGuardDisable()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2267
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2269
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2270
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2271
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2272
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->networkGuardDisable()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2277
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2273
    return-void

    .line 2277
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2278
    nop

    .line 2279
    return-void

    .line 2277
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2278
    throw v1
.end method

.method public networkGuardEnable(Z)V
    .registers 7
    .param p1, "isBlack"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2251
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2253
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2254
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2255
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2256
    .local v1, "_status":Z
    if-nez v1, :cond_30

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 2257
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->networkGuardEnable(Z)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 2262
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2258
    return-void

    .line 2262
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2263
    nop

    .line 2264
    return-void

    .line 2262
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2263
    throw v1
.end method

.method public networkGuardSetProtocolAcceptRule(I)V
    .registers 7
    .param p1, "protocol"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2334
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2336
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2337
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 2338
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->networkGuardSetProtocolAcceptRule(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 2343
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2339
    return-void

    .line 2343
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    nop

    .line 2345
    return-void

    .line 2343
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2344
    throw v1
.end method

.method public networkGuardSetUidRangeAcceptRule(II)V
    .registers 8
    .param p1, "uidStart"    # I
    .param p2, "uidEnd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2299
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2300
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2301
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2302
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2303
    .local v1, "_status":Z
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2304
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->networkGuardSetUidRangeAcceptRule(II)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 2309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2305
    return-void

    .line 2309
    .end local v1    # "_status":Z
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    nop

    .line 2311
    return-void

    .line 2309
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    throw v1
.end method

.method public networkGuardSetUidRule(IZZ)V
    .registers 9
    .param p1, "uid"    # I
    .param p2, "mode"    # Z
    .param p3, "isDrop"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2316
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2318
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2319
    if-eqz p3, :cond_1b

    move v1, v2

    :cond_1b
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2320
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2c

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v4, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2321
    .local v1, "_status":Z
    if-nez v1, :cond_3a

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 2322
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->networkGuardSetUidRule(IZZ)V
    :try_end_36
    .catchall {:try_start_4 .. :try_end_36} :catchall_3f

    .line 2327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2323
    return-void

    .line 2327
    .end local v1    # "_status":Z
    :cond_3a
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2328
    nop

    .line 2329
    return-void

    .line 2327
    :catchall_3f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2328
    throw v1
.end method

.method public networkSetFocNetId(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1923
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1924
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1926
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1927
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->networkSetFocNetId(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 1932
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1928
    return-void

    .line 1932
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1933
    nop

    .line 1934
    return-void

    .line 1932
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1933
    throw v1
.end method

.method public networkSetFocUidList(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1905
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1907
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1908
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1909
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1910
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1911
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->networkSetFocUidList(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 1916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1912
    return-void

    .line 1916
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1917
    nop

    .line 1918
    return-void

    .line 1916
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1917
    throw v1
.end method

.method public networkSetMdoNetId(I)V
    .registers 7
    .param p1, "netId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1876
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1878
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1879
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1880
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->networkSetMdoNetId(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 1885
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1881
    return-void

    .line 1885
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    nop

    .line 1887
    return-void

    .line 1885
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1886
    throw v1
.end method

.method public networkSetMdoUid(ZI)V
    .registers 8
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1857
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1859
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1860
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1861
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1862
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1863
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 1864
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->networkSetMdoUid(ZI)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 1869
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1865
    return-void

    .line 1869
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    nop

    .line 1871
    return-void

    .line 1869
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1870
    throw v1
.end method

.method public registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/internal/net/IDomainFilterEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1688
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1690
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1691
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/android/internal/net/IDomainFilterEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1692
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x7

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1693
    .local v1, "_status":Z
    if-nez v1, :cond_32

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_32

    .line 1694
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->registerDomainFilterEventListener(Lcom/android/internal/net/IDomainFilterEventListener;)V
    :try_end_2e
    .catchall {:try_start_4 .. :try_end_2e} :catchall_37

    .line 1699
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1695
    return-void

    .line 1699
    .end local v1    # "_status":Z
    :cond_32
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    nop

    .line 1701
    return-void

    .line 1699
    :catchall_37
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1700
    throw v1
.end method

.method public registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/internal/net/INetdTetherEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2685
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2687
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2688
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-interface {p1}, Lcom/android/internal/net/INetdTetherEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2689
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x41

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2690
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2691
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->registerNetdTetherEventListener(Lcom/android/internal/net/INetdTetherEventListener;)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2696
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2692
    return-void

    .line 2696
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    nop

    .line 2698
    return-void

    .line 2696
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2697
    throw v1
.end method

.method public registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1591
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1593
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1594
    if-eqz p1, :cond_16

    invoke-interface {p1}, Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1595
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1596
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1597
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/net/IOemNetd;->registerOemUnsolicitedEventListener(Lcom/android/internal/net/IOemNetdUnsolicitedEventListener;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_43

    .line 1603
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1598
    return-void

    .line 1600
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_43

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
    :catchall_43
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1605
    throw v2
.end method

.method public removeMecUid(I)V
    .registers 7
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2020
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2022
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2023
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2024
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2025
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 2026
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->removeMecUid(I)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 2031
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2027
    return-void

    .line 2031
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    nop

    .line 2033
    return-void

    .line 2031
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2032
    throw v1
.end method

.method public removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2992
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2993
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2995
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2997
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2998
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2999
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 3000
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->removeMptcpChain(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 3006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3001
    return-void

    .line 3003
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 3006
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3008
    nop

    .line 3009
    return-void

    .line 3006
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3007
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3008
    throw v2
.end method

.method public removeMptcpLinkIface(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2954
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2956
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2957
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2958
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2959
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 2960
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/internal/net/IOemNetd;->removeMptcpLinkIface(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3c

    .line 2966
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2961
    return-void

    .line 2963
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3c

    .line 2966
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2968
    nop

    .line 2969
    return-void

    .line 2966
    :catchall_3c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2967
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2968
    throw v2
.end method

.method public removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2911
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2912
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2914
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2915
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2916
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2917
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2918
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2919
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2920
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2921
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 2922
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_4d

    .line 2928
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2923
    return-void

    .line 2925
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 2928
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2930
    nop

    .line 2931
    return-void

    .line 2928
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2929
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2930
    throw v2
.end method

.method public removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2867
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2868
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2870
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2871
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2872
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2873
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2874
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2875
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 2876
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 2882
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2877
    return-void

    .line 2879
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 2882
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2884
    nop

    .line 2885
    return-void

    .line 2882
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2883
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2884
    throw v2
.end method

.method public removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 16
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3171
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3172
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3173
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3174
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3175
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3176
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3177
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 3178
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/net/IOemNetd;->removeMptcpSocksSkipRuleProto(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_4d

    .line 3184
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3179
    return-void

    .line 3181
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_4d

    .line 3184
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    nop

    .line 3187
    return-void

    .line 3184
    :catchall_4d
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3185
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3186
    throw v2
.end method

.method public removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 23
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "chain"    # Ljava/lang/String;
    .param p3, "proto"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "uid"    # I
    .param p6, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3037
    .local v1, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3039
    .local v2, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_71

    .line 3040
    move-object/from16 v10, p1

    :try_start_11
    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_6f

    .line 3041
    move-object/from16 v11, p2

    :try_start_16
    invoke-virtual {v1, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_6d

    .line 3042
    move-object/from16 v12, p3

    :try_start_1b
    invoke-virtual {v1, v12}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_6b

    .line 3043
    move/from16 v13, p4

    :try_start_20
    invoke-virtual {v1, v13}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_69

    .line 3044
    move/from16 v14, p5

    :try_start_25
    invoke-virtual {v1, v14}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_67

    .line 3045
    move-object/from16 v15, p6

    :try_start_2a
    invoke-virtual {v1, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3046
    move-object/from16 v9, p0

    iget-object v0, v9, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x52

    const/4 v4, 0x0

    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    .line 3047
    .local v0, "_status":Z
    if-nez v0, :cond_5a

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_5a

    .line 3048
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-interface/range {v3 .. v9}, Lcom/android/internal/net/IOemNetd;->removeMptcpUidSocksRule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_65

    .line 3054
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3049
    return-void

    .line 3051
    :cond_5a
    :try_start_5a
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_65

    .line 3054
    .end local v0    # "_status":Z
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3056
    nop

    .line 3057
    return-void

    .line 3054
    :catchall_65
    move-exception v0

    goto :goto_7e

    :catchall_67
    move-exception v0

    goto :goto_7c

    :catchall_69
    move-exception v0

    goto :goto_7a

    :catchall_6b
    move-exception v0

    goto :goto_78

    :catchall_6d
    move-exception v0

    goto :goto_76

    :catchall_6f
    move-exception v0

    goto :goto_74

    :catchall_71
    move-exception v0

    move-object/from16 v10, p1

    :goto_74
    move-object/from16 v11, p2

    :goto_76
    move-object/from16 v12, p3

    :goto_78
    move/from16 v13, p4

    :goto_7a
    move/from16 v14, p5

    :goto_7c
    move-object/from16 v15, p6

    :goto_7e
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3055
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3056
    throw v0
.end method

.method public removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    .registers 9
    .param p1, "chain"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "proto"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3082
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3084
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3085
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3086
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3087
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3088
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x54

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3089
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 3090
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->removeUidFromMptcpChain(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_42

    .line 3096
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3091
    return-void

    .line 3093
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 3096
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3098
    nop

    .line 3099
    return-void

    .line 3096
    :catchall_42
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3097
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3098
    throw v2
.end method

.method public runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "target"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2647
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2648
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2651
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2654
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2655
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 2656
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxFirewallRulesCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 2662
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2656
    return-object v3

    .line 2658
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2659
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move-object v2, v3

    .line 2662
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2664
    nop

    .line 2665
    return-object v2

    .line 2662
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2663
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2664
    throw v2
.end method

.method public runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cmd"    # I
    .param p2, "params"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1736
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1737
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1740
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1742
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1743
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1744
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 1745
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->runKnoxRulesCommand(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 1751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1745
    return-object v3

    .line 1747
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1748
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move-object v2, v3

    .line 1751
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    nop

    .line 1754
    return-object v2

    .line 1751
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1753
    throw v2
.end method

.method public runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2784
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2785
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2788
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2789
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2790
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2791
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2792
    .local v2, "_status":Z
    if-nez v2, :cond_35

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 2793
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->runTcpMonitorShellCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_45

    .line 2799
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2793
    return-object v3

    .line 2795
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2796
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3c
    .catchall {:try_start_35 .. :try_end_3c} :catchall_45

    move-object v2, v3

    .line 2799
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2801
    nop

    .line 2802
    return-object v2

    .line 2799
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2800
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2801
    throw v2
.end method

.method public runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "iptablesTarget"    # I
    .param p2, "cmd"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2763
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2764
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2765
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2766
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x45

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 2767
    .local v2, "_status":Z
    if-nez v2, :cond_38

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 2768
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->runVpnRulesCommand(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_48

    .line 2774
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2768
    return-object v3

    .line 2770
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3
    :try_end_3f
    .catchall {:try_start_38 .. :try_end_3f} :catchall_48

    move-object v2, v3

    .line 2774
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    nop

    .line 2777
    return-object v2

    .line 2774
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_48
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2775
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2776
    throw v2
.end method

.method public setAdaptiveSpeedLimitRule(IZ)V
    .registers 8
    .param p1, "speed"    # I
    .param p2, "rule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2166
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2168
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2169
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x23

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2170
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2171
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->setAdaptiveSpeedLimitRule(IZ)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2172
    return-void

    .line 2176
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    nop

    .line 2178
    return-void

    .line 2176
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2177
    throw v1
.end method

.method public setAllowListIPs(Ljava/lang/String;)V
    .registers 7
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1808
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1810
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1811
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1812
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1813
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1814
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->setAllowListIPs(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 1819
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1815
    return-void

    .line 1819
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    nop

    .line 1821
    return-void

    .line 1819
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1820
    throw v1
.end method

.method public setBlockAllDNSPackets(Z)V
    .registers 7
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1778
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1779
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1780
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1781
    .local v1, "_status":Z
    if-nez v1, :cond_30

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1782
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->setBlockAllDNSPackets(Z)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 1787
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1783
    return-void

    .line 1787
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    nop

    .line 1789
    return-void

    .line 1787
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1788
    throw v1
.end method

.method public setBlockAllPackets()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1839
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1841
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1842
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1843
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1844
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->setBlockAllPackets()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1849
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1845
    return-void

    .line 1849
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1850
    nop

    .line 1851
    return-void

    .line 1849
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1850
    throw v1
.end method

.method public setBlockListIPs(Ljava/lang/String;)V
    .registers 7
    .param p1, "addr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1792
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1794
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1795
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1796
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1797
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 1798
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->setBlockListIPs(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 1803
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1799
    return-void

    .line 1803
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1804
    nop

    .line 1805
    return-void

    .line 1803
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1804
    throw v1
.end method

.method public setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "add"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2738
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2740
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2741
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2742
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2743
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x44

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2744
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2745
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->setEpdgInterfaceDropRule(Ljava/lang/String;Z)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2746
    return-void

    .line 2750
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    nop

    .line 2752
    return-void

    .line 2750
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2751
    throw v1
.end method

.method public setKnoxGuardExemptRule(ZLjava/lang/String;I)V
    .registers 9
    .param p1, "add"    # Z
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2393
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2395
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2396
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2398
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2399
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setKnoxGuardExemptRule(ZLjava/lang/String;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 2404
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2400
    return-void

    .line 2404
    .end local v1    # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    nop

    .line 2406
    return-void

    .line 2404
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2405
    throw v1
.end method

.method public setLimitUidRuleMap(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "rule"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2181
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2183
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2185
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x24

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2187
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 2188
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->setLimitUidRuleMap(IZ)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 2193
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2189
    return-void

    .line 2193
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2194
    nop

    .line 2195
    return-void

    .line 2193
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2194
    throw v1
.end method

.method public setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    .registers 16
    .param p1, "add"    # Z
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "outIface"    # Ljava/lang/String;
    .param p4, "mark"    # I
    .param p5, "uid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3318
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3320
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3321
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3322
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3323
    iget-object v3, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3324
    .local v2, "_status":Z
    if-nez v2, :cond_47

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 3325
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    move v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/net/IOemNetd;->setMptcpDestBaseMarkRule(ZLjava/lang/String;Ljava/lang/String;II)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_52

    .line 3331
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3326
    return-void

    .line 3328
    :cond_47
    :try_start_47
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    .line 3331
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3333
    nop

    .line 3334
    return-void

    .line 3331
    :catchall_52
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3332
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3333
    throw v2
.end method

.method public setMptcpPrivateIpRoute(ZLjava/lang/String;I)V
    .registers 9
    .param p1, "add"    # Z
    .param p2, "ifaceName"    # Ljava/lang/String;
    .param p3, "mark"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3293
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3294
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3297
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3298
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    iget-object v3, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3301
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 3302
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setMptcpPrivateIpRoute(ZLjava/lang/String;I)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 3308
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3303
    return-void

    .line 3305
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 3308
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3310
    nop

    .line 3311
    return-void

    .line 3308
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3309
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3310
    throw v2
.end method

.method public setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "rmem"    # Ljava/lang/String;
    .param p2, "wmem"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3233
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3235
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3237
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3238
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3239
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 3240
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMptcpTcpBufferSize(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 3246
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3241
    return-void

    .line 3243
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 3246
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3248
    nop

    .line 3249
    return-void

    .line 3246
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3247
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3248
    throw v2
.end method

.method public setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "add"    # Z
    .param p2, "iface"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pref"    # Ljava/lang/String;
    .param p5, "ip_type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3379
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3380
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3382
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3383
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3384
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3386
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3387
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3388
    iget-object v3, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3389
    .local v2, "_status":Z
    if-nez v2, :cond_47

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_47

    .line 3390
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v4

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    invoke-interface/range {v4 .. v9}, Lcom/android/internal/net/IOemNetd;->setMptcpUIDRoute(ZLjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_52

    .line 3396
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3391
    return-void

    .line 3393
    :cond_47
    :try_start_47
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_52

    .line 3396
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3398
    nop

    .line 3399
    return-void

    .line 3396
    :catchall_52
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3398
    throw v2
.end method

.method public setMtuValueMptcp(Ljava/lang/String;I)V
    .registers 8
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "mtu"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3252
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3253
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3255
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3256
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3257
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3258
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3259
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 3260
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/android/internal/net/IOemNetd;->setMtuValueMptcp(Ljava/lang/String;I)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3f

    .line 3266
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3261
    return-void

    .line 3263
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3f

    .line 3266
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3268
    nop

    .line 3269
    return-void

    .line 3266
    :catchall_3f
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3268
    throw v2
.end method

.method public setNetworkInfo(IZI)V
    .registers 9
    .param p1, "netId"    # I
    .param p2, "chainedNetwork"    # Z
    .param p3, "vpnClientUid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2562
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2564
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2565
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2566
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2567
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2568
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->setNetworkInfo(IZI)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 2573
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2569
    return-void

    .line 2573
    .end local v1    # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2574
    nop

    .line 2575
    return-void

    .line 2573
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2574
    throw v1
.end method

.method public setWhiteListUidMmsRules(IZ)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "allow"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3491
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3492
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3493
    const/4 v1, 0x1

    if-eqz p2, :cond_13

    move v2, v1

    goto :goto_14

    :cond_13
    const/4 v2, 0x0

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3494
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x68

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 3495
    .local v1, "_status":Z
    if-nez v1, :cond_33

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_33

    .line 3496
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->setWhiteListUidMmsRules(IZ)V
    :try_end_2f
    .catchall {:try_start_4 .. :try_end_2f} :catchall_38

    .line 3501
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3497
    return-void

    .line 3501
    .end local v1    # "_status":Z
    :cond_33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3502
    nop

    .line 3503
    return-void

    .line 3501
    :catchall_38
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3502
    throw v1
.end method

.method public startMec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iface"    # Ljava/lang/String;
    .param p2, "ipv4"    # Ljava/lang/String;
    .param p3, "ipv6"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2036
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2038
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2040
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2041
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2042
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2043
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2044
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->startMec(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 2049
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2045
    return-void

    .line 2049
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2050
    nop

    .line 2051
    return-void

    .line 2049
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2050
    throw v1
.end method

.method public startVideoStats(Ljava/lang/String;II)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "sport"    # I
    .param p3, "dport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1626
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1628
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1629
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1630
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1631
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1632
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1633
    .local v1, "_status":Z
    if-nez v1, :cond_30

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1634
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->startVideoStats(Ljava/lang/String;II)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 1639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1635
    return-void

    .line 1639
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    nop

    .line 1641
    return-void

    .line 1639
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1640
    throw v1
.end method

.method public stopMec(Ljava/lang/String;)V
    .registers 7
    .param p1, "iface"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2054
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2056
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2058
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2059
    .local v1, "_status":Z
    if-nez v1, :cond_2b

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2b

    .line 2060
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1}, Lcom/android/internal/net/IOemNetd;->stopMec(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_4 .. :try_end_27} :catchall_30

    .line 2065
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2061
    return-void

    .line 2065
    .end local v1    # "_status":Z
    :cond_2b
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    nop

    .line 2067
    return-void

    .line 2065
    :catchall_30
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2066
    throw v1
.end method

.method public stopVideoStats(Ljava/lang/String;II)V
    .registers 9
    .param p1, "ifName"    # Ljava/lang/String;
    .param p2, "sport"    # I
    .param p3, "dport"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1646
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1648
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1649
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1650
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1651
    .local v1, "_status":Z
    if-nez v1, :cond_30

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_30

    .line 1652
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->stopVideoStats(Ljava/lang/String;II)V
    :try_end_2c
    .catchall {:try_start_4 .. :try_end_2c} :catchall_35

    .line 1657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1653
    return-void

    .line 1657
    .end local v1    # "_status":Z
    :cond_30
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    nop

    .line 1659
    return-void

    .line 1657
    :catchall_35
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1658
    throw v1
.end method

.method public tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "allowed"    # Z
    .param p2, "ifName"    # Ljava/lang/String;
    .param p3, "tp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2353
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2354
    const/4 v1, 0x1

    if-eqz p1, :cond_10

    move v2, v1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2355
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2356
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2357
    iget-object v2, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v4, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2358
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2359
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->tcSetTCRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 2364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2360
    return-void

    .line 2364
    .end local v1    # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    nop

    .line 2366
    return-void

    .line 2364
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2365
    throw v1
.end method

.method public unregisterDomainFilterEventListener()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1704
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1706
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1707
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1708
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 1709
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->unregisterDomainFilterEventListener()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 1714
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1710
    return-void

    .line 1714
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    nop

    .line 1716
    return-void

    .line 1714
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1715
    throw v1
.end method

.method public unregisterNetdTetherEventListener()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2701
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2703
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2704
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2705
    .local v1, "_status":Z
    if-nez v1, :cond_28

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 2706
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/net/IOemNetd;->unregisterNetdTetherEventListener()V
    :try_end_24
    .catchall {:try_start_4 .. :try_end_24} :catchall_2d

    .line 2711
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2707
    return-void

    .line 2711
    .end local v1    # "_status":Z
    :cond_28
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    nop

    .line 2713
    return-void

    .line 2711
    :catchall_2d
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2712
    throw v1
.end method

.method public updateDomainFilterCache(I[Ljava/lang/String;)V
    .registers 8
    .param p1, "operation"    # I
    .param p2, "paramsList"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1721
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1724
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 1725
    .local v1, "_status":Z
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 1726
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateDomainFilterCache(I[Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 1731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1727
    return-void

    .line 1731
    .end local v1    # "_status":Z
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1732
    nop

    .line 1733
    return-void

    .line 1731
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1732
    throw v1
.end method

.method public updateInputFilterAppWideRules([III)V
    .registers 9
    .param p1, "uids"    # [I
    .param p2, "ifaceIndex"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2613
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2615
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2618
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2619
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2620
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2621
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterAppWideRules([III)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 2626
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2622
    return-void

    .line 2626
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2627
    nop

    .line 2628
    return-void

    .line 2626
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2627
    throw v1
.end method

.method public updateInputFilterExemptRules(II)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2580
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2581
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2582
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2583
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2584
    .local v1, "_status":Z
    if-nez v1, :cond_2e

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_2e

    .line 2585
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/net/IOemNetd;->updateInputFilterExemptRules(II)V
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_33

    .line 2590
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2586
    return-void

    .line 2590
    .end local v1    # "_status":Z
    :cond_2e
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2591
    nop

    .line 2592
    return-void

    .line 2590
    :catchall_33
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2591
    throw v1
.end method

.method public updateInputFilterUserWideRules([III)V
    .registers 9
    .param p1, "userIds"    # [I
    .param p2, "ifaceIndex"    # I
    .param p3, "update"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2597
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2598
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 2599
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2600
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2601
    iget-object v1, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 2602
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 2603
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateInputFilterUserWideRules([III)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 2608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2604
    return-void

    .line 2608
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2609
    nop

    .line 2610
    return-void

    .line 2608
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2609
    throw v1
.end method

.method public updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "add"    # Z
    .param p2, "ipAddr"    # Ljava/lang/String;
    .param p3, "ifaceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3273
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3275
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/android/internal/net/IOemNetd$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3276
    const/4 v2, 0x0

    if-eqz p1, :cond_14

    const/4 v3, 0x1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3277
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3278
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3279
    iget-object v3, p0, Lcom/android/internal/net/IOemNetd$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 3280
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 3281
    invoke-static {}, Lcom/android/internal/net/IOemNetd$Stub;->getDefaultImpl()Lcom/android/internal/net/IOemNetd;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/android/internal/net/IOemNetd;->updateMptcpSourceRule(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_47

    .line 3287
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3282
    return-void

    .line 3284
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_47

    .line 3287
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3289
    nop

    .line 3290
    return-void

    .line 3287
    :catchall_47
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3288
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3289
    throw v2
.end method
