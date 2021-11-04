.class Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;
.super Ljava/lang/Object;
.source "IIpMemoryStoreCallbacks.java"

# interfaces
.implements Landroid/net/IIpMemoryStoreCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpMemoryStoreCallbacks$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/IIpMemoryStoreCallbacks;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I

    .line 109
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 106
    iput-object p1, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 112
    iget-object v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 116
    # getter for: Landroid/net/IIpMemoryStoreCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->access$000()Ljava/lang/String;

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

    .line 158
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 159
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 160
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 162
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Landroid/net/IIpMemoryStoreCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 163
    iget-object v2, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 164
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 165
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 166
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IIpMemoryStoreCallbacks;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 172
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 166
    monitor-exit p0

    return-object v3

    .line 169
    .end local p0    # "this":Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 170
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 172
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    goto :goto_54

    .line 172
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 174
    throw v2

    .line 176
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 157
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

    .line 136
    iget v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 138
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 140
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Landroid/net/IIpMemoryStoreCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 141
    iget-object v2, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 142
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 143
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 144
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/IIpMemoryStoreCallbacks;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    return v3

    .line 147
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 150
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    goto :goto_4d

    .line 150
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 151
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    throw v2

    .line 154
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    .registers 6
    .param p1, "ipMemoryStore"    # Landroid/net/IIpMemoryStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/IIpMemoryStoreCallbacks$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    const/4 v1, 0x0

    if-eqz p1, :cond_13

    invoke-interface {p1}, Landroid/net/IIpMemoryStore;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_14

    :cond_13
    move-object v2, v1

    :goto_14
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 124
    iget-object v2, p0, Landroid/net/IIpMemoryStoreCallbacks$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 125
    .local v1, "_status":Z
    if-nez v1, :cond_31

    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v2

    if-eqz v2, :cond_31

    .line 126
    invoke-static {}, Landroid/net/IIpMemoryStoreCallbacks$Stub;->getDefaultImpl()Landroid/net/IIpMemoryStoreCallbacks;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/net/IIpMemoryStoreCallbacks;->onIpMemoryStoreFetched(Landroid/net/IIpMemoryStore;)V
    :try_end_2d
    .catchall {:try_start_4 .. :try_end_2d} :catchall_36

    .line 131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 127
    return-void

    .line 131
    .end local v1    # "_status":Z
    :cond_31
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    nop

    .line 133
    return-void

    .line 131
    :catchall_36
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 132
    throw v1
.end method