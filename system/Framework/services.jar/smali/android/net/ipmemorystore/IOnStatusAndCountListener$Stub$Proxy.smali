.class Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "IOnStatusAndCountListener.java"

# interfaces
.implements Landroid/net/ipmemorystore/IOnStatusAndCountListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/net/ipmemorystore/IOnStatusAndCountListener;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedVersion:I

    .line 116
    const-string v0, "-1"

    iput-object v0, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 113
    iput-object p1, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 114
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 123
    # getter for: Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->access$000()Ljava/lang/String;

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

    .line 172
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 173
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 174
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 176
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 178
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 179
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 180
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnStatusAndCountListener;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 186
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 180
    monitor-exit p0

    return-object v3

    .line 183
    .end local p0    # "this":Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 184
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 186
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    goto :goto_54

    .line 186
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 188
    throw v2

    .line 190
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 171
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

    .line 150
    iget v0, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 151
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 152
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 154
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 156
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 157
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 158
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/net/ipmemorystore/IOnStatusAndCountListener;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 164
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    return v3

    .line 161
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 164
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    goto :goto_4d

    .line 164
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 165
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 166
    throw v2

    .line 168
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mCachedVersion:I

    return v0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;I)V
    .registers 7
    .param p1, "status"    # Landroid/net/ipmemorystore/StatusParcelable;
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 129
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    # getter for: Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_16

    .line 131
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    invoke-virtual {p1, v0, v1}, Landroid/net/ipmemorystore/StatusParcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_19

    .line 135
    :cond_16
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    :goto_19
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    iget-object v1, p0, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    .line 139
    .local v1, "_status":Z
    if-nez v1, :cond_36

    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 140
    invoke-static {}, Landroid/net/ipmemorystore/IOnStatusAndCountListener$Stub;->getDefaultImpl()Landroid/net/ipmemorystore/IOnStatusAndCountListener;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Landroid/net/ipmemorystore/IOnStatusAndCountListener;->onComplete(Landroid/net/ipmemorystore/StatusParcelable;I)V
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_3b

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 141
    return-void

    .line 145
    .end local v1    # "_status":Z
    :cond_36
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-void

    .line 145
    :catchall_3b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v1
.end method
