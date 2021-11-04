.class Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;
.super Ljava/lang/Object;
.source "IRequestInjector.java"

# interfaces
.implements Lcom/samsung/android/camera/IRequestInjector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/IRequestInjector$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/samsung/android/camera/IRequestInjector;


# instance fields
.field private mCachedHash:Ljava/lang/String;

.field private mCachedVersion:I

.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "remote"    # Landroid/os/IBinder;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedVersion:I

    .line 120
    const-string v0, "-1"

    iput-object v0, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 118
    return-void
.end method


# virtual methods
.method public applyRequests([Landroid/os/PersistableBundle;)V
    .registers 7
    .param p1, "requests"    # [Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 131
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 132
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 136
    iget-object v3, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 137
    .local v2, "_status":Z
    if-nez v2, :cond_30

    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 138
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/samsung/android/camera/IRequestInjector;->applyRequests([Landroid/os/PersistableBundle;)V
    :try_end_29
    .catchall {:try_start_8 .. :try_end_29} :catchall_3b

    .line 144
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 139
    return-void

    .line 141
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3b

    .line 144
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    nop

    .line 147
    return-void

    .line 144
    :catchall_3b
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 146
    throw v2
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public clearRequests()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 151
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 153
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    # getter for: Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 155
    .local v2, "_status":Z
    if-nez v2, :cond_2d

    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    if-eqz v3, :cond_2d

    .line 156
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/IRequestInjector;->clearRequests()V
    :try_end_26
    .catchall {:try_start_8 .. :try_end_26} :catchall_38

    .line 162
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 157
    return-void

    .line 159
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_30
    .catchall {:try_start_2d .. :try_end_30} :catchall_38

    .line 162
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    nop

    .line 165
    return-void

    .line 162
    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 164
    throw v2
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .line 127
    # getter for: Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->access$000()Ljava/lang/String;

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

    .line 190
    :try_start_1
    const-string v0, "-1"

    iget-object v1, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedHash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_54

    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_58

    .line 194
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_13
    # getter for: Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xfffffe

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 196
    .local v2, "_status":Z
    if-nez v2, :cond_3c

    .line 197
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 198
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/IRequestInjector;->getInterfaceHash()Ljava/lang/String;

    move-result-object v3
    :try_end_34
    .catchall {:try_start_13 .. :try_end_34} :catchall_4c

    .line 204
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_58

    .line 198
    monitor-exit p0

    return-object v3

    .line 201
    .end local p0    # "this":Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;
    :cond_3c
    :try_start_3c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4c

    .line 204
    .end local v2    # "_status":Z
    :try_start_45
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    goto :goto_54

    .line 204
    :catchall_4c
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 205
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 206
    throw v2

    .line 208
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_54
    :goto_54
    iget-object v0, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedHash:Ljava/lang/String;
    :try_end_56
    .catchall {:try_start_45 .. :try_end_56} :catchall_58

    monitor-exit p0

    return-object v0

    .line 189
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

    .line 168
    iget v0, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_4d

    .line 169
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 170
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 172
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_d
    # getter for: Lcom/samsung/android/camera/IRequestInjector$Stub;->DESCRIPTOR:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const v3, 0xffffff

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 174
    .local v2, "_status":Z
    if-nez v2, :cond_35

    .line 175
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    if-eqz v3, :cond_35

    .line 176
    invoke-static {}, Lcom/samsung/android/camera/IRequestInjector$Stub;->getDefaultImpl()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v3

    invoke-interface {v3}, Lcom/samsung/android/camera/IRequestInjector;->getInterfaceVersion()I

    move-result v3
    :try_end_2e
    .catchall {:try_start_d .. :try_end_2e} :catchall_45

    .line 182
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    return v3

    .line 179
    :cond_35
    :try_start_35
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    iput v3, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedVersion:I
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    .line 182
    .end local v2    # "_status":Z
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    goto :goto_4d

    .line 182
    :catchall_45
    move-exception v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 183
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 184
    throw v2

    .line 186
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v1    # "reply":Landroid/os/Parcel;
    :cond_4d
    :goto_4d
    iget v0, p0, Lcom/samsung/android/camera/IRequestInjector$Stub$Proxy;->mCachedVersion:I

    return v0
.end method
