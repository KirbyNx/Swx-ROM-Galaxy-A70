.class Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnSameL3NetworkResponseListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I

    .line 121
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 119
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 124
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 128
    # getter for: Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->access$000()Ljava/lang/String;

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

    .line 183
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 184
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 185
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 187
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 189
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 190
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 191
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 197
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 191
    monitor-exit p0

    return-object v3

    .line 194
    .end local p0    # "this":Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 195
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 197
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    goto :goto_54

    .line 197
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 198
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 199
    throw v2

    .line 201
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 182
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

    .line 161
    iget v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 163
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 165
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 166
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 167
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 168
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 169
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 169
    return v3

    .line 172
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 173
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 175
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    goto :goto_4d

    .line 175
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 176
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    throw v2

    .line 179
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .registers 7
    .param p1, "status"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "response"    # Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 134
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_16

    .line 136
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p1, v0, v2}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 140
    :cond_16
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    :goto_19
    if-eqz p2, :cond_22

    .line 143
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    invoke-virtual {p2, v0, v2}, Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_25

    .line 147
    :cond_22
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    :goto_25
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v0, v3, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 150
    .local v1, "_status":Z
    if-nez v1, :cond_3f

    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 151
    invoke-static {}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    :try_end_3b
    .catchall {:try_start_4 .. :try_end_3b} :catchall_44

    .line 156
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 152
    return-void

    .line 156
    .end local v1    # "_status":Z
    :cond_3f
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    nop

    .line 158
    return-void

    .line 156
    :catchall_44
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    throw v1
.end method
